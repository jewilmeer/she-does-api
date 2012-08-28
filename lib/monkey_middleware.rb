class MonkeyMiddleware < Faraday::Middleware
  def call(env)
    env[:request_headers]["Accept"] = "application/json"
    @app.call(env)
  end
end