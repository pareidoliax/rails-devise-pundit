user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

def label_me
  (0..3).map do
    Label.find_or_create_by!(name: Faker::GameOfThrones.house, colour: Label.colours.keys.sample)
  end
end

12.times do
  user = User.find_or_create_by!(email: Faker::Internet.free_email(Faker::GameOfThrones.character)) do |user|
      user.password = 'helloworld'
      user.password_confirmation = 'helloworld'
      user.labels = label_me
    end
  puts 'CREATED OR FOUND: ' << user.email << " with labels #{user.labels.pluck(:name, :colour)}"
end


