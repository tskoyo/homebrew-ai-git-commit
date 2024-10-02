class AiGitCommit < Formula
  desc "AI-based git commit message generator"
  homepage "https://github.com/tskoyo/ai-git-commit"
  url "https://github.com/tskoyo/ai-git-commit/archive/v1.0.0.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  version "1.0.0"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "ai-git-commit", "main.go"
    bin.install "ai-git-commit"
    system "git", "config", "--global", "alias.ai-commit", "!ai-git-commit"
  end
end
