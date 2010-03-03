# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_zadanie1_session',
  :secret      => 'a4de02884d248e82b7b2970ff9a4eba2ab412f757144738da58b6ed6372eef3670136a68738cbf195f19e78f922abc8b1d9be5fe1aebb74b3054c0001039c87e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
