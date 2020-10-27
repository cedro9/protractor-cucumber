"use strict";

var { When } = require("cucumber");

const { setCarrierZoneGrouper,
    setCarrierZone,
    setDelayTimeOV,
    setDelayTimeOrder,
    fillCarrierZoneOVRemessaDelayTimeGenericParam,
    removeCarrierZoneOVRemessaDelayTimeGenericParam } = require("../pages/Administration/carrierZoneOVRemessaDelayTimePage");


When('preencho o agrupador de zona de transporte {string}', function (carrierzonegrouper) {
    return setCarrierZoneGrouper(carrierzonegrouper);
});

When('preencho a zona de transporte de destino {string}', function (carrierzone) {
    return setCarrierZone(carrierzone);
});

When('preencho o tempo de atraso ov', function () {
    return setDelayTimeOV();
});

When('preencho o tempo de atraso remessa', function () {
    return setDelayTimeOrder();
});

When('que preencho o parâmetro genérico Tempo de atraso por zona de transporte e data de OV ou data de remessa com agrupador {string} zona de transporte {string} atraso OV e atraso remessa', function (carrierzonegrouper, carrierzone) {
    return fillCarrierZoneOVRemessaDelayTimeGenericParam(carrierzonegrouper, carrierzone);
});

When('que removo o agrupador {string} e zona de transporte {string} do parâmetro genérico Tempo de atraso por zona de transporte e data de OV ou data de remessa', function (carrierzonegrouper, carrierzone) {
    return removeCarrierZoneOVRemessaDelayTimeGenericParam(carrierzonegrouper, carrierzone);
});