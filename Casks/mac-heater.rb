cask "mac-heater" do
     version "0.0.3"
     sha256 "sha256:3e99a99a98c093a3f6bdb46149c27d8d2892be4ae95ab81b8c183a91abb8ea1b"

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
