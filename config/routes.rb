Rails.application.routes.draw do
  root 'home#index'
  devise_for :users,
             skip: %i[registration confirmation password],
             controllers: {
               sessions: 'users/sessions'
               #  omniauth_callbacks: "users/omniauth_callbacks",
             },
             path: '/',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout'
             }

  devise_scope :user do
    scope module: :users, as: :user do
      resource :registration,
               path: '/signup',
               only: %i[new create destroy],
               path_names: { new: '' }
      resource(
        :registration,
        path: '/account',
        only: %i[edit update],
        path_names: { edit: '' }
      ) do
        put :email, action: :change_email, as: :change_email
        put :password, action: :change_password, as: :change_password
      end
      resource :confirmation,
               path: '/email_verification',
               only: %i[new show create],
               path_names: {
                 new: 'resend'
               }
      resource :password,
               only: %i[new edit create update],
               path_names: {
                 new: 'reset',
                 edit: 'change'
               }
    end
  end

  get 'up' => 'rails/health#show', as: :rails_health_check
end
