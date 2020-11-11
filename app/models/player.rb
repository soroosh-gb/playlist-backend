# module RSpotify
    class Player < ApplicationRecord
#         def initialize(user, options = {})
#             @user = user
      
#             @repeat_state           = options['repeat_state']
#             @shuffle_state          = options['shuffle_state']
#             @progress               = options['progress_ms']
#             @is_playing             = options['is_playing']
#             @currently_playing_type = options['currently_playing_type']
#             @context_type           = options.dig('context', 'type')
#             @context_uri            = options.dig('context', 'uri')

#             @track = if options['track']
#                 Track.new options['track']
#               end
        
#               @device = if options['device']
#                 Device.new options['device']
#               end
#             end
        
#             def playing?
#               is_playing
#             end

#             def play_context(device_id = nil, uri)
#                 params = {"context_uri": uri}
#                 play(device_id, params)
#               end

#               def play_tracks(device_id = nil, uris)
#                 params = {"uris": uris}
#                 play(device_id, params)
#               end

#               def play_track(device_id = nil, uri)
#                 params = {"uris": [uri]}
#                 play(device_id, params)
#               end

#               def play(device_id = nil, params = {})
#                 url = "me/player/play"
#                 url = device_id.nil? ? url : "#{url}?device_id=#{device_id}"
          
#                 User.oauth_put(@user.id, url, params.to_json)
#               end

#               def pause
#                 url = 'me/player/pause'
#                 User.oauth_put(@user.id, url, {})
#               end

#               def shuffle(device_id: nil, state: true)
#                 url = "me/player/shuffle"
#                 url += "?state=#{state}"
#                 url += "&device_id=#{device_id}" if device_id
          
#                 User.oauth_put(@user.id, url, {})
#               end

#               def volume(percent)
#                 url = "me/player/volume?volume_percent=#{percent}"
#                 User.oauth_put(@user.id, url, {})
#               end
          
#               def currently_playing
#                 url = "me/player/currently-playing"
#                 response = RSpotify.resolve_auth_request(@user.id, url)
#                 return response if RSpotify.raw_response
#                 Track.new response["item"]
#               end
              
#         end
#     end
end