var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');

chai.use(chaiAsPromised);

var expect = chai.expect;

var utils = require("../scripts/utils"),
    comboSearchAndSelect = utils.comboSearchAndSelect,
    elementClick = utils.elementClick,
    fillFilterDropdown = utils.fillFilterDropdown,
    present = require("../scripts/wait").present,
    isEnabled = require("./wait").isEnabled,
    scroll = require("../scripts/scroll"),
    fillText = utils.fillText;

exports.clearFilter = clearFilter;
exports.clearFilterXpath = clearFilterXpath;
exports.customizeFilter = customizedSearch;
exports.clearFilterSeleçãopedidos = clearFilterSeleçãopedidos;
exports.customizedSearchSeleçãopedidos = customizedSearchSeleçãopedidos;

function clearFilter(preffix) {
    preffix = preffix || "";
    var deleteFilterButtons = element(by.css(preffix + " [name='deleteFilterButtons']"));
    deleteFilterButtons.isPresent().then(function (present) {
        if (present) {
            // return scroll.toElement(deleteFilterButtons.click());
            return deleteFilterButtons.click();
        }
    })
};

function clearFilterSeleçãopedidos(preffix) {
    var deleteFilterButtons = scroll.toElement(element(by.css(preffix + " [name='deleteFilterButtons']")));
    deleteFilterButtons.isPresent().then(function (present) {
        if (present) {
            return deleteFilterButtons.click();
        }
    })
};

function clearFilterXpath(preffix) {
    preffix = preffix || "";
    var deleteFilterButtons = scroll.toElement(element(by.xpath(preffix + " //*[@name='deleteFilterButtons']")));
    deleteFilterButtons.isPresent().then(function (present) {
        if (present) {
            return deleteFilterButtons.click();
        }
    })
};

function customizedSearch(preffix) {
    preffix = preffix || "";
    // present(scroll.toElement(element(by.css(preffix + " [name='filterButton']")))).click();
    utils.elementClick(preffix + " [name='filterButton']")
        .then(function () {
            return utils.elementClick(preffix + " [name='btnFilterCustomize']");
        });
};

function customizedSearchSeleçãopedidos(preffix) {
    present(scroll.toElement(element(by.css(preffix + " [name='filterButton']")))).click();
    return utils.elementClick(preffix + " [name='btnFilterCustomize']");
}
/**
 * Configura Filtro Tela de Análise
 * 
 *  * */
function customizedSearchAnalysis(preffix) {
    present(scroll.toElement(element(by.css(preffix + " [name='filterButton']")))).click();
    return utils.elementClick(preffix + " [name='btnFilterCustomize']");
};

/**
 * Configura Filtro pelo codigo tela Seleção
 *
 * 
 *
 * */
exports.configuraFiltroTelaSeleçãoPedidos = function (basket, item) {
    element(by.css(basket + " [name='deleteFilterButtons']")).isPresent().then(function (isPresent) {
        if (isPresent) {
            clearFilterSeleçãopedidos(basket);
            customizedSearchSeleçãopedidos(basket);
            utils.comboSearchAndSelect("[name='attributes+0']", item, item);
            utils.elementClick("[name='operators+0']")
            element(by.css("[name='operators+0']")).sendKeys(protractor.Key.DOWN);
            element(by.css("[name='operators+0']")).sendKeys(protractor.Key.DOWN);
            element(by.css("[name='operators+0']")).sendKeys(protractor.Key.DOWN);
            return element(by.css("[name='operators+0']")).sendKeys(protractor.Key.TAB);
            // browser.actions().sendKeys(protractor.Key.DOWN);
            // browser.actions().sendKeys(protractor.Key.DOWN);
            // browser.actions().sendKeys(protractor.Key.DOWN);
            // return browser.actions().sendKeys(protractor.Key.TAB);
        } else {
            customizedSearchSeleçãopedidos(basket);
            utils.comboSearchAndSelect("[name='attributes+0']", item, item);
            utils.elementClick("[name='operators+0']")
            element(by.css("[name='operators+0']")).sendKeys(protractor.Key.DOWN);
            element(by.css("[name='operators+0']")).sendKeys(protractor.Key.DOWN);
            element(by.css("[name='operators+0']")).sendKeys(protractor.Key.DOWN);
            return element(by.css("[name='operators+0']")).sendKeys(protractor.Key.TAB);
            // browser.actions().sendKeys(protractor.Key.DOWN);
            // browser.actions().sendKeys(protractor.Key.DOWN);
            // browser.actions().sendKeys(protractor.Key.DOWN);
            // return browser.actions().sendKeys(protractor.Key.TAB);
        }
    });
    return utils.elementClickXpath("//*[@name='buttonApply']");
};

/**
 * Configura filtro pelo atributo passado como parametro
 *
 * 
 *
 * */
exports.configuraFiltroPorAtributo = function (atributo) {
    var setAtributo = atributo || "Código externo";
    element(by.css("[name='deleteFilterButtons']")).isPresent().then(function (isPresent) {
        if (isPresent) {
            clearFilter();
        }
        customizedSearch();
        utils.comboSearchAndSelect("[name='attributes+0']", setAtributo, setAtributo);
        return utils.elementClick("[name='operators+0']");
    });
    return utils.elementClick("[name='buttonApply']");
};

/**
 * Configura por um determinado atributo ou ,quando não informado, pelo 'Código externo'.
 *
 * @param {string} attribute: atributo a ser selecionado.
 *
 * */
exports.configuraFiltro = function (preffix, attribute) {
    const _preffix_ = preffix || " ";
    const _attribute_ = attribute || "Código externo";
    return element(by.css(_preffix_ + " [name='deleteFilterButtons']")).isPresent()
        .then(function (isPresent) {
            if (isPresent) {
                return clearFilter(_preffix_);
            }
        })
        .then(function () {
            customizedSearch(_preffix_);
            utils.comboSearchAndSelect("[name='attributes+0']", _attribute_, _attribute_);
            return utils.elementClick("[name='operators+0'] [value='string:br.com.neolog.service.crud.filter.FilterOperation.IN']");
        })
        .then(function () {
            return utils.elementClick("[name='buttonApply']");
        });
};

/**
 * Configura um parâmetro genérico por um determinado atributo ou, quando não informado, pelo 'Código externo'.
 *
 * @param {string} attributeGP: atributo a ser selecionado.
 *
 * */
exports.configuraFiltroGenericParam = function (preffixGP, attributeGP) {
    const _preffixGP_ = preffixGP || " ";
    const _attributeGP_ = attributeGP || "Código externo";
    return element(by.css(_preffixGP_ + "[name='deleteFilterButtons']")).isPresent()
        .then(function (isPresent) {
            if (isPresent) {
                return clearFilter(_preffixGP_);
            }
        })
        .then(function () {
            customizedSearch();
            utils.comboSearchAndSelect("[name='attributes+0']", _attributeGP_, _attributeGP_);
            return utils.elementClick("[name='operators+0']")
        })
        .then(function () {
            return utils.elementClick("[name='buttonApply']");
        });
};

/**
 * Configura Filtro pelo nome
 *
 * 
 *
 * */
exports.configuraFiltroNome = function () {
    element(by.css("[name='deleteFilterButtons']")).isPresent().then(function (isPresent) {
        if (isPresent) {
            clearFilter();
        }
        customizedSearch();
        utils.comboSearchAndSelect("[name='attributes+0']", "Nome", "Nome");
        return utils.elementClick("[name='operators+0']")
    });
    return utils.elementClickXpath("//*[@name='buttonApply']");

};

/**
 * Configura Filtro Cesta Geral por Unidade de transporte / Pedido / Código
 *
 * 
 *
 * */
exports.configuraFiltroCestaGeral = function (preffix) {
    element(by.css(preffix + " [name='deleteFilterButtons']")).isPresent().then(function (isPresent) {
        if (isPresent) {
            clearFilter(preffix);
        }
        customizedSearchAnalysis(preffix);
        utils.comboSearchAndSelect("[name='attributes+0']", "Pedido / Código", "Pedido / Código");
        return utils.elementClick("[name='operators+0'] [value='string:br.com.neolog.service.crud.filter.FilterOperation.IN']");
    });
    return utils.elementClick("[name='buttonApply']");
};

/**
 * Configura Filtro Cesta Usuário por Unidade de transporte / Pedido / Código
 *
 * 
 *
 * */
exports.configuraFiltroCestaUsuario = function (preffix) {
    element(by.css(preffix + " [name='deleteFilterButtons']")).isPresent().then(function (isPresent) {
        if (isPresent) {
            clearFilter(preffix);
            customizedSearchAnalysis(preffix);
            utils.comboSearchAndSelect("[name='attributes+0']", "Pedido / Código", "Pedido / Código");
            utils.elementClick("[name='operators+0']");
            element(by.css("[name='operators+0']")).sendKeys(protractor.Key.DOWN);
            element(by.css("[name='operators+0']")).sendKeys(protractor.Key.DOWN);
            element(by.css("[name='operators+0']")).sendKeys(protractor.Key.DOWN);
            return element(by.css("[name='operators+0']")).sendKeys(protractor.Key.TAB);
            // browser.actions().sendKeys(protractor.Key.DOWN);
            // browser.actions().sendKeys(protractor.Key.DOWN);
            // browser.actions().sendKeys(protractor.Key.DOWN);
            // return browser.actions().sendKeys(protractor.Key.TAB);
        } else {
            customizedSearchAnalysis(preffix);
            utils.comboSearchAndSelect("[name='attributes+0']", "Pedido / Código", "Pedido / Código");
            utils.elementClick("[name='operators+0']");
            element(by.css("[name='operators+0']")).sendKeys(protractor.Key.DOWN);
            element(by.css("[name='operators+0']")).sendKeys(protractor.Key.DOWN);
            element(by.css("[name='operators+0']")).sendKeys(protractor.Key.DOWN);
            return element(by.css("[name='operators+0']")).sendKeys(protractor.Key.TAB);
            // browser.actions().sendKeys(protractor.Key.DOWN);
            // browser.actions().sendKeys(protractor.Key.DOWN);
            // browser.actions().sendKeys(protractor.Key.DOWN);
            // return browser.actions().sendKeys(protractor.Key.TAB);
        }
    });
    return utils.elementClick("[name='buttonApply']");
};

/**
 * Configura Filtro Cesta Viagem por Unidade de transporte / Pedido / Código
 *
 * 
 *
 * */
exports.configuraFiltroCestaViagem = function (preffix) {
    element(by.css(preffix + " [name='deleteFilterButtons']")).isPresent().then(function (isPresent) {
        if (isPresent) {
            clearFilter(preffix);
        }
        customizedSearchAnalysis(preffix);
            utils.comboSearchAndSelect("[name='attributes+0']", "Pedido / Código", "Unidade de transporte / Pedido / Código");
            return utils.elementClick("[name='operators+0'] [value='string:br.com.neolog.service.crud.filter.FilterOperation.IN']");
        });
        return utils.elementClick("[name='buttonApply']");
};

/**
 * Configura Filtro pelo Identificador
 *
 * 
 *
 * */
exports.configuraFiltroIdentificador = function () {
    element(by.css("[name='deleteFilterButtons']")).isPresent().then(function (isPresent) {
        if (isPresent) {
            clearFilter();
            customizedSearch();
            utils.comboSearchAndSelect("[name='attributes+0']", "Identificador", "Identificador");
            utils.elementClick("[name='operators+0']")
            element(by.css("[name='operators+0']")).sendKeys(protractor.Key.DOWN);
            element(by.css("[name='operators+0']")).sendKeys(protractor.Key.DOWN);
            element(by.css("[name='operators+0']")).sendKeys(protractor.Key.DOWN);
            return element(by.css("[name='operators+0']")).sendKeys(protractor.Key.TAB);
            // browser.actions().sendKeys(protractor.Key.DOWN);
            // browser.actions().sendKeys(protractor.Key.DOWN);
            // browser.actions().sendKeys(protractor.Key.DOWN);
            // browser.actions().sendKeys(protractor.Key.TAB);
        } else {
            customizedSearch();
            utils.comboSearchAndSelect("[name='attributes+0']", "Identificador", "Identificador");
            utils.elementClick("[name='operators+0']")
            element(by.css("[name='operators+0']")).sendKeys(protractor.Key.DOWN);
            element(by.css("[name='operators+0']")).sendKeys(protractor.Key.DOWN);
            element(by.css("[name='operators+0']")).sendKeys(protractor.Key.DOWN);
            return element(by.css("[name='operators+0']")).sendKeys(protractor.Key.TAB);
            // browser.actions().sendKeys(protractor.Key.DOWN);
            // browser.actions().sendKeys(protractor.Key.DOWN);
            // browser.actions().sendKeys(protractor.Key.DOWN);
            // browser.actions().sendKeys(protractor.Key.TAB);
        }
    });
    return utils.elementClick("[name='buttonApply']");
};

exports.excluirPosFiltro = function (string) {
    utils.elementClickXpath("//*[@name='" + string + "']//*[@name='deleteButton']");
    return element(by.css("[name='entityFilter.delete.confirm']")).isPresent()
        .then(function (isPresent) {
            if (isPresent) {
                return utils.elementClick("[name='buttonOk']");
            }
        }).then(function () {
            //Caso apareça um modal diferente do entityFilter.delete.ok será pressionado novamente OK
            return element(by.css("[name='entityFilter.delete.ok']")).isPresent().then(function (isPresent) {
                if (isPresent === false) {
                    return utils.elementClick("[name='buttonOk']");
                }
            })
        }).then(function () {
            return utils.elementClick("[name='buttonOk']");
        });
};

exports.excluirPosFiltroIdentificador = function () {
    utils.elementClickXpath("//*[@name='deleteButton']");
    expect(element(by.css("[name='entity.validator.successDeleteMessage']")).getText()).to.eventually.equal("A entidade foi excluída com sucesso.");
    return utils.elementClick("[name='buttonOk']");
};

/**
 * Filtra por um determinado atributo e retorna uma promessa da quantidade de registros encontrados.
 *
 * @param {string} el: atributo a ser inserido.
 * @param {string} value: valor a ser pesquisado.
 *
 * */
exports.filterParamAndGetCount = function (el, value) {
    element(by.css("[name='deleteFilterButtons")).isPresent().then(function (isPresent) {
        if (isPresent) {
            return clearFilter();
        } else {
            return utils.elementClick("[name=resetButton]");
        }
    });
    customizedSearch();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", el, el);
    utils.elementClick("[name='buttonApply']");
    utils.addTextTags("[name='" + el + "-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", value);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='filterCustomizationTable'] tbody tr")).count();
};

/**
 * Filtra por um determinado source_id e retorna uma promessa da quantidade de registros encontrados.
 *
 * @param {string} sourceId: código do registro a ser inserido.
 *
 * */
exports.filterBySourceIdAndGetCount = function (sourceId) {
    clearFilter();
    customizedSearch();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Código externo", "Código externo");
    // utils.fillFilterDropdown("[name='filterCustomizationTable'] [name='operators+0']", "'string:br.com.neolog.service.crud.filter.FilterOperation.IN'");
    utils.elementClick("[name='buttonApply']");
    utils.fillText("[name='sourceId-br.com.neolog.service.crud.filter.FilterOperation.EQUAL'] input", sourceId);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='searchResultTable'] tbody tr")).count();
};

/**
 * Filtra por um determinado source_id (categorias de ocorrência) e retorna uma promessa da quantidade de registros encontrados.
 *
 * @param {string} sourceId: código do registro a ser inserido.
 *
 * */
exports.filterBySourceIdCOAndGetCount = function (sourceId) {
    clearFilter();
    customizedSearch();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Código externo", "Código externo");
    // utils.fillFilterDropdown("[name='filterCustomizationTable'] [name='operators+0']", "'string:br.com.neolog.service.crud.filter.FilterOperation.IN'");
    utils.elementClick("[name='buttonApply']");
    utils.fillText("[name='sourceId-br.com.neolog.webfilter.FilterOperation.EQUAL'] input", sourceId);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='searchResultTable'] tbody tr")).count();
};

/**
 * Filtra por um determinado source_id e retorna uma promessa da quantidade de registros encontrados.
 *
 * @param {string} sourceId: código do registro a ser inserido.
 *
 * */
exports.filterByOrderCodeAndGetCount = function (code) {
    clearFilter();
    customizedSearch();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Código", "Código");
    utils.elementClick("[name='buttonApply']");
    utils.fillText("[name='code-br.com.neolog.service.crud.filter.FilterOperation.EQUAL'] input", code + ",");
    utils.elementClick("[name='submitButton']");
    isEnabled(element(by.css("[name='submitButton']")));
    return element.all(by.css("[name='searchResultTable'] tbody tr")).count();
};

/**
 * Filtra por um determinado identifier e retorna uma promessa da quantidade de registros encontrados.
 *
 * @param {string} identifier: indentificador do registro a ser inserido.
 *
 * */
exports.filterByIdentifierAndGetCount = function (indentifier) {
    clearFilter();
    customizedSearch();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Identificador", "Identificador");
    utils.elementClick("[name='buttonApply']");
    utils.fillText("[name='identifier-br.com.neolog.webfilter.FilterOperation.EQUAL'] input", indentifier + ",");
    utils.elementClick("[name='submitButton']");
    isEnabled(element(by.css("[name='submitButton']")));
    return element.all(by.css("[name='searchResultTable'] tbody tr")).count();
};

/**
 * Filtra por um determinado número do dispositivo e retorna uma promessa da quantidade de registros encontrados.
 *
 * @param {string} deviceNumber: número do dispositivo do registro a ser inserido.
 *
 * */
exports.filterBydeviceNumberAndGetCount = function (deviceNumber) {
    clearFilter();
    customizedSearch();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Número do dispositivo", "Número do dispositivo");
    utils.elementClick("[name='buttonApply']");
    utils.addTextTags("[name='deviceId-br.com.neolog.webfilter.FilterOperation.EQUAL']", deviceNumber);
    utils.elementClick("[name='submitButton']");
    isEnabled(element(by.css("[name='submitButton']")));
    return element.all(by.css("[name='searchResultTable'] tbody tr")).count();
};

/**
 * Filtra por um determinado nome e retorna uma promessa da quantidade de registros encontrados.
 *
 * @param {string} name: nome do registro a ser inserido.
 *
 * */
exports.filterByNameAndGetCount = function (name) {
    clearFilter();
    customizedSearch();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Nome", "Nome");
    // configuraFiltro("Nome");
    utils.elementClick("[name='buttonApply']");
    utils.fillText("[name='name-br.com.neolog.webfilter.FilterOperation.EQUAL'] input", name + ",");
    utils.elementClick("[name='submitButton']");
    isEnabled(element(by.css("[name='submitButton']")));
    return element.all(by.css("[name='searchResultTable'] tbody tr")).count();
};

/**
 * Filtra por um determinado nome e retorna uma promessa da quantidade de registros de parâmetros genéricos encontrados.
 *
 * @param {string} name: nome do registro de parâmetro genérico a ser inserido.
 *
 * */
exports.filterGenericParamByNameAndGetCount = function (name) {
    clearFilter();
    customizedSearch();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Nome", "Nome");
    utils.elementClick("[name='buttonApply']");
    utils.fillText("[name='name-br.com.neolog.service.crud.filter.FilterOperation.EQUAL'] input", name + ",");
    utils.elementClick("[name='submitButton']");
    isEnabled(element(by.css("[name='submitButton']")));
    return element.all(by.css("[name='searchResultTable'] tbody tr")).count();
};

exports.filterMaxExemptionQuantityGenericParamAndGetCount = function (productCode, exemptionQuantity) {
    clearFilter();
    customizedSearch();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Produto", "Produto");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Quantidade de isenção (kg)", "Quantidade de isenção (kg)");
    utils.elementClick("[name='buttonApply']");
    utils.addTextTags("[name='Produto-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", productCode);
    utils.fillText("[name='Quantidade de isenção (kg)-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", exemptionQuantity);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

exports.filterMaxWrapperQuantityByCompositeWrapperGenericParamAndGetCount = function (wrapperCode, composityWrapperCode, quantity) {
    clearFilter();
    customizedSearch();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Invólucro Simples", "Invólucro Simples");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Invólucro Composto", "Invólucro Composto");
    utils.elementClick("[name='buttonAdd+1']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+2']", "Quantidade", "Quantidade Máxima");
    utils.elementClick("[name='buttonApply']");
    utils.addTextTags("[name='Invólucro Simples-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", wrapperCode);
    utils.addTextTags("[name='Invólucro Composto-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", composityWrapperCode);
    utils.fillText("[name='Quantidade Máxima-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", quantity);
    utils.elementClick("[name='submitButton']");
    isEnabled(element(by.css("[name='submitButton']")));
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

exports.filterMinWrapperQuantityByCompositeWrapperGenericParamAndGetCount = function (wrapperCode, composityWrapperCode, quantity) {
    clearFilter();
    customizedSearch();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Invólucro Simples", "Invólucro Simples");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Invólucro Composto", "Invólucro Composto");
    utils.elementClick("[name='buttonAdd+1']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+2']", "Quantidade Mínima", "Quantidade Mínima");
    utils.elementClick("[name='buttonApply']");
    utils.addTextTags("[name='Invólucro Simples-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", wrapperCode);
    utils.addTextTags("[name='Invólucro Composto-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", composityWrapperCode);
    utils.fillText("[name='Quantidade Mínima-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", quantity);
    utils.elementClick("[name='submitButton']");
    isEnabled(element(by.css("[name='submitButton']")));
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

exports.filterOrderCodeFromOrderPageAndGetCount = function (code) {
    clearFilter();
    customizedSearch();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Código", "Código");
    utils.elementClick("[name='buttonApply']");
    utils.addTextTags("[name='code-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", code);
    utils.elementClick("[name='submitButton']");
    isEnabled(element(by.css("[name='submitButton']")));
    return element.all(by.css("[name='searchResultTable'] tbody tr")).count();
};

exports.filterAllowedShipmentUnitWrapperCategoryByContextGenericParamAndGetCount = function (unitizationContext, wrapperCodeCategory) {
    clearFilter();
    customizedSearch();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Contexto de Unitização", "Contexto de Unitização");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Categoria de involucro", "Categoria de involucro");
    utils.elementClick("[name='buttonApply']");
    utils.addTextTags("[name='Contexto de Unitização-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", unitizationContext);
    utils.addTextTags("[name='Categoria_de_involucro-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", wrapperCodeCategory);
    utils.elementClick("[name='submitButton']");
    isEnabled(element(by.css("[name='submitButton']")));
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

exports.filterIncompatiblesProductsByRiskClassGenericParamAndGetCount = function (classificationId1, classificationId2) {
    clearFilter();
    customizedSearch();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Classificação 1", "Classificação 1");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Classificação 2", "Classificação 2");
    utils.elementClick("[name='buttonApply']");
    utils.addTextTags("[name='Classificação 1-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", classificationId1);
    utils.addTextTags("[name='Classificação 2-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", classificationId2);
    utils.elementClick("[name='submitButton']");
    isEnabled(element(by.css("[name='submitButton']")));
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

exports.filterTransportadorasBloqueadasPorLocalidadecomALocalidadeGenericParamAndGetCount = function (locality, carrier) {
    clearFilter();
    customizedSearch();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Localidade", "Localidade");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Transportadora", "Transportadora");
    utils.elementClick("[name='buttonApply']");
    utils.addTextTags("[name='Localidade-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", locality);
    utils.addTextTags("[name='Transportadora-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", carrier);
    utils.elementClick("[name='submitButton']");
    isEnabled(element(by.css("[name='submitButton']")));
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

exports.filterRoutingConfigsValidatorAndGetCount = function (routingConfigs, validator) {
    clearFilter();
    customizedSearch();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Contexto Otimizacao", "Contexto Otimizacao");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Fabrica Validador", "Fabrica Validador");
    utils.elementClick("[name='buttonApply']");
    utils.addTextTags("[name='Contexto_Otimizacao-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", routingConfigs);
    utils.addTextTags("[name='Fabrica_Validador-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", validator);
    utils.elementClick("[name='submitButton']");
    // isEnabled(element(by.css("[name='submitButton']")));
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

/**
 * Filtra cesta do usuário por um determinado codigo e retorna uma promessa da quantidade de registros encontrados.
 *
 * @param {string} code: código do registro a ser inserido.
 *
 * */
exports.filterUserBasketByOrderCodeAndGetCount = function (code) {
    clearFilter("[selection='selection.deliveryUnits']");
    customizedSearch("[selection='selection.deliveryUnits']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Código", "Pedido / Código");
    utils.elementClick("[name='buttonApply']");
    utils.fillText("[name='orderTemplate.code-br.com.neolog.service.crud.filter.FilterOperation.EQUAL'] input", code + ",");
    utils.elementClick("[selection='selection.deliveryUnits'] [name='submitButton']");
    isEnabled(element(by.css("[selection='selection.deliveryUnits'] [name='submitButton']")));
    return element.all(by.css("[name='nlgAnalysisTreeNode'][data-node-type='ROUTING_BASKET']")).count();;
};

/**
 * Filtra por um determinado source_id e retorna uma promessa da quantidade de registros encontrados.
 *
 * @param {string} sourceId: código do registro a ser inserido.
 *
 * */
exports.filterWithoutCustomizingAndGetCount = function () {
    element(by.css("[name='deleteFilterButtons")).isPresent().then(function (isPresent) {
        if (isPresent) {
            return clearFilter();
        } else {
            return utils.elementClick("[name=resetButton]");
        }
    });
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='searchResultTable'] tbody tr")).count();
};

/**
 *
 * @param {string} sourceId: código do registro a ser inserido.
 *
 * */
exports.webFilterBySourceIdAndGetCount = function (sourceId) {
    element(by.css("[name='sourceId-br.com.neolog.webfilter.FilterOperation.IN'] input")).isPresent().then(function (isPresent) {
        if (!isPresent) {
            clearFilter();
            customizedSearch();
            exports.fillFilterWithSingleAttributeAndOperation("Código externo", "Código externo", "br.com.neolog.webfilter.FilterOperation.IN");
        } else {
            elementClick("[name=resetButton]");
        }
    });
    fillText("[name='sourceId-br.com.neolog.webfilter.FilterOperation.IN'] input", sourceId + ",");
    elementClick("[name='submitButton']");
    return element.all(by.css("[name='searchResultTable'] tbody tr")).count();
};

/**
 * Filtra por um determinado email, em relação a um operador webFilter, e retorna uma promessa da quantidade de registros encontrados.
 *
 * @param {string} sourceId: código do registro a ser inserido.
 *
 * */
exports.webFilterByEmailAndGetCount = function (sourceId) {
    clearFilter();
    customizedSearch();
    exports.fillFilterWithSingleAttributeAndOperation("Email", "Email", "br.com.neolog.webfilter.FilterOperation.IN");
    utils.fillText("[name='email-br.com.neolog.webfilter.FilterOperation.EQUAL'] input", sourceId);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='searchResultTable'] tbody tr")).count();
};

exports.fillFilterWithSingleAttributeAndOperation = function (searchValue, selected, operator) {
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", searchValue, selected);
    // utils.fillFilterDropdown("[name='filterCustomizationTable'] [name='operators+0'] option", "'string:" + operator + "'");
    utils.elementClick("[name='buttonApply']");
};

exports.filterSelectionUserBasketByOrderCodeAndGetCount = function (code) {
    let el = "[service='transactional/selection/deliveryUnitBasketSelection']";
    clearFilter(el);
    customizedSearch(el);
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Pedido / Código", "Pedido / Código");
    // utils.fillFilterDropdown("[name='operators+0']", "'string:br.com.neolog.service.crud.filter.FilterOperation.LIKE'");
    utils.elementClick("[name='buttonApply']");
    utils.fillText("[name='orderTemplate.code-br.com.neolog.service.crud.filter.FilterOperation.EQUAL'] input", code + ",");
    isEnabled(element(by.css(el + " [name='submitButton']")));
    utils.elementClick(el + " [name='submitButton']");
    return element.all(by.css("[name='nlgAnalysisTreeNode'][data-node-type='Trip']")).count();
};

exports.filterSelectionTripBasketByOrderCodeAndGetCount = function (code) {
    let el = "[service='transactional/selection/tripBasketSelection']";
    clearFilter(el);
    customizedSearch(el);
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Pedido / Código", "Unidade de transporte / Pedido / Código");
    // utils.fillFilterDropdown("[name='operators+0']", "'string:br.com.neolog.service.crud.filter.FilterOperation.LIKE'");
    utils.elementClick("[name='buttonApply']");
    utils.fillText("[name='deliveryUnitTemplate.orderTemplate.code-br.com.neolog.service.crud.filter.FilterOperation.EQUAL'] input", code + ",");
    isEnabled(element(by.css(el + " [name='submitButton']")));
    utils.elementClick(el + " [name='submitButton']");
    return element.all(by.css("[name='nlgAnalysisTreeNode'][data-node-type='Trip']")).count();
};

exports.filterTripBasketByOrderCodeAndGetCount = function (code) {
    clearFilter("[selection='selection.tripBasket']");
    customizedSearch("[selection='selection.tripBasket']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Pedido / Código", "Unidade de transporte / Pedido / Código");
    // utils.fillFilterDropdown("[name='operators+0']", "'string:br.com.neolog.service.crud.filter.FilterOperation.LIKE'");
    utils.elementClick("[name='buttonApply']");
    utils.fillText("[name='deliveryUnitTemplate.orderTemplate.code-br.com.neolog.service.crud.filter.FilterOperation.EQUAL'] input", code + ",");
    // isEnabled(element(by.css("[selection='selection.tripBasket'] [name='submitButton']")));
    utils.elementClick("[selection='selection.tripBasket'] [name='submitButton']");
    return element.all(by.css("[name='nlgAnalysisTreeNode'][data-node-type='Trip']")).count();
};

exports.filterPoolByOrderCodeAndGetCount = function (code) {
    let el = "[name='filterForm']";
    clearFilter(el);
    customizedSearch(el);
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Pedido / Código", "Viagem / Unidade de transporte / Pedido / Código");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Final", "Finalizada");
    utils.elementClick("[name='buttonApply']");
    utils.elementClick("[name='finalized-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']");
    utils.fillText("[name='tripTemplate.deliveryUnitTemplate.orderTemplate.code-br.com.neolog.service.crud.filter.FilterOperation.EQUAL'] input", code + ",");
    isEnabled(element(by.css(el + " [name='submitButton']")));
    utils.elementClick(el + " [name='submitButton']");
    return element.all(by.css("[name='nlgAnalysisTreeNode'][data-node-type='Trip']")).count();
};