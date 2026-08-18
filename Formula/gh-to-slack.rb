class GhToSlack < Formula
  desc "Format and paste GitHub CLI output into Slack with rich links"
  homepage "https://github.com/jsheffie/gh-to-slack"
  url "https://github.com/jsheffie/gh-to-slack/archive/refs/tags/v1.0.10.tar.gz"
  sha256 "fcaa61dd3f9f90ce2c6d3591b761889b5d5ec3ae033ba48e930c8aff825cf495"
  license "MIT"

  depends_on "gh"
  depends_on "jq"

  def install
    bin.install "scripts/gh-clippy.sh" => "gh-clippy"
    bin.install "scripts/gh-syms.sh" => "gh-syms"
    (share/"gh-to-slack/icons").install Dir["icons/*.png"]
  end

  test do
    system bin/"gh-clippy", "--help"
  end
end
