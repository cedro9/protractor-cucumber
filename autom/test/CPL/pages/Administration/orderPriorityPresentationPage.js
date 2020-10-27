"use strict";

var chai = require('chai'),
    assert = chai.assert;

module.exports = {
    checkPriorityIconIsPresent,
    checkPriorityIconIsNotPresent
};

function checkPriorityIconIsPresent() {
    return element(by.css("[src='images/priority.png']")).isPresent()
        .then(function (isPresent) {
            assert.isTrue(isPresent);
        });
};

function checkPriorityIconIsNotPresent() {
    return element(by.css("[src='images/priority.png']")).isPresent()
        .then(function (isPresent) {
            assert.isFalse(isPresent);
        });
};