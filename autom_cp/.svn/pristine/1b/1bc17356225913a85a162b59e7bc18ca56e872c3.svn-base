"use strict";

var { Given, When, Then } = require("cucumber");

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect;

var utils = require('../scripts/utils');
var wait = require("../scripts/wait");
var filter = require("../scripts/filter");
var navigate = require("../scripts/navigate");
var printscreen = require("../scripts/printScreen");
var messages = require("../scripts/messages");
const shipmentUnitWrappers = require('../pages/shipmentUnitWrappersPage');

/********* ACESSO A TELA ************/
Given('acesso a tela de cadastro Involucros UE', function () {
    return navigate.acessoTelaCadastro("[name='menu-userMenu.administration']", "[name='subMenu-userMenu.wrappersEU']");
});

Given('que estou na tela de pesquisa Involucros UE', function () {
    return navigate.acessoTela("[name='menu-userMenu.administration']", "[name='subMenu-userMenu.wrappersEU']");
});

/********* BOTÕES ************/
Then('clico no botão Alterar em Bloco', function () {
    return utils.elementClick("[name='allowedOrientations.batchEdition']");
});

/********* PREENCHIMENTO DE CAMPOS ************/
When('preencho valor {string}, Peso {string} e Categoria {string}', function (string, string2, string3) {
    utils.fillNumber("[name='value']", string);
    utils.fillNumber("[name='weight']", string2);
    return utils.addTextTags("[name='shipmentUnitWrapperCategory']", string3);
});

When('em Politica, preencho os campos Obter Peso por {string}, Obter Valor por {string} e Obter dimensões por {string}', function (string, string2, string3) {
    utils.addTextTags("[name='shipmentUnitPolicies.weightPolicyType']", string);
    utils.addTextTags("[name='shipmentUnitPolicies.valuePolicyType']", string2);
    return utils.addTextTags("[name='shipmentUnitPolicies.externalShipmentUnitDimensionPolicyType']", string3);
});

When('em Politica, preencho os campos Obter orientações por {string}, Obter peso máximo por orientação por {string} e Obter faces frágeis por {string}', function (string, string2, string3) {
    utils.addTextTags("[name='shipmentUnitPolicies.allowedOrientationsPolicyType']", string);
    utils.addTextTags("[name='shipmentUnitPolicies.maxWeightByAllowedOrientationPolicyType']", string2);
    return utils.addTextTags("[name='shipmentUnitPolicies.fragileOrientationsPolicyType']", string3);
});

When('em Politica, preencho os campos Obter empilhamento máximo de si por {string}, Obter empilhamento por {string} e Obter direções de carregamento e descarregamento por {string}', function (string, string2, string3) {
    utils.addTextTags("[name='shipmentUnitPolicies.maxPiledByAllowedOrientationPolicyType']", string);
    utils.addTextTags("[name='shipmentUnitPolicies.allowedPiledPolicyType']", string2);
    return utils.addTextTags("[name='shipmentUnitPolicies.loadDirectionShipmentUnitPolicyType']", string3);
});

When('em Politica, preencho os campos Obter regras de movimentação por {string}, Obter mínimo suporte para objeto por {string} e Obter embutimento por {string}', function (string, string2, string3) {
    utils.addTextTags("[name='shipmentUnitPolicies.specialPriorityShipmentUnitPolicyType']", string);
    utils.addTextTags("[name='shipmentUnitPolicies.minPercentageSupportObjectPolicyType']", string2);
    return utils.addTextTags("[name='shipmentUnitPolicies.embeddingInfoShipmentUnitPolicyType']", string3);
});

When('em Politica, preencho os campos Permitir desamarração {string} e Arranjo em carga {string}', function (string, string2) {
    utils.addTextTags("[name='shipmentUnitPolicies.untiePacksShipmentUnitPolicyType']", string);
    return utils.addTextTags("[name='shipmentUnitPolicies.internalArrangementPolicyType']", string2);
});

When('preencho as Dimensões do suporte Altura {string}, Largura {string} e Comprimento {string}', function (string, string2, string3) {
    utils.elementClick("[name='useSupportDimensions']");
    utils.fillNumber("[name='height']", string);
    utils.fillNumber("[name='width']", string2);
    return utils.fillNumber("[name='length']", string3);
});

When('Dimensões máximas internas Altura {string}, Largura {string} e Comprimento {string}', function (string, string2, string3) {
    utils.elementClick("[name='useMaxInternalDimensions']");
    utils.fillNumber("[name='maxInternalHeight']", string);
    utils.fillNumber("[name='maxInternalWidth']", string2);
    return utils.fillNumber("[name='maxInternalLength']", string3);
});

When('Dimensões máximas externas Altura {string}, Largura {string} e Comprimento {string}', function (string, string2, string3) {
    utils.elementClick("[name='useMaxExternalDimensions']");
    utils.fillNumber("[name='maxExternalHeight']", string);
    utils.fillNumber("[name='maxExternalWidth']", string2);
    return utils.fillNumber("[name='maxExternalLength']", string3);
});

When('preencho as informações de embutimento Orientação de embutimento {string} e Folga de embutimento {string}', function (string, string2) {
    utils.elementClick("[name='entity.useEmbedding']");
    utils.elementClick("[name='embeddingInfo.embeddable']");
    utils.elementClick("[name='embeddingInfo.embedder']");
    utils.addTextTags("[name='embeddingInfo.orientation']", string);
    return utils.fillNumber("[name='embeddingInfo.offset']", string2);
});

When('preencho a Restrições de suporte de objeto {string}', function (string) {
    utils.elementClick("[name='entity.useSupportObjectRestrictions']");
    return utils.fillText("[name='minPercentageSupportObject']", string);
});

When('na Orientação de Involucros seleciono a Origem {string} , incluo em todas orientações peso maximo {string}, emp para calculo {string}, Empilhamento maximo {string}', function (origin, maxWeight, maxWeightForStacking, quantity) {
    shipmentUnitWrappers.setAllowedOrientationsByOrigin(origin);
    shipmentUnitWrappers.setMaxPressureForAllAllowedOrientations(maxWeight);
    shipmentUnitWrappers.setMaxPressureByStackSizeForAllAllowedOrientations(maxWeightForStacking);
    return shipmentUnitWrappers.setMaxSelfPileForAllAllowedOrientations(quantity);
});

When('seleciono a Configurações para Carregamento-Descarregamento do Involucro {string}', function (value) {
    return shipmentUnitWrappers.setUnblockedLoadDirectionRestrictions(value);
});

When('seleciono a regra dos itens fracionados Política de fracionamento {string}', function (string) {
    return utils.addTextTags("[name='fractionProperties.fractionationPolicy']", string);
});

When('seleciono a regra dos itens fracionados Política de fracionamento {string} e Invólucro da parte fracionária do item {string}', function (string, string2) {
    utils.addTextTags("[name='fractionProperties.fractionationPolicy']", string);
    return utils.addTextTags("[name='fractionProperties.fractionationWrapper']", string2);
});

When('apago a regra dos itens fracionados Política de fracionamento', function () {
    return utils.clearCombo("[name='fractionProperties.fractionationPolicy']");
});

When('seleciono o Empilhamento acima de invólucros de UE nao permitido {string}', function (shipmentUnit) {
    return shipmentUnitWrappers.setAllowedPiledShipmentUnitWrapperOnTop(shipmentUnit);
});

When('seleciono o Empilhamento abaixo de invólucros de UE nao permitido {string}', function (shipmentUnit) {
    return shipmentUnitWrappers.setAllowedPiledShipmentUnitWrapperBelow(shipmentUnit);
});

When('seleciono o Empilhamento acima de categorias de produto nao permitido {string}', function (productCategory) {
    return shipmentUnitWrappers.setAllowedPiledProductCategoryAbove(productCategory);
});

When('seleciono o Empilhamento abaixo de de categorias de produto nao permitido {string}', function (productCategory) {
    return shipmentUnitWrappers.setAllowedPiledProductCategoryBelow(productCategory);
});

When('seleciono o Involucro simples', function () {
    return utils.elementClick("[name='simple']");
});

When('seleciono o Involucro composto', function () {
    return utils.elementClick("[name='composite']");
});

When('preencho os Limites para itens internos Volume mínimo {string}, Volume máximo {string}, Peso mínimo {string}, Peso máximo {string}, Valor mínimo {string}, Valor máximo {string}, Quantidade mínima {string} e Quantidade máxima {string}', function (string, string2, string3, string4, string5, string6, string7, string8) {
    utils.fillNumber("[name='minVolume']", string);
    utils.fillNumber("[name='maxVolume']", string2);
    utils.fillNumber("[name='minWeight']", string3);
    utils.fillNumber("[name='maxWeight']", string4);
    utils.fillNumber("[name='minValue']", string5);
    utils.fillNumber("[name='maxValue']", string6);
    utils.fillNumber("[name='minQuantity']", string7);
    return utils.fillNumber("[name='maxQuantity']", string8);
});

When('preencho Limites para quantidades Categoria de invólucro {string}, Min {string} e Max {string}', function (string, string2, string3) {
    utils.elementClick("[name='entity.useQuantityByCategory']");
    utils.elementClick("[name='quantityByCategory'] [name='add']");
    utils.addTextTags("[name='wrapperCategory']", string);
    utils.fillNumber("[name='minColumn']", string2);
    return utils.fillNumber("[name='maxColumn']", string3);
});

When('seleciono as Restrições de categorias de invólucro compativeis {string}', function (wrapperCategory) {
    return shipmentUnitWrappers.setIncompatibleWrapperCategories(wrapperCategory);
});

When('seleciona as Restrições para invólucros de unidades de embarque {string}', function (shipmentUnit) {
    return shipmentUnitWrappers.setIncompatibleShipmentUnitWrappers(shipmentUnit);
});

When('seleciono a Restrições para categoria de produtos compativeis {string}', function (productCategory) {
    return shipmentUnitWrappers.setIncompatibleProductCategories(productCategory);
});

When('seleciono a Restrições de compatibilidade {string}', function (product) {
    return shipmentUnitWrappers.setIncompatibleProducts(product);
});

When('preencho Restrições gerais {string}, Min {string} e Max {string}', function (product, minQuantity, maxQuantity) {
    return shipmentUnitWrappers.setQuantityMaxAndMinByProduct(product, minQuantity, maxQuantity);
});

Given('que cadastro o invólucro {string} com politicas definidas no produto', function (involucro) {
    return shipmentUnitWrappers.cadastreSimpleWrapperByProduct(involucro, involucro, involucro);
});

Given('que cadastro o invólucro {string} com politicas definidas no item', function (involucro) {
    return shipmentUnitWrappers.cadastreSimpleWrapperByOrderItem(involucro, involucro, involucro);
});

Given('que cadastro o invólucro composto {string}', function (involucro) {
    return shipmentUnitWrappers.cadastreCompositeWrapper(involucro, involucro, involucro);
});

Given('que cadastro o invólucro composto {string}, com categoria específica {string}', function (involucro, categoria) {
    return shipmentUnitWrappers.cadastreCompositeWrapperWithEspecificCategory(involucro, involucro, involucro, categoria);
});

Given('que duplico uma categoria de invólucro {string}, cocolocando o nome {string}', function (categoriaAntiga, novaCategoria) {
    return shipmentUnitWrappers.duplicateWrapperCategory(categoriaAntiga, novaCategoria, novaCategoria, novaCategoria);
});

Given('que excluo uma categoria de invólucro {string}', function (categoria) {
    return shipmentUnitWrappers.removeWrapperCategory(categoria);
});