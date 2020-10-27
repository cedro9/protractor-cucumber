"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);

const utils = require('../../scripts/utils'),
    genericParam = require('../../pages/Administration/genericParamPage'),
    filter = require('../../scripts/filter');

module.exports = {
    fillTypeOfProductAllowedByCarrierGenericParam
}



function filterAndGetCount(carrier) {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Transportadora", "Transportadora");
    utils.elementClick("[name='buttonApply']");
    utils.addTextTags("[name='Transportadora-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", carrier);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

function fillTypeOfProductAllowedByCarrierGenericParam(carrier, productType) {
    return genericParam.navigateToParamEditingPage('Tipo de produto permitido por transportadora')
        .then(function () {
            genericParam.tableViewParam();
            return filterAndGetCount(carrier, productType)
                .then(function (regCount) {
                    if (regCount === 0) {
                        genericParam.addParam();
                        setCarrier(carrier);
                        setAllowedProductType(productType);
                        genericParam.saveParam();
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        })
};

function setCarrier(carrier) {
    return utils.addTextTags("[name='Transportadora']", carrier);
}

function setAllowedProductType(productType) {
    return utils.addTextTags('[name="Tipo de produto permitido"]', productType);
}