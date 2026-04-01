class GhToSlack < Formula
  desc "Format and paste GitHub CLI output into Slack with rich links"
  homepage "https://github.com/jsheffie/gh-to-slack"
  url "https://github.com/jsheffie/gh-to-slack/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "b8f9034ec6e630610e9328f94192ac54410d720808aef62be0d49876fcdb247d"
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
