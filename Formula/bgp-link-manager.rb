class BgpLinkManager < Formula
  desc "TUI-based BGP configuration and state manager for multi-vendor routers"
  homepage "https://github.com/rammses/bgp-display"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/rammses/bgp-display/releases/download/v0.4.0/bgp-link-manager-aarch64-apple-darwin.tar.gz"
      sha256 "9fa243535602093d1c4f5299f6ecede7540202a3b9c3e7068e093844ce0d0177"
    end
    on_intel do
      url "https://github.com/rammses/bgp-display/releases/download/v0.4.0/bgp-link-manager-x86_64-apple-darwin.tar.gz"
      sha256 "f8ff56fdf35361274856963c70d2d9de4f54912a1c8ccf3956ef0b6dcf2d12cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rammses/bgp-display/releases/download/v0.4.0/bgp-link-manager-aarch64-linux-gnu.tar.gz"
      sha256 "40e4f5b2752ab84399c0b4089b18e810bf80cac12f40b5ed13382ab7fedabe20"
    end
    on_intel do
      url "https://github.com/rammses/bgp-display/releases/download/v0.4.0/bgp-link-manager-x86_64-linux-gnu.tar.gz"
      sha256 "9125b4f7feea23efd24f4cc9321c8eeb2157eca1b36e1be72432325752096398"
    end
  end

  def install
    bin.install "bgp-link-manager"
  end

  test do
    assert_predicate bin/"bgp-link-manager", :executable?
  end
end
