class BgpLinkManager < Formula
  desc "TUI-based BGP configuration and state manager for multi-vendor routers"
  homepage "https://github.com/rammses/bgp-display"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/rammses/bgp-display/releases/download/v0.2.0/bgp-link-manager-aarch64-apple-darwin.tar.gz"
      sha256 "e40b0ee7f69d8110388e02bd61acb8efb045458012a513a7f74f3af45849bd94"
    end
    on_intel do
      url "https://github.com/rammses/bgp-display/releases/download/v0.2.0/bgp-link-manager-x86_64-apple-darwin.tar.gz"
      sha256 "dd176db66b6c2e849b297ac75a03003d1e981c8315efbd077cb47a2b2ae3fe59"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rammses/bgp-display/releases/download/v0.2.0/bgp-link-manager-aarch64-linux-gnu.tar.gz"
      sha256 "67050a1511d163b20fa1575026063efff4d46ac7bf9eb98276e3e388c03b958d"
    end
    on_intel do
      url "https://github.com/rammses/bgp-display/releases/download/v0.2.0/bgp-link-manager-x86_64-linux-gnu.tar.gz"
      sha256 "4785888401c0cd3cbf2917d94e59674d06376e745684a3e845dddac67f966b36"
    end
  end

  def install
    bin.install "bgp-link-manager"
  end

  test do
    assert_predicate bin/"bgp-link-manager", :executable?
  end
end
