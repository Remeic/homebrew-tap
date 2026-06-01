class Ccm < Formula
  desc "nvm-like manager for Claude Code profiles"
  homepage "https://github.com/Remeic/ccm#readme"
  url "https://registry.npmjs.org/@remeic/ccm/-/ccm-0.6.0.tgz"
  sha256 "225ce1b63ab579a71a57d2bca5c310706307c15cd7db74219b658cd9429a92ad"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/ccm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccm --version")
  end
end
