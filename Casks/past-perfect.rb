cask "past-perfect" do
  version "1.3.0"
  sha256 "436efd603e80869e31cb55fbb9273bce59f3f857947eec2e3e4c812c32968b88"

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
