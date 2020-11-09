Rails.application.routes.draw do
  devise_for :requesters,controllers:{
    sessions:      'requesters/sessions',
    passwords:     'requesters/passwords',
    registrations: 'requesters/registrations',
    consirmations: 'requesters/confirmations'
  }
  devise_for :speakers,controllers:{
    sessions:      'speakers/sessions',
    passwords:     'speakers/passwords',
    registrations: 'speakers/registrations',
    consirmations: 'speakers/confirmations'
  }

  root to: 'resumes#index'
  get 'speaker_accounts/show'
  resources :rooms
  resources :messages
  resources :resumes do
    collection do
      get 'resumes/speaker_check_mail'
    end
  end
end