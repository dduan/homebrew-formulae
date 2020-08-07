class Drstring < Formula
  version '0.4.2'
  desc "Linter, formatter for Swift docstrings."
  homepage "https://github.com/dduan/drstring"

  if OS.mac?
    url "https://github.com/dduan/DrString/releases/download/v#{version}/drstring-x86_64-apple-darwin.tar.gz"
    sha256 "081f5ded9f884db0fce02754b980a36755156d7cb3ca25a32a7ac7fe6d434823"
  elsif OS.linux?
    url "https://github.com/dduan/DrString/archive/v#{version}.tar.gz"
    sha256 "1f5f6304a8ec03251b13696600ac0400e2ac8df11e9210af214009157889e73a"
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
