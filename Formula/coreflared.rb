class Coreflared < Formula
  desc "Zero-header tunnels to your services: coreflared + coreflaredctl"
  homepage "https://github.com/Softwarehuset-com/coreflared"
  version "0.1.0-rc3"

  on_macos do
    on_arm do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc3/coreflared_v0.1.0-rc3_darwin_arm64.tar.gz"
      sha256 "5cda819c61bf68d1c209e3e5ffbf9946e352252673e370fa4cbb8582a28b8b2f"
    end
    on_intel do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc3/coreflared_v0.1.0-rc3_darwin_amd64.tar.gz"
      sha256 "3ae4f2291a22a8d9907e0ef2d9d104946d8b100d119d1d79eeb83fb792be95b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc3/coreflared_v0.1.0-rc3_linux_arm64.tar.gz"
      sha256 "82c51ec26390085c25f1a2714809f1058b9720783e27da64e41da2fb6e49b14d"
    end
    on_intel do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc3/coreflared_v0.1.0-rc3_linux_amd64.tar.gz"
      sha256 "c3e8bbc853a30d2e2bed981d4a328d85a1554b02dcfcb033416c326b7b802277"
    end
  end

  def install
    bin.install "coreflared"
    bin.install "coreflaredctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coreflared --version")
  end
end
