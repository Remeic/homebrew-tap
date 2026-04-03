class Ccm < Formula
  desc "nvm-like manager for Claude Code profiles"
  homepage "https://github.com/Remeic/ccm#readme"
  url "https://registry.npmjs.org/@remeic/ccm/-/ccm-0.2.2.tgz"
  sha256 "bddb96f36ef80c9db6b9895b39e88c704283be2b6d07f217bfed55e5a9094acc"
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
