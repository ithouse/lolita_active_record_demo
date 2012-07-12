Lolita::Menu::Urls.create do 
 #add "/contacts", "Contacts"
  TextPages.each do |page|
    add "/#{page.friendly_id}", page.title
  end
end