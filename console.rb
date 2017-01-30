require_relative('models/customer')
require_relative('models/film')
require_relative('models/ticket')

require( 'pry-byebug' )

Customer.delete_all()
Film.delete_all()
Ticket.delete_all()

customer1 = Customer.new({'name' => "Chris", 'funds' => 100})
customer2 = Customer.new({'name' => "?", 'funds' => 50})
customer3 = Customer.new({'name' => "?", 'funds' => 50})
customer4 = Customer.new({'name' => "?", 'funds' => 50})
customer5 = Customer.new({'name' => "?", 'funds' => 50})
customer6 = Customer.new({'name' => "?", 'funds' => 50})

customer1.save()
customer2.save()
customer3.save()
customer4.save()
customer5.save()
customer6.save()


film1 = Film.new({'title' => "A Streetcar Named Desire", 'price' => 0})
film2 = Film.new({'title' => "The Wild One", 'price' => 0})
film3 = Film.new({'title' => "On the Waterfront", 'price' => 0})
film4 = Film.new({'title' => "The Godfather", 'price' => 0})
film5 = Film.new({'title' => "Last Tango in Paris", 'price' => 0})
film6 = Film.new({'title' => "Apocalypse Now", 'price' => 0})

film1.save()
film2.save()
film3.save()
film4.save()
film5.save()
film6.save()

ticket1 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film1.id, 'time' => 16:00})
ticket2 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film2.id, 'time' => 17:00})
ticket3 = Ticket.new({'customer_id' => customer3.id, 'film_id' => film3.id, 'time' => 18:00})
ticket4 = Ticket.new({'customer_id' => customer4.id, 'film_id' => film4.id, 'time' => 19:00})
ticket5 = Ticket.new({'customer_id' => customer5.id, 'film_id' => film5.id, 'time' => 20:00})
ticket6 = Ticket.new({'customer_id' => customer6.id, 'film_id' => film6.id, 'time' => 21:00})

ticket1.save()
ticket2.save()
ticket3.save()
ticket4.save()
ticket5.save()
ticket6.save()

binding.pry

nil