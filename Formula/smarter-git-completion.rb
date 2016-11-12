require "formula"

class SmarterGitCompletion < Formula
  homepage 'https://github.com/demands/smarter-git-completion'
  url 'https://api.github.com/repos/demands/smarter-git-completion/tarball/v0.2.0'
  sha256 '8fe858130c45a8528f4231b587d4f6758126acee8e4494f90ef0e1ab784a8bec'

  def install
    bash_completion.install 'smarter-git-completion.bash' => "zzz-smarter-git"
  end
end
