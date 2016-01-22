Gem::Specification.new do |s|
  s.name        = 'swgem'
  s.version     = '1.0.0'
  s.date        = '2016-01-12'
  s.summary     = "I like, Star Wars I,II,III!"
  s.description = "This is a wrapper from http://swapi.co"
  s.authors     = ["Igor Souza"]
  s.email       = 'igordcsouza@gmail.com'
  s.files       = ["lib/swgem.rb", "lib/swgem/films.rb","lib/swgem/people.rb","lib/swgem/planets.rb","lib/swgem/starships.rb","lib/swgem/vehicles.rb","lib/swgem/species.rb" ]
  s.homepage    =
    'http://rubygems.org/gems/swgem'
  s.license       = 'MIT'
  s.add_development_dependency 'faraday', '~> 0.9'
  s.add_development_dependency 'json', '~> 1.8'
  s.add_development_dependency 'rspec', '~> 3.4'
end
