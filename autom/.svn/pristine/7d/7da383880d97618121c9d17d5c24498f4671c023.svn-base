"use strict";

var { When, Then } = require("cucumber");

const { fillMinWrapperQuantityByCompositeWrapperGenericParamPage,
    fillWrapperCode,
    fillComposityWrapperCode,
    setQuantity,
    assertParamMinWrapperQuantityByCompositeWrapperIsFilled,
    assertParamMinWrapperQuantityByCompositeWrapperIsNotFilled,
    searchParam } = require("../pages/administration/minWrapperQuantityByCompositeWrapperGenericParamPage");

When('que preencho o parâmetro genérico Quantidade mínima de invólucros por invólucro composto com o Invólucro Simples {string}, Invólucro Composto {string} e Quantidade {string}', function (wrapperCode, composityWrapperCode, quantity) {
    return fillMinWrapperQuantityByCompositeWrapperGenericParamPage(wrapperCode, composityWrapperCode, quantity);
});

When('preencho o campo invólucro simples {string}', function (wrapperCode) {
    return fillWrapperCode(wrapperCode);
});

When('preencho o campo invólucro composto {string}', function (composityWrapperCode) {
    return fillComposityWrapperCode(composityWrapperCode);
});

When('preencho o campo quantidade {string}', function (quantity) {
    return setQuantity(quantity);
});

When('verifico se o parâmetro Quantidade mínima de invólucros por invólucro composto está preenchido', function () {
    assertParamMinWrapperQuantityByCompositeWrapperIsFilled("INVSIMPDEPQMIPIC01", "INVCOMPDEPQMIPIC01", "5");
    return assertParamMinWrapperQuantityByCompositeWrapperIsFilled("INVSIMPDEPQMIPIC02", "INVCOMPDEPQMIPIC02", "10");
});

When('verifico se o parâmetro Quantidade mínima de invólucros por invólucro composto não está preenchido', function () {
    assertParamMinWrapperQuantityByCompositeWrapperIsNotFilled("INVSIMPDEPQMIPIC01", "INVCOMPDEPQMIPIC01", "5");
    return assertParamMinWrapperQuantityByCompositeWrapperIsNotFilled("INVSIMPDEPQMIPIC02", "INVCOMPDEPQMIPIC02", "10");
});

When ('filtro o parâmetro por Invólucro Simples {string}, invólucro Composto {string} e Quantidade {string}', function(wrapperCode, composityWrapperCode, quantity){
    return searchParam(wrapperCode, composityWrapperCode, quantity);
});