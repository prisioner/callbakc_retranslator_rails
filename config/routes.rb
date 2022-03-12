Rails.application.routes.draw do
  root 'home#index'

  post "/bot#{ENV['BOT_TOKEN'].tr(':', '_')}", to: 'bot#command'

  post '/p/:chat_id/:username/(:message_source)', to: 'bot#callback'
end
