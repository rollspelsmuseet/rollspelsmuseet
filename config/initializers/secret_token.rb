# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Rollspelsmuseet::Application.config.secret_key_base = ENV['APP_SECRET'] || 'f9e1007f41a97190e9b09e3c08ca21686bb62f8437c6aa074a9b2fc1457e0f5e22d457854e887810867398735dc917c0a01219f85c1e7cc45417cdfdc559b619'
