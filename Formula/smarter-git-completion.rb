require "formula"

class SmarterGitCompletion < Formula
  homepage "https://github.com/demands/smarter-git-completion"
  url "https://github.com/demands/smarter-git-completion/archive/v0.1.0.tar.gz"
  sha1 "118f7f8c089fa680401ac185cef52cb9ff122af1"

  def install
    bash_completion.install 'smarter-git-completion.bash' => "zzz-smarter-git"
  end
end
