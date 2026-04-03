class Ccm < Formula
  desc "nvm-like manager for Claude Code profiles"
  homepage "https://github.com/remeic/ccm#readme"
  url "https://registry.npmjs.org/@remeic/ccm/-/ccm-0.1.0.tgz"
  sha256 "c16ff5c576331c3b06a17e6f58088ea38442b9abdc59f9741a4d0535018e6d99"
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
