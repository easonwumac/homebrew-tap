class HelmHost < Formula
  desc "AI agent relay — monitor and control Codex sessions from your iPhone"
  homepage "https://github.com/easonwumac/Helm"
  version "helm-v0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/easonwumac/Helm/releases/download/v#{version}/hostd-macos-aarch64.tar.gz"
      sha256 "7e3014ddd8eb4db6193f105e460679cac2f9dfcf44830137a4541e9d9de5e276"
    end
    on_intel do
      url "https://github.com/easonwumac/Helm/releases/download/v#{version}/hostd-macos-x86_64.tar.gz"
      sha256 "f77d5c5975ff579db0d8de4c4c5a6e966ddaeebe672b276b76d718eb11c804ac"
    end
  end

  def install
    bin.install "hostd"
  end

  test do
    system "#{bin}/hostd", "--version"
  end
end
