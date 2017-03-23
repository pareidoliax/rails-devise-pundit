class CreateAdminService
  def call
    user = User.find_or_create_by!(email: 'admin@example.com') do |user|
        user.password = 'helloworld'
        user.password_confirmation = 'helloworld'
        user.admin!
      end
  end
end
