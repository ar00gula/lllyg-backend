# require 'rack/session/abstract/id'
# class Rack::Session::Abstract::SessionHash

#     if Rails.env === 'production' 
#         Rails.application.config.session_store :cookie_store, key: '_longlive_api', domain: 'localhost:3000'
#       else
#         Rails.application.config.session_store :cookie_store, key: '_longlive_api' 
#       end

#   private
#   def stringify_keys(other)
#     hash = {}
#     other = other.to_hash unless other.is_a?(Hash) # hack hack hack
#     other.each do |key, value|
#       hash[key.to_s] = value
#     end
#     hash
#   end
# end
