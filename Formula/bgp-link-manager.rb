class BgpLinkManager < Formula
  desc "TUI-based BGP configuration and state manager for multi-vendor routers"
  homepage "https://github.com/rammses/bgp-display"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/rammses/bgp-display/releases/download/v0.1.0/bgp-link-manager-aarch64-apple-darwin.tar.gz"
      sha256 "dd59a91460c1258d2bcbee81d206387ad44c244b072b17e7c9c9e125221e35e1"
    end
    on_intel do
      url "https://github.com/rammses/bgp-display/releases/download/v0.1.0/bgp-link-manager-x86_64-apple-darwin.tar.gz"
      sha256 "22731e5032f3c8527af941747e0dad61e775f59bf51114c2e900b86703057f7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rammses/bgp-display/releases/download/v0.1.0/bgp-link-manager-aarch64-linux-gnu.tar.gz"
      sha256 "a1983999048ffd9f9359aced7a012900728f005ccc9ac4105d3daa5f9f44d67c"
    end
    on_intel do
      url "https://github.com/rammses/bgp-display/releases/download/v0.1.0/bgp-link-manager-x86_64-linux-gnu.tar.gz"
      sha256 "09249301fad07fc8873f42ed1a453fccfd6584a550a4ae2d15ea184871d02751"
    end
  end

  def install
    bin.install "bgp-link-manager"
  end

  test do
    assert_predicate bin/"bgp-link-manager", :executable?
  end
end
