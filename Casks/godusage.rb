cask "godusage" do
  version "1.8.1"
  sha256 "e38f77b230cd3ac0df7e7e5b3e1eb1ba75b06afd6a5c76e8acefa4b4589cfd51"

  url "https://github.com/federico-app/godusage/releases/download/v#{version}/GodUsage-#{version}.dmg"
  name "GodUsage"
  desc "Menu bar usage meters for AI providers"
  homepage "https://federico-app.github.io/godusage/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "GodUsage.app"

  zap trash: [
    "~/Library/Application Support/GodUsage",
    "~/Library/Caches/com.montinovo.godusage",
    "~/Library/HTTPStorages/com.montinovo.godusage",
    "~/Library/Logs/GodUsage",
    "~/Library/Preferences/com.montinovo.godusage.plist",
  ]
end
