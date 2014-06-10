def user_attributes(overrides = {})
  {
    name: "Example User",
    email: "user@example.com",
    username: "Username",
    password: "secret",
    password_confirmation: "secret"
  }.merge(overrides)
end