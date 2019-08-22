Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      get '/reserved_tables/:restaurant', to: 'table_reserve#reserved_tables'
    end
  end

end
