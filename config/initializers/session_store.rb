if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_longlive_api', domain: '/'
  else
    Rails.application.config.session_store :cookie_store, key: '_longlive_api' 
  end