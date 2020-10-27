"use strict";

const { Given, When, Then } = require("cucumber");

const page = require("../pages/Administration/allowedCarrierByServiceTypeGenericParamPage");

Given('que edito o parâmetro Transportadoras permitidas por tipo de serviço e libero todos para a transportadora {string}', function (carrier) {
    return page.fillAllowedCarrierByServiceTypeGenericParam(carrier);
});