require "formula"

class Project < Formula
  homepage 'https://github.com/demands/project'
  url 'https://api.github.com/repos/demands/project/tarball/v0.0.1'
  sha1 'fb059251b2a2a7d8bac662b7c604b50c3aaae79c'

  def install
    install_dir = "#{prefix}/bin"
    system "mkdir", "-p", install_dir
    system "cp", "./bin/project", install_dir
    system "chmod", "a+x", "#{install_dir}/project"
  end

end
