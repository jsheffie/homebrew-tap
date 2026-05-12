class Spacemap < Formula
  desc "Floating yabai workspace grid overlay for macOS"
  homepage "https://github.com/jsheffie/spacemap"
  version "0.1.0"
  url "https://github.com/jsheffie/spacemap/releases/download/v#{version}/spacemap-#{version}.zip"
  sha256 "f3fd7acf629b3b457e5e627f2ce7421366ed9413ccb6d12a3c8999722c1c2486"

  depends_on macos: ">= :ventura"

  def install
    app = "spacemap.app"
    system "cp", "-R", app, "/Applications/#{app}"
    system "codesign", "--force", "--deep", "--sign", "-", "/Applications/#{app}"
  end

  def caveats
    <<~EOS
      spacemap was installed to /Applications/spacemap.app.

      Launch it once to trigger the Accessibility permission prompt:
        open /Applications/spacemap.app

      Then go to System Settings → Privacy & Security → Accessibility and grant
      permission. The Ctrl+Space hotkey activates automatically — no restart needed.

      Requires yabai to be installed and running:
        brew install koekeishiya/formulae/yabai
    EOS
  end

  test do
    assert_predicate Pathname("/Applications/spacemap.app"), :directory?
  end
end
