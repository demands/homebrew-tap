require "formula"

class SmarterTmuxCompletion < Formula
  homepage 'https://github.com/demands/smarter-tmux-completion'
  url 'https://api.github.com/repos/demands/smarter-tmux-completion/tarball/v0.0.1'
  sha1 'dc65d7b0264ad8af5be9a4cfb25ee607e4dbf33a'

  def install
    bash_completion.install 'smarter-tmux-completion.bash' => "zzz-smarter-tmux"
  end
end
