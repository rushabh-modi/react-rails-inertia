class ApplicationController < ActionController::Base
  include Serializable
  include InertiaShare::CurrentUser
  include InertiaShare::Csrf
  include InertiaShare::Flash
end
