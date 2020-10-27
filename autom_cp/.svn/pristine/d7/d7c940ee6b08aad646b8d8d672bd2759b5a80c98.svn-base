"use strict";

var { When, Then } = require("cucumber");
var tripBasketXpath = "//*[@selection='selection.tripBasket']";

const { setTypeClassification,
    setClassification,
    fillRuleToDestroyTripGenericParam,
    removeRuleToDestroyTripGenericParam } = require("../pages/Administration/ruleToDestroyTripPage");

const messages = require("../scripts/messages");

When('preencho tipo de classificação com o valor {string}', function (typeclassification) {
    return setTypeClassification(typeclassification);
});

When('preencho classificação do parametro o valor {string}', function (classification) {
    return setClassification(classification);
});

When('que preencho o parâmetro genérico Regras de destruição de viagens com o tipo de classificação {string} e classificação {string}', function (typeclassification, classification) {
    return fillRuleToDestroyTripGenericParam(typeclassification, classification);
});

When('que removo o tipo de classificação {string} com classificação {string} do parâmetro genérico Regras de destruição de viagens', function (typeclassification, classification) {
    return removeRuleToDestroyTripGenericParam(typeclassification, classification);
});