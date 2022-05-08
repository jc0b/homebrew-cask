cask "autopkg" do
  version "2.4.1"
  sha256 "01cbe230c0e4301a8b6fa93d812c69a294e88fc253323a44935eefc61b9f4160"

  url "https://github.com/autopkg/autopkg/releases/download/v#{version}/autopkg-#{version}.pkg",
      verified: "github.com/autopkg/autopkg/"
  name "AutoPkg"
  desc "Install and configure AutoPkg"
  homepage "https://github.com/autopkg/autopkg"

  pkg "autopkg-#{version}.pkg"

  uninstall pkgutil: "com.github.autopkg.autopkg"
end