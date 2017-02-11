require 'sinatra'
require 'json'
require 'base64'

require_relative 'lib/rekognition_service'
require_relative 'lib/emotion_analyzer'

get '/' do
  erb :index
end

post '/' do
  data = params[:data_uri].split(',')[1]
  image_blob = Base64.decode64(data)

  result = RekognitionService.new.call(image_blob)
  emotions = result.face_details.map { |face_details| face_details.emotions }
  emotions = emotions.flatten

  emotion = EmotionAnalyzer.new(emotions).call

  content_type :json
  { emotion: emotion }.to_json
end

get '/about' do
  erb :about
end
