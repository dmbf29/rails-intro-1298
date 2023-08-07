Rails.application.routes.draw do
  # http_verb '/path', to: 'controller#action', as: :prefix (aka nickname)
  get '/about', to: 'pages#about', as: :about
  get '/contact', to: 'pages#contact', as: :contact
  # get '/', to: 'pages#home'
  root to: 'pages#home'
end

# CRUD

# Read   -> get
# Create -> post
# Update -> patch
# Destrory -> delete
