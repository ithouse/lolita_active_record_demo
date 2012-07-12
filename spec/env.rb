module LolitaActiveRecordDemoTestHelpers

  def login_admin options = {}
    login_as(options[:admin] || Fabricate(:admin), :scope => :admin)
  end

end

