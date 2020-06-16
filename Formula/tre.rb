class Tre < Formula
  version '0.3.1'
  desc "Tree command, improved."
  homepage "https://github.com/dduan/tre"

  if OS.mac?
      url "https://github.com/dduan/tre/releases/download/v#{version}/tre-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "1b15ac191a95baa1ba6e70cec89cdb9dbcb172764805c52a1951153cf9574a27"
  elsif OS.linux?
      url "https://github.com/dduan/tre/releases/download/v#{version}/tre-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5f0353764855cf8256dc69c9ae8a126c937cb728d60a144c23c0765d2492964b"
  end

  def install
    bin.install "tre"
  end
end
