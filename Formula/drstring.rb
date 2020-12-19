class Drstring < Formula
  version '0.4.3'
  desc "Linter, formatter for Swift docstrings."
  homepage "https://github.com/dduan/drstring"

  if OS.mac?
    url "https://github.com/dduan/DrString/releases/download/v#{version}/drstring-x86_64-apple-darwin.tar.gz"
    sha256 "715bc3c0ad7f57492ed764ced5884b87c9f98c866a931ea0ca49116258d6aa93"
  elsif OS.linux?
    url "https://github.com/dduan/DrString/archive/v#{version}.tar.gz"
    sha256 "83fafbe610477bcaf4ea79698b9d277389691fc8d0a8641810afd11d40473a23"
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
