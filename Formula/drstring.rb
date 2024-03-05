class Drstring < Formula
  version '0.6.1'
  desc "Linter, formatter for Swift docstrings."
  homepage "https://github.com/dduan/drstring"

  if OS.mac?
    url "https://github.com/dduan/DrString/releases/download/v#{version}/drstring-x86_64-apple-darwin.tar.gz"
    sha256 "35e7a66c27f8babe549da3eff2b79bdcd9b6bcb5c61f9837cf9fedbe52908358"
  elsif OS.linux?
    url "https://github.com/dduan/DrString/archive/v#{version}.tar.gz"
    sha256 "62d5270b690ebd65f60464f626d6c5c919fa4103d588346df7dc3786734db6fb"
  end

  def install
    if OS.mac?
      bin.install "bin/drstring"
      lib.install "lib/lib_InternalSwiftSyntaxParser.dylib"
    elsif OS.linux?
      system "make", "build"
      bin.install ".build/release/drstring"
    end
    bash_completion.install "completions/bash/drstring-completion.bash"
    zsh_completion.install "completions/zsh/_drstring"
  end
end
