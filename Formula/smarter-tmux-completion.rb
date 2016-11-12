require "formula"

class SmarterTmuxCompletion < Formula
  homepage 'https://github.com/demands/smarter-tmux-completion'
  url 'https://api.github.com/repos/demands/smarter-tmux-completion/tarball/v0.0.1'
  sha256 'cb9455c02369a403788ae5bb254b7bcd56eea3a0519f536fe983ad56367dd049'

  def install
    bash_completion.install 'smarter-tmux-completion.bash' => "zzz-smarter-tmux"
  end
end
