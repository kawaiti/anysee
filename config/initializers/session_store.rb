# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_anysee_session',
  :secret => '9a22eedf065d947f7981ff2cd76b3d1583c539f13031d0f25b4019dfe618209b244b7d91b4f6ae99dcd9a52e48dbf2355893f6cf641a8c52dc09818693be7ac4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
