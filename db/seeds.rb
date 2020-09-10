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

carl = Therapist.create(name: "Carl Jung", title: "Psychiatrist", specialty: "The Shadow", description: "Among the central concepts of analytical psychology is individuation—the lifelong psychological process of differentiation of the self out of each individual's conscious and unconscious elements. Jung considered it to be the main task of human development. He created some of the best known psychological concepts, including synchronicity, archetypal phenomena, the collective unconscious, the psychological complex, and extraversion and introversion.", image_url: "https://cdn.britannica.com/28/182628-050-F8B519A4/Carl-Jung.jpg")

freud = Therapist.create(name: "Sigmund Freud", title: "Neurologist", specialty: "Psychoanalysis", description: "In founding psychoanalysis, Freud developed therapeutic techniques such as the use of free association and discovered transference, establishing its central role in the analytic process. His analysis of dreams as wish-fulfillments provided him with models for the clinical analysis of symptom formation and the underlying mechanisms of repression. On this basis Freud elaborated his theory of the unconscious and went on to develop a model of psychic structure comprising id, ego and super-ego.", image_url: "https://cdn.britannica.com/29/59229-050-F6C36BC9/Portrait-Sigmund-Freud-1921.jpg")



goodwill = Therapist.create(name: "Sean Maguire", title: "Psychologist", specialty: "Behavioral Therapy", description: "Sean is a behavioral psychologist who helps patients with mental disorders ranging from depression and alcoholism to schizophrenia and autism. He works with patients to understand the difficulties, debilitating behaviors, and negative thought patterns they want to change.", image_url: "https://images-na.ssl-images-amazon.com/images/I/51i-qWD9RvL._AC_.jpg")

barb = Therapist.create(name: "Barbara Bontempo", title: "Psychologist", specialty: "Child Psychology", description: "Barbara is a child psychologist who assesses, diagnoses, and treats children who may have slight or severe mental, emotional or social disorders. She helps such children and their families to be happy and successful in their day-to-day lives, and reach their developmental milestones.", image_url: "https://lh3.googleusercontent.com/59N0nz5ASalbkIk5_aLxgmbxkkdeaEYJLwHTmYrcq3EncqQLMtJy8PZk3FhkA5j_FWEj8D_jA61DQnLj7T9znG7N90WqFdsUJKeD_PJoO7ADbpjBHQa9OjDpRZpqedoYAnLW7GQCIHHBckOUgZRTsLoOsLMKmJsWhsCvWn73xr3CSljsYxDz6hzIPwjJK0heFnIrghBDiqsjk2q3gDD2EzV_t7s1z8ajDX1VpzazYi9SuyQ6Zh5gRhzH4KcQnZoKvXPZaoG7otpI5d_9o3Y0sNfFabzZHZoDXtEa9A768dsMa7far-zAfCnRsShupmuS-J1x96pzY46XCRMjfrj0T5QxoDsaAc34e_7QrE520hcK7wnJDpCpMcKeP4OnFNpaWLm4o2eq0k7lzw_kbz8Wp_XsEQ6nJXUluoMqhAlpivhTLzohNS5FOAULzeePqV2swXv_u7fb5873XaI9lBt9aCHcB-MXCHoyhx-sE4iMg0g_3nUx4v_nZuyXu5eVZiZU452xzS-KH3VcBdueXlY6Y0tUb8nCVjHghowWuk0RM4s066LVXn8qppypv2_n4JeAEE_faYV4fpoiPKCrazOSH7IuwUPPP66KsWQzNcb9I8s9G2d7d32XKoEdfNL59NMUw12GXvKGvlR_jK7A1zPoh1PBlvR21HUcqqHppnVI_fp4EJKvlC3MfVHgVsdj=w956-h1432-no?authuser=0")


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

appointment_one = Appointment.create(date: "2020-10-20", user_id: sam.id, therapist_id: carl.id, apptime_id: time1.id)



puts "Done seeding!!!!"