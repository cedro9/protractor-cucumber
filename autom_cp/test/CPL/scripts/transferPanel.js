"use strict";

const present = require("../scripts/wait").present;
const scroll = require("../scripts/scroll");
const utils = require("../scripts/utils"),
    fillText = utils.fillText,
    elementClick = utils.elementClick;

exports.moveLeftToRigth = function (el, value) {
    fillText(el + " [name='filterLeft']", value);
    var countBeforeMovePromise = element.all(by.css(el + " [name='ListLeft']  option")).count();
    return countBeforeMovePromise.then(function (regCount) {
        if (regCount === 1) {
            elementClick(el + " [label='" + value + "']");
            elementClick(el + " [name='moveToRight']");
            return elementClick(el + " [name='clearLeftFilter']");
        }
    })
};

exports.moveRigthToLeft = function (el, value) {
    fillText(el + " [name='filterRight']", value);
    var countBeforeMovePromise = element.all(by.css(el + " [name='ListRight']  option")).count();
    return countBeforeMovePromise.then(function (regCount) {
        if (regCount === 1) {
            elementClick(el + " [label='" + value + "']");
            elementClick(el + " [name='moveToLeft']");
            return elementClick(el + " [name='clearRightFilter']");
        }
    })
};

exports.moveToPreValidator = function (sourceElement, targetElement, restriction) {
    fillText(sourceElement + " [name='filterLeft']", restriction);
    elementClick(sourceElement + " [label='" + restriction + "']");
    elementClick(targetElement + " [name='moveToRight']");
    return elementClick(sourceElement + " [name='clearLeftFilter']");
};

exports.moveAllToRight = function () {
    return utils.elementClick("[name='moveAllToRight']");
};

exports.movePreValidatorToAvailable = function (sourceElement, targetElement, restriction) {
    fillText(sourceElement + " [name='filterRight']", restriction);
    var countBeforeMovePromise = element.all(by.css(sourceElement + " [name='ListRight']  option")).count();
    return countBeforeMovePromise.then(function (regCount) {
        if (regCount === 1) {
            elementClick(sourceElement + " [label='" + restriction + "']");
            elementClick(targetElement + " [name='moveToLeft']");
            return elementClick(sourceElement + " [name='clearRightFilter']");
        }
    })
};