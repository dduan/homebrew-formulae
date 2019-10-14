class Drstring < Formula
   version '0.2.0'
   desc "Linter, formatter for Swift."
   homepage "https://github.com/dduan/drstring"

   if OS.mac?
       url "https://github.com/dduan/DrString/releases/download/v#{version}/drstring-x86_64-apple-darwin.tar.gz"
       sha256 "4f540e78bc0d98177a48408d648bbbc2378d048acb1263321de2962bea14fac4"
   elsif OS.linux?
       url "https://github.com/dduan/DrString/archive/v#{version}.tar.gz"
       sha256 "18a673478e1779b6d1f08f12b818749bec4a1e75c73b9db9178e1b39405bed38"
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
