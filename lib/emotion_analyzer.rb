class EmotionAnalyzer
  def initialize(emotions)
    @emotions = emotions
  end

  def call
    return 'Unknown' if @emotions.empty?

    emotion = @emotions.first
    emotion.type.downcase
  end
end
