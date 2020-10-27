"use strict";

var present = require("../scripts/wait").present,
    dblClick = require("../scripts/events").dblClick,
    scroll = require("../scripts/scroll"),
    taginput = require("../scripts/taginput"),
    filter = require("../scripts/filter"),
    messages = require("../scripts/messages"),
    tripBasket = "[selection='selection.tripBasket']",
    tripBasketXpath = "//*[@selection='selection.tripBasket']",
    userBasket = "[selection='selection.deliveryUnits']",
    userBasketXpath = "//*[@selection='selection.deliveryUnits']",
    generalBasket = "[selection='selection.availableDeliveryUnits']",
    generalBasketXpath = "//*[@selection='selection.availableDeliveryUnits']",
    tripHeader = " [data-node-type='Trip']",
    tripHeaderXpath = "//*[@data-node-type='Trip']",
    loadHeader = " [data-node-type='Load']",
    stopHeader = " [data-node-type='Stop']",
    orderHeader = "[data-node-type='Order']",
    orderHeaderXpath = "//*[@data-node-type='Order']",
    orderItemHeader = "[data-node-type='DeliveryUnit']";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect,
    assert = chai.assert;
const path = require("path");
const protractorHelper = require("protractor-helper");
const importFiles = require("./importFiles").importFiles;

//Preenche campos do tipo texto
exports.getVersion = function () {
    elementClick("name=['headerAbout']");
    return present(element(by.css("class=['ng-binding']"))).getText().then(function (version) {
        return console.log(version);
    });
};

//excluir cadastro por código
exports.excluirCadastro = function (string) {
    filter.configuraFiltro();
    exports.fillText("[name='tagInputTextField']", string);
    exports.elementClick("[name='submitButton']");
    return filter.excluirPosFiltro(string);
};

//excluir cadastro por nome
exports.excluirCadastroNome = function (string) {
    element(by.xpath("//button[@name='submitButton']")).sendKeys(protractor.Key.ESCAPE);
    filter.configuraFiltroPorAtributo("Nome");
    exports.fillText("[name='tagInputTextField']", string);
    exports.elementClick("[name='submitButton']");
    return filter.excluirPosFiltro(string);
    // return exports.elementClick("[name='buttonOk']");
};

//excluir cadastro com atributo
exports.excluirCadastroComAtributo = function (string, string2) {
    // element(by.xpath("//button[@name='submitButton']")).sendKeys(protractor.Key.ESCAPE);
    filter.configuraFiltroPorAtributo(string2);
    exports.fillText("[name='tagInputTextField']", string);
    exports.elementClick("[name='submitButton']");
    return filter.excluirPosFiltro(string);
    // return exports.elementClick("[name='buttonOk']");
};

/**
 * Preenche campos.
 *
 * @param {string} el: elemento.
 * @param {integer} indexRow: índice da linha de uma tabela.
 * @param {integer} indexColumn: índice da coluna de uma tabela.
 * @param {string} value: valor a ser preenchido no elemento.
 * @param {string} table: identificação do elemento do tipo tabela.
 * @param {string} combo: identificação do elemento do tipo combo (célula da tabela).
 *
 * */

//Preenche campos do tipo texto
exports.fillText = function (el, value) {
    element(by.css(el))
        .sendKeys(protractor.Key.chord(protractor.Key.CONTROL, protractor.Key.BACK_SPACE));
    return element(by.css(el)).sendKeys(value);
};

exports.fillTextxpath = function (el, value) {
    element(by.xpath(el)).sendKeys(value);
    return element(by.xpath(el)).sendKeys(protractor.Key.TAB);
};

//Preenche campos do tipo numérico
exports.fillNumber = function (el, value) {
    return exports.fillText(el + " [name='nlgNumberInput']", value);
};

exports.fillNumberXpath = function (el, value) {
    scroll.toElement(element(by.xpath(el))).click();
    present(element(by.xpath(el))).click();
    element(by.xpath(el)).sendKeys(protractor.Key.HOME);
    element(by.xpath(el)).sendKeys(protractor.Key.DELETE);
    element(by.xpath(el)).sendKeys(protractor.Key.DELETE);
    element(by.xpath(el)).sendKeys(protractor.Key.DELETE);
    element(by.xpath(el)).sendKeys(protractor.Key.DELETE);
    element(by.xpath(el)).sendKeys(protractor.Key.DELETE);
    element(by.xpath(el)).sendKeys(protractor.Key.DELETE);
    element(by.xpath(el)).sendKeys(protractor.Key.DELETE);
    element(by.xpath(el)).sendKeys(protractor.Key.DELETE);
    element(by.xpath(el)).sendKeys(protractor.Key.DELETE);
    element(by.xpath(el)).sendKeys(protractor.Key.DELETE);
    // browser.actions().sendKeys(protractor.Key.HOME);
    // browser.actions().sendKeys(protractor.Key.DELETE);
    // browser.actions().sendKeys(protractor.Key.DELETE);
    // browser.actions().sendKeys(protractor.Key.DELETE);
    // browser.actions().sendKeys(protractor.Key.DELETE);
    // browser.actions().sendKeys(protractor.Key.DELETE);
    // browser.actions().sendKeys(protractor.Key.DELETE);
    // browser.actions().sendKeys(protractor.Key.DELETE);
    // browser.actions().sendKeys(protractor.Key.DELETE);
    // browser.actions().sendKeys(protractor.Key.DELETE);
    // browser.actions().sendKeys(protractor.Key.DELETE);
    return present(element(by.xpath(el))).sendKeys(value, protractor.Key.TAB);
};

//Preenche campos do tipo porcentagem
exports.fillPercentage = function (el, value) {
    exports.fillNumber(el + " [name='percentageInput']", value);
};

//Preenche campos do tipo duration input
exports.fillDurationInput = function (el, day, hour, minute, second, milliseconds) {
    exports.fillNumber(el + " [name='dayInput']", day);
    exports.fillNumber(el + " [name='hourInput']", hour);
    exports.fillNumber(el + " [name='minuteInput']", minute);
    if (second || second === "") {
        exports.fillNumber(el + " [name='secondInput']", second);
    }
    if (milliseconds || milliseconds === "") {
        return exports.fillNumber(el + " [name='millisecondInput']", milliseconds);
    }
};

//Preenche campos do tipo duration input
exports.fillDuration = function (day, hour, minute, second, milliseconds) {
    exports.fillNumber("[name='dayInput']", day);
    exports.fillNumber("[name='hourInput']", hour);
    exports.fillNumber("[name='minuteInput']", minute);
    exports.fillNumber("[name='secondInput']", second);
    return exports.fillNumber("[name='millisecondInput']", milliseconds);
    // if (second || second === "") {
    // }
    // if (milliseconds || milliseconds === "") {
    // }
};

// Preenche campos do tipo duration input
// exports.fillDurationInput = function (el, day, hour, minute) {
//     exports.fillNumber("[name='" + el + "']" + " [name='dayInput']", day);
//     exports.fillNumber("[name='" + el + "']" + " [name='hourInput']", hour);
//     return exports.fillNumber("[name='" + el + "']" + " [name='minuteInput']", minute);
// };

//Preenche campos do tipo combo (autocomplete)	
exports.fillCombo = function (el, value) {
    dblClick(element(by.css(el)));
    return getVisibleTypeAheadOptions().element(by.linkText(value)).click();
};

//Preenche campos do tipo combo (autocomplete)	
exports.fillComboXpath = function (el, value) {
    dblClick(element(by.xpath(el)));
    return getVisibleTypeAheadOptions().element(by.linkText(value)).click();
};

// Preenche campos do tipo tagInput
exports.addTextTags = function (selector, tag) {
    var el = selector + " [name='nlgTagInputRemoveTag']";
    return element(by.css(el)).isPresent()
        .then(function (isPresent) {
            if (isPresent) {
                exports.elementClick(el);
            }
        })
        .then(function () {
            var el = element(by.css(selector + " [name='tagInputTextField']"));
            return el.sendKeys(tag).sendKeys(protractor.Key.ENTER);
        });
};

//Clica em elemento
exports.elementClick = function (el) {
    return scroll.toElement(present(element(by.css(el)))).click();
};

//Clica em elemento xpath
exports.elementClickXpath = function (el) {
    return scroll.toElement(element(by.xpath(el))).click();
};

//Clica N vezes em um elemento
exports.elementMultiClick = function (el, clicks) {
    for (var i = 0; i < clicks; i++) {
        scroll.toElement(element(by.css(el))).click();
    }
};

//Clica N vezes em um elemento
exports.elementMultiClickXpath = function (el, clicks) {
    for (var i = 0; i < clicks; i++) {
        scroll.toElement(element(by.xpath(el))).click();
    }
};

//Clica no enésimo elemento (começa em zero)
exports.elementClickNth = function (el, index) {
    return scroll.toElement(element.all(by.css(el)).get(index)).click();
};

//Clica N vezes no elemento "remove"
exports.elementRemove = function () {
    var clicks = exports.countElements("[name='remove']");
    for (var i = 0; i < clicks; i++) {
        scroll.toElement(element(by.css("[name='remove']"))).click();
    }
};

//preenche o dado de um time picker
exports.fillTimePicker = function (el, hour, minute) {
    exports.fillNumber(el + " [name='nlgTimepicker'] [name='hour'] ", hour);
    return exports.fillNumber(el + " [name='nlgTimepicker'] [name='minute'] ", minute);
};

exports.fillTimePickerXpath = function (el, hour, minute) {
    exports.fillNumberXpath(el + "//*[@name='nlgTimepicker']//*[@name='hour']//*[@name='nlgNumberInput'] ", hour);
    return exports.fillNumberXpath(el + "//*[@name='nlgTimepicker']//*[@name='minute']//*[@name='nlgNumberInput'] ", minute);
};

exports.assertTimePicker = function (el, hour, minute) {
    exports.assertNumberFieldContent(el + "[name='nlgTimepicker'] [name='hour']", hour);
    exports.assertNumberFieldContent(el + "[name='nlgTimepicker'] [name='minute']", minute);
};

/**
 * Para preenchimento da tabela de proxies
 * @param row linha a ser alterada
 * @param protocol deve estar em uppercase: SOCKS ou HTTP
 */
exports.functioningProxyList = {
    addProxySpec: function (row, host, port, protocol, domain, username, password, bypassHosts) {
        exports.fillText("[name='proxyConfigTable'] tr[name='" + row + "']  [name='host'] input", host);
        exports.fillNumber("[name='proxyConfigTable'] tr[name='" + row + "'] [name='port']", port);
        exports.elementClick("[name='proxyConfigTable'] tr[name='" + row + "'] [name='protocol'] [name='nlgTagInputRemoveTag']");
        exports.comboSearchAndSelect("[name='proxyConfigTable'] tr[name='" + row + "'] [name='protocol']", protocol, protocol);
        exports.fillText("[name='proxyConfigTable'] tr[name='" + row + "'] [name='domain'] input", domain);
        exports.fillText("[name='proxyConfigTable'] tr[name='" + row + "'] [name='username'] input", username);
        exports.fillText("[name='proxyConfigTable'] tr[name='" + row + "'] [name='actualPassword'] input", password);
        exports.fillText("[name='proxyConfigTable'] tr[name='" + row + "'] [name='bypassHosts'] input", bypassHosts);
    }
};

exports.functioningRemoteServerList = {
    /**
     * Para preenchimento da tabela de servidores remoto
     */
    addRemoteServerSpec: function (row, sourceId, name, byPassHosts) {
        exports.fillText("[name='remoteServersTable'] tr[name='" + row + "'] [name='remoteConfig.sourceId']", sourceId);
        exports.fillText("[name='remoteServersTable'] tr[name='" + row + "'] [name='remoteConfig.name']", name);
        exports.fillText("[name='remoteServersTable'] tr[name='" + row + "'] [name='remoteConfig.remoteServicesBaseUrl']", byPassHosts);
    },
    assertDefaultRemoteServer: function (row) {
        exports.assertSelectedCheckbox("[name='remoteServersTable'] tr[name='" + row + "'] [name='defaultServer']");
    }
};

//Preenche campos Dropdown nos modais de filtro
// As options dos combos são identificáveis por value ou label, porém não conseguimos selecionar por value no combo "Operadores",
// que tem suas opções geradas dinamicamente de acordo com a seleção do combo "Atributos"; no momento, mesmo label sendo um seletor 
// fraco, é ele que estamos utilizando para conseguir filtrar
// o parâmetro indexRow é 1 based.
exports.fillFilterDropdown = function (dropdown, value) {
    // var row = element.all(by.css(table + " tr")).get(indexRow);

    // present(element(by.css(dropdown)).all(by.tagName('option')).get(value)).click();
    present(element(by.css(dropdown))).click();
    return present(element(by.css('[label="' + value + '"]'))).click();
};

/**
 * Validador de quantidade de elementos child em um dado elemento.
 *
 * @param {string} element: elemento (pai).
 * @param {integer} number: número de elementos child esperados.
 *
 * */
exports.countElements = function (el, number) {
    expect(element.all(by.css(el)).count()).toEqual(number);
};

exports.countElements = function (el) {
    return expect(element.all(by.css(el)).count())
};

/**
 * Confere o conteúdo de um campo texto.
 *
 * @param {string} textField: campo onde o valor deve ser conferido.
 * @param {string} content: conteúdo a ser conferido.
 *
 * */
exports.assertTextFieldContent = function (textField, content) {
    element(by.css(textField)).getAttribute("value").then(function (elContent) {
        if (elContent !== content) {
            throw new Error("Erro! O texto encontrado (" + elContent + ") não é igual ao texto esperado (" + content + "). Seletor: " + textField);
        }
    });
};

/**
 * Confere o conteúdo de um campo numérico.
 *
 * @param {string} textField: campo onde o valor deve ser conferido.
 * @param {string} content: conteúdo a ser conferido.
 *
 * */
exports.assertNumberFieldContent = function (textField, content) {
    exports.assertTextFieldContent(textField + " [name='nlgNumberInput']", content);
};

/**
 * Confere o conteúdo de um campo Duration.
 *
 * @param {string} textField: campo onde o valor deve ser conferido.
 * @param {string} hourInput: conteúdo de hora.
 * @param {string} minuteInput: conteúdo de minuto.
 *
 * */
exports.assertDurationContent = function (textField, day, hour, minute, second, milliseconds) {
    exports.assertNumberFieldContent(textField + " [name='dayInput']", day);
    exports.assertNumberFieldContent(textField + " [name='hourInput']", hour);
    exports.assertNumberFieldContent(textField + " [name='minuteInput']", minute);
    if (second) {
        exports.assertNumberFieldContent(textField + " [name='secondInput']", second);
    }
    if (milliseconds) {
        exports.assertNumberFieldContent(textField + " [name='millisecondInput']", milliseconds);
    }
};

exports.assertDurationContent = function (textField, day, hour, minute) {
    exports.assertNumberFieldContent("[name='" + textField + "']" + " [name='dayInput']", day);
    exports.assertNumberFieldContent("[name='" + textField + "']" + " [name='hourInput']", hour);
    return exports.assertNumberFieldContent("[name='" + textField + "']" + " [name='minuteInput']", minute);
};

/**
 * Confere o conteúdo de um campo porcentagem.
 *
 * @param {string} textField: campo onde o valor deve ser conferido.
 * @param {string} content: conteúdo a ser conferido.
 *
 * */
exports.assertPercentageFieldContent = function (textField, content) {
    exports.assertTextFieldContent(textField + ">[name='percentageInput']>[name='nlgNumberInput']", content);
};

/**
 *
 * @param {string} textField: campo onde o valor deve ser conferido.
 * @param {string} content: conteúdo a ser conferido.
 *
 * */
exports.assertPercentageFieldContent = function (textField, content) {
    exports.assertTextFieldContent(textField + ">[name='percentageInput']>[name='nlgNumberInput']", content);
};

/**
 * Confere o conteúdo de um texto na tela (bundles, options, combos).
 *
 * @param {string} el: elemento onde o valor deve ser conferido.
 * @param {string} content: conteúdo a ser conferido.
 *
 * */
exports.assertText = function (el, content) {
    var element2 = element(by.css(el));
    element2.getText().then(function (elContent) {
        if (elContent !== content) {
            throw new Error("Erro! O texto encontrado (" + elContent + ") não é igual ao texto esperado (" + content + "). Seletor: " + el);
        }
    });
};

/**
 * Confere que um checkbox está selecionado.
 *
 * @param {string} checkbox: checkbox que deve ser conferido.
 * */
exports.assertSelectedCheckbox = function (checkbox) {
    return expect(element(by.css(checkbox)).isSelected()).toBe(true, "Seletor: " + checkbox);
};

exports.assertSelectedRadio = function (radio) {
    expect(element(by.css(radio)).isSelected()).toBe(true);
};

/**
 * Confere que um nlgPin está bloqueado.
 *
 * @param {string} seletor: nlgPin que deve ser conferido.
 * */
exports.checkLocked = function (selector) {
    expect(element(by.css(selector + " [name='nlgPin']")).getAttribute("title")).toBe("Bloqueado");
};

/**
 * Confere que um nlgPin está desbloqueado.
 *
 * @param {string} seletor: nlgPin que deve ser conferido.
 * */
exports.checkUnlocked = function (selector) {
    expect(element(by.css(selector + " [name='nlgPin']")).getAttribute("title")).toBe("Desbloqueado");
};

/**
 * Confere que um checkbox está desselecionado.
 *
 * @param {string} checkbox: checkbox que deve ser conferido.
 *
 * */
exports.assertUnselectedCheckbox = function (checkbox) {
    expect(element(by.css(checkbox)).isSelected()).to(false, "Seletor: " + checkbox);
};

/**
 * Confere que um elemento está habilitado para edição.
 *
 * @param {string} el: elemento que deve ser conferido.
 *
 * */
exports.assertEnabled = function (el) {
    expect(element(by.css(el)).isEnabled()).toBe(true);
};

/**
 * Confere que um elemento está desabilitado para edição.
 *
 * @param {string} el: elemento que deve ser conferido.
 *
 * */
exports.assertDisabled = function (el) {
    expect(element(by.css(el)).getAttribute("disabled")).toBe("true");
};

/**
 * Confere se um elemento está visível na tela.
 * @param {string} el: elemento que deve ser conferido.
 */
exports.assertVisible = function (el) {
    expect(element(by.css(el)).isDisplayed()).toBeTruthy();
};

/**
 * Confere se um elemento está visível na tela.
 * @param {string} el: elemento que deve ser conferido.
 */
exports.assertInvisible = function (el) {
    expect(element(by.css(el)).isDisplayed()).toBeFalsy();
};

/**
 * Limpa um campo texto.
 *
 * @param {string} textField: campo que deve ser limpo.
 *
 * */
exports.clearTextField = function (textField) {
    return element(by.css(textField)).clear();
};

exports.clearTextFieldXpath = function (textField) {
    // scroll.toElement(element(by.xpath(textField))).click();
    return scroll.toElement(element(by.xpath(textField))).sendKeys(protractor.Key.BACK_SPACE);
};

exports.clearTextXpath = function (textField) {
    scroll.toElement(element(by.xpath(textField))).clear();
    return element(by.xpath(textField)).sendKeys(protractor.Key.BACK_SPACE);
};

/**
 * Limpa um campo númerico.
 *
 * @param {string} textField: campo que deve ser limpo.
 *
 * */
exports.clearNumberField = function (textField) {
    clearTextField(textField + ">[name='nlgNumberInput']");
};

exports.clearNumberFieldXpath = function (textField) {
    scroll.toElement(element(by.xpath(textField))).click();
    element(by.xpath(textField)).sendKeys(protractor.Key.BACK_SPACE);
    element(by.xpath(textField)).sendKeys(protractor.Key.BACK_SPACE);
    element(by.xpath(textField)).sendKeys(protractor.Key.BACK_SPACE);
    element(by.xpath(textField)).sendKeys(protractor.Key.BACK_SPACE);
    element(by.xpath(textField)).sendKeys(protractor.Key.BACK_SPACE);
    element(by.xpath(textField)).sendKeys(protractor.Key.BACK_SPACE);
    element(by.xpath(textField)).sendKeys(protractor.Key.BACK_SPACE);
    element(by.xpath(textField)).sendKeys(protractor.Key.BACK_SPACE);
    element(by.xpath(textField)).sendKeys(protractor.Key.BACK_SPACE);
    element(by.xpath(textField)).sendKeys(protractor.Key.BACK_SPACE);
    element(by.xpath(textField)).sendKeys(protractor.Key.BACK_SPACE);
    element(by.xpath(textField)).sendKeys(protractor.Key.BACK_SPACE);
    return element(by.xpath(textField)).sendKeys(protractor.Key.BACK_SPACE);
};

/**
 * Limpa um combo.
 *
 * @param {string} combo: combo que deve ser limpo.
 *
 * */
exports.clearCombo = function (combo) {
    return taginput.clearCombo(combo);
};

/**
 * Procura o valor desejado em um combo (por padrão, só são exibidos os 50 itens de cada combo) e seleciona.
 *
 * @param {string} combo: combo onde o valor deve ser procurado.
 * @param {string} search: valor a ser procurado (geralmente, as primeiras letras de uma string).
 * @param {string} select: valor a ser selecionado (string inteira a ser selecionada).
 *
 * */
exports.comboSearchAndSelect = function (combo, search, select) {
    return taginput.comboSearchAndSelect(combo, search, select);
};

/**
 * Procura o valor desejado em um combo (por padrão, só são exibidos os 50 itens de cada combo) e seleciona. Adiciona mais de um valor no combo.
 *
 * @param {string} combo: combo onde o valor deve ser procurado.
 * @param {string} search: valor a ser procurado (geralmente, as primeiras letras de uma string).
 * @param {string} select: valor a ser selecionado (string inteira a ser selecionada).
 *
 * */
exports.comboAddTag = function (combo, search, select) {
    return taginput.comboAddTag(combo, search, select);
};

function getVisibleTypeAheadOptions() {
    return taginput.getVisibleTypeAheadOptions();
}

/**
 * Desseleciona uma option em um transfer panel.
 *
 * @param {string} el: elemento a ser desselecionado (composto pelo panel + option).
 *
 * */
exports.unselectPanelOption = function (el) {
    var option = element(by.css(el));
    option.getAttribute("checked").then(function (value) {
        if (value) {
            option.click();
        }
    });
};

/**
 * Desseleciona todas as option em um transfer panel.
 *
 * @param {string} el: transfer panel a ser desselecionado.
 *
 * */
exports.unselectAllOptions = function (el) {
    element(by.css(el)).all(by.css("option:checked")).click();
};

/**
 * Verifica que elementos de um array estão ordenados (crescente).
 *
 * @param {array} el: array a ser percorrido e validado.
 *
 * */
exports.expectToBeIncreasedSorted = function (el) {
    for (var i = 0; i < el.length - 1; i++) {
        if (el[i] > el[i + 1]) {
            throw new Error("Erro! Os registros não estão ordenados de forma crescente. Registro " + i + 1 + " (" + el[i] + ") é maior do que o registro " + i + 2 + " (" + el[i + 1] + ").");
        }
    }
};

/**
 * Verifica que elementos de um array estão ordenados (decrescente).
 *
 * @param {array} el: array a ser percorrido e validado.
 *
 * */
exports.expectToBeDecreasedSorted = function (el) {
    for (var i = 0; i < el.length - 1; i++) {
        if (el[i] < el[i + 1]) {
            throw new Error("Erro! Os registros não estão ordenados de forma decrescente. Registro " + i + 1 + " (" + el[i] + ") é menor do que o registro " + i + 2 + " (" + el[i + 1] + ").");
        }
    }
};

/**
 * Valida paginação em resultados de filtros.
 *
 * @param {string} el: elemento a ser contado (viagens, linhas de uma result table, etc).
 *
 * */
exports.assertPagination = function (el) {
    var elementClick = exports.elementClick;
    var countRegs = element.all(by.css(el)).count();
    countRegs.then(function (regCount) {
        if (regCount > 0) {
            element(by.css(".paginationResultInterval")).getText().then(function (value) {
                var matchs = value.match(/\d+ \- \d+ de (\d+) resultados/);
                var totals = parseFloat(matchs[1]);
                var page;
                elementClick("[name='pageSize-10']");
                var pagesWith10regs = parseInt(totals / 10);
                var regsInLastPage10RegsConfig = parseInt(totals % 10);
                if (totals !== 10 && pagesWith10regs > 0) {
                    page = "last";
                } else {
                    page = "first";
                }
                element(by.css("[name='" + page + "'] span")).getText().then(function (numberOfPages) {
                    var pages = parseInt(numberOfPages);
                    if (regsInLastPage10RegsConfig !== 0) {
                        if (pages === pagesWith10regs + 1) {
                            if (pagesWith10regs > 1) {
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 10) {
                                        throw new Error("Erro! Eram esperados 10 registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                                elementClick("[name='last']");
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== regsInLastPage10RegsConfig) {
                                        throw new Error("Erro! Eram esperados " + regsInLastPage10RegsConfig + " registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                            } else if (pagesWith10regs === 1) {
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 10) {
                                        throw new Error("Erro! Eram esperados 10 registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                                elementClick("[name='last']");
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== regsInLastPage10RegsConfig) {
                                        throw new Error("Erro! Eram esperados " + regsInLastPage10RegsConfig + " registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                            } else {
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== regsInLastPage10RegsConfig) {
                                        throw new Error("Erro! Eram esperados " + regsInLastPage10RegsConfig + " registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                            }
                        } else {
                            throw new Error("Eram esperadas " + (pagesWith10regs + 1) + " páginas, mas foram encontradas " + pages);
                        }
                    } else {
                        if (pages === pagesWith10regs + 1) {
                            if (pagesWith10regs > 1) {
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 10) {
                                        throw new Error("Erro! Eram esperados 10 registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                                elementClick("[name='last']");
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 10) {
                                        throw new Error("Erro! Eram esperados " + regsInLastPage10RegsConfig + " registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                            } else if (pagesWith10regs === 1) {
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 10) {
                                        throw new Error("Erro! Eram esperados 10 registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                                elementClick("[name='last']");
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 10) {
                                        throw new Error("Erro! Eram esperados 10 registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                            } else {
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 10) {
                                        throw new Error("Erro! Eram esperados 10 registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                            }
                        }
                    }
                });
                scroll.toTop();
                elementClick("[name='pageSize-25']");
                var pagesWith25regs = parseInt(totals / 25);
                var regsInLastPage25RegsConfig = parseInt(totals % 25);
                if (totals !== 25 && pagesWith25regs > 0) {
                    page = "last";
                } else {
                    page = "first";
                }
                element(by.css("[name='" + page + "'] span")).getText().then(function (numberOfPages) {
                    var pages = parseInt(numberOfPages);
                    if (regsInLastPage25RegsConfig !== 0) {
                        if (pages === pagesWith25regs + 1) {
                            if (pagesWith25regs > 1) {
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 25) {
                                        throw new Error("Erro! Eram esperados 25 registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                                elementClick("[name='last']");
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== regsInLastPage25RegsConfig) {
                                        throw new Error("Erro! Eram esperados " + regsInLastPage25RegsConfig + " registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                            } else if (pagesWith25regs === 1) {
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 25) {
                                        throw new Error("Erro! Eram esperados 25 registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                                elementClick("[name='last']");
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== regsInLastPage25RegsConfig) {
                                        throw new Error("Erro! Eram esperados " + regsInLastPage25RegsConfig + " registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                            } else {
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== regsInLastPage25RegsConfig) {
                                        throw new Error("Erro! Eram esperados " + regsInLastPage25RegsConfig + " registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                            }
                        } else {
                            throw new Error("Eram esperadas " + (pagesWith25regs + 1) + " páginas, mas foram encontradas " + pages);
                        }
                    } else {
                        if (pages === pagesWith25regs + 1) {
                            if (pagesWith10regs > 1) {
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 25) {
                                        throw new Error("Erro! Eram esperados 25 registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                                elementClick("[name='last']");
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 25) {
                                        throw new Error("Erro! Eram esperados " + regsInLastPage25RegsConfig + " registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                            } else if (pagesWith25regs === 1) {
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 25) {
                                        throw new Error("Erro! Eram esperados 25 registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                                elementClick("[name='last']");
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 25) {
                                        throw new Error("Erro! Eram esperados 25 registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                            } else {
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 25) {
                                        throw new Error("Erro! Eram esperados 25 registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                            }
                        }
                    }
                });
                scroll.toTop();
                elementClick("[name='pageSize-50']");
                var pagesWith50regs = parseInt(totals / 50);
                var regsInLastPage50RegsConfig = parseInt(totals % 50);
                if (totals !== 50 && pagesWith50regs > 0) {
                    page = "last";
                } else {
                    page = "first";
                }
                element(by.css("[name='" + page + "'] span")).getText().then(function (numberOfPages) {
                    var pages = parseInt(numberOfPages);
                    if (regsInLastPage50RegsConfig !== 0) {
                        if (pages === pagesWith50regs + 1) {
                            if (pagesWith50regs > 1) {
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 50) {
                                        throw new Error("Erro! Eram esperados 50 registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                                elementClick("[name='last']");
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== regsInLastPage50RegsConfig) {
                                        throw new Error("Erro! Eram esperados " + regsInLastPage50RegsConfig + " registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                            } else if (pagesWith50regs === 1) {
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 50) {
                                        throw new Error("Erro! Eram esperados 50 registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                                elementClick("[name='last']");
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== regsInLastPage50RegsConfig) {
                                        throw new Error("Erro! Eram esperados " + regsInLastPage50RegsConfig + " registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                            } else {
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== regsInLastPage50RegsConfig) {
                                        throw new Error("Erro! Eram esperados " + regsInLastPage50RegsConfig + " registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                            }
                        } else {
                            throw new Error("Eram esperadas " + (pagesWith50regs + 1) + " páginas, mas foram encontradas " + pages);
                        }
                    } else {
                        if (pages === pagesWith50regs + 1) {
                            if (pagesWith50regs > 1) {
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 50) {
                                        throw new Error("Erro! Eram esperados 50 registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                                elementClick("[name='last']");
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 50) {
                                        throw new Error("Erro! Eram esperados " + regsInLastPage50RegsConfig + " registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                            } else if (pagesWith50regs === 1) {
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 50) {
                                        throw new Error("Erro! Eram esperados 50 registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                                elementClick("[name='last']");
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 50) {
                                        throw new Error("Erro! Eram esperados 50 registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                            } else {
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 50) {
                                        throw new Error("Erro! Eram esperados 50 registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                            }
                        }
                    }
                });
                scroll.toTop();
                elementClick("[name='pageSize-100']");
                var pagesWith100regs = parseInt(totals / 100);
                var regsInLastPage100RegsConfig = parseInt(totals % 100);
                if (totals !== 100 && pagesWith100regs > 0) {
                    page = "last";
                } else {
                    page = "first";
                }
                element(by.css("[name='" + page + "'] span")).getText().then(function (numberOfPages) {
                    var pages = parseInt(numberOfPages);
                    if (regsInLastPage100RegsConfig !== 0) {
                        if (pages === pagesWith100regs + 1) {
                            if (pagesWith100regs > 1) {
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 100) {
                                        throw new Error("Erro! Eram esperados 100 registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                                elementClick("[name='last']");
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== regsInLastPage100RegsConfig) {
                                        throw new Error("Erro! Eram esperados " + regsInLastPage100RegsConfig + " registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                            } else if (pagesWith100regs === 1) {
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 100) {
                                        throw new Error("Erro! Eram esperados 100 registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                                elementClick("[name='last']");
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== regsInLastPage100RegsConfig) {
                                        throw new Error("Erro! Eram esperados " + regsInLastPage100RegsConfig + " registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                            } else {
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== regsInLastPage100RegsConfig) {
                                        throw new Error("Erro! Eram esperados " + regsInLastPage100RegsConfig + " registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                            }
                        } else {
                            throw new Error("Eram esperadas " + (pagesWith100regs + 1) + " páginas, mas foram encontradas " + pages);
                        }
                    } else {
                        if (pages === pagesWith100regs + 1) {
                            if (pagesWith100regs > 1) {
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 100) {
                                        throw new Error("Erro! Eram esperados 100 registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                                elementClick("[name='last']");
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 100) {
                                        throw new Error("Erro! Eram esperados " + regsInLastPage100RegsConfig + " registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                            } else if (pagesWith100regs === 1) {
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 100) {
                                        throw new Error("Erro! Eram esperados 100 registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                                elementClick("[name='last']");
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 100) {
                                        throw new Error("Erro! Eram esperados 100 registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                            } else {
                                element.all(by.css(el)).count().then(function (value) {
                                    if (value !== 100) {
                                        throw new Error("Erro! Eram esperados 100 registros nesta página, porém foram encontrados " + value);
                                    }
                                });
                            }
                        }
                    }
                });
                scroll.toTop();
            });
        } else {
            throw new Error("Nenhum registro atende o critério do filtro.");
        }
    });
};

/**
 * Converte uma string para um float.
 *
 * @example
 * console.log(toFloat(-20.000,10));
 * > -20000.10
 *
 * @param {string} string String à ser convertida para número.
 * @returns {number}
 * */
exports.toFloat = function toFloat(string) {
    return parseFloat(string.toString().replace(/\./g, "").replace(/,/g, "."));
};

/**
 * Seleciona uma 'option' de um elemento 'select' (combo).
 *
 *
 * @param {string} el Elemento (select).
 * @param {string} opt option a ser selecionada.
 * */

exports.selectDropdownbyOption = function (el, opt) {
    var select = element(by.css(el)).click();
    //browser.actions().mouseMove(element(by.css(opt))).mouseDown().mouseUp();
    select.element(by.css(opt)).click();
};

/**
 * Seleciona uma visão na tela de análise (ie. itens de pedido / UT).
 *
 *
 * @param {string} el Elemento.
 * @param {string} view visão a ser selecionada.
 * */

exports.selectViewType = function (el, view) {
    element(by.css(el)).click();
    browser.actions().mouseMove(element(by.css(view))).mouseDown().mouseUp();
};

exports.expectToBeGreaterThan = function (el, number) {
    var count = element.all(by.css(el)).count();
    count.then(function (v) {
        var value = parseInt(number);
        if (isNaN(value)) {
            throw new Error("Erro! Era esperado um valor do tipo numérico, porém o valor passado foi " + number + ". Seletor: " + el);
        }
        if (v <= value) {
            throw new Error("Erro! Era esperado que o valor fosse maior que " + number + ", porém o valor foi " + v + ". Seletor: " + el);
        }
    });
};

/**
 * Marca um checkbox.
 *
 *
 * @param {string} checkbox Elemento.
 * */

exports.selectCheckbox = function (checkbox) {
    return element(by.css(checkbox)).isSelected().then(function (isSelected) {
        if (!isSelected) {
            return exports.elementClick(checkbox);
        }
    });
};

/**
 * Desmarca um checkbox.
 *
 *
 * @param {string} checkbox Elemento.
 * */

exports.unselectCheckbox = function (checkbox) {
    return element(by.css(checkbox)).isSelected().then(function (isSelected) {
        if (isSelected) {
            return exports.elementClick(checkbox);
        }
    });
};

//Adiciona Baú
exports.adiconaBau = function (codigoBau, largura, comprimento, altura, bau) {
    var el = "[name='containersTable'] [name='" + bau + "'] [name='remove nlgTableRemoveButton']";
    return element(by.css(el)).isPresent().then(function (isPresent) {
        if (isPresent) {
            exports.elementClick(el);
        }
        exports.elementClick("[name='add addbutton']");
        exports.fillText("[name='" + bau + "'] [name='sourceId']", codigoBau);
        exports.fillNumber("[name='" + bau + "'] [name='width']", largura);
        exports.fillNumber("[name='" + bau + "'] [name='length']", comprimento);
        exports.fillNumber("[name='" + bau + "'] [name='height']", altura);
        exports.fillNumber("[name='" + bau + "'] [name='frontalSupportHeight']", "2,60");
        exports.fillNumber("[name='" + bau + "'] [name='rearSupportHeight']", "2,60");
        exports.fillNumber("[name='" + bau + "'] [name='sideSupportHeight']", "2,60");
        // exports.fillNumberXpath("//*[@name='" + bau + "']/*/*[@name='neckLength']/*[@name='nlgNumberInput']", "1,75");
        // exports.fillNumberXpath("//*[@name='" + bau + "']/*/*[@name='neckHeight']/*[@name='nlgNumberInput']", "0,85");
        exports.fillNumber("[name='" + bau + "'] [name='lateralMaxWeightDifference']", "500,00");
        exports.fillNumber("[name='" + bau + "'] [name='lateralMaxWeightDifferenceTolerance']", "12,00");
        exports.fillNumber("[name='" + bau + "'] [name='minVolume']", "15,00");
        exports.fillNumber("[name='" + bau + "'] [name='maxVolume']", "105,00");
        return exports.fillNumber("[name='" + bau + "'] [name='maxWeight']", "16500,00");
    });
};

//Adiciona Baú com peso
exports.adiconaBauPeso = function (codigoBau, largura, comprimento, altura, bau, peso) {
    var el = "[name='containersTable'] [name='" + bau + "'] [name='remove nlgTableRemoveButton']";
    return element(by.css(el)).isPresent().then(function (isPresent) {
        if (isPresent) {
            exports.elementClick(el);
        }
        exports.elementClickXpath("//*[@name='add addbutton']/*");
        present(element(by.xpath("//*[@name='" + bau + "']/*/*[@name='sourceId']"))).clear;
        exports.fillTextxpath("//*[@name='" + bau + "']/*/*[@name='sourceId']", codigoBau);
        exports.fillNumberXpath("//*[@name='" + bau + "']/*/*[@name='width']/*[@name='nlgNumberInput']", largura);
        exports.fillNumberXpath("//*[@name='" + bau + "']/*/*[@name='length']/*[@name='nlgNumberInput']", comprimento);
        exports.fillNumberXpath("//*[@name='" + bau + "']/*/*[@name='height']/*[@name='nlgNumberInput']", altura);
        exports.fillNumberXpath("//*[@name='" + bau + "']/*/*[@name='frontalSupportHeight']/*[@name='nlgNumberInput']", "1,33");
        exports.fillNumberXpath("//*[@name='" + bau + "']/*/*[@name='rearSupportHeight']/*[@name='nlgNumberInput']", "1,33");
        exports.fillNumberXpath("//*[@name='" + bau + "']/*/*[@name='sideSupportHeight']/*[@name='nlgNumberInput']", "1,33");
        // exports.fillNumberXpath("//*[@name='" + bau + "']/*/*[@name='neckLength']/*[@name='nlgNumberInput']", "1,75");
        // exports.fillNumberXpath("//*[@name='" + bau + "']/*/*[@name='neckHeight']/*[@name='nlgNumberInput']", "0,85");
        exports.fillNumberXpath("//*[@name='" + bau + "']/*/*[@name='lateralMaxWeightDifference']/*[@name='nlgNumberInput']", "");
        exports.fillNumberXpath("//*[@name='" + bau + "']/*/*[@name='lateralMaxWeightDifferenceTolerance']/*[@name='nlgNumberInput']", "");
        exports.fillNumberXpath("//*[@name='" + bau + "']/*/*[@name='minVolume']/*[@name='nlgNumberInput']", "");
        exports.fillNumberXpath("//*[@name='" + bau + "']/*/*[@name='maxVolume']/*[@name='nlgNumberInput']", "");
        return exports.fillNumberXpath("//*[@name='" + bau + "']/*/*[@name='maxWeight']/*[@name='nlgNumberInput']", peso);
    });
};

//Adiciona Eixo
exports.adiconaEixo = function () {
    exports.elementClickXpath("//*[@name='1']/*/*[@name='editContainerAxles']");
    exports.elementClickXpath("//*[@name='addAxle addbutton']");
    exports.fillTextxpath("//*[@name='0']/*/*[@name='axle.description']", "Dianteiro");
    exports.fillNumberXpath("//*[@name='0']/*/*[@name='axle.distance']/*[@name='nlgNumberInput']", "1,35");
    exports.fillNumberXpath("//*[@name='0']/*/*[@name='axle.maxWeight']/*[@name='nlgNumberInput']", "10500,00");
    exports.elementClickXpath("//*[@name='addAxle addbutton']");
    exports.fillTextxpath("//*[@name='1']/*/*[@name='axle.description']", "Traseiro");
    exports.fillNumberXpath("//*[@name='1']/*/*[@name='axle.distance']/*[@name='nlgNumberInput']", "9,90");
    exports.fillNumberXpath("//*[@name='1']/*/*[@name='axle.maxWeight']/*[@name='nlgNumberInput']", "16800,00");
    return exports.elementClickXpath("//*[@name='closeAxlesTable']");
};

//Adiciona Espaços ocupados
exports.adiconaEspaçosOcupados = function () {
    exports.elementClickXpath("//*[@name='1']/*/*[@name='editContainerFilledSpace']");
    exports.elementClickXpath("//*[@name='addFilledSpaces addbutton']");
    exports.fillNumberXpath("//*[@name='0']/*/*[@name='filledSpace.coordX']/*[@name='nlgNumberInput']", "1,50");
    exports.fillNumberXpath("//*[@name='0']/*/*[@name='filledSpace.coordY']/*[@name='nlgNumberInput']", "1,50");
    exports.fillNumberXpath("//*[@name='0']/*/*[@name='filledSpace.coordZ']/*[@name='nlgNumberInput']", "1,50");
    exports.fillNumberXpath("//*[@name='0']/*/*[@name='filledSpace.width']/*[@name='nlgNumberInput']", "0,5");
    exports.fillNumberXpath("//*[@name='0']/*/*[@name='filledSpace.height']/*[@name='nlgNumberInput']", "0,5");
    exports.fillNumberXpath("//*[@name='0']/*/*[@name='filledSpace.length']/*[@name='nlgNumberInput']", "0,5");
    return exports.elementClickXpath("//*[@name='closeFilledSpacesTable']");
};

exports.selectOrderOrTrip = function (el) {
    return exports.elementClick(el + " [name='nlgAnalysisTreeCheckBox']");
};

exports.selectOrderOrTripXpath = function (el) {
    return exports.elementClickXpath(el + "//*[@name='nlgAnalysisTreeCheckBox']");
};

exports.confirmSelectedContext = function () {
    return element(by.xpath("//*[@name='overridableGenericParamsRoutingSelectionDialog']")).isPresent().then(function (isPresent) {
        if (isPresent === true) {
            exports.elementClickXpath("//*[@name='buttonOk']");
        } else {
            return element(by.xpath("//*[@name='routingSelectionDialog']")).isPresent().then(function (isPresent) {
                if (isPresent === true) {
                    exports.elementClickXpath("//*[@name='buttonOk']");
                }
            });
        }
    });
}

exports.setGeolocalizacao = function () {
    exports.elementClickXpath("//*[@name='validateAddressByZipCode']");
    return element(by.css("[name='addressSelection']")).isPresent().then(function (isPresent) {
        if (isPresent) {
            exports.elementClickXpath("//*[@name='addressSelectionNumber0']/*/*[@name='addressSelectionRadio']");
            return exports.elementClickXpath("//*[@name='buttonApply']");
        }
    });
};

exports.finalizePool = function () {
    if (process.env.CLIENT_NAME === 'grd') {
        navigate.to("Programação", "Pool de oferta");
        var countBeforeInsertionPromise = filter.filterPoolByOrderCodeAndGetCount("PEDIDOPC24");
        return countBeforeInsertionPromise.then(function (regCount) {
            if (regCount === 1) {
                exports.selectOrderOrTrip("[name='nlgAnalysisTreeNode']");
                exports.elementClick("[name='finalizeTripOfferPool']");
                messages.validaMensagem("Finalizado com sucesso.");
                return exports.elementClick("[name='buttonOk']");
            }
        })
    }
};

/**
 * Realiza upload de arquivos em formulário que possue elemento input do tipo file.
 *
 * @param {string} fileName: nome do arquivo a ser importado.
 *
 * */
exports.importSpreadsheets = (fileName) => {
    const fileInputField = element(by.css("[name='spreadsheetImportDialog.file']"));
    const relativePathOfFileToUpload = "../Dependencias/spreadsheets/" + fileName + ".xls";
    importFiles(fileInputField, relativePathOfFileToUpload);
    return exports.elementClick("[name='spreadsheetImportDialog.save']");
}

exports.fillClassification = function (classificationType, classificationFilter, classificationSelection) {
    return element.all(by.css("[name='type']")).getText().then(function (classifications) {
        const classificationIndex = classifications.indexOf(classificationType) + 1;
        return exports.comboSearchAndSelect("tr:nth-of-type(" + classificationIndex + ") > td[name='classification']", classificationFilter, classificationSelection);
    });
};

exports.assertClassification = function (classificationType, expectedClassification) {
    return element.all(by.css("[name='type']")).getText().then(function (classifications) {
        const classificationIndex = classifications.indexOf(classificationType) + 1;
        return element(by.css("tr:nth-of-type(" + classificationIndex + ") > td[name='classification']")).getText().then(function (actualClassification) {
            return assert.isTrue(actualClassification.endsWith(expectedClassification), `Era esperado a classificação [${expectedClassification}], porém a classificação encontrada foi [${actualClassification}]`)
        });
    });
};

exports.fillAttribute = function (attributeType, value) {
    const el = "[name='" + attributeType + "'] input";
    return element(by.css(el)).isPresent()
        .then(function (isPresent) {
            if (isPresent) {
                return exports.fillText(el, value);
            }
        });
};

exports.assertElementDoesNotExist = function (el) {
    return element(by.css(el)).isPresent()
        .then(function (isPresent) {
            assert.isFalse(isPresent);
        });
};

exports.assertElementExist = function (el) {
    return element(by.css(el)).isPresent()
        .then(function (isPresent) {
            assert.isTrue(isPresent);
        });
};