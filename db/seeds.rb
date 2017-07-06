# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([{
	email: "admin@example.com",
	password: "qwerty12",
	password_confirmation: "qwerty12",
	adminstat: true
	}])

User.create([{
	email: "user@example.com",
	password: "qwerty12",
	password_confirmation: "qwerty12",
	adminstat: false
	}])

Survey.create([{
	user_id: '1',
	name: 'Linux Survey'
	}])

Question.create([{
	title: 'Favorite Text Editor',
	survey_id: '1'
	}])

Option.create([{
	question_id: '1',
	name: 'Gedit'
	}])
Option.create([{
	question_id: '1',
	name: 'Atom'
	}])
Option.create([{
	question_id: '1',
	name: 'Sublime'
	}])

Question.create([{
	title: 'GIMP or Photoshop',
	survey_id: '1'
	}])

Option.create([{
	question_id: '2',
	name: 'GIMP'
	}])

Option.create([{
	question_id: '2',
	name: 'Photoshop'
	}])