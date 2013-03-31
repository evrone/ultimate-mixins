# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'ultimate/mixins/version'

Gem::Specification.new do |s|
  s.name        = 'ultimate-mixins'
  s.version     = Ultimate::Mixins::VERSION
  s.authors     = ['Dmitry KODer Karpunin']
  s.email       = ['koderfunk@gmail.com']
  s.homepage    = 'https://github.com/evrone/ultimate-mixins'
  s.summary     = %q{Simple library of SASS functions, mixins and basic polyfills}
  s.description = %q{Simple and minimalistic library of SASS functions, mixins and basic polyfills to create cross browser CSS-styles.}

  s.rubyforge_project = 'ultimate-mixins'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

end
