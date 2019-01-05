module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: "Guest User",
                   first_namne: "Guest",
                   last_name: "User",
                   email: "asdf@asd.com"
                   )
  end
end
