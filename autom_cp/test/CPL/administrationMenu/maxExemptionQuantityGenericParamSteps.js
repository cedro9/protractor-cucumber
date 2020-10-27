"use strict";

var { Given, When, Then } = require("cucumber");

const { fillMaxExemptionQuantityGenericParam,
    setProduct,
    setQuantity,
    fillMaxExemptionQuantityGenericParamWithRepeteProduct,
    assertParamMaxExemptionQuantityIsFilled,
    searchParam } = require("../pages/administration/maxExemptionQuantityGenericParamPage");

When('que preencho o parâmetro genérico Quantidade máxima de isenção com o produto {string} e valor {string}', function (productCode, exemptionQuantity) {
    return fillMaxExemptionQuantityGenericParam(productCode, exemptionQuantity);
});

When('preencho o parâmetro com o produto {string}', function (product) {
    return setProduct(product);
});

When('preencho o parâmetro com a quantidade de isenção {string}', function (quantity) {
    return setQuantity(quantity);
});

Then('verifico se o parâmetro Quantidade máxima de isenção está preenchido', function () {
    assertParamMaxExemptionQuantityIsFilled("PRODEPQMI01", "9");
    return assertParamMaxExemptionQuantityIsFilled("PRODEPQMI02", "15");
});

Then('pesquiso no parâmetro Quantidade máxima de isenção pelo produto {string} e quantidade {string}', function (product, quantity) {
    return searchParam(product, quantity);
});

When('adiciono duas linhas no parâmetro com o mesmo produto e quantidades diferentes', function () {
    return fillMaxExemptionQuantityGenericParamWithRepeteProduct("PRODEPQMI01");
});