class AwsSession < Formula
  desc "Manage shell sessions with temporary AWS credentials"
  homepage "https://github.com/ksperling/aws-session"
  head "https://github.com/ksperling/aws-session.git"

  url "https://github.com/ksperling/aws-session/archive/v1.2.0.tar.gz"
  sha256 "3a3e44d4939a7c99a4decdae2d688b6391fc97e41c574a0e0f9fc802ea1a8d63"

  depends_on "awscli" => :run

  def install
    bin.install "aws-session"
    inreplace bin/"aws-session", /^version=HEAD$/, "version=#{self.version}"
  end

  test do
    system bin/"aws-session", "--help"
  end
end
