cask "mac-heater" do
     version "0.0.4"
     sha256 "3b138a64e881b30297ae224620623f523c002412683141023ad6dd5ff9fcb917"

     url "https://github.com/userrand6/MacHeater/releases/download/v#{version}/MacHeater-#{version}.zip"
     name "Mac Heater"
     desc "Menu bar utility that warms up your MacBook with CPU and GPU load"
     homepage "https://github.com/userrand6/MacHeater"

     depends_on arch: :arm64

     livecheck do
       url :url
       strategy :github_latest
     end

     app "MacHeater.app"

     zap trash: "~/.mac_heater_prefs.json"
   end
