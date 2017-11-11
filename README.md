# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


https://688612166558.signin.aws.amazon.com/console













Class: Aws::Polly::Types::SynthesizeSpeechInput


Note: When making an API call, you may pass SynthesizeSpeechInput data as a hash:
{
  lexicon_names: ["LexiconName"],
  output_format: "json", # required, accepts json, mp3, ogg_vorbis, pcm
  sample_rate: "SampleRate",
  speech_mark_types: ["sentence"], # accepts sentence, ssml, viseme, word
  text: "Text", # required
  text_type: "ssml", # accepts ssml, text
  voice_id: "Geraint", # required, accepts Geraint, Gwyneth, Mads, Naja, Hans, Marlene, Nicole, Russell, Amy, Brian, Emma, Raveena, Ivy, Joanna, Joey, Justin, Kendra, Kimberly, Matthew, Salli, Conchita, Enrique, Miguel, Penelope, Chantal, Celine, Mathieu, Dora, Karl, Carla, Giorgio, Mizuki, Liv, Lotte, Ruben, Ewa, Jacek, Jan, Maja, Ricardo, Vitoria, Cristiano, Ines, Carmen, Maxim, Tatyana, Astrid, Filiz, Vicki, Takumi
}


Instance Attribute Summary
collapse

#lexicon_names ⇒ Array<String>
List of one or more pronunciation lexicon names you want the service to apply during synthesis.
#output_format ⇒ String
The format in which the returned output will be encoded.
#sample_rate ⇒ String
The audio frequency specified in Hz.
#speech_mark_types ⇒ Array<String>
The type of speech marks returned for the input text.
#text ⇒ String
Input text to synthesize.
#text_type ⇒ String
Specifies whether the input text is plain text or SSML.
#voice_id ⇒ String
Voice ID to use for the synthesis.