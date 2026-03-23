class BgpLinkManager < Formula
  desc "TUI-based BGP configuration and state manager for multi-vendor routers"
  homepage "https://github.com/rammses/bgp-display"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/rammses/bgp-display/releases/download/v0.1.0/bgp-link-manager-aarch64-apple-darwin.tar.gz"
      sha256 "a04365ae04c3b892d5c0034717b0d09d4cfc8e081d721f607c937ac3be913c21"
    end
    on_intel do
      url "https://github.com/rammses/bgp-display/releases/download/v0.1.0/bgp-link-manager-x86_64-apple-darwin.tar.gz"
      sha256 "102946e157d05455d2c0c42847c9ed05bcf0cc9800e98d302ab7d6b30964306e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rammses/bgp-display/releases/download/v0.1.0/bgp-link-manager-aarch64-linux-gnu.tar.gz"
      sha256 "45c7e4caebab6a294b8da88467be8b7ea6d9c774f28ee403ab1fc1a7e8cd213f"
    end
    on_intel do
      url "https://github.com/rammses/bgp-display/releases/download/v0.1.0/bgp-link-manager-x86_64-linux-gnu.tar.gz"
      sha256 "336675168fae1ff190d452d4e9545b4942f6095601a50fb5a14ea81eab31e311"
    end
  end

  def install
    bin.install "bgp-link-manager"
  end

  test do
    assert_predicate bin/"bgp-link-manager", :executable?
  end
end
