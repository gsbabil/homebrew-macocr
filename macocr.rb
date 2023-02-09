class Macocr < Formula
  desc "OCR command line utility for MacOS 10.15+ using the VNRecognizeTextRequest API"
  homepage "https://github.com/gsbabil/MacOCR"
  url "https://github.com/gsbabil/MacOCR/archive/1.0.1.tar.gz"
  sha256 "b12ed6035cf6f6519aabc0b77f944c8ac8196895af84bf5c4ff25c8d0b5dc97a"

  def install
    system "swift", "build",
      "--configuration", "release",
      "--disable-sandbox"
    bin.install ".build/x86_64-apple-macosx/release/macocr"
  end

  test do
    system "#{bin}/macocr", "Dock", "Dock"
  end
end
