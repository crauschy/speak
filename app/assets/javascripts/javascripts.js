AWS.config.region = 'us-east-2';
AWS.config.accessKeyId = 'AKIAIQXPH53GUOFAQA7Q';
AWS.config.secretAccessKey = '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';


//////////MODEL FUNCTIONS///////

// function fetchSpeech() {
//   var polly = new AWS.Polly()
//   var params = {
//         OutputFormat: 'mp3', /* required */
//         Text: 'Hello world', /* required */
//         VoiceId: 'Joanna', /* required */
//         SampleRate: '22050',
//         TextType: 'text'
//   };
//   requestPromise = polly.synthesizeSpeech(params, function(err, data) {
//     // if (err) console.log(err, err.stack);
//     // else console.log(data);
//     console.log("heoolow word")
//      return "whateber"
//   });
//   // console.log(data)
//   return requestPromise
// }


// ////////CONTROLLER FUNCTIONS//////
// function handleSpeech() {
//   var promiseFromSpeech = fetchSpeech()
// console.log(promiseFromSpeech)
//   showSpeech(promiseFromSpeech)


// }


// ///////////VIEW FUNCTIONS///////
function showSpeech(audioStream) {
  // var uInt8Array = new Uint8Array(audioStream);
  var arrayBuffer = audioStream.buffer;
  var blob = new Blob([arrayBuffer]);
  var url = URL.createObjectURL(blob);
  // var audioElement = $("#sound source")
  var audioElement = document.getElementById('sound')
  audioElement.src = url;
  // debugger;
  audioElement.play();

 }

 function callBackExample(err, data){
    if (err) console.log(err, err.stack);
    else
      showSpeech(data.AudioStream)
 }


$(document).ready(function() {
  console.log("start")


    var polly = new AWS.Polly()
    var params = {
        OutputFormat: 'mp3', /* required */
        Text: 'Hooray', /* required */
        VoiceId: 'Joanna', /* required */
        SampleRate: '22050',
        TextType: 'text'
   };


   polly.synthesizeSpeech(params, callBackExample );


   // synthesizeSpeech(params, cb){
      // $.get('goog.ecom').then(function(){
        // cb(null, {data: 'sdfa' })
      // })
   // }

  // var returnedData = polly.synthesizeSpeech(params)
  // console.log(returnedData)

  // console.log(returnedData)
  // var uInt8Array = new Uint8Array(audioStream);
  // var arrayBuffer = uInt8Array.buffer;
  // var blob = new Blob([arrayBuffer]);
  // var url = URL.createObjectURL(blob);
  // audioElement.src = url;
  // audioElement.play();



// handleSpeech()

})