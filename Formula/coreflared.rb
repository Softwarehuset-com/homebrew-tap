class Coreflared < Formula
  desc "Zero-header tunnels to your services: coreflared + coreflaredctl"
  homepage "https://github.com/Softwarehuset-com/coreflared"
  version "0.1.0-rc1"

  on_macos do
    on_arm do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc1/coreflared_v0.1.0-rc1_darwin_arm64.tar.gz"
      sha256 "e662f43046c903425bc15ec7b5a5420523e94d0f37521822411655275777434f"
    end
    on_intel do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc1/coreflared_v0.1.0-rc1_darwin_amd64.tar.gz"
      sha256 "f23dfe6dd0b2f9cd86a03cd406c38eeb595f5d4576d548a84d315a3a090b0f27"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc1/coreflared_v0.1.0-rc1_linux_arm64.tar.gz"
      sha256 "84f18f10bfbae85554e1b4a806d32965c6ee82b8d499603341195bbc378ca0df"
    end
    on_intel do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc1/coreflared_v0.1.0-rc1_linux_amd64.tar.gz"
      sha256 "50aee0e3760f44f5e684fb8f01b98f3c521f29161c1e15ffff6dc7f8bd3f029e"
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
