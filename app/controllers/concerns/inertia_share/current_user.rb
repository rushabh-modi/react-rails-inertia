require 'active_support/concern'

module InertiaShare::CurrentUser
  extend ActiveSupport::Concern

  included do
    inertia_share do 
      { user: current_user ? UserSerializer.render(current_user) : nil } 
    end
  end
end
