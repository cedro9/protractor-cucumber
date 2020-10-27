"use strict";

var utils = require("../scripts/utils");
var fillText = utils.fillText;
var assertText = utils.assertTextFieldContent;

exports.fillBasicEntityInfo = function (code, name, description) {
    fillText("[name='code']", code);
    fillText("[name='name']", name);
    return fillText("[name='description']", description);
};

exports.assertBasicEntityInfo = function (code, name, description) {
    assertText("[name='code']", code);
    assertText("[name='name']", name);
    assertText("[name='description']", description);
};