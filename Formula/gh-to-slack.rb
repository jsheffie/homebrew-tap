class GhToSlack < Formula
  desc "Format and paste GitHub CLI output into Slack with rich links"
  homepage "https://github.com/jsheffie/gh-to-slack"
  url "https://github.com/jsheffie/gh-to-slack/archive/refs/tags/v1.0.11.tar.gz"
  sha256 "e357ff60f6a2017057d420322e167eb8ac431432617d215a828f11bbdcbb603c"
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
