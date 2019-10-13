class Drstring < Formula
  version '0.2.0-beta.1'
  desc "Linter, formatter for Swift."
  homepage "https://github.com/dduan/drstring"

  url "https://github.com/dduan/DrString/archive/v#{version}.tar.gz"
  sha256 "4d107548f9f6fd4846abaf66f9fc6ca1dafd600740db97b539fd91d7c99dba43"

  def install
    system "make", "build"
    bin.install ".build/release/drstring"
  end
end
