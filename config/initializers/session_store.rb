# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_hottweiler_session',
  :secret      => '81f4d1e4ec636619725492413198716581dae77677a552be95cd808821145468547802b2857ea24c5ae32c4d7859b9e40ef6b78878eb058609b4c3c2419b2b64'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
