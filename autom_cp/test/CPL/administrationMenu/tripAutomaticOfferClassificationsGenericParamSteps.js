"use strict";

var { When } = require("cucumber");
var utils = require('../scripts/utils'),
    elementClickXpath = utils.elementClickXpath;

const { setTypeClassification,
    setClassification,
    fillTripAutomaticOfferClassificationsGenericParam,
    removeTypeClassification } = require("../pages/Administration/tripAutomaticOfferClassificationsGenericParamPage");

When('preencho o tipo de classificação com o valor {string}', function (typeclassification) {
    return setTypeClassification(typeclassification);
});

When('preencho a classificação do parametro o valor {string}', function (classification) {
    return setClassification(classification);
});

When('que preencho o parâmetro genérico Classificações de viagens que devem ser ofertadas automaticamente com o tipo de classificação {string} e classificação {string}', function (typeclassification, classification) {
    return fillTripAutomaticOfferClassificationsGenericParam(typeclassification, classification);
});

When('clico para otimizar no botão {string}', function (button) {
    return elementClickXpath("//*[text()='" + button + "']");
});

When('que removo o {string} com valor {string} do parâmetro genérico Classificações de viagens que devem ser ofertadas automaticamente', function (atributo, typeclassification) {
    return removeTypeClassification(atributo, typeclassification);
});