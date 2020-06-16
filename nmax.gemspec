lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nmax/version'

Gem::Specification.new do |spec|
  spec.name          = 'nmax-tool'
  spec.version       = Nmax::VERSION
  spec.authors       = ['Sergey Golushko']
  spec.email         = ['portmare@gmail.com']

  spec.summary       = 'This script searches for a specified count of maximum numbers in STDIN'
  spec.description   = 'This script searches for a specified count of maximum numbers in STDIN'
  spec.homepage      = 'https://rubygems.org/gems/nmax-tool'
  spec.metadata      = { 'source_code_uri' => 'https://github.com/portmare/nmax' }
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
