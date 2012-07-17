module LolitaActiveRecordDemoControllerHelpers
  def sign_in_admin
    @request.env["devise.mapping"] = Devise.mappings[:admin]
    sign_in Fabricate(:admin)
  end
end
