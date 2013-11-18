json.array!(@test_logins) do |test_login|
  json.extract! test_login, 
  json.url test_login_url(test_login, format: :json)
end
