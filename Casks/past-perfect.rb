cask "past-perfect" do
  version "1.2.8"
  sha256 "601ee3e851d73678a324fcca66cde7707213a53cef76eb4ef754efb8b89c8a69"

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
