class ApplicationController < ActionController::Base
  # == Inertia
  inertia_share do
    {
      csrf: {
        param: request_forgery_protection_token,
        token: form_authenticity_token
      },
      flash: flash.to_h
    }
  end
end
