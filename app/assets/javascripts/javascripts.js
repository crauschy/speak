AWS.config.region = 'us-east-2';
AWS.config.accessKeyId = 'AKIAJU3RZQPBVXFGFKFQ';
AWS.config.secretAccessKey = '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';



//////////CONTROLLER FUNCTIONS//////

 function callBack(err, data){
    if (err) console.log(err, err.stack);
    else
      showSpeech(data.AudioStream)
 }


// ///////////VIEW FUNCTIONS///////



function showSpeech(audioStream) {
  var arrayBuffer = audioStream.buffer;
  var blob = new Blob([arrayBuffer]);
  var url = URL.createObjectURL(blob);
  var audioElement = document.getElementById('sound')
  audioElement.src = url;
  audioElement.play();

 }
