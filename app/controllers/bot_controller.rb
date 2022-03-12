class BotController < ApplicationController
  skip_forgery_protection

  def command
    CommandExecutor.call(params)

    head :ok
  end

  def callback
    CallbackProcessor.call(request, params)

    head :ok
  end
end
