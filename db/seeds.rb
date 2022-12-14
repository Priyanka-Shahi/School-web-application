
Appointment.destroy_all
Student.destroy_all
Teacher.destroy_all
House.destroy_all

NUMBER_OF_HOUSES = 5

NUMBER_OF_HOUSES.times do
    house_name = Faker::Movies::HarryPotter.unique.house
    house_points = rand(333..9999)
    house = House.create(name: house_name , points: house_points)
    
    number_of_students = rand(10..15)
    number_of_students.times do
        house.students.create(name: Faker::Movies::HarryPotter.unique.character)
    end

    number_of_teachers = rand(3..4)
    number_of_teachers.times do
        house.teachers.create(name: Faker::Movies::HarryPotter.unique.character)
    end
end

teachers_with_appointments = Teacher.all.sample(10)

teachers_with_appointments.each do |teacher|
    students =  Student.all.sample(4)
    students.each do |student|
        Appointment.create(student: student, teacher: teacher, appointment_date: Faker::Time.forward(days_in_the_future, :morning))
    end
end



puts "Created #{House.count} Houses." 
puts "Created #{Student.count} Students."
puts "Created #{Teacher.count} Teachers."
puts "Created #{Appointment.count} Appointments."

AdminUser.create!(email: 'admin@example.com', password: 'password!', password_confirmation: 'password!') if Rails.env.development?