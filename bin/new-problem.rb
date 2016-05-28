#!/usr/bin/env ruby

def die(message)
  puts "error: #{message}"
  exit 1
end

die 'missing number argument' unless ARGV.count > 0
die "#{ARGV[0]} is not a number" unless ARGV[0] =~ /^[0-9]+$/

number = "%03d" % ARGV[0].to_i
filename = "Problem#{number}"
modulename = "ProjectEuler.#{filename}"
filepath = "src/ProjectEuler/#{filename}.hs"
testpath = "test/ProjectEuler/#{filename}Spec.hs"
cabalpath = 'project-euler.cabal'

die "#{filepath} exists" if File.exist? filepath
die "#{testpath} exists" if File.exist? testpath

file_template=%(module #{modulename} (solve) where

solve :: Integer
solve = #{number}
)

test_template=%(module #{modulename}Spec (main, spec) where

import Test.Hspec
import #{modulename}

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel $
  describe "solve" $
    it "returns #{number}" $
      solve `shouldBe` #{number}
)

File.open(filepath, 'w') { |f| f.write(file_template) }
File.open(testpath, 'w') { |f| f.write(test_template) }

lines = File.foreach(cabalpath).to_a
lines.reverse.each.with_index do |line, i|
  if line =~ /ProjectEuler.Problem/
    lines.insert(
      lines.length - i,
      "                     , ProjectEuler.Problem#{number}\n"
    )
    break
  end
end

File.open(cabalpath, 'w') { |f| f.write(lines.join('')) }
