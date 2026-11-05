cask "godusage" do
  version "1.6.0"
  sha256 "461eba4e05863938eb56d7120feac2909f2146447960af2c8a504832ebf360cd"

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
