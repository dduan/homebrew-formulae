class Tre < Formula
  version '0.2.2'
  desc "Tree command, improved."
  homepage "https://github.com/dduan/tre"

  if OS.mac?
      url "https://github.com/dduan/tre/releases/download/v#{version}/tre-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "e7617eb0d3e324a1c45f84ab45b76ff160ba38e0eb94ca5ed013566d1675fb54"
  elsif OS.linux?
      url "https://github.com/dduan/tre/releases/download/v#{version}/tre-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "797579411a3d6404d03ae9b19be02f819cdbfa9ce3d873a0cf672d356e351100"
  end

  def install
    bin.install "tre"
  end
end
