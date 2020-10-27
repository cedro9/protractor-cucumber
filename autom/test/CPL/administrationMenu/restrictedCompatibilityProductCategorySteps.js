"use strict";

const { Given, When, Then } = require("cucumber");

const restricted = require("../pages/administration/restrictedCompatibilityProductCategoryPage");

Given('preencho o parâmetro com a categoria 1 {string}', function (category) {
    return restricted.fillCategory1(category);
});

Given('preencho o parâmetro com a categoria 2 {string}', function (category) {
    return restricted.fillCategory2(category)
});

When('preencho ambas colunas do parâmetro Categoria de produto com compatibilidade restrita com a categoria {string}', function (category) {
    restricted.fillCategory1(category);
    return restricted.fillCategory2(category);
});

Given('verifico se o parâmetro Categoria de produto com compatibilidade restrita está preenchido', function () {
    restricted.assertParamRestrictedCompatibilityProductCategoryIsFilled("CATPRODDEPCPCR01", "CATPRODDEPCPCR02");
    return restricted.assertParamRestrictedCompatibilityProductCategoryIsFilled("CATPRODDEPCPCR12", "CATPRODDEPCPCR13");
});

Given('que preencho o parâmetro genérico categoria de produto com compatibilidade restrita, restringindo as categorias {string} e {string}', function (category1, category2) {
    return restricted.fillRestrictedCompatibilityProductCategoryGenericParam(category1, category2);
});