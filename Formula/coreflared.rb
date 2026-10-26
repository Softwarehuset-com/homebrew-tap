class Coreflared < Formula
  desc "Zero-header tunnels to your services: coreflared + coreflaredctl"
  homepage "https://github.com/Softwarehuset-com/coreflared"
  version "0.1.0-rc8"

  on_macos do
    on_arm do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc8/coreflared_v0.1.0-rc8_darwin_arm64.tar.gz"
      sha256 "01ae861f7db869082fbe62c354389c8fb5a6bc4f99d990bf85cfc637e5c96545"
    end
    on_intel do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc8/coreflared_v0.1.0-rc8_darwin_amd64.tar.gz"
      sha256 "53df24d99c0f4e89dae08c50327fe2d01b0f5bd81815e67aa2cfd62b2b6151b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc8/coreflared_v0.1.0-rc8_linux_arm64.tar.gz"
      sha256 "ae91d6a154934308dd2f9c306a7fb5d9ffccfaefa0a006e02434949095737e9b"
    end
    on_intel do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc8/coreflared_v0.1.0-rc8_linux_amd64.tar.gz"
      sha256 "a54cfefad97bb066df03ccb79ed96911ef477479e216032a35ca90ec0d07c770"
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
