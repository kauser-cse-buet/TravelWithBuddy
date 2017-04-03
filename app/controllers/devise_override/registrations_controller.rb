class DeviseOverride::RegistrationsController < Devise::RegistrationsController
  skip_before_filter  :verify_authenticity_token
  def create
    super # this calls Devise::RegistrationsController#create as usual
    # after creating a new user, create a profile that has
    # the profile.user_id field set to the user_id of the user jsut created
    if resource.save
        @user = resource.create_user
        @user.email = resource.email
        @user.save

    end
  end

  def destroy
    super
    if resource.destroy
        @user = User.find(user_id: resource.id)
        @user.destroy
    end
  end
end