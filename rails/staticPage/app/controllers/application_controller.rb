class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def merhaba
    render html:"Merhaba Dünya"
  end
end
