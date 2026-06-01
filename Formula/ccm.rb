class Ccm < Formula
  desc "nvm-like manager for Claude Code profiles"
  homepage "https://github.com/Remeic/ccm#readme"
  url "https://registry.npmjs.org/@remeic/ccm/-/ccm-0.7.0.tgz"
  sha256 "0ca11eac7a25c1b01f02310f09c055c850b4c90e4b702a53ea2c41ca2f4f195c"
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
