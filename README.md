# jsheffie/homebrew-tap

Homebrew tap for my tools.

## Formulas

### gh-to-slack

Format and paste GitHub CLI output into Slack with rich links.

## User Install / Upgrade

```bash
# First-time setup: add the tap
brew tap jsheffie/tap

# Install
brew install jsheffie/tap/gh-to-slack

# Upgrade to the latest version
brew update
brew upgrade gh-to-slack
```

## Releasing a New Version

1. **Create a release tag** in the [gh-to-slack](https://github.com/jsheffie/gh-to-slack) source repo (e.g. `v1.0.3`) and publish a GitHub release so the tarball is available.

2. **Get the tarball SHA256**:
   ```bash
   curl -sL https://github.com/jsheffie/gh-to-slack/archive/refs/tags/v1.0.3.tar.gz | shasum -a 256
   ```

3. **Update the formula** in `Formula/gh-to-slack.rb`:
   - Update the `url` to point to the new tag.
   - Update the `sha256` with the value from step 2.

4. **Commit and push** the formula change:
   ```bash
   git add Formula/gh-to-slack.rb
   git commit -m "Update gh-to-slack formula to vX.Y.Z"
   git push origin main
   ```

5. **Verify** users can install/upgrade:
   ```bash
   brew update
   brew upgrade gh-to-slack
   ```
