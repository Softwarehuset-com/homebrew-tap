class Coreflared < Formula
  desc "Zero-header tunnels to your services: coreflared + coreflaredctl"
  homepage "https://github.com/Softwarehuset-com/coreflared"
  version "0.1.0-rc5"

  on_macos do
    on_arm do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc5/coreflared_v0.1.0-rc5_darwin_arm64.tar.gz"
      sha256 "44d1292e8856013e71aefc78519a18375c8718ed3b39ca60f41b6897c29f38da"
    end
    on_intel do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc5/coreflared_v0.1.0-rc5_darwin_amd64.tar.gz"
      sha256 "f74358af806f1007bd98d9cb4329c24926a5af8c198953a24c1c31174e19335b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc5/coreflared_v0.1.0-rc5_linux_arm64.tar.gz"
      sha256 "3071ff62c9b5eadef3402d2ac509395bd0336c1e136eec294f60ef6d39ffb5d1"
    end
    on_intel do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc5/coreflared_v0.1.0-rc5_linux_amd64.tar.gz"
      sha256 "2091278c614c806708a9b2e1504c0554dbd6fe24c9f1b0d74c1579cc64f50b6d"
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
