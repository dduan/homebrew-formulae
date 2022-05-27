class Ea < Formula
  desc "Ea: make your CLI output actionable"
  homepage "https://github.com/dduan/ea"
  url "https://github.com/dduan/ea/archive/0.2.0.tar.gz"
  sha256 "df461668c4603ec01614e5c680ff8e511451d4055f4f4572edcd2fe2fa3aca1e"
  license "MIT"
  head "https://github.com/dduan/ea.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked",
                               "--root", prefix,
                               "--path", "."
    man1.install "docs/ea.1"
    bash_completion.install "scripts/completion/ea.bash"
    fish_completion.install "scripts/completion/ea.fish"
    zsh_completion.install "scripts/completion/_ea"
  end

  test do
    (testpath/"foo.txt").write("")
    assert_match("foo.txt", shell_output("#{bin}/ea run linear find -- ."))
    assert_match("foo.txt", shell_output("#{bin}/ea"))
  end
end
