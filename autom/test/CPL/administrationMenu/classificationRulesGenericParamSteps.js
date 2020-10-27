"use strict";

var { Given } = require("cucumber");

const { editClassificationRulesGenericParam } = require("../pages/Administration/classificationRulesGenericParamPage");

Given('que edito o parâmetro genérico Regras para classificação com agrupador {string} zona de transporte {string} e Taxa default {string}', function (carrierzonegrouper, carrierzone, ratedefault) {
    return editClassificationRulesGenericParam(carrierzonegrouper, carrierzone, ratedefault);
});