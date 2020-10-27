/**
 * Print Screen
 *
 * */

exports.stepPrintScreen = function (self) {
   return console.log("OK") 

   // return browser.takeScreenshot().then(function (screenshot) {
   //    const decodedImage = new Buffer.from(screenshot.replace(/^data:image\/png;base64,/, ''), 'base64'); 
   //    self.attach(decodedImage, 'image/png');
   //    });
};

exports.stepFailedPrintScreen = function (scenarioResult, self) {
   if (scenarioResult.result.status === 'failed') {
      return browser.takeScreenshot().then(function (screenshot) {
         const decodedImage = new Buffer.from(screenshot.replace(/^data:image\/png;base64,/, ''), 'base64');
         self.attach(decodedImage, 'image/png');
      });
   }
};