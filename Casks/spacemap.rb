cask "spacemap" do
  version "0.2.2"
  sha256 "d5ce11f71938cce95a5a7f9cb5c73cfb0d51ac669ed2acb55ae62a2ed25535fb"

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
