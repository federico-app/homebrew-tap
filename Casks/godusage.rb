cask "godusage" do
  version "1.6.1"
  sha256 "a7b59c29a6caa9b4148cf374be01e5bd64d6b48835b33af7f7ced874151db7a8"

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
