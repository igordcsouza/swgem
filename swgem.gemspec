Gem::Specification.new do |s|
  s.name        = 'swgem'
  s.version     = '1.0.0'
  s.date        = DateTime.now.strftime('%Y-%m-%d')
  s.summary     = "I like, Star Wars I,II,III!"
  s.description = "This is a wrapper from http://swapi.co"
  s.authors     = ["Igor Souza"]
  s.email       = 'igordcsouza@gmail.com'
  s.files       = ["lib/swgem.rb", "lib/swgem/base.rb","lib/swgem/films.rb","lib/swgem/people.rb","lib/swgem/planets.rb","lib/swgem/starships.rb","lib/swgem/vehicles.rb","lib/swgem/species.rb" ]
  s.homepage    =
    'http://github.com/igordcsouza/swgem'
  s.license       = 'MIT'
  s.add_development_dependency 'faraday', '~> 2.4'
  s.add_development_dependency 'json', '~> 2.0'
  s.add_development_dependency 'rspec', '~> 3.5'
end
