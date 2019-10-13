class Drstring < Formula
  version '0.2.0-beta.1'
  desc "Linter, formatter for Swift."
  homepage "https://github.com/dduan/drstring"

  if OS.mac?
      url "https://github.com/dduan/DrString/releases/download/v#{version}/drstring-x86_64-apple-darwin.tar.gz"
      sha256 "cf7c2c0770ea311e4788ed0cddfb2d03225d548f63f45009847792dbe237f1dd"
  elsif OS.linux?
      url "https://github.com/dduan/DrString/archive/v#{version}.tar.gz"
      sha256 "4d107548f9f6fd4846abaf66f9fc6ca1dafd600740db97b539fd91d7c99dba43"
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
