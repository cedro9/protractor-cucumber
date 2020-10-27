"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);

const utils = require('../../scripts/utils');

module.exports = {
    setLocality,
    setDirectionService,
    setDurarion};

function setLocality(locality) {
    return utils.addTextTags("[name='Localidade']", locality)
};

function setDirectionService(service) {
    return utils.addTextTags("[name='Direção do Serviço']", service)
};

function setDurarion(day, hour, minute, second) {
    utils.fillNumber("[name='dayInput']", day)
    utils.fillNumber("[name='hourInput']", hour)
    utils.fillNumber("[name='minuteInput']", minute)
    return utils.fillNumber("[name='secondInput']", second)
};