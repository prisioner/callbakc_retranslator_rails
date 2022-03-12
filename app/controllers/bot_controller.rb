class BotController < ApplicationController
  skip_forgery_protection

  def command
    CommandExecutor.call(params)

    render status: :ok
  end

  def callback
    CallbackProcessor.call(request, params)

    render status: :ok
  end
end
