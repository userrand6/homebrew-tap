cask "mac-heater" do
  version "0.0.5"
  sha256 "a50cbfd5bdf117d476b6369d1a8f1b4ff578f69acfb2a473420f3504dde08399"

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
