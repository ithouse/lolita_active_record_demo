
Lolita.setup do |config|
  # ==> User and authentication configuration
  # Add one or more of your user classes to Lolita
  # config.user_classes << MyUser
  
  # Define authentication for Lolita controllers.
  # Call some of your own methods
  # config.authentication=:is_admin?
  # Or use some customized logic
  # config.authentication={
  #  current_user.is_a?(Admin) || current_user.has_role?(:admin)
  # }
  
   config.user_classes << User
   config.authentication=:authenticate_user!
end

Lolita::I18n.store=I18n::Backend::KeyValue.new({})
I18n.backend = Lolita::I18n.store#I18n::Backend::Chain.new(I18n::Backend::KeyValue.new(Redis.new), I18n.backend)
