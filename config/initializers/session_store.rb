# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_downeyfcu_session',
  :secret      => '03b1564a8f70dd24eca2db0ced0909cb86250aa28216f727014eadd5f35fb6c4b68a42e84f16a7336d13c81fa8f480f78c1310ee902fdacfed4501e2f9b2d453'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
