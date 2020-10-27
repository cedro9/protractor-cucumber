"use strict";

var { Given, When, Then } = require("cucumber");

const { fillTransportadorasBloqueadasPorLocalidadecomALocalidadeGenericParam } = require("../pages/administration/transportadorasBloqueadasPorLocalidadecomALocalidadeGenericParamPage");

When('que preencho o parâmetro genérico Transportadoras bloqueadas por localidade com a localidade {string} e transportadora {string}', function (locality, carrier) {
    return fillTransportadorasBloqueadasPorLocalidadecomALocalidadeGenericParam(locality, carrier);
});