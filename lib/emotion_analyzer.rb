class EmotionAnalyzer
  def initialize(emotions)
    @emotions = emotions
  end

  def call
    @emotions.first
  end
end
