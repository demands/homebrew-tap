require 'octokit'

formulae = {
  :mx => 'demands/mx',
  :project => 'demands/project',
  :'smarter-git-completion' => 'demands/smarter-git-completion',
  :'smarter-tmux-completion' => 'demands/smarter-tmux-completion',
}

client = Octokit::Client.new :netrc => true
client.login

formulae.each do |key, name|
  puts "=== #{key} ==="

  filename = "Formula/#{key}.rb"
  file = File.read filename

  repo = client.repository name
  if repo.homepage and repo.homepage.length > 0
    homepage = repo.homepage
  else
    homepage = repo.html_url
  end
  puts "Homepage: #{homepage}"
  file[/homepage\s+["'][\w\/:\.-]+["']/] = "homepage '#{homepage}'"

  releases = client.releases name
  releases = releases.reject(&:prerelease) if releases.reject(&:prerelease).length < 0
  if releases.length == 0
    tag = client.tags(name).first
    puts "Tag: #{tag.name}"
    url = tag.tarball_url
  else
    release = releases.max_by(&:published_at)
    puts "Release: #{release.name}"
    url = release.tarball_url
  end
  puts "Url: #{url}"
  file[/url\s+["'][\w\/:\.-]+["']/] = "url '#{url}'"

  sha1 = `curl -L #{url} 2>/dev/null | sha1sum`.match(/([0-9a-f]+)/)[0]
  puts "Sha1: #{sha1}"
  file[/sha1\s+["'][\w\/:\.-]+["']/] = "sha1 '#{sha1}'"

  File.write filename, file
end
