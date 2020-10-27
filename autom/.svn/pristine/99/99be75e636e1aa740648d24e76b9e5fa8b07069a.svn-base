"use strict";

var { When, Then } = require("cucumber");

const { fillMaxWrapperQuantityByCompositeWrapperGenericParamPage,
    fillWrapperCode,
    fillComposityWrapperCode,
    setQuantity,
    assertParamMaxWrapperQuantityByCompositeWrapperIsFilled,
    searchParam } = require("../pages/administration/maxWrapperQuantityByCompositeWrapperGenericParamPage");

When('que preencho o parâmetro genérico Quantidade máxima de invólucros por invólucro composto com o Invólucro Simples {string}, Invólucro Composto {string} e Quantidade {string}', function (wrapperCode, composityWrapperCode, quantity) {
    return fillMaxWrapperQuantityByCompositeWrapperGenericParamPage(wrapperCode, composityWrapperCode, quantity);
});

// When('preencho o campo invólucro simples {string}', function (wrapperCode) {
//     return fillWrapperCode(wrapperCode);
// });

// When('preencho o campo invólucro composto {string}', function (composityWrapperCode) {
//     return fillComposityWrapperCode(composityWrapperCode);
// });

When('preencho o campo quantidade máxima {string}', function (quantity) {
    return setQuantity(quantity);
});

When('verifico se o parâmetro Quantidade máxima de invólucros por invólucro composto está preenchido', function () {
    assertParamMaxWrapperQuantityByCompositeWrapperIsFilled("INVSIMPDEPQMIPIC01", "INVCOMPDEPQMIPIC01", "5");
    return assertParamMaxWrapperQuantityByCompositeWrapperIsFilled("INVSIMPDEPQMIPIC02", "INVCOMPDEPQMIPIC02", "10");
});

When ('filtro o parâmetro por Invólucro Simples {string}, invólucro Composto {string} e Quantidade Máxima {string}', function(wrapperCode, composityWrapperCode, quantity){
    return searchParam(wrapperCode, composityWrapperCode, quantity);
});