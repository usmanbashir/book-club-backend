# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


user_one = User.create(email: "etta@gmail.com", username: 'EttaJ', firstname: 'Etta', lastname: 'James', password: "password" )
user_two = User.create(email: "aretha@gmail.com", username: 'ArethaF', firstname: 'Aretha', lastname: 'Franklin', password: "password" )
user_three = User.create(email: "bill@yahoo.com", username: 'BillW', firstname: 'Bill', lastname: 'Withers', password: "password" )
user_four = User.create(email: "otis@gmail.com", username: 'OtisR', firstname: 'Otis', lastname: 'Reading', password: "password" )
user_five = User.create(email: "dinah@hotmail.com", username: 'DinahW', firstname: 'Dinah', lastname: 'Washington', password: "password" )
user_six = User.create(email: "dusty@hotmail.com", username: 'DustyS', firstname: 'Dusty', lastname: 'Springfield', password: "password" )

Book.create(title: 'Kitchen', author: 'Banana Yoshimoto', genre: 'Fiction', publishedOn: '1988-01-01', current: true, meeting_date: '2023-06-03', meeting_location: 'London', user_id: user_one.id)
Book.create(title: 'Norwegian Wood', author: 'Haruki Murakami', genre: 'Romance', publishedOn: '1987-01-01', current: false, meeting_date: '2023-04-12', meeting_location: 'Manchester', user_id: user_one.id)
Book.create(title: 'A Little Life', author: 'Hanya Yanagihara', genre: 'Novel', publishedOn: '2015-01-01', current: false, meeting_date: '2023-03-16', meeting_location: 'Brighton', user_id: user_two.id)
Book.create(title: 'The People in the Trees', author: 'Hanya Yanagihara', genre: 'Science Fiction', publishedOn: '2013-01-01', current: false, meeting_date: '2022-12-01', meeting_location: 'Bristol', user_id: user_three.id)
Book.create(title: 'Heaven', author: 'Mieko Kawakami', genre: 'Coming of Age', publishedOn: '2009-01-01', current: false, meeting_date: '2023-05-17', meeting_location: 'Durham', user_id: user_four.id)
Book.create(title: 'My Brilliant Friend', author: 'Elena Ferrante', genre: 'Novel', publishedOn: '2011-01-01', current: false, meeting_date: '2023-02-22', meeting_location: 'Leicester', user_id: user_five.id)
Book.create(title: 'The Lying Life of Adults', author: 'Elena Ferrante', genre: 'Domestic Fiction', publishedOn: '2019-01-01', current: false, meeting_date: '2022-11-05', meeting_location: 'Sheffield', user_id: user_six.id)



