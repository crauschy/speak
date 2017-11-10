class SpeakController < ActionController::Base

  def index
    @speech = Aws::Polly::Client.new(region: 'us-east-2').synthesize_speech(output_format: 'mp3', text:'Hello world', voice_id: 'Joanna')

    render json: @speech
  end


end

