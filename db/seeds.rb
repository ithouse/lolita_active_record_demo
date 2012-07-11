# default admin
Admin.where(:email => "lolita@ithouse.lv").first_or_create(:password=>"lolita",:password_confirmation=>"lolita")

