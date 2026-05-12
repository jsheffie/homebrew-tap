cask "spacemap" do
  version "0.1.0"
  sha256 "71e7ca7f35b7b286aba86f358c49d7036af2b814559b0b512e8f2a87d0eedcf8"

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
