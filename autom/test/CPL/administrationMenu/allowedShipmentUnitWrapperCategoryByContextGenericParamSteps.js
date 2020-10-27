"use strict";

var { When, Then } = require("cucumber");

const { 
    fillAllowedShipmentUnitWrapperCategoryByContextGenericParam,
    fillAllowedExceptionShipmentUnitWrapperCategoryByContextGenericParam,
    fillWrapperCodeCategory,
    fillUnitizationContext,
    assertParamAllowedShipmentUnitWrapperCategoryByContextIsFilled,
    assertParamAllowedShipmentUnitWrapperCategoryByContextIsNotFilled,
    searchParam } = require("../pages/administration/allowedShipmentUnitWrapperCategoryByContextGenericParamPage");

When('que preencho o parâmetro genérico categorias de invólucro permitidas por contexto de unitização com o contexto de unitização {string} e categoria de invólucro {string}', function (unitizerConfigsCode, shipmentUnitWrapperCategorieCode) {
    return fillAllowedShipmentUnitWrapperCategoryByContextGenericParam(unitizerConfigsCode, shipmentUnitWrapperCategorieCode);
});

When('que preencho o parâmetro genérico categorias de invólucro permitidas por contexto de unitização com o contexto de unitização {string} e com todas as categorias de invólucro, exceto {string}', function (unitizerConfigsCode, shipmentUnitWrapperCategorieCode) {
    return fillAllowedExceptionShipmentUnitWrapperCategoryByContextGenericParam(unitizerConfigsCode, shipmentUnitWrapperCategorieCode);
});

When('preencho o campo categoria de invólucro {string}', function (wrapperCodeCategory) {
    return fillWrapperCodeCategory(wrapperCodeCategory);
});

When('preencho o campo contexto de unitização {string}', function (unitizationContext) {
    return fillUnitizationContext(unitizationContext);
});

When('verifico se o parâmetro Categorias de invólucro permitidas por contexto de unitização está preenchido', function () {
    assertParamAllowedShipmentUnitWrapperCategoryByContextIsFilled("DEF", "Palete");
    return assertParamAllowedShipmentUnitWrapperCategoryByContextIsFilled("DEF", "Granel Unit");
});

When('verifico se o parâmetro Categorias de invólucro permitidas por contexto de unitização não está preenchido', function () {
    assertParamAllowedShipmentUnitWrapperCategoryByContextIsNotFilled("DEF", "Palete");
    return assertParamAllowedShipmentUnitWrapperCategoryByContextIsNotFilled("DEF", "Granel Unit");
});
    
When ('filtro o parâmetro por Contexto de unitização {string} e Categoria de invólucro {string}', function(unitizationContext, wrapperCodeCategory){
    return searchParam(unitizationContext, wrapperCodeCategory);
});