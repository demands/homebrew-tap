require "formula"

class SmarterTmuxCompletion < Formula
  homepage "https://github.com/demands/smarter-tmux-completion"
  url "https://github.com/demands/smarter-tmux-completion/archive/v0.0.1.tar.gz"
  sha1 "55b78228cfb611d4eb4659944338dc920db75d90"

  def install
    bash_completion.install 'smarter-tmux-completion.bash'
  end
end
