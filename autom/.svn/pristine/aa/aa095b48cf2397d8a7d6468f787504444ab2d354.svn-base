"use strict";

var { Given, When, Then } = require("cucumber");

const { setOrigin,
    setCarrierZoneGrouper,
    setCarrierZone,
    setTypeClassification,
    setClassification,
    setDateLimitInitial,
    setHourLimitInitial,
    setDateLimitEnd,
    setHourLimitEnd,
    setDateLimitEndLessThanDateLimitInitial,
    fillOriginTripAutomaticOfferExceptionsGenericParam,
    removeOriginTripAutomaticOfferExceptionsGenericParam,
    fillCarrierZoneTripAutomaticOfferExceptionsGenericParam,
    removeCarrierZoneTripAutomaticOfferExceptionsGenericParam,
    fillClassificationTripAutomaticOfferExceptionsGenericParam,
    removeClassificationTripAutomaticOfferExceptionsGenericParam,
    fillDateTripAutomaticOfferExceptionsGenericParam,
    removeDateTripAutomaticOfferExceptionsGenericParam } = require("../pages/Administration/tripAutomaticOfferExceptionsGenericParamPage");

When('preencho a origem o valor {string}', function (origin) {
    return setOrigin(origin);
});

When('preencho o agrupador de zona de transporte o valor {string}', function (carrierzonegrouper) {
    return setCarrierZoneGrouper(carrierzonegrouper);
});

When('preencho a zona de transporte o valor {string}', function (carrierzone) {
    return setCarrierZone(carrierzone);
});

When('preencho o tipo de classificação o valor {string}', function (typeclassification) {
    return setTypeClassification(typeclassification);
});

When('preencho a classificação do parametro com o valor {string}', function (classification) {
    return setClassification(classification);
});

When('preencho a data limite inicial {string}', function (dateinitial) {
    setDateLimitInitial(dateinitial);
    return setHourLimitInitial();
});

When('preencho a data limite final {string}', function (dateend) {
    setDateLimitEnd(dateend);
    return setHourLimitEnd();
});

When('preencho a data limite final inferior a data inicial', function () {
    setDateLimitEndLessThanDateLimitInitial();
    return setHourLimitEnd();
});

When('que preencho o parâmetro genérico Exceções do fluxo de oferta automática de viagens com origem {string}', function (origin) {
    return fillOriginTripAutomaticOfferExceptionsGenericParam(origin);
});

When('que removo a origem {string} do parâmetro genérico Exceções do fluxo de oferta automática de viagens', function (origin) {
    return removeOriginTripAutomaticOfferExceptionsGenericParam(origin);
});

When('que preencho o parâmetro genérico Exceções do fluxo de oferta automática de viagens com agrupador {string} e zona de transporte {string}', function (carrierzonegrouper, carrierzone) {
    return fillCarrierZoneTripAutomaticOfferExceptionsGenericParam(carrierzonegrouper, carrierzone);
});

When('que removo o agrupador {string} e zona de transporte {string} do parâmetro genérico Exceções do fluxo de oferta automática de viagens', function (carrierzonegrouper, carrierzone) {
    return removeCarrierZoneTripAutomaticOfferExceptionsGenericParam(carrierzonegrouper, carrierzone);
});

When('que preencho o parâmetro genérico Exceções do fluxo de oferta automática de viagens com tipo de classificação {string} e classificação {string}', function (typeclassification, classification) {
    return fillClassificationTripAutomaticOfferExceptionsGenericParam(typeclassification, classification);
});

When('que removo o tipo de classificação {string} e classificação {string} do parâmetro genérico Exceções do fluxo de oferta automática de viagens', function (typeclassification, classification) {
    return removeClassificationTripAutomaticOfferExceptionsGenericParam(typeclassification, classification);
});

When('que preencho o parâmetro genérico Exceções do fluxo de oferta automática de viagens com data inicial {string} data final {string} e origem {string}', function (dateinitial, dateend, origin) {
    return fillDateTripAutomaticOfferExceptionsGenericParam(dateinitial, dateend, origin);
});

When('que removo data inicial {string} data final {string} e origem {string} do parâmetro genérico Exceções do fluxo de oferta automática de viagens', function (dateinitial, dateend, origin) {
    return removeDateTripAutomaticOfferExceptionsGenericParam(dateinitial, dateend, origin);
});