# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create name: 'Indoor'
Category.create name: 'Outdoor'
Category.create name: 'Party'

Quest.delete_all
Quest.create(:title => 'Marathon',
               :description => %{Run 42 km},
               :points => 300)
# . . .
Quest.create(:title => 'Zimmer aufräumen',
               :description =>
                   %{Alle Socken vom Boden aufheben},
               :points => 20)
# . . .

Quest.create(:title => 'Nackte Meile',
               :description =>
                   %{Laufe um Mitternacht einmal um den Campus, nackt!},
               :points => 150,
                :user_id => 9)
User.delete_all
pass = "pass1234"
admin = User.create username: 'Humpert', email: 'max.humpert@fh-muenster.de', password: pass,
                    password_confirmation: pass
admin.add_role :admin
#puts "Admin password is #{pass}"
pass = "pass12345"
admin = User.create username: 'Fladung', email: 'sergeifladung@googlemail.com', password: pass,
                    password_confirmation: pass
admin.add_role :admin

pass = "pass1234"
admin = User.create forename: 'Michael', surname: 'Johann', email: 'mjohann@rails-experts.com', password: pass,
                    password_confirmation: pass
admin.add_role :admin



