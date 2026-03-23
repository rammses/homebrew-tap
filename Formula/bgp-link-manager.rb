class BgpLinkManager < Formula
  desc "TUI-based BGP configuration and state manager for multi-vendor routers"
  homepage "https://github.com/rammses/bgp-display"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/rammses/bgp-display/releases/download/v0.1.0/bgp-link-manager-aarch64-apple-darwin.tar.gz"
      sha256 "ff3a81044fdfcd6983edc40bf3745014d849e9e6157ef44c13caf63b4ccf0f7b"
    end
    on_intel do
      url "https://github.com/rammses/bgp-display/releases/download/v0.1.0/bgp-link-manager-x86_64-apple-darwin.tar.gz"
      sha256 "fe419cc6d2f751c4932b73fdef7bd771645a7559ce5bfa107da717e1d23e8055"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rammses/bgp-display/releases/download/v0.1.0/bgp-link-manager-aarch64-linux-gnu.tar.gz"
      sha256 "73059e79f56fdf2dc2652ddc54d7a3d19155b4e421552122cecfe7ee9394fbaf"
    end
    on_intel do
      url "https://github.com/rammses/bgp-display/releases/download/v0.1.0/bgp-link-manager-x86_64-linux-gnu.tar.gz"
      sha256 "b93a4340caf16a92f9b6ba260e01fccf35ab87362373672e6d54b31375142a53"
    end
  end

  def install
    bin.install "bgp-link-manager"
  end

  test do
    assert_predicate bin/"bgp-link-manager", :executable?
  end
end
