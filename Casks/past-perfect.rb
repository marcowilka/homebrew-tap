cask "past-perfect" do
  version "1.2.7"
  sha256 "6218f0b8a9507c03a73b0b6591b459709fc16dd6282629d7cd1b5467f8db3e9e"

  url "https://pastperfect.marcowilka.de/downloads/PastPerfect-#{version}-mac.dmg"
  name "Past Perfect"
  desc "On-device photo restoration and editing"
  homepage "https://pastperfect.marcowilka.de/"

  livecheck do
    url "https://pastperfect.marcowilka.de/downloads/past-perfect.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :sonoma"

  app "Past Perfect.app"

  zap trash: [
    "~/Library/Containers/de.marcowilka.pastperfect.mac",
  ]
end
