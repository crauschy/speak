
// Set the region where your identity pool exists (us-east-1, eu-west-1)
AWS.config.region = 'us-east-1';

var poolData = {
    UserPoolId : 'us-east-1_Cp7WDLCqS', // your user pool id here
    ClientId : '7h12v8aqg6j23j00b3ocg54vss' // your app client id here
};
var userPool =
new AWSCognito.CognitoIdentityServiceProvider.CognitoUserPool(poolData);
var userData = {
    Username : 'Speak-Test1-User2', // your username here
    Pool : userPool
};


// Configure the credentials provider to use your identity pool
var creds = AWS.config.credentials = new AWS.CognitoIdentityCredentials({
    IdentityPoolId: 'us-east-1:1666f9f4-9298-4444-8b27-aac0ce62ce2d'
});

AWS.config.credentials = creds;

var cognitoUser = userPool.getCurrentUser();

if (cognitoUser != null) {
  cognitoUser.getSession(function(err, result) {
    if (result) {
      console.log('You are now logged in.');

      // Add the User's Id Token to the Cognito credentials login map.
      AWS.config.credentials = new AWS.CognitoIdentityCredentials({
        IdentityPoolId: 'YOUR_IDENTITY_POOL_ID',
        Logins: {
          'cognito-idp.<region>.amazonaws.com/<YOUR_USER_POOL_ID>': result.getIdToken().getJwtToken()
        }
      });
    }
  });
}



// Make the call to obtain credentials
// AWS.config.credentials.get(function(){

//     // Credentials will be available when this function is called.
//     var accessKeyId = AWS.config.credentials.accessKeyId;
//     var secretAccessKey = AWS.config.credentials.secretAccessKey;
//     var sessionToken = AWS.config.credentials.sessionToken;

// });


// AWS.config.accessKeyId = 'AKIAJ4DJ7X2MGGB2KZGA';
// AWS.config.secretAccessKey = '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';



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

