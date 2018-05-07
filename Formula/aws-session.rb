class AwsSession < Formula
  desc "Manage shell sessions with temporary AWS credentials"
  homepage "https://github.com/ksperling/aws-session"
  head "https://github.com/ksperling/aws-session.git"

  url "https://github.com/ksperling/aws-session/archive/v1.3.0.tar.gz"
  sha256 "1d03d4b1ad941d8204bc61009e46a3f32a92c180b95613d4a7a9b602eebd5d77"

  depends_on "awscli"

  def install
    bin.install "aws-session"
    inreplace bin/"aws-session", /^version=HEAD$/, "version=#{self.version}"
  end

  test do
    system bin/"aws-session", "--help"
  end
end
