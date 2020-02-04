<h1 align="center">Welcome to SWGEM - Star Wars Gem 👋</h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-v2.0-blue.svg?cacheSeconds=2592000" />
  <a href="https://twitter.com/igordcsouza" target="_blank">
    <img alt="Twitter: igordcsouza" src="https://img.shields.io/twitter/follow/igordcsouza.svg?style=social" />
  </a>
  
</p>

[![Coverage Status](https://coveralls.io/repos/github/igordcsouza/swgem/badge.svg?branch=master)](https://coveralls.io/github/igordcsouza/swgem?branch=master) [![Build Status](https://travis-ci.org/igordcsouza/swgem.svg?branch=master)](https://travis-ci.org/igordcsouza/swgem) [![Code Climate](https://codeclimate.com/github/igordcsouza/swgem/badges/gpa.svg)](https://codeclimate.com/github/igordcsouza/swgem)


> Rubygem for the SWAPI.CO

#### API Documentation ~> http://swapi.co/documentation

## Usage

### Films
```sh
 films  = SWGEM::Films.new
 film   = films.all
 film   = films.by_id(id)
 film   = films.by_episode(episode_id)
 film   = films.search(str)
 status = films.validate_api_status
```
### People
```sh
 people  = SWGEM::People.new
 person  = person.all
 person  = person.by_id(id)
 person  = person.search(str)
 status  = person.validate_api_status
```

### Starships
 ```sh
 starships = SWGEM::Starships.new
 starship  = starships.all
 starship  = starships.by_id(id)
 starship  = starships.search(str)
 status    = starships.validate_api_status
```
### Vehicles
```sh
 vehicles = SWGEM::Vehicles.new
 vehicles = vehicles.all
 vehicle  = vehicles.by_id(id)
 vehicle  = vehicles.search(str)
 status   = vehicles.validate_api_status
```

### Species
```sh
 species = SWGEM::Species.new
 specie  = species.all
 specie  = species.by_id(id)
 specie  = species.search(str)
 status  = species.validate_api_status
```
### Planets
 ```sh
 planets = SWGEM::Planets.new
 planet  = planets.all
 planet  = planets.by_id(id)
 planet  = planets.search(str)
 status  = planets.validate_api_status
```

## Run Tests
```sh
 git clone https://github.com/igordcsouza/swgem.git
 cd swgem/
 bundle install
 rspec
```

## Author

👤 **Igor Souza**

* Twitter: [@igordcsouza](https://twitter.com/igordcsouza)

## Show your support

Give a ⭐️ if this project helped you!

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_