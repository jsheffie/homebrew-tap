class GhToSlack < Formula
  desc "Format and paste GitHub CLI output into Slack with rich links"
  homepage "https://github.com/jsheffie/gh-to-slack"
  url "https://github.com/jsheffie/gh-to-slack/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "cad1e5eb8a4ee0a91dece89e43a834ba0355af47bc056d4e4205445e7eb02b44"
  license "MIT"

  depends_on "gh"
  depends_on "jq"

  def install
    bin.install "scripts/gh-to-slack-pasteboard.sh" => "gh-to-slack-pasteboard"
    (share/"gh-to-slack/icons").install Dir["icons/*.png"]
  end

  test do
    system bin/"gh-to-slack-pasteboard", "--help"
  end
end
