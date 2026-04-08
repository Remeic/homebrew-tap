class Ccm < Formula
  desc "nvm-like manager for Claude Code profiles"
  homepage "https://github.com/Remeic/ccm#readme"
  url "https://registry.npmjs.org/@remeic/ccm/-/ccm-0.4.0.tgz"
  sha256 "8a4e1354af0830fff55f9561df79e073368d4aadec572e84e82a4265aafe6929"
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
