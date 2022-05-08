cask "autopkg" do
  version "2.4.1"
  sha256 "b4e8f9e50b429d19658285aa9a93b6fbf6d11c49743f4ee0026011444ef6c8da"

  url "https://github.com/autopkg/autopkg/releases/download/v#{version}/autopkg-#{version}.pkg",
      verified: "github.com/autopkg/autopkg/"
  name "AutoPkg"
  desc "Install and configure AutoPkg"
  homepage "https://github.com/autopkg/autopkg"

  pkg "autopkg-#{version}.pkg"

  uninstall pkgutil: "com.github.autopkg.autopkg"
end