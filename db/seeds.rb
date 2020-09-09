# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Therapist.destroy_all
Appointment.destroy_all
Goal.destroy_all
Journal.destroy_all
Apptime.destroy_all

sam = User.create(name: "Samantha Balgobin", username: "sbalgobin94", password: "abc123")
josh = User.create(name: "Joshua Itwaru", username: "jitwaru", password: "abc123")

journal_1 = Journal.create(content: "I had a good day today", date: "2020-10-05", user_id: sam.id)
journal_2 = Journal.create(content: "I had a bad day today", date: "2020-10-06", user_id: sam.id)
journal_3 = Journal.create(content: "I had an okay day today", date: "2020-10-07", user_id: josh.id)

goal_one = Goal.create(content: "Drink more water", user_id: sam.id)
goal_two = Goal.create(content: "Excercise more", user_id: josh.id)

john = Therapist.create(name: "John Doe", title: "PhD", specialty: "Cognitive Behavioral Therapy")
jane = Therapist.create(name: "Jane Doe", title: "PhD", specialty: "Talk Therapy")

time1 = Apptime.create(time: "8:00 AM")
time2 = Apptime.create(time: "9:00 AM")
time3 = Apptime.create(time: "10:00 AM")
time4 = Apptime.create(time: "11:00 AM")
time5 = Apptime.create(time: "12:00 PM")
time6 = Apptime.create(time: "1:00 PM")
time7 = Apptime.create(time: "2:00 PM")
time8 = Apptime.create(time: "3:00 PM")
time9 = Apptime.create(time: "4:00 PM")
time10 = Apptime.create(time: "5:00 PM")
time11 = Apptime.create(time: "6:00 PM")
time12 = Apptime.create(time: "7:00 PM")

appointment_one = Appointment.create(date: "2020-10-20", user_id: sam.id, therapist_id: john.id, apptime_id: time1.id)
appointment_two = Appointment.create(date: "2020-10-30", user_id: josh.id, therapist_id: jane.id, apptime_id: time1.id)



puts "Done seeding!!!!"