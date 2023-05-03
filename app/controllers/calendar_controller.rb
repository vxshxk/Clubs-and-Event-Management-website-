class CalendarsController < ApplicationController
  #def index
  #  service = Google::Apis::CalendarV3::CalendarService.new
  #  service.authorization = Google::Auth::ServiceAccountCredentials.make_creds(
  #    json_key_io: File.open('path/to/your/credentials.json'),
  #    scope: 'https://www.googleapis.com/auth/calendar.readonly'
  #  )
  #  calendar_id = 'your_calendar_id@group.calendar.google.com'
  #  events = service.list_events(calendar_id)
  #  render json: events.to_json
  #end

  def index
    token = session[:token]
    service = Google::Apis::CalendarV3::CalendarService.new
    service.authorization = Google::Auth::UserRefreshCredentials.new(
    client_id: ENV['1085205208543-s931q04pop1buohoucfb8hh0q56ncl26.apps.googleusercontent.com '],
    client_secret: ENV['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 '],
    refresh_token: session[:refresh_token],
    access_token: token
  end    
end
