class Drstring < Formula
   version '0.3.3'
   desc "Linter, formatter for Swift docstrings."
   homepage "https://github.com/dduan/drstring"

   if OS.mac?
       url "https://github.com/dduan/DrString/releases/download/v#{version}/drstring-x86_64-apple-darwin.tar.gz"
       sha256 "31013781cb35487d8e8d64a8c3f8551ef1d9b2b5b1e90ed1d3f3d5b1b6eae4be"
   elsif OS.linux?
       url "https://github.com/dduan/DrString/archive/v#{version}.tar.gz"
       sha256 "66e61dddfaf8e3dc5cececf9922158c831675158bb2a738e2cb7db7df72ee895"
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
