cask "hushnotes" do
  version "2.0"
  sha256 "8044783c283c0f79d8d733b71389e13c8bba1612f6d2384c0a42567edcf5e92d"

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
