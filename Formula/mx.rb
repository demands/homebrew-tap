require "formula"

class Mx < Formula
  homepage 'https://github.com/demands/mx'
  url 'https://api.github.com/repos/demands/mx/tarball/v1.0.1'
  sha1 '01580b93cebe7d5496b8a76103d9eedf82a8c473'

  def install
    depends_on "tmux"

    install_dir = "#{prefix}/bin"
    system "mkdir", "-p", install_dir
    system "cp", "./bin/mx", install_dir
    system "chmod", "a+x", "#{install_dir}/mx"

    bash_completion.install 'mx-completion.bash'

    man1.install "doc/mx.1"
  end

  test do
    tmux = testpath/'tmux'
    tmux.write 'echo $@'
    tmux.chmod 0777

    env = {
      :PATH => "#{testpath}:#{ENV['PATH']}"
    }

    system env, 'mx .'
  end
end
