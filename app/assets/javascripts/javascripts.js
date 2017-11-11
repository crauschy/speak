
// heroku config:set AWS_ACCESS_KEY_ID='AKIAJQYN4XFRSQJJI3QA' AWS_SECRET_ACCESS_KEY=yyy

AWS.config.region = 'us-east-2';
AWS.config.accessKeyId = 'AKIAJH556VNSXWNILFEA';
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

