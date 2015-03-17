class ApplicationController < ActionController::API
  include ActionController::Serialization

  include ActionController::HttpAuthentication::Token::ControllerMethods

  protected

  def authenticate
    token = request.env["HTTP_AUTHORIZATION"].gsub(/Token token=/,'')
    @user = User.find_by(token: token)
  end

end
