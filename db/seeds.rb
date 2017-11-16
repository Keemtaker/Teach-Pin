

Booking.destroy_all
Lesson.destroy_all
User.destroy_all

new_user = User.new(email:"nick@gmail.com", password:"123456", first_name:"Nick", last_name:"Vang")

new_lesson = Lesson.new(description:"Join Harry's Guitar Lesson. Been playing for over 20 years and love to share my passion with others", location:"Gulbergsgade 7, 2200 Kbh", category:"school", price:80, title:"Guitar Lesson in Norrebro")

new_booking = Booking.new(booking_time: Time.now + 10000, status:"accepted")

new_booking.lesson = new_lesson
new_booking.user = new_user
new_lesson.user = User.last

new_lesson.save
new_user.save

new_booking.lesson = Lesson.last
new_booking.user = User.last
new_booking.save

# USER 2

new_user = User.new(email:"ashlee@gmail.com", password:"123456", first_name:"Ashlee", last_name:"Ste")

new_lesson = Lesson.new(description:"Join Morten's Python Lesson. Been coding in python for over 20 years and love making awesome shit", location:"jagtvej 120, 2200 Kbh N", category:"coding", price:140, title:"Python lesson on Jagtvej")

new_booking = Booking.new(booking_time: Time.now + 9000, status:"pending")

new_booking.lesson = new_lesson
new_booking.user = new_user
new_lesson.user = User.last

new_lesson.save
new_user.save

new_booking.lesson = Lesson.last
new_booking.user = User.last
new_booking.save

# USER 3

new_user = User.new(email:"hakeem@gmail.com", password:"123456", first_name:"Hakeem", last_name:"Baba")

new_lesson = Lesson.new(description:"Join Hakeem's photography Lesson. Been taking pictures for over 10 years and love making awesome shit", location:"Lille Strandvej 2a, 2900 Hellerup", category:"arts", price:60, title:"Photography Lessons in Hellerup")

new_booking = Booking.new(booking_time: Time.now + 11000, status:"accepted")

new_booking.lesson = new_lesson
new_booking.user = new_user
new_lesson.user = User.last

new_lesson.save
new_user.save

new_booking.lesson = Lesson.last
new_booking.user = User.last
new_booking.save

# USER 4

new_user = User.new(email:"Harry@gmail.com", password:"123456", first_name:"Harry", last_name:"Nielsen")

new_lesson = Lesson.new(description:"Join Bob's Swift Lesson. Been swifting for over 10 years and love making awesome shit", location:"Thorsgade 8, 2200 Kbh N", category:"coding", price:200, title:"Swift Lessons in Norrebro")

new_booking = Booking.new(booking_time: Time.now + 11000, status:"accepted")

new_booking.lesson = new_lesson
new_booking.user = new_user
new_lesson.user = User.last

new_lesson.save
new_user.save

new_booking.lesson = Lesson.last
new_booking.user = User.last
new_booking.save

# USER 5

new_user = User.new(email:"vodemort@gmail.com", password:"123456", first_name:"voldemort", last_name:"potter")

new_lesson = Lesson.new(description:"Join Voldemort's JavaScript Lesson. Been JSing for over 10 years and love making awesome shit", location:"Slotsgade 11, 2200 Kbh N", category:"coding", price:360, title:"JavaScript Lessons in Norrebro")

new_booking = Booking.new(booking_time: Time.now + 14000, status:"declined")

new_booking.lesson = new_lesson
new_booking.user = new_user
new_lesson.user = User.last

new_lesson.save
new_user.save

new_booking.lesson = Lesson.last
new_booking.user = User.last
new_booking.save

# USER 6

new_user = User.new(email:"louise@gmail.com", password:"123456", first_name:"louise", last_name:"mikkelsen")

new_lesson = Lesson.new(description:"Join Louise's jewelry Lesson. Been making jewelry for over 10 years and love making awesome shit", location:"Stengade 2, 2200 Kbh N", category:"arts", price:145, title:"Louise's Jewelry class")

new_booking = Booking.new(booking_time: Time.now + 14000, status:"accepted")

new_booking.lesson = new_lesson
new_booking.user = new_user
new_lesson.user = User.last

new_lesson.save
new_user.save

new_booking.lesson = Lesson.last
new_booking.user = User.last
new_booking.save

# USER 7

new_user = User.new(email:"louise@gmail.com", password:"123456", first_name:"louise", last_name:"mikkelsen")

new_lesson = Lesson.new(description:"Join Mike's Piano lesson. Been playing piano for over 10 years and love making awesome shit", location:"Amaliegade 25, 1256 Kbh", category:"school", price:470, title:"Mike's Piano Classes")

new_booking = Booking.new(booking_time: Time.now + 13000, status:"accepted")

new_booking.lesson = new_lesson
new_booking.user = new_user
new_lesson.user = User.last

new_lesson.save
new_user.save

new_booking.lesson = Lesson.last
new_booking.user = User.last
new_booking.save

# USER 8

new_user = User.new(email:"louise@gmail.com", password:"123456", first_name:"louise", last_name:"mikkelsen")

new_lesson = Lesson.new(description:"Join Karl's heavy metal music lesson. Been singing for over 10 years and love making awesome shit", location:"Esplanden 7, 1263 Kbh", category:"school", price:160, title:"Karl's Heavy Metal Music Class")

new_booking = Booking.new(booking_time: Time.now + 13000, status:"accepted")

new_booking.lesson = new_lesson
new_booking.user = new_user
new_lesson.user = User.last

new_lesson.save
new_user.save

new_booking.lesson = Lesson.last
new_booking.user = User.last
new_booking.save

# USER 9

new_user = User.new(email:"louise@gmail.com", password:"123456", first_name:"louise", last_name:"mikkelsen")

new_lesson = Lesson.new(description:"Join Karl's heavy metal music lesson. Been singing for over 10 years and love making awesome shit", location:"Nyhavn 7, 1051 Kbh", category:"arts", price:1100, title:"Harry Potter's wand lesson")

new_booking = Booking.new(booking_time: Time.now + 13000, status:"accepted")

new_booking.lesson = new_lesson
new_booking.user = new_user
new_lesson.user = User.last

new_lesson.save
new_user.save

new_booking.lesson = Lesson.last
new_booking.user = User.last
new_booking.save
