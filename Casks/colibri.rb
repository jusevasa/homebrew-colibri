cask "colibri" do
  version "0.2.0-beta.4"
  sha256 "1b0ee93538e67a1d9b1fe35387a833b19c845aeafa411bb9728463384ab9c79d"

  url "https://github.com/jusevasa/colibri/releases/download/v#{version}/Colibri-#{version}.zip"
  name "Colibrí"
  desc "Terminal para correr varios agentes de código en pestañas"
  homepage "https://github.com/jusevasa/colibri"

  depends_on macos: :monterey

  app "Colibri.app"

  zap trash: [
    "~/.config/colibri",
    "~/Library/Caches/colibri",
    "~/Library/Logs/Colibri",
    "~/Library/Preferences/io.github.jusevasa.colibri.plist",
    "~/Library/Saved Application State/io.github.jusevasa.colibri.savedState",
  ]
end
