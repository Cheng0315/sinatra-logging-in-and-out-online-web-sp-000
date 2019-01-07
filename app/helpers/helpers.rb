class Helpers
  
  def self.current_user(user_session)
    @current_user = User.find(user_session[:user_id])
  end

  def self.is_logged_in?(user_session)
    !!!user_session.empty?
  end
end