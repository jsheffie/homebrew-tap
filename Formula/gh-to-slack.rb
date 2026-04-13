class GhToSlack < Formula
  desc "Format and paste GitHub CLI output into Slack with rich links"
  homepage "https://github.com/jsheffie/gh-to-slack"
  url "https://github.com/jsheffie/gh-to-slack/archive/refs/tags/v1.0.8.tar.gz"
  sha256 "36fe16e19f00ae21706d1cd7b4598d878dece15402d200551b74dae9bb114e0f"
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
