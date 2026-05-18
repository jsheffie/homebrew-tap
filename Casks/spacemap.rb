cask "spacemap" do
  version "0.2.0"
  sha256 "312f3edfebb179f101edb1d40fe5d67cb2b4cbcdeab7974851e3308d0a9a3ebf"

  url "https://github.com/jsheffie/spacemap/releases/download/v#{version}/spacemap-#{version}.zip"
  name "spacemap"
  desc "Floating yabai workspace grid overlay for macOS"
  homepage "https://github.com/jsheffie/spacemap"

  app "spacemap-#{version}/spacemap.app"

  postflight do
    system_command "xattr", args: ["-rd", "com.apple.quarantine", "#{appdir}/spacemap.app"], sudo: true
  end

  caveats <<~EOS
    If macOS blocks the app, install with:
      brew install --cask --no-quarantine jsheffie/tap/spacemap

    Launch spacemap once to trigger the Accessibility permission prompt:
      open /Applications/spacemap.app

    Then go to System Settings → Privacy & Security → Accessibility and grant
    permission. The Ctrl+Space hotkey activates automatically — no restart needed.

    Requires yabai to be installed and running:
      brew install koekeishiya/formulae/yabai
  EOS
end
