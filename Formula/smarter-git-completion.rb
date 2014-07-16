require "formula"

class SmarterGitCompletion < Formula
  homepage 'https://github.com/demands/smarter-git-completion'
  url 'https://api.github.com/repos/demands/smarter-git-completion/tarball/v0.2.0'
  sha1 '5cbc9d0610f041ecee6db40f448c5a0bf914bdf9'

  def install
    bash_completion.install 'smarter-git-completion.bash' => "zzz-smarter-git"
  end
end
