class Coreflared < Formula
  desc "Zero-header tunnels to your services: coreflared + coreflaredctl"
  homepage "https://github.com/Softwarehuset-com/coreflared"
  version "0.1.0-rc4"

  on_macos do
    on_arm do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc4/coreflared_v0.1.0-rc4_darwin_arm64.tar.gz"
      sha256 "6d237d42bd0d6da59f7d9fa5ec311d70e0214dd1da08f70177106238eb6d6bce"
    end
    on_intel do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc4/coreflared_v0.1.0-rc4_darwin_amd64.tar.gz"
      sha256 "8207c4fe841f5346d3ee96e296330790cd34c7326ff44ef55b3838bd61df0bf3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc4/coreflared_v0.1.0-rc4_linux_arm64.tar.gz"
      sha256 "edf3cbe178b940ebefa127f5e854cd4d4641b4066ae66f0e5c9cb49164b3fa21"
    end
    on_intel do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc4/coreflared_v0.1.0-rc4_linux_amd64.tar.gz"
      sha256 "581dc1fa224508805f47969995448fab885f156ec8b4ae75ecc463a2f10670cf"
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
