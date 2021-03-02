# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name:"Gary",lastname:"Cordero",email:"GaryCordero1690@gmail.com",password:"123456")

30.times do 
  fullnameArr = Faker::Name.name.split(" ")
  Customer.create(
    name:fullnameArr[0],
    lastname:fullnameArr[1],
    number:Faker::Base.numerify('###-###-####'),
    email: "#{fullnameArr[0]}.#{fullnameArr[1]}@gmail.com"
  )
end 