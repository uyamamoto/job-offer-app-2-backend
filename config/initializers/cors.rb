# config/initializers/cors.rb

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3000'  # Reactアプリが動作しているオリジン

    resource '*',  # すべてのリソースを対象
      headers: :any,  # どんなHTTPヘッダーでも許可
      methods: [:get, :post, :put, :patch, :delete, :options, :head]  # 許可するHTTPメソッド
  end
end
