class BgpLinkManager < Formula
  desc "TUI-based BGP configuration and state manager for multi-vendor routers"
  homepage "https://github.com/rammses/bgp-display"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/rammses/bgp-display/releases/download/v0.3.0/bgp-link-manager-aarch64-apple-darwin.tar.gz"
      sha256 "4315cd992c12f09426fdf19fd22f6217b00a2e842cc4e81bcee9beec50e9581c"
    end
    on_intel do
      url "https://github.com/rammses/bgp-display/releases/download/v0.3.0/bgp-link-manager-x86_64-apple-darwin.tar.gz"
      sha256 "06522d32665ee2f46e83df64400d74d8bf4166cbe17973b2f588b1fd9ff9c871"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rammses/bgp-display/releases/download/v0.3.0/bgp-link-manager-aarch64-linux-gnu.tar.gz"
      sha256 "c91ff874faa373a3daebc9f25717259d8551dce70efc5ab021e01460b29a7a22"
    end
    on_intel do
      url "https://github.com/rammses/bgp-display/releases/download/v0.3.0/bgp-link-manager-x86_64-linux-gnu.tar.gz"
      sha256 "cc4deab538eabaecdc53941393b5b51be2188b920a9cd76f84e5384b932030a3"
    end
  end

  def install
    bin.install "bgp-link-manager"
  end

  test do
    assert_predicate bin/"bgp-link-manager", :executable?
  end
end
