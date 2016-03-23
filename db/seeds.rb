# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
User.delete_all
#The following lines are static lists. Don't need to wipe them clean each time
Value.delete_all
Choice.delete_all

# Create the users
puts "Creating your Users dog..."
user_one = User.create(name: "John Billy",email: "john@aol.com",description: "1",password: "1234",facebook:"http://www.facebook.com/joshua.borin")
user_two = User.create(name: "Alex Smart",email: "alex@gmail.com",description: "2",password: "1234",facebook:"http://www.facebook.com")
user_three = User.create(name: "Alex Smart",email: "alex@mail.com",description: "2",password: "1234",facebook:"http://www.facebook.com")

# Create the values
puts "Creating values..."
value_one = Value.create(name: "Discipline",logo: "fa fa-comments",definition: "Def 1",workexample: "workexample",lifeexample: "life example")
value_two = Value.create(name: "Desire",logo: "fa fa-comments",definition: "Def 2",workexample: "workexample",lifeexample: "life example")
value_three = Value.create(name: "Empathy",logo: "fa fa-comments",definition: "Def 3",workexample: "workexample",lifeexample: "life example")
value_four = Value.create(name: "Freecom",logo: "fa fa-comments",definition: "Def 4",workexample: "workexample",lifeexample: "life example")
value_five = Value.create(name: "Joy",logo: "fa fa-comments",definition: "Def 5",workexample: "workexample",lifeexample: "life example")
value_six = Value.create(name: "Dependability",logo: "fa fa-comments",definition: "Def 6",workexample: "workexample",lifeexample: "life example")
value_seven = Value.create(name: "Discipline",logo: "fa fa-comments",definition: "Def 1",workexample: "workexample",lifeexample: "life example")
value_eight = Value.create(name: "Desire",logo: "fa fa-comments",definition: "Def 2",workexample: "workexample",lifeexample: "life example")
value_nine = Value.create(name: "Empathy",logo: "fa fa-comments",definition: "Def 3",workexample: "workexample",lifeexample: "life example")
value_ten = Value.create(name: "Freecom",logo: "fa fa-comments",definition: "Def 4",workexample: "workexample",lifeexample: "life example")
value_eleven = Value.create(name: "Joy",logo: "fa fa-comments",definition: "Def 5",workexample: "workexample",lifeexample: "life example")
value_twelve = Value.create(name: "Dependability",logo: "fa fa-comments",definition: "Def 6",workexample: "workexample",lifeexample: "life example")
value_1 = Value.create(name: "Discipline",logo: "fa fa-comments",definition: "Def 1",workexample: "workexample",lifeexample: "life example")
value_2 = Value.create(name: "Desire",logo: "fa fa-comments",definition: "Def 2",workexample: "workexample",lifeexample: "life example")
value_3 = Value.create(name: "Empathy",logo: "fa fa-comments",definition: "Def 3",workexample: "workexample",lifeexample: "life example")
value_4 = Value.create(name: "Freecom",logo: "fa fa-comments",definition: "Def 4",workexample: "workexample",lifeexample: "life example")
value_5 = Value.create(name: "Joy",logo: "fa fa-comments",definition: "Def 5",workexample: "workexample",lifeexample: "life example")
value_6 = Value.create(name: "Dependability",logo: "fa fa-comments",definition: "Def 6",workexample: "workexample",lifeexample: "life example")
value_7 = Value.create(name: "Discipline",logo: "fa fa-comments",definition: "Def 1",workexample: "workexample",lifeexample: "life example")
value_8 = Value.create(name: "Desire",logo: "fa fa-comments",definition: "Def 2",workexample: "workexample",lifeexample: "life example")
value_9 = Value.create(name: "Empathy",logo: "fa fa-comments",definition: "Def 3",workexample: "workexample",lifeexample: "life example")
value_10 = Value.create(name: "Freecom",logo: "fa fa-comments",definition: "Def 4",workexample: "workexample",lifeexample: "life example")
value_11 = Value.create(name: "Joy",logo: "fa fa-comments",definition: "Def 5",workexample: "workexample",lifeexample: "life example")
value_12 = Value.create(name: "Dependability",logo: "fa fa-comments",definition: "Def 6",workexample: "workexample",lifeexample: "life example")




# Create the Trifecta

puts "Creating Choices"
choice_one = Choice.create(value_id: value_one.id, user_id: user_one.id)
choice_two = Choice.create(value_id: value_two.id, user_id: user_one.id)
choice_three = Choice.create(value_id: value_three.id, user_id: user_one.id)
choice_four = Choice.create(value_id: value_one.id, user_id: user_two.id)
choice_five = Choice.create(value_id: value_four.id,user_id: user_two.id)
choice_six = Choice.create(value_id: value_five.id,user_id: user_two.id)
choice_seven = Choice.create(value_id: value_three.id,user_id: user_three.id)
choice_eight = Choice.create(value_id: value_four.id,user_id: user_three.id)
choice_nine = Choice.create(value_id: value_six.id,user_id: user_three.id)



puts "There are now #{User.count} Users and #{Choice.count} Choice in the database."
