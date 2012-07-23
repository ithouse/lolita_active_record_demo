class ApplicationMenu < Menu

  class<<self

    def get_menu_root(name)
      find_by_name(name).items.first.root rescue nil
    end

    def get_menu_items(menu, request)
      menu.children.each do |item|
        active = item.active?(request)
        yield item, active
      end
    end

  end

end