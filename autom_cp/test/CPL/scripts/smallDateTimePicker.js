module.exports = function (smallDateTimePickerSelector) {
    "use strict";

    return {
        setDate: function (year, month, day, hour, minute) {
            var date = new Date(year, month - 1, day, hour, minute);
            console.log(date);
            return element(by.css(smallDateTimePickerSelector + " .small-timepicker")).evaluate("updateDate(" + date.getTime() + ")");
        },
        getDate: function () {
            return element(by.css(smallDateTimePickerSelector + " .small-timepicker")).evaluate("getDate()").then(function (millis) {
                var date = new Date(millis);
                return date.getDate() + "/" + (date.getMonth() + 1) + "/" + date.getFullYear() + " " + date.getHours() + ":" + date.getMinutes();
            });
        }
    };
};