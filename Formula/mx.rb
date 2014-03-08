require "formula"

class Mx < Formula
  homepage "https://github.com/demands/mx"
  url "https://github.com/demands/mx/archive/v0.4.3.tar.gz"
  sha1 "af4c28737521a8397f5b4401949158ecb08a8665"

  def install
    install_dir = "#{prefix}/bin"
    system "mkdir", "-p", install_dir
    system "cp", "./bin/mx", install_dir
    system "chmod", "a+x", "#{install_dir}/mx"

    bash_completion.install 'mx-completion.bash'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test mx`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "mx", "test_session"
  end
end
