Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #

  scope '/commands', controller: :commands do
    get '/hello_world', action: :hello_world
  end
end
