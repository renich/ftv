# Ensure we require the local version and not one we might have installed already
require File.join( [ File.dirname( __FILE__ ), 'lib', 'ftv', 'version.rb' ] )

spec = Gem::Specification.new do |s| 
    s.name = 'ftv'
    s.date = '2014-12-23'
    s.version = Ftv::VERSION
    s.author = 'Renich Bon Ciric'
    s.email = 'renich@woralelandia.com'
    s.homepage = 'http://woralelandia.com/'
    s.license = 'GPVv3'
    s.platform = Gem::Platform::RUBY
    s.summary = %q{ftv (fuck the video) is designed for the musician who doesn't want to make videos out of his music; but aknowledges the need to do so and publish in the mainstream video publishers.

It generates a video in HD; with Creative Commons images; obtained from Google's Images; based on the keywords provided. It uses the musician's track as audio and it inserts the title and artist; obtained from the track's metadata.

This tool is to help me (and anyone who uses it) generate a quick video and post it on Youtube so people that 'watch' music are able to do so.

I do not believe in making videos for music. Music is to be heard; not watched.}
    s.files = `git ls-files`.split("
")
    s.require_paths << 'lib'
    s.has_rdoc = true
    s.extra_rdoc_files = [ 'README.rdoc', 'ftv.rdoc' ]
    s.rdoc_options << '--title' << 'ftv' << '--main' << 'README.rdoc' << '-ri'
    s.bindir = 'bin'
    s.executables << 'ftv'
    s.add_development_dependency( 'rake' )
    s.add_development_dependency( 'rdoc' )
    s.add_development_dependency( 'aruba' )
    s.add_runtime_dependency( 'gli', '2.12.2' )
end
