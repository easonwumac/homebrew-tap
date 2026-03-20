class HelmHost < Formula
  desc "AI agent relay — monitor and control Codex sessions from your iPhone"
  homepage "https://github.com/easonwumac/Helm"
  version "helm-v0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/easonwumac/Helm/releases/download/v#{version}/hostd-macos-aarch64.tar.gz"
      sha256 "0ce8893bf91b2921080e9abeab3d71b9bd2fcde6181e8ed9d475132eae69e1e4"
    end
    on_intel do
      url "https://github.com/easonwumac/Helm/releases/download/v#{version}/hostd-macos-x86_64.tar.gz"
      sha256 "2104bb32ccb500472ed36c94caf5940016af49f39c29f7deb7a9db7aa3eac82b"
    end
  end

  def install
    bin.install "hostd"
  end

  test do
    system "#{bin}/hostd", "--version"
  end
end
