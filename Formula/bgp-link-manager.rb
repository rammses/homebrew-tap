class BgpLinkManager < Formula
  desc "TUI-based BGP configuration and state manager for multi-vendor routers"
  homepage "https://github.com/rammses/bgp-display"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/rammses/bgp-display/releases/download/v0.1.0/bgp-link-manager-aarch64-apple-darwin.tar.gz"
      sha256 "0e7259fddc5fb02f19427b235f7b0d051d2ce8eaecc47a164634abf3f92cc613"
    end
    on_intel do
      url "https://github.com/rammses/bgp-display/releases/download/v0.1.0/bgp-link-manager-x86_64-apple-darwin.tar.gz"
      sha256 "ca817a6c42d6774c6546db75472f7b1c87e337cf959f59faf81b8202bf956610"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rammses/bgp-display/releases/download/v0.1.0/bgp-link-manager-aarch64-linux-gnu.tar.gz"
      sha256 "512b867d6ed08718310dcc9c406a8a106070a39002cbdd651d807b55165005ab"
    end
    on_intel do
      url "https://github.com/rammses/bgp-display/releases/download/v0.1.0/bgp-link-manager-x86_64-linux-gnu.tar.gz"
      sha256 "d0cfbf4e602e8cd207853591a534edcaa12ddc377ad6368dc65077e9025c61a7"
    end
  end

  def install
    bin.install "bgp-link-manager"
  end

  test do
    assert_predicate bin/"bgp-link-manager", :executable?
  end
end
