cask "godusage" do
  version "1.6.2"
  sha256 "1d2270d0ab1504685d6f33dc2aaee9eebe89b0f910604167cf1155beca1d9167"

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
