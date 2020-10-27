"use strict";

var { Given, When, Then } = require("cucumber");

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect;

var utils = require('../scripts/utils');
var filter = require("../scripts/filter");
var navigate = require("../scripts/navigate");
var printscreen = require("../scripts/printScreen");
var messages = require("../scripts/messages");

const { cadastre,
    fillProductCategoryClassification } = require("../pages/cadastre/productCategoryPage");

/********* ACESSO A TELA ************/
Given('acesso a tela de cadastro de Categorias de Produto', function () {
    return navigate.acessoTelaCadastro("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.productCategories']");
});

Given('que estou na tela de pesquisa de Categoria de Produto', function () {
    return navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.productCategories']");
});

/********* BOTÕES ************/

/********* VALIDAÇÃO MENSAGENS ************/
Then('e exibido a mensagem informando todos os campos obrigatorios para o preenchimento de Categoria de Produtos', function () {
    let self = this;
    printscreen.stepPrintScreen(self);
    expect(element(by.css("[name='entity.validator.EmptyDescription']")).getText()).to.eventually.equal("O campo descrição está vazio.");
    expect(element(by.css("[name='entity.validator.EmptySourceId']")).getText()).to.eventually.equal("O campo código está vazio.");
    return expect(element(by.css("[name='entity.validator.EmptyName']")).getText()).to.eventually.equal("O campo nome está vazio.");
});

Then('e exibido a mensagem que Deve haver pelo menos uma orientação permitida para cada localidade.', function () {
    let self = this;
    return messages.validaMensagem("Deve haver pelo menos uma orientação permitida para cada localidade.", self);
});

Then('e exibido a mensagem que O campo restrição de movimentação está vazio.', function () {
    let self = this;
    return messages.validaMensagem("O campo restrição de movimentação está vazio.", self);
});

Then('e exibido a mensagem que Uma folga de embutimento maior que 1 milímetro deve ser definida.', function () {
    let self = this;
    return messages.validaMensagem("Uma folga de embutimento maior que 1 milímetro deve ser definida.", self);
});

Then('e exibido a mensagem que Uma folga de embutimento maior que 1 milímetro deve ser definida e Uma orientação de embutimento deve ser selecionada.', function () {
    let self = this;
    printscreen.stepPrintScreen(self);
    expect(element(by.css("[name='embedding.panel.msg.error.invalid.embedding.offset']")).getText()).to.eventually.equal("Uma folga de embutimento maior que 1 milímetro deve ser definida.");
    return expect(element(by.css("[name='embedding.panel.msg.error.invalid.embedding.orientation']")).getText()).to.eventually.equal("Uma orientação de embutimento deve ser selecionada.");
});

/********* PREENCHIMENTO DE CAMPOS ************/
When('na Orientação seleciono a Origem {string} e removo as opções de orientação', function (string) {
    var origin = process.env.ORIGEM || string
    utils.addTextTags("[name='allowedOrientations.origin']", origin);
    utils.elementClick("[name='allowedOrientations.lwh']");
    utils.elementClick("[name='allowedOrientations.wlh']");
    utils.elementClick("[name='allowedOrientations.hwl']");
    utils.elementClick("[name='allowedOrientations.lhw']");
    utils.elementClick("[name='allowedOrientations.whl']");
    utils.elementClick("[name='allowedOrientations.hlw']");
    return utils.elementClick("[name='allowedOrientations.batchEdition']");
});

When('limpo o campo restrição de movimentação', function () {
    return utils.clearTextFieldXpath("//*[@name='specialPriority']/*[@name='tagInputTextField']");
});

When('seleciono as duas opções de embutimento, orientação {string} e folga {string}', function (string, string2) {
    utils.elementClick("[name='embeddingInfo.embeddable']");
    utils.elementClick("[name='embeddingInfo.embedder']");
    utils.fillTextxpath("//*[@name='embeddingInfo.orientation']/*[@name='tagInputTextField']", string);
    return utils.fillNumberXpath("//*[@name='embeddingInfo.offset']/*[@name='nlgNumberInput']", string2);
});

When('preenchido a folga de embutimento {string}', function (string) {
    return utils.fillNumberXpath("//*[@name='embeddingInfo.offset']/*[@name='nlgNumberInput']", string);
});

When('preencho a orientação de embutimento {string} e folga {string}', function (string, string2) {
    utils.clearTextFieldXpath("//*[@name='embeddingInfo.orientation']/*[@name='tagInputTextField']");
    utils.fillTextxpath("//*[@name='embeddingInfo.orientation']/*[@name='tagInputTextField']", string);
    return utils.fillNumberXpath("//*[@name='embeddingInfo.offset']/*[@name='nlgNumberInput']", string2);
});

When('preencho o valor maximo em carga {string}', function (string) {
    return utils.fillNumberXpath("//*[@name='maxLoad']/*[@name='nlgNumberInput']", string);
});

When('preencho a Porcentagem mínima de suporte para objeto {string}', function (string) {
    utils.elementClickXpath("//*[@name='entity.particularSupportObjectRestrictions']/*/*[@name='entity.particularSupportObjectRestrictions']");
    return utils.fillNumberXpath("//*[@name='percentageInput']/*[@name='nlgNumberInput']", string);
});

When('na Orientação seleciono a Origem {string} , incluo em todas orientações peso maximo {string}, emp para calculo {string}, Empilhamento maximo {string}', function (string, string2, string3, string4) {
    utils.fillTextxpath("//*[@name='allowedOrientations.origin']/*[@name='tagInputTextField']", string);
    utils.elementClickXpath("//*[@name='percentageInput']/*[@name='nlgNumberInput']");
    utils.fillNumberXpath("//*[@name='allowedOrientations.maxPressure.lwh']/*[@name='nlgNumberInput']", string2);
    utils.fillNumberXpath("//*[@name='allowedOrientations.maxPressure.wlh']/*[@name='nlgNumberInput']", string2);
    utils.fillNumberXpath("//*[@name='allowedOrientations.maxPressure.hwl']/*[@name='nlgNumberInput']", string2);
    utils.fillNumberXpath("//*[@name='allowedOrientations.maxPressure.lhw']/*[@name='nlgNumberInput']", string2);
    utils.fillNumberXpath("//*[@name='allowedOrientations.maxPressure.whl']/*[@name='nlgNumberInput']", string2);
    utils.fillNumberXpath("//*[@name='allowedOrientations.maxPressure.hlw']/*[@name='nlgNumberInput']", string2);
    utils.fillNumberXpath("//*[@name='allowedOrientations.maxPressureByStackSize.lwh']/*[@name='nlgNumberInput']", string3);
    utils.fillNumberXpath("//*[@name='allowedOrientations.maxPressureByStackSize.wlh']/*[@name='nlgNumberInput']", string3);
    utils.fillNumberXpath("//*[@name='allowedOrientations.maxPressureByStackSize.hwl']/*[@name='nlgNumberInput']", string3);
    utils.fillNumberXpath("//*[@name='allowedOrientations.maxPressureByStackSize.lhw']/*[@name='nlgNumberInput']", string3);
    utils.fillNumberXpath("//*[@name='allowedOrientations.maxPressureByStackSize.whl']/*[@name='nlgNumberInput']", string3);
    utils.fillNumberXpath("//*[@name='allowedOrientations.maxPressureByStackSize.hlw']/*[@name='nlgNumberInput']", string3);
    utils.fillNumberXpath("//*[@name='allowedOrientations.maxSelfPile.lwh']/*[@name='nlgNumberInput']", string4);
    utils.fillNumberXpath("//*[@name='allowedOrientations.maxSelfPile.wlh']/*[@name='nlgNumberInput']", string4);
    utils.fillNumberXpath("//*[@name='allowedOrientations.maxSelfPile.hwl']/*[@name='nlgNumberInput']", string4);
    utils.fillNumberXpath("//*[@name='allowedOrientations.maxSelfPile.lhw']/*[@name='nlgNumberInput']", string4);
    utils.fillNumberXpath("//*[@name='allowedOrientations.maxSelfPile.whl']/*[@name='nlgNumberInput']", string4);
    return utils.fillNumberXpath("//*[@name='allowedOrientations.maxSelfPile.hlw']/*[@name='nlgNumberInput']", string4);
});

When('seleciono todas as faces frágeis', function () {
    utils.elementClick("[name='fragileOrientations.lwh']");
    utils.elementClick("[name='fragileOrientations.wlh']");
    utils.elementClick("[name='fragileOrientations.hwl']");
    utils.elementClick("[name='fragileOrientations.lhw']");
    utils.elementClick("[name='fragileOrientations.whl']");
    return utils.elementClick("[name='fragileOrientations.hlw']");
});

When('seleciono o produto compativel {string}', function (string) {
    utils.fillTextxpath("//*[@name='incompatibleCategories']/*/*/*/*[@name='filterLeft']", string);
    utils.elementClick("[name='incompatibleCategories'] [name='ListLeft'] option[label='" + string + "']");
    return utils.elementClickXpath("//*[@name='incompatibleCategories']/*/*/*/*[@name='moveToRight']");
});

When('seleciono a Orientação {string} e Permitidos {string}', function (string, string2) {
    utils.fillTextxpath("//*[@name='directionsByOrientationsRestriction']/*[@name='tagInputTextField']", string);

    utils.fillTextxpath("//*[@name='blockedDirections']/*/*/*/*[@name='filterLeft']", string2);
    utils.elementClick("[name='blockedDirections'] [name='ListLeft'] option[label='" + string2 + "']");
    return utils.elementClickXpath("//*[@name='blockedDirections']/*/*/*/*[@name='moveToRight']");
});

When('seleciono a Restrição de movimentação {string}', function (string) {
    utils.clearTextFieldXpath("//*[@name='specialPriority']/*[@name='tagInputTextField']");
    return utils.fillTextxpath("//*[@name='specialPriority']/*[@name='tagInputTextField']", string);
});

When('seleciono a Permissão de desamarração de fardos', function () {
    return utils.elementClick("[name='entity.untiedPacksAllowed']");
});

When('seleciono a Restrição de empilhamento piramidal com valor {string}', function (string) {
    utils.elementClick("[name='pyramidStability']");
    return utils.fillNumberXpath("//*[@name='pyramidBaseMinimumPercent']/*[@name='nlgNumberInput']", string);
});

When('seleciono a Restrição Empilhamento do involucro acima não permitidos {string}', function (string) {
    utils.fillTextxpath("//*[@name='allowedPiledShipmentUnitWrapperAbove']/*/*/*/*[@name='filterLeft']", string);
    utils.elementClick("[name='allowedPiledShipmentUnitWrapperAbove'] [name='ListLeft'] option[label='" + string + "']");
    return utils.elementClickXpath("//*[@name='allowedPiledShipmentUnitWrapperAbove']/*/*/*/*[@name='moveToRight']");
});

When('seleciono a Restrição Empilhamento do involucro abaixo não permitidos {string}', function (string) {
    utils.fillTextxpath("//*[@name='allowedPiledShipmentUnitWrapperBelow']/*/*/*/*[@name='filterLeft']", string);
    utils.elementClick("[name='allowedPiledShipmentUnitWrapperBelow'] [name='ListLeft'] option[label='" + string + "']");
    return utils.elementClickXpath("//*[@name='allowedPiledShipmentUnitWrapperBelow']/*/*/*/*[@name='moveToRight']");
});

When('seleciono a Restrição de Empilhamento acima não permitidos {string}', function (string) {
    utils.fillTextxpath("//*[@name='allowedPiledProductCategoryWrapperAbove']/*/*/*/*[@name='filterLeft']", string);
    utils.elementClick("[name='allowedPiledProductCategoryWrapperAbove'] [name='ListLeft'] option[label='" + string + "']");
    return utils.elementClickXpath("//*[@name='allowedPiledProductCategoryWrapperAbove']/*/*/*/*[@name='moveToRight']");
});

When('seleciono a Restrição de Empilhamento abaixo não permitidos {string}', function (string) {
    utils.fillTextxpath("//*[@name='allowedPiledProductCategoryWrapperBellow']/*/*/*/*[@name='filterLeft']", string);
    utils.elementClick("[name='allowedPiledProductCategoryWrapperBellow'] [name='ListLeft'] option[label='" + string + "']");
    return utils.elementClickXpath("//*[@name='allowedPiledProductCategoryWrapperBellow']/*/*/*/*[@name='moveToRight']");
});

When('removo a folga de embutimento', function () {
    return utils.clearNumberFieldXpath("//*[@name='embeddingInfo.offset']/*[@name='nlgNumberInput']");
});

When('removo a orientação de embutimento', function () {
    return utils.clearTextFieldXpath("//*[@name='embeddingInfo.orientation']/*[@name='tagInputTextField']");
});

/********* CONFIGURAÇÃO E EXECUÇÃO DE FILTRO ************/
When('realizo o filtro da Categoria de produto com o codigo {string}', { timeout: 90 * 1000 }, function (string) {
    filter.configuraFiltro();
    utils.fillText("[name='tagInputTextField']", string);
    return utils.elementClick("[name='submitButton']");
});

/********* EXCLUSÃO DE REGISTRO ************/
Then('excluo o cadastro Categorias de Produto gerado no teste com o codigo {string}', function (string) {
    element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
    navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.productCategories']");
    filter.configuraFiltro();
    utils.fillText("[name='tagInputTextField']", string);
    utils.elementClick("[name='submitButton']");
    return filter.excluirPosFiltro(string);
});

Given('que cadastro a categoria de produto {string}', function (categoriaDeProduto) {
    return cadastre(categoriaDeProduto, categoriaDeProduto, categoriaDeProduto);
});

Given('que altero a classificação paletização para {string} da categoria de produto {string}', function (classification, productCategoryCode) {
    return fillProductCategoryClassification(classification, productCategoryCode);
});