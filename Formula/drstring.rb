class Drstring < Formula
   version '0.2.3'
   desc "Linter, formatter for Swift."
   homepage "https://github.com/dduan/drstring"

   if OS.mac?
       url "https://github.com/dduan/DrString/releases/download/v#{version}/drstring-x86_64-apple-darwin.tar.gz"
       sha256 "66fc0921f0bddd243623bedbe30c26f443842c5f01d441fe34c03c140786810e"
   elsif OS.linux?
       url "https://github.com/dduan/DrString/archive/v#{version}.tar.gz"
       sha256 "9a6dcdaee48f5cdf342519e0aa5b0e593b84d7b4453a0f01a576f0fe1c257778"
   end

   def install
       if OS.mac?
         bin.install "bin/drstring"
         lib.install "lib/lib_InternalSwiftSyntaxParser.dylib"
       elsif OS.linux?
         system "make", "build"
         bin.install ".build/release/drstring"
       end
   end
 end
