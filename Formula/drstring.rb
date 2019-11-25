class Drstring < Formula
   version '0.3.0'
   desc "Linter, formatter for Swift docstrings."
   homepage "https://github.com/dduan/drstring"

   if OS.mac?
       url "https://github.com/dduan/DrString/releases/download/v#{version}/drstring-x86_64-apple-darwin.tar.gz"
       sha256 "9c8a91bd7353736e5827e057f8b5583a3a056a2da3bb0b85f131a7ca0203ec1c"
   elsif OS.linux?
       url "https://github.com/dduan/DrString/archive/v#{version}.tar.gz"
       sha256 "448e1d2adc305585d165a7cb3cd20ad0dea1507f6c8e3c3cd222e8862b28e695"
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
