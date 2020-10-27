"use strict";

const { Given } = require("cucumber");

const { setPreRestrictionRoutingConfigs,
    unsetPreRestrictionRoutingConfigs,
    setPosRestrictionRoutingConfigs,
    removePlanObjectiveFunction,
    copyContext,
    removeSelector,
    removeContext,
    setSelectionValidators,
    removePreValidatorHard,
    fillPreValidatorHard,
    removeManualPreValidatorHard,
    fillManualPreValidatorHard} = require('../pages/Administration/routingConfigsPage');

Given('que adiciono ao contexto de otimização {string} o pré-validador de otimização {string} com a ordem {string}', function (routingConfigs, validator, sequence) {
    return setPreRestrictionRoutingConfigs(routingConfigs, validator, sequence);
});

Given('que removo do contexto de otimização {string} o pré-validador de otimização {string}', function (routingConfigs, validator) {
    return unsetPreRestrictionRoutingConfigs(routingConfigs, validator);
});

Given('que adiciono ao contexto de otimização {string} o pós-validador de otimização {string} com a ordem {string}', function (routingConfigs, validator, sequence) {
    return setPosRestrictionRoutingConfigs(routingConfigs, validator, sequence);
});

Given('que removo a função objetivo de plano {string} do contexto {string}', function (planObjetiveFunc, context) {
    return removePlanObjectiveFunction(planObjetiveFunc, context);
});

Given('que copio o contexto {string} e defino seu código como {string}', function (context, newcontext) {
    return copyContext(context, newcontext);
});

Given('que removo o seletor {string} do contexto {string}', function (selector, context) {
    return removeSelector(selector, context);
});

Given('que removo o contexto de otimização {string}', function (context) {
    return removeContext(context);
});

Given('que adiciono ao contexto de otimização {string} o validador de seleção {string}', function (context, validator) {
    return setSelectionValidators(context, validator);
});

Given('que removo o pré-validadores de otimização hard {string} do contexto de otimização {string}', function (validator, context) {
    return removePreValidatorHard(validator, context);
});

Given('que adiciono ao contexto {string} o pré-validadores de otimização hard {string} com a ordem {string}', function (context, validator, sequence) {
    return fillPreValidatorHard(context, validator, sequence);
});

Given('que removo o pré-validador de operação manual hard {string} do contexto de otimização {string}', function (validator, context) {
    return removeManualPreValidatorHard(validator, context);
});

Given('que que adiciono ao contexto {string} o pré-validador de operação manual hard {string} com a ordem {string}', function (context, validator, sequence) {
    return fillManualPreValidatorHard(context, validator, sequence);
});