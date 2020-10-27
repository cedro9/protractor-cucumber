"use strict";

var { When } = require("cucumber");

const { setPreviousContext,
    setIteration,
    setOtimizationGroup,
    setCarrierZoneGrouper,
    setCarrierZone,
    setNextSplitterContext,
    setNextContext } = require("../pages/Administration/optimizationWaveConfigurationGenericParamPage");


When('preencho o contexto anterior {string}', function (context) {
    return setPreviousContext(context);
});

When('preencho a iteração {string}', function (iteration) {
    return setIteration(iteration);
});

When('preeecho o grupo de otimização {string}', function (group) {
    return setOtimizationGroup(group);
});

When('preencho o agrupador {string}', function (carrierzonegrouper) {
    return setCarrierZoneGrouper(carrierzonegrouper);
});

When('preencho a zona de transporte {string}', function (carrierzone) {
    return setCarrierZone(carrierzone);
});

When('preencho o contexto de divisão {string}', function (nextsplittercontext) {
    return setNextSplitterContext(nextsplittercontext);
});

When('preencho o contexto com o valor {string}', function (nextcontext) {
    return setNextContext(nextcontext);
});