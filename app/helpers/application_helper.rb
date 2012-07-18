module ApplicationHelper

  def get_menu_root(name)
    Menu.find_by_name(name).items.first.root rescue nil
  end

end
