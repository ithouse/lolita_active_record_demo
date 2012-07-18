# default admin
Admin.where(:email => "lolita@ithouse.lv").first_or_create(:password=>"lolita",:password_confirmation=>"lolita")

#
# Menus
["header"].each do |name|
  Menu.where(:name => name).first_or_create
end

