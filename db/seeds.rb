# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AnnualReport.create(year: '2019', current: false, budget: 60000, dues_split: 50)
AnnualReport.create(year: '2020', current: true, budget: 50000, dues_split: 45)

User.create(email: 'abe@aol.com', password: '1234', password_confirmation: '1234', firstname: 'Abe', lastname: 'Apple', bday: 19940223, admin: true, photo_url: 'DIP-connect/i3knus3f007msc827a5r')
User.create(email: 'bob@aol.com', password: '1234', password_confirmation: '1234', firstname: 'Bob', lastname: 'Benton', bday: 19610718, admin: false, photo_url: 'DIP-connect/hf45aiy3crvkgtsaluvn')
User.create(email: 'con@aol.com', password: '1234', password_confirmation: '1234', firstname: 'Connie', lastname: 'Crawford', bday: 20010602, admin: false, photo_url: 'DIP-connect/nsm0swxzjeljcv2sm2tw')
User.create(email: 'don@aol.com', password: '1234', password_confirmation: '1234', firstname: 'Don', lastname: 'Johnson', bday: 19740302, admin: false)
User.create(email: 'eve@aol.com', password: '1234', password_confirmation: '1234', firstname: 'Eve', lastname: 'Labonita', bday: 19810401, admin: false)

Cabin.create(name: 'Big House', description: 'The grandest and oldest', owner: 'LLC', multiplier: 1.75)
Cabin.create(name: 'Gray House', description: 'The second to be built. Sewells home originally.', owner: 'LLC', multiplier: 1.25)
Cabin.create(name: 'Winter Haven', description: 'Ken and Betty Emersons home built in the 70s. Two bedroom.', owner: 'LLC', multiplier: 1.25)
Cabin.create(name: 'Pine Away', description: 'Down by the waters edge.', owner: 'LLC', multiplier: 1.0)
Cabin.create(name: 'Hillside', description: 'Small, cozy accomodations near at the bottom of the hill. Used by Josephine Emerson in her later years.', owner: 'LLC', multiplier: 1.0)
Cabin.create(name: 'Brownie Cottage', description: 'Feel like your right on the water. Rustic but cozy.', owner: 'LLC', multiplier: 0.50)
Cabin.create(name: 'Guest House', description: 'Frequent hangout for the younger, single set', owner: 'LLC', multiplier: 0.25)
Cabin.create(name: 'Sam & Linda', description: 'Built', owner: 'Sam Emerson', multiplier: 1.0)
Cabin.create(name: 'Howard\'s End', description: 'Built', owner: 'Jodie Howard', multiplier: 1.0)
Cabin.create(name: 'Sunset', description: 'Built in 2001', owner: 'Jean Davison', multiplier: 0.75)

Repair.create(category: 'Plumbing', description: 'Leaky faucet', submission_date: 20200601, priority: true, pending:true, followup:'Called the plumber yesterday. Said he would order the part and bring it by tomorrow. Someone needs to be present when he arrives Thursday.', user_id: 1, cabin_id: 1, annual_report_id: 2)
Repair.create(category: "Vermin Infestation", description: "Found squirrel's nest in master bedroom closet.", submission_date: 20200621, priority: false, pending:true, user_id: 1, cabin_id: 2, annual_report_id: 2)
Repair.create(category: 'Electrical', description: 'Kitchen light shorted out.', submission_date: 20200711, priority: true, pending:true, user_id: 2, cabin_id: 1, annual_report_id: 2)
Repair.create(category: 'Exterior Carpentry', description: 'Deck is rotting out', submission_date: 20200803, priority: false, pending:true, user_id: 3, cabin_id: 1, annual_report_id: 2)

Reservation.create(arrival: 20200531, departure: 20200602, pending: false, user_id: 1, cabin_id: 1, annual_report_id: 2)
Reservation.create(arrival: 20200604, departure: 20200610, pending: true, user_id: 2, cabin_id: 1, annual_report_id: 2)
Reservation.create(arrival: 20200531, departure: 20200602, pending: true, user_id: 2, cabin_id: 2, annual_report_id: 2)
Reservation.create(arrival: 20200601, departure: 20200615, pending: false, user_id: 3, cabin_id: 3, annual_report_id: 2)
Reservation.create(arrival: 20200601, departure: 20200604, pending: true, user_id: 4, cabin_id: 5, annual_report_id: 2)
Reservation.create(arrival: 20200602, departure: 20200604, pending: true, user_id: 5, cabin_id: 6, annual_report_id: 2)

CabinMultiplier.create(multiplier: 1.4, annual_report_id: 2, cabin_id: 1)
CabinMultiplier.create(multiplier: 1.2, annual_report_id: 2, cabin_id: 2)
CabinMultiplier.create(multiplier: 1.0, annual_report_id: 2, cabin_id: 3)
CabinMultiplier.create(multiplier: 1.0, annual_report_id: 2, cabin_id: 4)
CabinMultiplier.create(multiplier: 0.5, annual_report_id: 2, cabin_id: 5)
CabinMultiplier.create(multiplier: 0.2, annual_report_id: 2, cabin_id: 6)
CabinMultiplier.create(multiplier: 0.0, annual_report_id: 2, cabin_id: 7)
CabinMultiplier.create(multiplier: 1.0, annual_report_id: 2, cabin_id: 8)
CabinMultiplier.create(multiplier: 1.0, annual_report_id: 2, cabin_id: 9)
CabinMultiplier.create(multiplier: 0.75, annual_report_id: 2, cabin_id: 10)

## 2019 season seeds

CabinMultiplier.create(multiplier: 1.4, annual_report_id: 1, cabin_id: 1)
CabinMultiplier.create(multiplier: 1.2, annual_report_id: 1, cabin_id: 2)
CabinMultiplier.create(multiplier: 1.0, annual_report_id: 1, cabin_id: 3)
CabinMultiplier.create(multiplier: 1.0, annual_report_id: 1, cabin_id: 4)
CabinMultiplier.create(multiplier: 0.5, annual_report_id: 1, cabin_id: 5)
CabinMultiplier.create(multiplier: 0.2, annual_report_id: 1, cabin_id: 6)
CabinMultiplier.create(multiplier: 0.0, annual_report_id: 1, cabin_id: 7)
CabinMultiplier.create(multiplier: 1.0, annual_report_id: 1, cabin_id: 8)
CabinMultiplier.create(multiplier: 1.0, annual_report_id: 1, cabin_id: 9)
CabinMultiplier.create(multiplier: 0.75, annual_report_id: 1, cabin_id: 10)

Reservation.create(arrival: 20200531, departure: 20200602, pending: false, user_id: 1, cabin_id: 1, annual_report_id: 1)
Reservation.create(arrival: 20200604, departure: 20200610, pending: true, user_id: 2, cabin_id: 1, annual_report_id: 1)
Reservation.create(arrival: 20200531, departure: 20200602, pending: true, user_id: 2, cabin_id: 2, annual_report_id: 1)
Reservation.create(arrival: 20200601, departure: 20200615, pending: false, user_id: 3, cabin_id: 3, annual_report_id: 1)
Reservation.create(arrival: 20200601, departure: 20200604, pending: true, user_id: 4, cabin_id: 5, annual_report_id: 1)
Reservation.create(arrival: 20200602, departure: 20200604, pending: true, user_id: 5, cabin_id: 6, annual_report_id: 1)

Repair.create(category: 'Plumbing', description: 'Leaky faucet', submission_date: 20200601, priority: true, pending:true, followup:'Called the plumber yesterday. Said he would order the part and bring it by tomorrow. Someone needs to be present when he arrives Thursday.', user_id: 1, cabin_id: 1, annual_report_id: 1)
Repair.create(category: "Vermin Infestation", description: "Found squirrel's nest in master bedroom closet.", submission_date: 20200621, priority: false, pending:true, user_id: 1, cabin_id: 2, annual_report_id: 1)
Repair.create(category: 'Electrical', description: 'Kitchen light shorted out.', submission_date: 20200711, priority: true, pending:true, user_id: 2, cabin_id: 1, annual_report_id: 1)
Repair.create(category: 'Exterior Carpentry', description: 'Deck is rotting out', submission_date: 20200803, priority: false, pending:true, user_id: 3, cabin_id: 1, annual_report_id: 1)
