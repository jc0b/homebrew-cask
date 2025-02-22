cask "drawio" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "18.0.1"

  if Hardware::CPU.intel?
    sha256 "79e38e1dee751d1e79b2154db87126a5a9e727cb5b74f1ac9b67ee6dec59d5e2"
  else
    sha256 "56279bb1013b0394bbd6d88f43438368b940a6cf7c8b9464a651a6fd867f8114"
  end

  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{arch}-#{version}.dmg",
      verified: "github.com/jgraph/drawio-desktop/"
  name "draw.io Desktop"
  desc "Draw.io is free online diagram software"
  homepage "https://www.diagrams.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "draw.io.app"

  zap trash: [
    "~/Library/Application Support/draw.io",
    "~/Library/Caches/com.jgraph.drawio.desktop",
    "~/Library/Logs/draw.io",
    "~/Library/Preferences/com.jgraph.drawio.desktop.helper.plist",
    "~/Library/Preferences/com.jgraph.drawio.desktop.plist",
    "~/Library/Saved Application State/com.jgraph.drawio.desktop.savedState",
    "~/Library/WebKit/com.jgraph.drawio.desktop",
  ]
end
