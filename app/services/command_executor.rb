class CommandExecutor
  def self.call(*args)
    new(args).call
  end

  def initialize(params)
    @params = params
  end

  def call
    return unless params[:message]
    return unless params[:message][:text] == "/start"

    chat_id = parsed_body[:message][:chat][:id]
    username = parsed_body[:message][:chat][:username]

    TelegramClient.send_message(
      chat_id,
      <<~MESSAGE
        Use provided URL for your POST callback retranslation:
        ```
        #{ENV['HOST_URL']}/p/#{chat_id}/#{username}/?:scope/
        ```
        You may use :scope route variable to specify callback sender — it\\`s value will be included in retranslation message
      MESSAGE
    )
  end

  private

  attr_reader :params
end
