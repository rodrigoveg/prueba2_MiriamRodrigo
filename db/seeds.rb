# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user= User.create([{name:'Rodrigo', email:'ro@hotmail.com'}, {name:'Miriam', email:'miri@hotmail.com'}])
Work.create(description:'trabajo facil1', user:User.first)
Work.create(description:'trabajo facil2', user:User.last)
Work.create(description:'trabajo facil3', user:User.last)
