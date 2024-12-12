class ApplicationController < ActionController::Base
  include InertiaShare::CurrentUser
  include InertiaShare::Csrf
  include InertiaShare::Flash
end
