"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);

const filter = require("../../scripts/filter"),
    genericParam = require("./genericParamPage"),
    utils = require('../../scripts/utils'),
    messages = require("../../scripts/messages");

module.exports = {
    setDestination,
    setProduct,
    setQuantityOfProductPiled,
    setQuantityOfProductBase,
    setWrapper,
    fillPalletizationByDestinationGenericParam
};

function setDestination(destination) {
    return utils.addTextTags("[name='Destino']", destination)
};

function setProduct(product) {
    return utils.addTextTags("[name='Produto']", product)
};

function setQuantityOfProductPiled(quantityproductpiled) {
    return utils.fillNumber("[name='Quantidade de produtos empilhados']", quantityproductpiled)
};

function setQuantityOfProductBase(quantityproductbase) {
    return utils.fillNumber("[name='Quantidade de produtos da base']", quantityproductbase)
};

function setWrapper(wrapper) {
    return utils.addTextTags("[name='Invólucro']", wrapper)
};

function fillPalletizationByDestinationGenericParam(destination, product, quantityproductpiled, quantityproductbase, wrapper) {
    return genericParam.navigateToParamEditingPage('Paletização por Cliente')
        .then(function () {
            return filterPalletizationByDestinationAndGetCount(destination, product)
                .then(function (regCount) {
                    if (regCount === 0) {
                        genericParam.addParam();
                        setDestination(destination);
                        setProduct(product);
                        setQuantityOfProductPiled(quantityproductpiled);
                        setQuantityOfProductBase(quantityproductbase);
                        setWrapper(wrapper);
                        genericParam.saveParam();
                        messages.validaMensagem("O registro do parâmetro genérico PalletizationByDestination foi salvo com sucesso.")
                        genericParam.clickOkButton();
                    }
                    return genericParam.cancelParam();
                })
        })
};

function filterPalletizationByDestinationAndGetCount(destination, product) {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Destino", "Destino");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Produto", "Produto");
    utils.elementClick("[name='buttonApply']");
    utils.addTextTags("[name='Destino-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", destination);
    utils.addTextTags("[name='Produto-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", product);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};