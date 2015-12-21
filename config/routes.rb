Rails.application.routes.draw do
  scope 'api/v1' do
    resources :coworkers
    resources :kudos
    resources :hamsters
  end
end
