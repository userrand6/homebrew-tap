cask "mac-heater" do
     version "0.0.1"
     sha256 "sha256:244667d953859d16ad4e4ceb3446186265766f1a35782c1973158832afba0f77"

     url "https://github.com/userrand6/<this-repo>/releases/download/v#{version}/MacHeater-#{version}.zip"
     name "Mac Heater"
     desc "Menu bar utility that warms up your MacBook with CPU and GPU load"
     homepage "https://github.com/userrand6/<this-repo>"

     depends_on arch: :arm64

     livecheck do
       url :url
       strategy :github_latest
     end

     app "MacHeater.app"

     zap trash: "~/.mac_heater_prefs.json"
   end
