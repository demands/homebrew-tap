require "formula"

class Mx < Formula
  homepage 'https://github.com/demands/mx'
  url 'https://api.github.com/repos/demands/mx/tarball/v1.2.2'
  sha1 'a994739bf00fca86ad1b9f47f1e2cb2d99973abe'
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
