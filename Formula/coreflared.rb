class Coreflared < Formula
  desc "Zero-header tunnels to your services: coreflared + coreflaredctl"
  homepage "https://github.com/Softwarehuset-com/coreflared"
  version "0.1.0-rc7"

  on_macos do
    on_arm do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc7/coreflared_v0.1.0-rc7_darwin_arm64.tar.gz"
      sha256 "60235e36469151eac705fc4fa8933b09d5f46d13c57a1e2cc01f10abebf482f8"
    end
    on_intel do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc7/coreflared_v0.1.0-rc7_darwin_amd64.tar.gz"
      sha256 "db49c8f3d7ef244b3f31fd10c7e8285d58d1180884c608ab895795c595a419b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc7/coreflared_v0.1.0-rc7_linux_arm64.tar.gz"
      sha256 "51aa09ea1fde634b939eeb8145ad65ce1f0cef54d4d21203223d8b67bb991a1b"
    end
    on_intel do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc7/coreflared_v0.1.0-rc7_linux_amd64.tar.gz"
      sha256 "9c68fa4eba65152671b5fc53cf471aff598f8c4177807b45ef59563278908775"
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
