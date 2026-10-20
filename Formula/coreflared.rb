class Coreflared < Formula
  desc "Zero-header tunnels to your services: coreflared + coreflaredctl"
  homepage "https://github.com/Softwarehuset-com/coreflared"
  version "0.1.0-rc6"

  on_macos do
    on_arm do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc6/coreflared_v0.1.0-rc6_darwin_arm64.tar.gz"
      sha256 "feb2e73de70a86121387a03f8d61facf0458ae8f9ebc16f42eeb21673f5784ab"
    end
    on_intel do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc6/coreflared_v0.1.0-rc6_darwin_amd64.tar.gz"
      sha256 "f6f2810aad396fccc38584adcb4a510b32eca9c85a64ddf7a4a0926fb95998ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc6/coreflared_v0.1.0-rc6_linux_arm64.tar.gz"
      sha256 "2dc0f47d0324246b1662e57f0b6a88b995976f3894808dc5583e7267aa347641"
    end
    on_intel do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc6/coreflared_v0.1.0-rc6_linux_amd64.tar.gz"
      sha256 "7a2f2ffc1503f2f1cda767c7d7808cd2e9142e11dd1db58ef57e6dab6e06316e"
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
