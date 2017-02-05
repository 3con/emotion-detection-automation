require 'aws-sdk'

class RekognitionService
  def initialize
    @client = Aws::Rekognition::Client.new
  end

  def call(image_blob)
    @client.detect_faces({image: {bytes: image_blob}, attributes: ["ALL"]})
  end
end
