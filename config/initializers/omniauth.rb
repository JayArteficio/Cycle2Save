Rails.application.config.middleware.use OmniAuth::Builder do
    provider :strava,
    Rails.application.config.try(:strava_api_client_id) || Rails.application.secrets.strava_api_client_id,
    Rails.application.config.try(:strava_api_key) || Rails.application.secrets.strava_api_key,
  scope: 'view_private'
end

# it was like this
# Rails.application.secrets.strava_client_id, Rails.application.secrets.strava_api_key,

# scope might be:
#
# public  default, private activities are not returned, privacy zones are respected in stream requests
# write   modify activities, upload on the user’s behalf
# view_private  view private activities and data within privacy zones
# view_private,write  both ‘view_private’ and ‘write’ access
