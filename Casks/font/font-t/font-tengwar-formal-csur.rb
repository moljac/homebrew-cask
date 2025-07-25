cask "font-tengwar-formal-csur" do
  version "11"
  sha256 "924c282f7f967ecf6ca81003d95d4355dcccda9cf3fb7afdc746cb9d8f8250c7"

  url "https://downloads.sourceforge.net/freetengwar/TengwarFormalCSUR#{version}.zip"
  name "Tengwar Formal CSUR"
  homepage "https://freetengwar.sourceforge.net/formal.html"

  livecheck do
    url "https://sourceforge.net/projects/freetengwar/rss?path=/TengwarFont"
    regex(%r{url=.*?/TengwarFormalCSUR[._-]?v?(\d+(?:\.\d+)*)\.zip}i)
  end

  no_autobump! because: :requires_manual_review

  font "TengwarFormalCSUR#{version}/TengwarFormalCSUR.ttf"

  # No zap stanza required
end
