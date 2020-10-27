"use strict";

var { Given, When, Then } = require("cucumber");

const { removeOrigin,
    fillChangeTripUserAutomaticOptimization } = require("../pages/Administration/changeTripUserAutomaticOptimizationPage")

When('que removo a origem {string} do parâmetro genérico Troca o usuário da viagem - Otimização automática', function (origin) {
    return removeOrigin(origin);
});

When('que preencho o parâmetro genérico Troca o usuário da viagem - Otimização automática com a origem {string} e usuário {string}', function (origin, user) {
    return fillChangeTripUserAutomaticOptimization(origin, user);
});