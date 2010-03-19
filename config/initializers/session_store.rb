# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_test_session',
  :secret => 'a422ebdab9e3a263b0a1af3de40e2ab1b21658ce86471f49959cec15483425e14f2a6189bcd46fe6c437c071e09e0f719d75ea653bca5d34162ee9f2651f30ad'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
