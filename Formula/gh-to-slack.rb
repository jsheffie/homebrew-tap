class GhToSlack < Formula
  desc "Format and paste GitHub CLI output into Slack with rich links"
  homepage "https://github.com/jsheffie/gh-to-slack"
  url "https://github.com/jsheffie/gh-to-slack/archive/refs/tags/v1.0.12.tar.gz"
  sha256 "6ac1d65a9678025ca8f7058fa92e9906ef6b71963a27976b6729ee68a5818991"
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
