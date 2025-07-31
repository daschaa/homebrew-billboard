class Billboard < Formula
  desc "Show text in your Mac menu bar"
  homepage "https://github.com/daschaa/billboard"
    version "1.0.0"

    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/daschaa/billboard/releases/download/v1.0.0/billboard-x86_64.zip"
        sha256 "4310d51b38b108e4709c348c29ed8ae4dcf8786f8fdc903932fa91fe217444bf"
      elsif Hardware::CPU.arm?
        url "https://github.com/daschaa/billboard/releases/download/v1.0.0/billboard-arm64.zip"
        sha256 "cebfa25d3463c17c3e85cdead2aeeaa3bdb5a92022232c5aa36e96ec107f553f"
      end
    end

    def install
      bin.install "billboard"
    end

    test do
      system "#{bin}/billboard", "--version"
    end
end