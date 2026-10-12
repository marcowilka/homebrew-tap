cask "paste-maker" do
  version "1.0.2"
  sha256 "a7a2a1468884d1b78c14f75f561445b3cf1a4fcbdb37f9d89f5fcd4ce7346abb"

  url "https://pastemaker.marcowilka.de/downloads/PasteMaker-#{version}-mac.dmg"
  name "PasteMaker"
  desc "Menu-bar clipboard history"
  homepage "https://pastemaker.marcowilka.de/"

  livecheck do
    url "https://pastemaker.marcowilka.de/downloads/paste-maker.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :sonoma

  app "PasteMaker.app"

  zap trash: [
    "~/Library/Application Support/PasteMaker",
    "~/Library/Application Support/Pastiche",
    "~/Library/Containers/de.marcowilka.pastemaker",
  ]
end
