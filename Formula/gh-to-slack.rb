class GhToSlack < Formula
  desc "Format and paste GitHub CLI output into Slack with rich links"
  homepage "https://github.com/jsheffie/gh-to-slack"
  url "https://github.com/jsheffie/gh-to-slack/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "a4d2810668eb0976fe8a27bebcdefe37056553ca475ceee215c869e44bc959ea"
  license "MIT"

  depends_on "gh"
  depends_on "jq"

  def install
    bin.install "scripts/gh-to-slack-pasteboard.sh" => "gh-to-slack-pasteboard"
  end

  test do
    system bin/"gh-to-slack-pasteboard", "--help"
  end
end
