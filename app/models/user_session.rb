class UserSession < Authlogic::Session::Base
  # attr_accessible :title, :body
  def to_key
    [session_key]
  end
end
