require "formula"

class SmarterGitCompletion < Formula
  homepage 'https://github.com/demands/smarter-git-completion'
  url 'https://api.github.com/repos/demands/smarter-git-completion/tarball/v0.1.0'
  sha1 '20952a18ea86fd97f5b54daf9cbe9c5dddabd6bf'

  def install
    bash_completion.install 'smarter-git-completion.bash' => "zzz-smarter-git"
  end
end
