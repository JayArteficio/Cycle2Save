class CallbacksController < ApplicationController

  def index
    omniauth_data = request.env['omniauth.auth']

    @firstname = omniauth_data.info.first_name
    @avatar = omniauth_data.extra.raw_info.profile
    @token = omniauth_data.credentials.token


    access_information = Strava::Api::V3::Auth.retrieve_access('client_id', 'client_secret', 'code')
    access_token = access_information['access_token']
    athlete_information = access_information['athlete']
    @client = Strava::Api::V3::Client.new(:access_token => @token)

    # maximum is only 200...problem if they commute daily
    # can I put a variable like, "this year", instead of hardcoding "2017"
    @so_far_this_year_activities =
    @client.list_athlete_activities(:after => Date.parse("2017-1-1").to_time.to_i, :per_page => 200)

    @commutes =[]
    for activity in @so_far_this_year_activities do
      if activity['commute']
        @commutes.push (activity['distance'])
      end
    end

    @commute_count = @commutes.size

    @total_commute_distance = (@commutes.reduce(0, :+)/1000).round(2)

    @money_saved_vs_train = (@commutes.size * 2.85).round(2)

    @money_saved_vs_train_two_zone = (@commutes.size * 4.10).round(2)

    @money_saved_vs_owning_mid_size = (@total_commute_distance * .52).round(2)

    @money_saved_vs_driving_mid_size = (@total_commute_distance * .0834).round(2)

  end
end

# @p = omniauth_data.class
# @name = omniauth_data.info.name
# render json: omniauth_data

# this only gives 30 by default
# @activities = @client.list_athlete_activities
# @secondactivity = @activities[1]
# @lastactivity = @activity[@activity.count]
# @oneyearactivities = @client.list_athlete_activities(:after => 1.year.ago.to_i, :per_page => 200)

# playing around with the commands...
# a.reduce(0, :+) <--this sums an array
# @count = @so_far_this_year_activities.size
# # @countofactivity = @activities.size
# @thirtyactivity = @activities[29]
# @d = @activities[1]["distance"]
# @a = @activities.class
# @friends = @client.list_athlete_friends
# # @x = @friends.map{|f| f[:country]}
# # @pfriends = JSON.parse(@friends)
# # @x = @pfriends.map{|f| f[:country]}
# @j = @friends[0]["firstname"]
# @allFriends = @friends.map{|i| i['firstname']}
# @allDistances =@activities.map{|i| i['distance']}
# this fuckin worked!
# @distance = @activities
# @f = @friends.class
# @fnf = @friends.map{|friend|.firstname}
# @h = JSON.parse @friends
# test to show all ride names from this year
# @rides = []
# for activity in @so_far_this_year_activities do
#     @rides.push (activity['name'])
# end
