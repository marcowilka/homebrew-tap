cask "past-perfect" do
  version "1.3.5"
  sha256 "90f2c86526a7d5d5c893eca9e4d27b797fd94bc11da752a0b126cff2a4d796ff"

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

  depends_on macos: :sonoma

  app "Past Perfect.app"

  zap trash: "~/Library/Containers/de.marcowilka.pastperfect.mac"
end
