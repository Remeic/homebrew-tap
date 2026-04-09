class Ccm < Formula
  desc "nvm-like manager for Claude Code profiles"
  homepage "https://github.com/Remeic/ccm#readme"
  url "https://registry.npmjs.org/@remeic/ccm/-/ccm-0.5.0.tgz"
  sha256 "6f29e78034cac941eaa1a9170cc27208464a79e020d9083b92f2eb5b0d3701e3"
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
