# Below are the routes for madmin
namespace :madmin do
  resources :services
  namespace :active_storage do
    resources :variant_records
  end
  resources :users
  namespace :active_storage do
    resources :blobs
  end
  namespace :active_storage do
    resources :attachments
  end
  resources :announcements
  resources :notifications
  root to: "dashboard#show"
end
