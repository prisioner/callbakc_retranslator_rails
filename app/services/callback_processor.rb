class CallbackProcessor
  def self.call(*args)
    new(*args).call
  end

  def initialize(request, params)
    @request = request
    @chat_id = params[:chat_id]
    @username = params[:username]
    @message_source = params[:message_source]
  end

  def call
    return unless TelegramClient.valid_username?(chat_id, username)

    body = request.body.read
    headers = {
      'Content-Type' => request.env['CONTENT_TYPE'],
      'X-Signature'  => request.env['HTTP_X_SIGNATURE']
    }.compact

    TelegramClient.send_message(
      chat_id,
      <<~MESSAGE
        #{"FROM: #{message_source}" if message_source}
        ```
        #{RspecApiDocumentation::Curl.new('POST', '/', body, headers).output('https://example.org')}
        ```
    MESSAGE
    )
  end

  private

  attr_reader :request, :chat_id, :username, :message_source
end
