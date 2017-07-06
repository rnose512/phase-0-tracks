#create a nested data structure

zoo = {
  mammals: {
    name: 'Furry Friends',
    population: {
      males: 20,
      females: 30,
      kids: 15
    },
    diet: [
      "Fish Filet",
      "Apples",
      "Celery"
    ]
  },
  reptiles: {
    name: 'Scaly Friends',
    population: {
      males: 10,
      females: 15,
      kids: 2
      },
    diet: [
      "Mice",
      "Crickets"
    ]
  },
  birds: {
    name: 'Feathery Friends',
    population: {
      males: 18,
      females: 25,
      kids: 20
      },
    diet: [
      "Seeds",
      "Nuts"
    ]
  },
  fish: {
    name: 'Swimming Friends',
    population: {
      males: 100,
      females: 150,
      kids: 200
      },
    diet: [
      "Fish Food",
      "Algae"
    ]
  }
}

#print a few individual pieces of deeply nested data from the structure
p zoo[:fish][:diet][1]

p zoo[:birds][:population]

p zoo[:reptiles][:name]

zoo[:mammals][:diet].push('Honey')

p zoo[:mammals][:diet]