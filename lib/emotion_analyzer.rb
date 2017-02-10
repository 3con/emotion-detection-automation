class EmotionAnalyzer
  def initialize(emotions)
    @emotions = emotions
  end

  def call
    return 'unknown' if @emotions.empty?

    emotion = @emotions.first
    emotion.type.downcase
  end
end
