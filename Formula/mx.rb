require "formula"

class Mx < Formula
  homepage 'https://github.com/demands/mx'
  url 'https://api.github.com/repos/demands/mx/tarball/v1.2.2'
  sha256 'b6a8f6cd8928ed1e3a313b10b02b71fbec1baff3830a7fe847d052e2c1f9f8e5'
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
