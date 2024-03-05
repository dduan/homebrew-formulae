class Drstring < Formula
  version '0.6.1'
  desc "Linter, formatter for Swift docstrings."
  homepage "https://github.com/dduan/drstring"

  if OS.mac?
    url "https://github.com/dduan/DrString/releases/download/#{version}/drstring-universal-apple-darwin.tar.gz"
    sha256 "99833f0ad3d9f3bbf40aee88c6f959a0a9b03e3b7b34e2fca660644e13c1f3ef"
  elsif OS.linux?
    url "https://github.com/dduan/DrString/archive/#{version}.tar.gz"
    sha256 "e18d081118b2bb2b7ba6aa17ae60e32acf1ee26f7c61f2d75e04b43e6bb5c40f"
  end

  def install
    if OS.mac?
      bin.install "drstring"
    elsif OS.linux?
      system "make", "build"
      bin.install ".build/release/drstring"
    end
    bash_completion.install "completions/bash/drstring-completion.bash"
    zsh_completion.install "completions/zsh/_drstring"
  end
end
