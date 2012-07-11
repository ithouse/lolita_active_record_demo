Lolita.setup do |config|
  # Define authentication for Lolita controllers.
  # Call some of your own methods
  # config.authentication=:is_admin?
  config.user_classes << Admin
  config.authentication = :authenticate_admin!
end

