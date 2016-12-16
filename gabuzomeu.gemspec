Gem::Specification.new do |s|
  s.name        = 'gabuzomeu'
  s.version     = File.read("version")
  s.date        = Time.now.getgm.to_s.split.first
  s.summary     = "Gabuzomeu base counter, from shadok"
  s.description = 'Shadok counter'
  s.authors     = ['Nephos (poulet_a)']
  s.email       = ['arthur.poulet@mailoo.org']
  s.files       = %w(
  lib/gabuzomeu.rb

  README.md

  Gemfile
  Gemfile.lock
  gabuzomeu.gemspec
  version

  certs/nephos.pem
  )
  s.executables = %w(
  )
  s.homepage    = 'https://github.com/Nephos/gabuzomeu'
  s.license     = 'WTFPL'

  s.cert_chain  = ['certs/nephos.pem']
  s.signing_key = File.expand_path('~/.ssh/gem-private_key.pem') if $0 =~ /gem\z/

  s.add_dependency 'nomorebeer', '~> 1', '>= 1.1.1'

end
