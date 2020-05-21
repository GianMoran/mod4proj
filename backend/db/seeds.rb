# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Workout.destroy_all

users = [
    { name: 'Cameron', age: 22, password: 'hello' },
    { name: 'Richie', age: 28, password: 'hi' },
    { name: 'Lem', age: 25, password: 'bye' },
    { name: 'Chris',age: 23,  password: 'cool' },
    { name: 'Tobe', age:23, password: 'lol' },
]
  users.each{|user| User.create(user)}


  workouts = [
    { name: 'lunges',reps: 10, sets: 3, user_id: User.all[0].id },
    { name: 'bench press',reps: 11, sets: 4, user_id: User.all[1].id },
    { name: 'shoulder press',reps: 12, sets: 5, user_id: User.all[2].id },
    { name: 'bicep curls',reps: 13, sets: 6, user_id: User.all[3].id },
    { name: 'pullups',reps: 14, sets: 7, user_id: User.all[4].id },
]
workouts.each{|workout| Workout.create(workout)}