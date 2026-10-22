cask "past-perfect" do
  version "1.3.0"
  sha256 "519063fb9d346fc70977716db4aed7312264acb3c4cfb10742f3d5f1d387b020"

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
