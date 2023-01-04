cask "evolis-badgy1-printer" do
  version "4.13.49.26"
  sha256 "b06adbd8c62d441d379d8a3c3bee242b3f2d41be8e277a727a9995c88d1685ba"

  url "https://downloads.evolis.com/Badgy/macintosh/evoliscardprinter-#{version}.pkg_.zip"
  name "evolis-badgy1-printer"
  desc "Printer driver for Evolis Badgy1 card printer"
  homepage "https://myplace.evolis.com/s/product/badgy-1/01t5p00000CXSch"

  livecheck do
    skip "Product is end of life"
  end

  pkg "EvolisCardPrinter-#{version}.pkg"

  # Note, known issue with some files not being deleted.
  # Namely: '/USR/X11', '/USR/X11R6'
  uninstall pkgutil: "Evolis Card Printer"
end
