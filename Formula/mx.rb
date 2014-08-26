require "formula"

class Mx < Formula
  homepage 'https://github.com/demands/mx'
  url 'https://api.github.com/repos/demands/mx/tarball/v1.1.0'
  sha1 '30f8fb429943fff3178a8974afcf87bb8fde3795'
  depends_on "tmux"

  def install

    install_dir = "#{prefix}/bin"
    system "mkdir", "-p", install_dir
    system "cp", "./bin/mx", install_dir
    system "chmod", "a+x", "#{install_dir}/mx"

    bash_completion.install './bin/mx-completion.bash'

    man1.install "doc/mx.1"
  end

  test do
    tmux = testpath/'tmux'
    tmux.write 'echo $@'
    tmux.chmod 0777

    system "PATH=#{testpath}:#{ENV['PATH']} mx ."
  end
end
