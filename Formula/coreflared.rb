class Coreflared < Formula
  desc "Zero-header tunnels to your services: coreflared + coreflaredctl"
  homepage "https://github.com/Softwarehuset-com/coreflared"
  version "0.1.0-rc2"

  on_macos do
    on_arm do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc2/coreflared_v0.1.0-rc2_darwin_arm64.tar.gz"
      sha256 "0ed4bec2cc6c57086a0ae4ddfa223e2d1529e11af9259be26188f4c0ad4067b9"
    end
    on_intel do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc2/coreflared_v0.1.0-rc2_darwin_amd64.tar.gz"
      sha256 "dc21a239ac1e3bfffdbd89f4f3fcf06103f69588f9adfba8663a22819dd59fe5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc2/coreflared_v0.1.0-rc2_linux_arm64.tar.gz"
      sha256 "c92b16ce034989fc2bd57983ab78029cad3952853e85378ca6258d9c3053327b"
    end
    on_intel do
      url "https://github.com/Softwarehuset-com/coreflared/releases/download/v0.1.0-rc2/coreflared_v0.1.0-rc2_linux_amd64.tar.gz"
      sha256 "42d2f18fdaca866e5c006a757e7e27fd97ff0831626dca57ac560297668e0ef9"
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
