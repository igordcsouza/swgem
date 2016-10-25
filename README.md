# SWGEM 
[![Coverage Status](https://coveralls.io/repos/github/igordcsouza/swgem/badge.svg?branch=master)](https://coveralls.io/github/igordcsouza/swgem?branch=master) [![Build Status](https://travis-ci.org/igordcsouza/swgem.svg?branch=master)](https://travis-ci.org/igordcsouza/swgem) [![Code Climate](https://codeclimate.com/github/igordcsouza/swgem/badges/gpa.svg)](https://codeclimate.com/github/igordcsouza/swgem)


#### API Documentation ~> http://swapi.co/documentation

### Films
```sh
 films = SWGEM::Films.all
 films = SWGEM::Films.by_id(id)
 films = SWGEM::Films.by_episode(episode_id)
 films = SWGEM::Films.search(str)
 status = SWGEM::Films.validate_api_status
```
### People
```sh
 people = SWGEM::People.all
 people = SWGEM::People.by_id(id)
 people = SWGEM::People.search(str)
 status = SWGEM::People.validate_api_status
```

### Starships
 ```sh
 starships = SWGEM::Starships.all
 starship = SWGEM::Starships.by_id(id)
 starship = SWGEM::Starships.search(str)
 status   = SWGEM::Starships.validate_api_status
```
### Vehicles
```sh
 vehicles = SWGEM::Vehicles.all
 vehicle  = SWGEM::Vehicles.by_id(id)
 vehicle  = SWGEM::Vehicles.search(str)
 status   = SWGEM::Starships.validate_api_status
```

### Species
```sh
 species = SWGEM::Species.all
 species = SWGEM::Species.by_id(id)
 species = SWGEM::Species.search(str)
 status  = SWGEM::Species.validate_api_status
```
### Planets
 ```sh
 planets = SWGEM::Planets.all
 planet  = SWGEM::Planets.by_id(id)
 planet  = SWGEM::Planets.search(str)
 status  = SWGEM::Planets.validate_api_status
```

### Run Tests
```sh
 git clone https://github.com/igordcsouza/swgem.git
 cd swgem/
 bundle install
 rspec
```

