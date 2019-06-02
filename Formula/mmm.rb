class Mmm < Formula
  version '0.1.1'
  desc "Your little interactive file manipulator"
  homepage "https://github.com/dduan/mmm"

  if OS.mac?
      url "https://github.com/dduan/mmm/releases/download/v#{version}/mmm-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c229bc4a5b62e1060ba2baea1e1008b32e38ec6b1e84cb790cd7fcb3f6c911c2"
  elsif OS.linux?
      url "https://github.com/dduan/mmm/releases/download/v#{version}/mmm-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3f9c2838d0bfa0364c40e00157a96ec7ac6c83233731657732a9795916cb26e3"
  end

  def install
    bin.install "mmm"
  end
end
