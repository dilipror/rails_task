# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Customers

  c1 = Customer.create(first_name: 'Dean', last_name: 'Martin' , email: 'dean.martin@culini.com')
  c2 = Customer.create(first_name: 'Buddy',last_name: 'Rich' , email: 'buddy.rich@culini.com')
  c3 = Customer.create(first_name: 'Miles', last_name: 'Davis', email: 'miles.davis@culini.com')
  c4 = Customer.create(first_name: 'Billie',last_name: 'Holiday',email: 'billie.holiday@culini.com')

#Successful charge
  c1.charges.create(amount: '1000', paid: true , refunded: false )
  c1.charges.create(amount: '2000', paid: true , refunded: false )
  c1.charges.create(amount: '3000', paid: true , refunded: false )
  c1.charges.create(amount: '4000', paid: true , refunded: false )
  c1.charges.create(amount: '5000', paid: true , refunded: false )


  c2.charges.create(amount: '11000', paid: true , refunded: false )
  c2.charges.create(amount: '12000', paid: true , refunded: false )
  c2.charges.create(amount: '13000', paid: true , refunded: false )


  c3.charges.create(amount: '1500', paid: true , refunded: false )

  c4.charges.create(amount: '2500', paid: true , refunded: false )


# Failed Charges

  c3.charges.create(amount: '3500', paid: false , refunded: false )
  c3.charges.create(amount: '4500', paid: false , refunded: false  )
  c3.charges.create(amount: '5500', paid: false , refunded: false )

  c4.charges.create(amount: '6500', paid: false , refunded: false  )
  c4.charges.create(amount: '7500', paid: false , refunded: false  )


# Disputed Charges


 c1.charges.create(amount: '4500', paid: true , refunded: true)
 c1.charges.create(amount: '5500', paid: true , refunded: true )
 c1.charges.create(amount: '3500', paid: true , refunded: true )

 c2.charges.create(amount: '3500', paid: true , refunded: true )
 c2.charges.create(amount: '5500', paid: true , refunded: true )






