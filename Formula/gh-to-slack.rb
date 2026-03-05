class GhToSlack < Formula
  desc "Format and paste GitHub CLI output into Slack with rich links"
  homepage "https://github.com/jsheffie/gh-to-slack"
  url "https://github.com/jsheffie/gh-to-slack/archive/refs/tags/v0.9.tar.gz"
  sha256 "d047d473695633a37e272dcf550245831ff028e587fe430f61f3ab312d09a10c"
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
