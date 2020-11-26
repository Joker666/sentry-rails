Rails.application.routes.draw do
    scope :api do
        get '/track/:id', action: :track, controller: 'track'
    end
end
