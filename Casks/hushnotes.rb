cask "hushnotes" do
  version "2.0"
  sha256 "0804423ec710c1515dd15f788e4948e40a4308d7c0406b947ef95e8c6d7d57f8"

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
