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
',
    logo:'redcross.jpg',
    url:'http://www.redcross.org'
  },
  {
    name:'American Cancer Society',
    description:'We save lives by helping people stay well by preventing cancer or detecting it early; helping people get well by being there for them during and after a cancer diagnosis; by finding cures through investment in groundbreaking discovery; and by fighting back by rallying lawmakers to pass laws to defeat cancer and by rallying communities worldwide to join the fight.
',
    logo:'cancer.jpg',
    url:'http://www.cancer.org'
  }
  ])
