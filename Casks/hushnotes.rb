cask "hushnotes" do
  version "1.1.4"
  sha256 "53c68a8b90186621716d2da024fd8840691ed5291038d14a1bfb982890ec4185"

  url "https://hushnotes.app/download/HushNotes-#{version}.zip"
  name "HushNotes"
  desc "Sticky notes that float on top of every app"
  homepage "https://hushnotes.app/"

  livecheck do
    url "https://hushnotes.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "HushNotes.app"

  zap trash: [
    "~/Library/Application Support/com.juncolab.hushnotes",
    "~/Library/Caches/com.juncolab.hushnotes",
    "~/Library/HTTPStorages/com.juncolab.hushnotes",
    "~/Library/Preferences/com.juncolab.hushnotes.plist",
    "~/Library/Saved Application State/com.juncolab.hushnotes.savedState",
  ]
end
