
// Set the region where your identity pool exists (us-east-1, eu-west-1)
AWS.config.region = 'us-east-1';


// Configure the credentials provider to use your identity pool
var creds = new AWS.CognitoIdentityCredentials({
  IdentityPoolId: 'us-east-1:1666f9f4-9298-4444-8b27-aac0ce62ce2d'
});


AWS.config.credentials = creds;

//////////CONTROLLER FUNCTIONS//////
function callBack(err, data){

  if (err) {
    console.log('IN CALLBACK')
    console.log(err, err.stack)
  }
  else
    showSpeech(data.AudioStream)
}


// ///////////VIEW FUNCTIONS///////

function showSpeech(audioStream) {
  console.log('audio', audioStream)
  var arrayBuffer = audioStream.buffer;
  // var blob = new Blob([arrayBuffer]);
  // var url = URL.createObjectURL(blob);
  // var audioElement = document.getElementById('sound')
  // audioElement.src = url;
  // audioElement.play();
  var audioContext = new (window.AudioContext || window.webkitAudioContext);
  console.log(audioContext, 'audio context')
  audioContext.decodeAudioData(arrayBuffer, function(audio){
    console.log(audio,'in opromise rseaf ')
    var source = audioContext.createBufferSource();
    source.buffer = audio;
    source.connect(audioContext.destination);
    source.start()
    console.log('FCUK')
  })

  // var snd = document.createElement('audio'), src = document.createElement('source');
  // src.src =  url;
  // src.type = "audio/mpeg";
  // snd.appendChild(src);
  // snd.preload = 'metadata';
  // snd.play();
  // snd.preload = null;

}
