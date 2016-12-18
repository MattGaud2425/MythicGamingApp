# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


game = Game.create(title: 'Halo:MCC', category: 'fps', active: true)
bracket = game.brackets.create(title: 'Championship', team_size: '4', rounds: '3')
map = bracket.maps.create(name: "Lockout")
gametype = map.gametypes([ { name: "Oddball" }, { name: 'King of the Hill' }])

game = Game.create(title: 'League of Legends', category: 'moba', active: true)
bracket = game.brackets.create(title: 'Championship', team_size: '4', rounds: '1')
map = bracket.maps.create(name: "Territory")
gametype = map.gametypes([ { name: "Challenge" } ])


