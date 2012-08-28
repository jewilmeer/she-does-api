Her::API.setup :url => "http://tv-guide.dev" do |connection|
  connection.use MonkeyMiddleware
  connection.use Faraday::Request::UrlEncoded
  connection.use Her::Middleware::DefaultParseJSON
  connection.use Faraday::Adapter::NetHttp
end
