

Booking.destroy_all
Lesson.destroy_all
User.destroy_all

# REFACTORED----------------------------------------------------------

bookings = [
Booking.new(booking_time: DateTime.new(2017,11,27,8,45), status:"accepted"),
Booking.new(booking_time: Time.now + 9000, status:"accepted"),
Booking.new(booking_time: Time.now + 10000, status:"declined"),
Booking.new(booking_time: Time.now + 10000, status:"accepted"),
Booking.new(booking_time: Time.now + 11000, status:"declined"),
Booking.new(booking_time: Time.now + 19000, status:"pending"),
Booking.new(booking_time: Time.now + 13000, status:"pending"),
Booking.new(booking_time: Time.now + 16000, status:"accepted"),
Booking.new(booking_time: Time.now + 12000, status:"pending")
]

users = [
User.create(email:"louise@gmail.com", password:"123456", first_name:"Louise", last_name:"Mikkelsen"),
User.create(email:"ralph@gmail.com", password:"123456", first_name:"Ralph", last_name:"Fred"),
User.create(email:"BonJovi@gmail.com", password:"123456", first_name:"Jon", last_name:"BonJovi"),
User.create(email:"LunaL@gmail.com", password:"123456", first_name:"Luna", last_name:"Lovegood"),
User.create(email:"GraceMB@gmail.com", password:"123456", first_name:"Grace", last_name:"McBride"),
User.create(email:"magozzi@gmail.com", password:"123456", first_name:"Blank", last_name:"Maggozzi"),
User.create(email:"babs@gmail.com", password:"123456", first_name:"Barbara", last_name:"Streisand"),
User.create(email:"nick@gmail.com", password:"123456", first_name:"Nick", last_name:"Vang"),
User.create(email:"ashlee@gmail.com", password:"123456", first_name:"Ashlee", last_name:"Ste")
]

lessons = [
Lesson.new(description:"Join Mike's Piano lesson. Been playing piano for over 10 years and shit", location:"Amaliegade 25, 1256 Kbh", category:"arts", price:470, title:"Mike's Piano Classes"),
Lesson.new(description:"Join Bob's Piano lesson. Been playing piano for over 10 years and love making awesome shit", location:"Amaliegade 25, 1256 Kbh", category:"coding", price:470, title:"Mike's Piano Classes"),
Lesson.new(description:"Join Mike's Piano lesson. Been playing piano for over 10 years and love making awesome shit", location:"Amaliegade 25, 1256 Kbh", category:"school", price:470, title:"Mike's Piano Classes"),
Lesson.new(description:"Join Mike's Piano lesson. Been playing piano for over 10 years and love making awesome ", location:"Amaliegade 25, 1256 Kbh", category:"arts", price:470, title:"Mike's Piano Classes"),
Lesson.new(description:"Join Mike's Guitar lesson. Been playing piano for over 10 years and love making awesome shit", location:"Amaliegade 25, 1256 Kbh", category:"school", price:470, title:"Mike's Piano Classes"),
Lesson.new(description:"Join Us Piano lesson. Been playing piano for over 10 years and love making awesome shit", location:"Amaliegade 25, 1256 Kbh", category:"coding", price:470, title:"Mike's Piano Classes")
]

lessons.each do |lesson|
  lesson.user = users.sample
  lesson.save!
end

bookings.each do |booking|
  booking.user = users.sample
  booking.lesson = lessons.sample
  booking.save!
end


# # ----------------------------------ACCEPTED-------------------------------
# # USER
# new_user1 = User.new(email:"louise@gmail.com", password:"123456", first_name:"louise", last_name:"mikkelsen")

# new_lesson1 = Lesson.new(description:"Amazing Piano Lesson. I have been playing piano for over 10 years and love teaching others.", location:"Amaliegade 25, 1256 Kbh", category:"school", price:470, title:"Louise's Piano Classes")

# new_booking1 = Booking.new(booking_time: Time.now + 13000, status:"accepted")

# new_booking1.lesson = new_lesson
# new_booking1.user = new_user
# new_lesson1.user = User.last

# new_lesson1.save
# new_user1.save

# new_booking1.lesson = Lesson.last
# new_booking1.user = User.last
# new_booking1.save

# # USER
# new_user = User.new(email:"louise@gmail.com", password:"123456", first_name:"louise", last_name:"mikkelsen")

# new_lesson = Lesson.new(description:"Join Karl's heavy metal music lesson. Been singing for over 10 years and love making awesome shit", location:"Esplanden 7, 1263 Kbh", category:"school", price:160, title:"Karl's Heavy Metal Music Class")

# new_booking = Booking.new(booking_time: Time.now + 13000, status:"accepted")

# new_booking.lesson = new_lesson
# new_booking.user = new_user
# new_lesson.user = User.last

# new_lesson.save
# new_user.save

# new_booking.lesson = Lesson.last
# new_booking.user = User.last
# new_booking.save

# # --------------------------------ACCEPTED & PENDING---------------------------

# # USER
# new_user = User.new(email:"louise@gmail.com", password:"123456", first_name:"louise", last_name:"mikkelsen")

# new_lesson = Lesson.new(description:"Join Louise's jewelry Lesson. Been making jewelry for over 10 years and love making awesome shit", location:"Stengade 2, 2200 Kbh N", category:"arts", price:145, title:"Louise's Jewelry class")

# new_booking = Booking.new(booking_time: Time.now + 14000, status:"accepted")
# new_booking = Booking.new(booking_time: Time.now + 14000, status:"pending")

# new_booking.lesson = new_lesson
# new_booking.user = new_user
# new_lesson.user = User.last

# new_lesson.save
# new_user.save

# new_booking.lesson = Lesson.last
# new_booking.user = User.last
# new_booking.save

# # USER
# new_user = User.new(email:"nick@gmail.com", password:"123456", first_name:"Nick", last_name:"Vang")

# new_lesson = Lesson.new(description:"Join Harry's Guitar Lesson. Been playing for over 20 years and love to share my passion with others", location:"Gulbergsgade 7, 2200 Kbh", category:"school", price:80, title:"Guitar Lesson in Norrebro")

# new_booking = Booking.new(booking_time: Time.now + 10000, status:"accepted")
# new_booking = Booking.new(booking_time: Time.now + 14000, status:"pending")

# new_booking.lesson = new_lesson
# new_booking.user = new_user
# new_lesson.user = User.last

# new_lesson.save
# new_user.save

# new_booking.lesson = Lesson.last
# new_booking.user = User.last
# new_booking.save

# # USER
# new_user = User.new(email:"hakeem@gmail.com", password:"123456", first_name:"Hakeem", last_name:"Baba")

# new_lesson = Lesson.new(description:"Join Hakeem's photography Lesson. Been taking pictures for over 10 years and love making awesome shit", location:"Lille Strandvej 2a, 2900 Hellerup", category:"arts", price:60, title:"Photography Lessons in Hellerup")

# new_booking = Booking.new(booking_time: Time.now + 11000, status:"accepted")
# new_booking = Booking.new(booking_time: Time.now + 14000, status:"pending")

# new_booking.lesson = new_lesson
# new_booking.user = new_user
# new_lesson.user = User.last

# new_lesson.save
# new_user.save

# new_booking.lesson = Lesson.last
# new_booking.user = User.last
# new_booking.save

# # ------------------------------ACCEPTED & DECLINED-----------------------------
# # USER
# new_user = User.new(email:"Harry@gmail.com", password:"123456", first_name:"Harry", last_name:"Nielsen")

# new_lesson = Lesson.new(description:"Join Bob's Swift Lesson. Been swifting for over 10 years and love making awesome shit", location:"Thorsgade 8, 2200 Kbh N", category:"coding", price:200, title:"Swift Lessons in Norrebro")

# new_booking = Booking.new(booking_time: Time.now + 11000, status:"accepted")
# new_booking = Booking.new(booking_time: Time.now + 14000, status:"declined")


# new_booking.lesson = new_lesson
# new_booking.user = new_user
# new_lesson.user = User.last

# new_lesson.save
# new_user.save

# new_booking.lesson = Lesson.last
# new_booking.user = User.last
# new_booking.save

# # USER
# new_user = User.new(email:"louise@gmail.com", password:"123456", first_name:"louise", last_name:"mikkelsen")

# new_lesson = Lesson.new(description:"Join Karl's heavy metal music lesson. Been singing for over 10 years and love making awesome shit", location:"Nyhavn 7, 1051 Kbh", category:"arts", price:1100, title:"Harry Potter's wand lesson")

# new_booking = Booking.new(booking_time: Time.now + 13000, status:"accepted")
# new_booking = Booking.new(booking_time: Time.now + 14000, status:"declined")

# new_booking.lesson = new_lesson
# new_booking.user = new_user
# new_lesson.user = User.last

# new_lesson.save
# new_user.save

# new_booking.lesson = Lesson.last
# new_booking.user = User.last
# new_booking.save

# # ----------------------------------PENDING-------------------------------

# # USER
# new_user = User.new(email:"ashlee@gmail.com", password:"123456", first_name:"Ashlee", last_name:"Ste")

# new_lesson = Lesson.new(description:"Join Morten's Python Lesson. Been coding in python for over 20 years and love making awesome shit", location:"jagtvej 120, 2200 Kbh N", category:"coding", price:140, title:"Python lesson on Jagtvej")

# new_booking = Booking.new(booking_time: Time.now + 9000, status:"pending")

# new_booking.lesson = new_lesson
# new_booking.user = new_user
# new_lesson.user = User.last

# new_lesson.save
# new_user.save

# new_booking.lesson = Lesson.last
# new_booking.user = User.last
# new_booking.save

# # ----------------------------------DECLINED-------------------------------

# # USER
# new_user = User.new(email:"voldemort@gmail.com", password:"123456", first_name:"Tom", last_name:"Riddle")

# new_lesson = Lesson.new(description:"Join Voldemort's JavaScript Lesson. Been JSing for over 10 years and love making awesome shit", location:"Slotsgade 11, 2200 Kbh N", category:"coding", price:360, title:"JavaScript Lessons in Norrebro")

# new_booking = Booking.new(booking_time: Time.now + 14000, status:"declined")

# new_booking.lesson = new_lesson
# new_booking.user = new_user
# new_lesson.user = User.last

# new_lesson.save
# new_user.save

# new_booking.lesson = Lesson.last
# new_booking.user = User.last
# new_booking.save

# # ------------------------------DECLINED & PENDING-----------------------------
# # USER
# new_user = User.new(email:"frank_bob@gmail.com", password:"123456", first_name:"Frank", last_name:"Bob")

# new_lesson = Lesson.new(description:"Join Voldemort's JavaScript Lesson. Been JSing for over 10 years and love making awesome shit", location:"Slotsgade 11, 2200 Kbh N", category:"coding", price:360, title:"JavaScript Lessons in Norrebro")

# new_booking1 = Booking.new(booking_time: Time.now + 14000, status:"declined")
# new_booking2 = Booking.new(booking_time: Time.now + 14000, status:"pending")

# new_booking1.lesson = new_lesson
# new_booking1.user = new_user
# new_booking2.lesson = new_lesson
# new_booking2.user = new_user
# new_lesson.user = User.last

# new_lesson.save
# new_user.save

# new_booking.lesson = Lesson.last
# new_booking.user = User.last
# new_booking.save



