cask "mac-heater" do
  version "0.0.5"
  sha256 "dfd6e922fe0d686079d79847fdfd1ee4e00151b029007c233bd5b5598c5610ca"

  url "https://github.com/userrand6/MacHeater/releases/download/v#{version}/MacHeater-#{version}.zip"
  name "Mac Heater"
  desc "Menu bar utility that warms up your MacBook with CPU and GPU load"
  homepage "https://github.com/userrand6/MacHeater"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "MacHeater.app"

  zap trash: "~/.mac_heater_prefs.json"
end
