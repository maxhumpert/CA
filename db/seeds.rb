# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.delete_all
Category.create title: 'Indoor', id: 0
Category.create title: 'Outdoor', id: 1
Category.create title: 'Party', id: 2

['registered', 'guest', 'admin'].each do |role|
  Role.find_or_create_by({name: role})

Quest.delete_all
Quest.create(:title => 'Marathon',
               :description => %{Run 42 km},
               :points => 300,
               :category => Category.find(1))
# . . .
Quest.create(:title => 'Zimmer aufräumen',
               :description => %{Alle Socken vom Boden aufheben},
               :points => 20,
               :category => Category.find(0))

Quest.create(:title => ' Old Selfie ',
               :description => %{ Make a selfie infront of the oldest building in Münster. },
               :points => 150,
               :category => Category.find(1))

Quest.create(:title => ' Animal Beer ',
               :description => %{ Drink a beer in every bar with an animal in their name (e.g. Peacock). },
               :points => 250,
               :category => Category.find(1))

Quest.create(:title => ' Promenade-Jogging ',
               :description => %{ Beat my time in jogging one round around the Promenade Muenster (15min20sec). },
               :points => 100,
               :category => Category.find(1))

Quest.create(:title => ' Nuts? ',
               :description => %{ Come 10 minutes late to your next lecture wearing a carnival costume of your choice. },
               :points => 300,
               :category => Category.find(0))

Quest.create(:title => ' Dry Mouth',
               :description => %{ Eat a slice of dry toast in less than 30 seconds. },
               :points => 50,
               :category => Category.find(0))

Quest.create(:title => ' In love with your professor ',
               :description => %{ Ask your professor: „In what bar did you went last night? You look like it was a good night!. },
               :points => 150,
               :category => Category.find(0))

User.delete_all
pass = "pass1234"
admin = User.create username: 'Humpert', email: 'max.humpert@fh-muenster.de', password: pass, password_confirmation: pass
admin.add_role :admin
#puts "Admin password is #{pass}"
pass = "pass12345"
admin = User.create username: 'Fladung', email: 'sergeifladung@googlemail.com', password: pass, password_confirmation: pass, points: 200
admin.add_role :admin

pass = "pass1111"
admin = User.create username: 'Johann', email: 'mjohann@rails-experts.com', password: pass, password_confirmation: pass, points: 145
admin.add_role :admin


end
