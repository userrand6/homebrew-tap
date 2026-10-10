cask "mac-heater" do
     version "0.0.3"
     sha256 "sha256:c85d7ce515052787d66bc08e1e123cdd816555d725b2e28c01ac44c2b122a27f"

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
