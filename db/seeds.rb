# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Charity.create([
  {
    name:'Watsi',
    description:'Watsi is a global crowdfunding platform for healthcare that enables anyone to donate as little as $5 to directly fund life-changing medical care for people in need. 100% of every donation funds medical care and we are dedicated to complete transparency.',
    logo:'watsi.png',
    url:'https://watsi.org'
  },
  {
    name:'American Red Cross',
    description:'The American Red Cross is where people mobilize to help their neighbors—across the street, across the country, and across the world—in emergencies. Each year, in communities large and small, victims of roughly 70,000 disasters turn to neighbors familiar and new—the more than half a million volunteers and 35,000 employees of the Red Cross.

Through over 700 locally supported chapters, more than 15 million people gain the skills they need to prepare for and respond to emergencies in their homes, communities and world.

Some four million people give blood—the gift of life—through the Red Cross, making it the largest supplier of blood and blood products in the United States. And the Red Cross helps thousands of U.S. service members separated from their families by military duty stay connected.
',
    logo:'redcross.jpg',
    url:'http://www.redcross.org'
  }
  ])
