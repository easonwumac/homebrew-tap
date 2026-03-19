class HelmHost < Formula
  desc "AI agent relay — monitor and control Codex sessions from your iPhone"
  homepage "https://github.com/easonwumac/Helm"
  version "helm-v0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/easonwumac/Helm/releases/download/v#{version}/hostd-macos-aarch64.tar.gz"
      sha256 "1c0c4399b81e6332fd43e68b8505dc0e1155d64d381b43fc4641e9b462126c3b"
    end
    on_intel do
      url "https://github.com/easonwumac/Helm/releases/download/v#{version}/hostd-macos-x86_64.tar.gz"
      sha256 "62374325fd4a231db11850c48030d0936dd1e3b000839cc1a88a77889b79d742"
    end
  end

  def install
    bin.install "hostd"
  end

  test do
    system "#{bin}/hostd", "--version"
  end
end
