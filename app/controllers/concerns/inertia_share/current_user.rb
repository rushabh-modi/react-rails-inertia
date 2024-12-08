require 'active_support/concern'

module InertiaShare::CurrentUser
  extend ActiveSupport::Concern

  included do
    inertia_share do 
      { user: current_user ? serialize(current_user, UserSerializer) : nil } 
    end
  end
end
