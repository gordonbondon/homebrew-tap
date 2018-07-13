class FarleyAwsMissingTools < Formula
  desc "AWS missing tools"
  homepage "https://github.com/AndrewFarley/farley-aws-missing-tools/"
  url "https://github.com/AndrewFarley/farley-aws-missing-tools/archive/70678cd08f1eec832a94c80bc7ee943446b8a2c6.zip"
  version "1.0.0"
  sha256 "391791ec7e1650f2b97ed3d678350483fb897f1f93d0ef4f54f0eda871e32b93"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"aws-autoscaling-rollout/aws-autoscaling-rollout.py" => "aws-autoscaling-rollout"
  end

  test do
    lines = "#{bin}/aws-autoscaling-rollout"
    assert_match "You MUST specify the autoscaler with -a", lines
  end
end
