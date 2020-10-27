"use strict";

var { Given, When, Then } = require("cucumber");

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect;

var isEnabled = require("../scripts/wait").isEnabled;
var utils = require('../scripts/utils');
var filter = require("../scripts/filter");
var navigate = require("../scripts/navigate");
var printscreen = require("../scripts/printScreen");
var messages = require("../scripts/messages");

const getTripCode = require("../pages/analisysPage").getTripCode,
    { searchMonitorable,
        trackingMonitorable,
        cancelTrackingMonitorable } = require("../pages/monitoring/monitorablePage");

When('que inicio o monitorável com o pedido {string}', function (orderCode) {
    searchMonitorable(getTripCode(orderCode));
    return trackingMonitorable();
});

When('cancelo o monitorável com o pedido {string}', function (orderCode) {
    searchMonitorable(getTripCode(orderCode));
    return cancelTrackingMonitorable();
});