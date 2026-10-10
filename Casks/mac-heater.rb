cask "mac-heater" do
     version "0.0.2"
     sha256 "sha256:e65ac9e9b1c8a0b1b99c971bb56a40caaae9014aa476988426d569b49fda4ceb"

     url "https://github.com/userrand6/<this-repo>/releases/download/v#{version}/MacHeater-#{version}.zip"
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
