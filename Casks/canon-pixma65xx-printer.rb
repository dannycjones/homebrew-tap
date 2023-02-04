cask "canon-pixma65xx-printer" do
  version "16.40.1.0"
  sha256 "f6365713e03cd0406a10e58e25018a59982fce4cfb956e4d4a908de842faf840"

  url "https://gdlp01.c-wss.com/gds/2/0100005642/08/mcpd-mac-ix6500-#{version.dots_to_underscores}-ea21_3.dmg",
      verified: "gdlp01.c-wss.com/gds/"
  name "Canon Pixma ix65XX series Printer Driver"
  desc "Printer driver for Canon Pixma ix65XX series printers"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/drivers-downloads"

  livecheck do
    skip "No version information available"
  end

  pkg "PrinterDriver_ix6500 series_#{format("%<major>02d%<minor>02d%<patch>02d", major: version.major, minor: version.minor, patch: version.patch.to_i)}.pkg"

  uninstall pkgutil: "jp.co.canon.pkg.iX6500-#{version.no_dots}"
end
