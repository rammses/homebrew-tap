class BgpLinkManager < Formula
  desc "TUI-based BGP configuration and state manager for multi-vendor routers"
  homepage "https://github.com/rammses/bgp-display"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/rammses/bgp-display/releases/download/v0.1.0/bgp-link-manager-aarch64-apple-darwin.tar.gz"
      sha256 "409b0bb1cdc356c34bf89e921a6ac660e99721a61d83045f907dd26ee65ba77b"
    end
    on_intel do
      url "https://github.com/rammses/bgp-display/releases/download/v0.1.0/bgp-link-manager-x86_64-apple-darwin.tar.gz"
      sha256 "f2992485d7848ab972db8ff32f3e7d5e9454061cda4632fec5a4be681c76b5ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rammses/bgp-display/releases/download/v0.1.0/bgp-link-manager-aarch64-linux-gnu.tar.gz"
      sha256 "aca2816b58c0ba4cd3dbedec837b4bb95a0d62f29092596e54f81e6d2241ae3d"
    end
    on_intel do
      url "https://github.com/rammses/bgp-display/releases/download/v0.1.0/bgp-link-manager-x86_64-linux-gnu.tar.gz"
      sha256 "7c9da2787f666c275c6e997d1adcdcce3563872aa30ff569d8a0933a39e993ce"
    end
  end

  def install
    bin.install "bgp-link-manager"
  end

  test do
    assert_predicate bin/"bgp-link-manager", :executable?
  end
end
