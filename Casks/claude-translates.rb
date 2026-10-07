cask "claude-translates" do
  version "1.0"
  sha256 "dd2dd9803aacd760b223638407c804c96218345e612efebdeafebd6fbfff3d86"

  url "https://github.com/paxento/homebrew-tap/releases/download/v#{version}/ClaudeTranslates-#{version}.dmg"
  name "Claude Translates"
  desc "Translation window for macOS that runs on your Claude subscription"
  homepage "https://github.com/paxento/homebrew-tap"

  depends_on macos: ">= :ventura"

  app "Claude Translates.app"

  caveats <<~EOS
    Claude Translates calls the `claude` command, so Claude Code must be
    installed and signed in:

      https://claude.com/claude-code

    Then `claude -p "say ok"` should answer without asking for an API key.
  EOS

  zap trash: [
    "~/Library/Preferences/com.spankevich.claude-translates.plist",
    "~/Library/Caches/com.spankevich.claude-translates",
  ]
end
