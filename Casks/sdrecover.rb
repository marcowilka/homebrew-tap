cask "sdrecover" do
  version "1.0.1"
  sha256 "e11543d3b0b4dc18fe3ee6d7bdb7eb63e0cc3484d1130f3115e73fe79345859e"

  url "https://sdrecover.marcowilka.de/downloads/SDRecover-#{version}-mac.dmg"
  name "SDRecover"
  desc "Recover deleted files from SD cards and removable media"
  homepage "https://sdrecover.marcowilka.de/"

  livecheck do
    url "https://sdrecover.marcowilka.de/downloads/sdrecover.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :sonoma

  app "SDRecover.app"

  zap trash: [
    "~/Library/Application Support/SDRecover",
    "~/Library/Preferences/com.sdrecover.app.plist",
    "~/Library/Preferences/de.marcowilka.sdrecover.plist",
  ]
end
