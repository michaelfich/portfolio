# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create({
  title: 'Bitvestr',
  url: 'http://www.bitvestr.com',
  repo: 'https://github.com/michaelfich/bitvestr',
  featured: true,
  description:
    'Over the final two weeks at Bitmaker Labs, I worked with Lucas Zarnett to
     create Bitvestr.  Bitvestr is a web app to help people develop a trading
     strategy for buying and selling Bitcoin.',
})

Project.create({
  title: 'Tic Tac Toe',
  url: 'http://tictactoe.michaelfich.com',
  repo: 'https://github.com/michaelfich/tictactoe',
  featured: true,
  description:
    'Using the upcoming Batman vs. Superman: Dawn of Justice movie as inpiration
     for my theme, I completed this Bitmaker Labs javascript fundamentals assignment
     with a bit of my own personal style added to it.',
})

Project.create({
  title: 'Rainforest',
  url: 'https://rainforest.michaelfich.com',
  repo: 'https://github.com/michaelfich/rainforest',
  featured: true,
  description:
    'Rainforest is a Bitmaker Labs assignment which uses Amazon\'s website as inspiration
     and helps practice both Rails and Javascript fundamentals learned such as associations
     between different Rails models and pagination, as well as using AJAX to add
     features such as a search option to filter products, infinite scroll, and posting
     reviews.',
})
