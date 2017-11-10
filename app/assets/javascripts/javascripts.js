AWS.config.region = 'us-east-2';
AWS.config.accessKeyId = 'AKIAJ3QPH4QTKKKGNQCA';
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

 function callBackExample(err, data){
    if (err) console.log(err, err.stack);
    else
      showSpeech(data.AudioStream)
 }




function showSpeech(audioStream) {
  var arrayBuffer = audioStream.buffer;
  var blob = new Blob([arrayBuffer]);
  var url = URL.createObjectURL(blob);
  var audioElement = document.getElementById('sound')
  audioElement.src = url;
  audioElement.play();

 }






$(document).ready(function() {
  console.log("start")




   //  var polly = new AWS.Polly()
   //  var params = {
   //      OutputFormat: 'mp3', /* required */
   //      Text: 'Hello world', /* required */
   //      VoiceId: 'Justin', /* required */
   //      SampleRate: '22050',
   //      TextType: 'text'
   // };

   // polly.synthesizeSpeech(params, callBackExample );

})