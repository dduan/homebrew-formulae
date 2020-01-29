class Drstring < Formula
   version '0.3.5'
   desc "Linter, formatter for Swift docstrings."
   homepage "https://github.com/dduan/drstring"

   if OS.mac?
       url "https://github.com/dduan/DrString/releases/download/v#{version}/drstring-x86_64-apple-darwin.tar.gz"
       sha256 "7fd704705760febf65ca1e3008a2a0e0911442e634ef50b5f34e416d8fb45b72"
   elsif OS.linux?
       url "https://github.com/dduan/DrString/archive/v#{version}.tar.gz"
       sha256 "a6a6c6e980961d67131f98a5867ab38fa0bf5d80490077012c8564d6407f981d"
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
