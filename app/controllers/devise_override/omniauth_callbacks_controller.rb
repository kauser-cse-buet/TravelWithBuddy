class DeviseOverride::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    # You need to implement the method below in your model (e.g. app/models/admin.rb)
    @admin = Admin.from_omniauth(request.env["omniauth.auth"])
    @admin.user = User.create(email: @admin.email, first_name: @admin.first_name, last_name: @admin.last_name)

    if @admin.persisted?
      sign_in_and_redirect @admin, :event => :authentication #this will throw if @admin is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_admin_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
end