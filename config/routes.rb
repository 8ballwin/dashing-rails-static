DashingHost::Application.routes.draw do
  devise_for :users
  mount Dashing::Engine, at: Dashing.config.engine_path
end
