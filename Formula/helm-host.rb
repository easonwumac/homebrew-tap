class HelmHost < Formula
  desc "AI agent relay — monitor and control Codex sessions from your iPhone"
  homepage "https://github.com/easonwumac/Helm"
  version "helm-v0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/easonwumac/Helm/releases/download/v#{version}/hostd-macos-aarch64.tar.gz"
      sha256 "fa2f0f2713539e9e664a83a7c366dbe654aabc69c1237274745faeb7cbe8a653"
    end
    on_intel do
      url "https://github.com/easonwumac/Helm/releases/download/v#{version}/hostd-macos-x86_64.tar.gz"
      sha256 "b0d1ad66eb50adee1cb5595192b66c47f4db1a805e435179cc647bdf4117370b"
    end
  end

  def install
    bin.install "hostd"
  end

  test do
    system "#{bin}/hostd", "--version"
  end
end
