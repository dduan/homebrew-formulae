class Drstring < Formula
   version '0.4.1'
   desc "Linter, formatter for Swift docstrings."
   homepage "https://github.com/dduan/drstring"

   if OS.mac?
       url "https://github.com/dduan/DrString/releases/download/v#{version}/drstring-x86_64-apple-darwin.tar.gz"
       sha256 "49fc7b630ec6f1e3711d4013407223edbc3540a4e05bc2b7e4da0467df5f879f"
   elsif OS.linux?
       url "https://github.com/dduan/DrString/archive/v#{version}.tar.gz"
       sha256 "3df1725902a65a0ac17e0c6b6f89f126d32c3c9432cf6ef9e5dfd587fb4b8165"
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
