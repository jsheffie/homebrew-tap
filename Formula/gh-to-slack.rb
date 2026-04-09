class GhToSlack < Formula
  desc "Format and paste GitHub CLI output into Slack with rich links"
  homepage "https://github.com/jsheffie/gh-to-slack"
  url "https://github.com/jsheffie/gh-to-slack/archive/refs/tags/v1.0.6.tar.gz"
  sha256 "def2ad131f2631ca81fd694956bc742669fee6303b55be3278461c1ca2522699"
  license "MIT"

  depends_on "gh"
  depends_on "jq"

  def install
    bin.install "scripts/gh-to-slack-pasteboard.sh" => "gh-to-slack-pasteboard"
    bin.install "scripts/gh-create-syms.sh" => "gh-create-syms"
    (share/"gh-to-slack/icons").install Dir["icons/*.png"]
  end

  test do
    system bin/"gh-to-slack-pasteboard", "--help"
  end
end
