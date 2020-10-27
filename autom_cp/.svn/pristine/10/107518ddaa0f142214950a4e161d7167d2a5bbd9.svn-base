"use strict";

const utils = require('../../scripts/utils'),
    filter = require("../../scripts/filter"),
    genericParam = require("./genericParamPage");

const fillShipmentUnitWrapperByRoutingContextJobSplitterGenericParam = (shipmentUnitWrapper, routingContext) => {
    return genericParam.navigateToParamEditingPage("Invólucro por contexto de otimização (Divisor de job)")
        .then(() => {
            genericParam.tableViewParam();
            return filterAndGetCount(shipmentUnitWrapper, routingContext)
                .then(regCount => {
                    if (regCount === 0) {
                        fillParam(shipmentUnitWrapper, routingContext);
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        })
};

const filterAndGetCount = (shipmentUnitWrapper, routingContext) => {
    customizeFilter();
    fillRoutingContextAttribute(routingContext);
    fillShipmentUnitWrapperAttribute(shipmentUnitWrapper);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

const customizeFilter = () => {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Contexto de otimização", "Contexto de otimização");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Invólucro", "Invólucro");
    return utils.elementClick("[name='buttonApply']");
};

const fillRoutingContextAttribute = context => {
    return utils.addTextTags("[name='Contexto de otimização-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", context);
};

const fillShipmentUnitWrapperAttribute = shipmentUnitWrapper => {
    return utils.addTextTags("[name='Invólucro-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", shipmentUnitWrapper);
};

const fillParam = (shipmentUnitWrapper, routingContext) => {
    genericParam.addParam();
    setShipmentUnitWrapper(shipmentUnitWrapper);
    return setRoutingContext(routingContext);
};

const setRoutingContext = routingContext => {
    return utils.addTextTags("[name='Contexto de otimização']", routingContext);
};

const setShipmentUnitWrapper = shipmentUnitWrapper => {
    return utils.addTextTags("[name='Invólucro']", shipmentUnitWrapper);
};

module.exports = {
    fillShipmentUnitWrapperByRoutingContextJobSplitterGenericParam
}