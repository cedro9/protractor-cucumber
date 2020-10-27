"use strict";

var { When } = require("cucumber");

const { setLocality,
    setDirectionService,
    setDurarion } = require("../pages/Administration/delayToleranceByLocalityGenericParamPage");

When('preencho a localidade {string}', function (locality) {
    return setLocality(locality);
});

When('preencho a direção do serviço {string}', function (service) {
    return setDirectionService(service);
});

When('preencho a duração com dia {string} hora {string} minuto {string} e segundos {string}', function (day, hour, minute, second) {
    return setDurarion(day, hour, minute, second);
});