cask "godusage" do
  version "1.0.5"
  sha256 "d954c985409f370e7647f0c323a7bb78172e9e25dc449cf90f44dcaafe961e97"

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
