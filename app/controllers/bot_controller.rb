class BotController < ApplicationController
  def command
    CommandExecutor.call(params)

    render status: :ok
  end

  def callback
    CallbackProcessor.call(request, params)

    render status: :ok
  end
end
