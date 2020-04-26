# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AnnualReport.create(year: '2020', budget: 50000, dues_split: 45)

User.create(email: 'abe@aol.com', password: '1234', password_confirmation: '1234', firstname: 'Abe', lastname: 'Apple', bday: 19940223)
User.create(email: 'bob@aol.com', password: '1234', password_confirmation: '1234', firstname: 'Bob', lastname: 'Benton', bday: 19610718)
User.create(email: 'con@aol.com', password: '1234', password_confirmation: '1234', firstname: 'Connie', lastname: 'Crawford', bday: 20010602)

Cabin.create(name: 'Big House', description: 'The grandest and oldest', multiplier: 1)
Cabin.create(name: 'Gray House', description: 'The second to be built. Sewells home originally.', multiplier: 0.75)
Cabin.create(name: 'Winter Haven', description: 'Ken and Betty Emersons home built in the 70s. Two bedroom.', multiplier: 0.75)
Cabin.create(name: 'Pine Away', description: 'Down by the waters edge.', multiplier: 0.5)
Cabin.create(name: 'Hillside', description: 'Small, cozy accomodations near at the bottom of the hill. Used by Josephine Emerson in her later years.', multiplier: 0.5)
Cabin.create(name: 'Brownie Cottage', description: 'Feel like your right on the water. Rustic but cozy.', multiplier: 0.25)
Cabin.create(name: 'Guest House', description: 'Frequent hangout for the younger, single set', multiplier: 0.25)

Repair.create(category: 'plumbing', description: 'Leaky faucet', submission_date: 20200601, priority: true, followup: 'none', user_id: 1, cabin_id: 1, annual_report_id: 1)
Repair.create(category: 'plumbing', description: 'No hot water', submission_date: 20200621, priority: false, followup: 'none', user_id: 1, cabin_id: 2, annual_report_id: 1)
Repair.create(category: 'electrical', description: 'Kitchen light shorted out.', submission_date: 20200711, priority: true, followup: 'none', user_id: 2, cabin_id: 1, annual_report_id: 1)
Repair.create(category: 'capentry', description: 'Deck is rotting out', submission_date: 20200803, priority: false, followup: 'none', user_id: 3, cabin_id: 1, annual_report_id: 1)

Reservation.create(arrival: 20200531, departure: 20200602, pending: false, user_id: 1, cabin_id: 1, annual_report_id: 1)
Reservation.create(arrival: 20200604, departure: 20200610, pending: false, user_id: 2, cabin_id: 1, annual_report_id: 1)
Reservation.create(arrival: 20200605, departure: 20200610, pending: false, user_id: 2, cabin_id: 2, annual_report_id: 1)
Reservation.create(arrival: 20200601, departure: 20200620, pending: false, user_id: 3, cabin_id: 3, annual_report_id: 1)
Reservation.create(arrival: 20200601, departure: 20200603, pending: false, user_id: 3, cabin_id: 5, annual_report_id: 1)