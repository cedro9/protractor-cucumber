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

const page = require("../pages/cadastre/localityPage");

/********* ACESSO A TELA ************/
Given('acesso a tela de Cadastro Localidade', function () {
    return navigate.acessoTelaCadastro("[name='menu-userMenu.cadastre']", "[href='#/access/entity/localities']");
});

Given('que estou na tela de pesquisa de Localidade', function () {
    return navigate.acessoTela("[name='menu-userMenu.cadastre']", "[href='#/access/entity/localities']");
});

/********* BOTÕES ************/
When('geolocalizo pelo CEP', function () {
    return page.geocodingByZipCode();
});

When('geolocalizo pelo endereço', function () {
    return page.geocodingByAddress();
});

When('geolocalizo pelas coordenadas', function () {
    return page.geocodingByCoordinates();
});

/********* VALIDAÇÃO MENSAGENS ************/
Then('e exibido a mensagem O campo tipo deve ser preenchido', function () {
    let self = this;
    return messages.validaMensagem("O campo tipo deve ser preenchido", self);
});

Then('e exibido a mensagem A restrição de localidade não pode ser nula.', function () {
    let self = this;
    return messages.validaMensagem("A restrição de localidade não pode ser nula.", self);
});

Then('é exibido a mensagem A rua deve ser preenchida.', function () {
    let self = this;
    return messages.validaMensagem("A rua deve ser preenchida.", self);
});

Then('é exibido a mensagem O campo CEP deve ser preenchido', function () {
    let self = this;
    return messages.validaMensagem("O campo CEP deve ser preenchido", self);
});

Then('é exibido a mensagem Cidade inválida. A cidade deve ser preenchida. e O campo estado deve ser preenchido', function () {
    let self = this;
    expect(element(by.css("[name='entity.validator.EmptyCity']")).getText()).to.eventually.equal("Cidade inválida. A cidade deve ser preenchida.");
    return expect(element(by.css("[name='entity.validator.NullState']")).getText()).to.eventually.equal("O campo estado deve ser preenchido");
});

Then('é exibido a mensagem Cidade inválida. A cidade deve ser preenchida.', function () {
    let self = this;
    return messages.validaMensagem("Cidade inválida. A cidade deve ser preenchida.", self);
});

Then('é exibido a mensagem A localidade está em uso como local de origem das seguintes localidades: Localidade22', function () {
    var expectedMessage = "A localidade está em uso como local de origem das seguintes localidades: Localidade22";
    return messages.validaParteDaMensagem(expectedMessage);
});

Then('é exibido a mensagem A localidade está em uso como local de destino das seguintes localidades: Localidade23', function () {
    var expectedMessage = "A localidade está em uso como local de destino das seguintes localidades: Localidade23";
    return messages.validaParteDaMensagem(expectedMessage);
});

Then('é exibido a mensagem A latitude não pode ser nula.', function () {
    let self = this;
    return messages.validaMensagem("A latitude não pode ser nula.", self);
});

/********* PREENCHIMENTO DE CAMPOS ************/
When('seleciono o tipo de localidade {string}', function (string) {
    utils.clearTextFieldXpath("//*[@name='logisticRole']/*[@name='tagInputTextField']");
    return utils.fillTextxpath("//*[@name='logisticRole']/*[@name='tagInputTextField']", string);
});

When('seleciono a restrição geral {string}', function (string) {
    return utils.fillTextxpath("//*[@name='localityRestriction']/*[@name='tagInputTextField']", string);
});

When('seleciono o tempo de espera {string}', function (leadTime) {
    return page.setLeadTimes(leadTime);
});

When('seleciono a restrição por embarcador {string}', function (string) {
    return utils.fillTextxpath("//*[@name='DEF']/*[@name='localityRestrictionByShipper']/*/*/*[@name='tagInputTextField']", string);
});

When('seleciono a restrição {string} para o embarcador {string}', function (localityRestriction, shipper) {
    return page.setLocalityRestrictionAndShipper(localityRestriction, shipper);
});

When('seleciono o Pais {string}, estado {string} e cidade {string}', function (string, string2, string3) {
    var country = string,
        state = string2,
        city = string3;
    if (process.env.CLIENT_NAME === 'whp-mex') {
        country = "México";
        state = "Guanajuato";
        city = "Moroleón";
    }
    return page.setCountry(country)
        .then(() => {
            page.setState(state);
        }).then(() => {
            return page.setCity(city.slice(0, -5), city);
        });
});

When('seleciono o país {string}', function (country) {
    return page.setCountry(country);
});

When('preencho o CEP {string}', function (zipCode) {
    return page.setZipCode(zipCode);
});

When('preencho o responsavel {string} e email {string}', function (responsable, email) {
    page.setResponsable(responsable);
    return page.setEmail(email);
});

When('seleciona Hub de Destino', function () {
    return utils.elementClick("[name='localityDestinationHub']");
});

When('seleciona HUB de Passagem', function () {
    return utils.elementClickXpath("//*[@name='localityPassingHub']");
});

When('preencho o endereço {string}', function (street) {
    return page.setStreet(street);
});

When('apago o campo Estado', function () {
    return utils.clearTextFieldXpath("//*[@name='address.state']/*[@name='tagInputTextField']");
});

When('apago o campo Cidade', function () {
    return utils.clearTextFieldXpath("//*[@name='address.city']/*[@name='tagInputTextField']");
});

When('seleciono local de origem {string}', function (string) {
    return utils.fillTextxpath("//*[@name='physicalLocality']/*[@name='tagInputTextField']", string);
});

When('seleciono local de destino {string}', function (string) {
    return utils.fillTextxpath("//*[@name='preferredDestination']/*[@name='tagInputTextField']", string);
});

When('altero a classificação restrição de entrega da localidade {string} para {string}', function (locality, classification) {
    return page.updateDeliveryRestrictionClassification(locality, classification);
});

Given('que cadastro a origem {string} com a restrição de localidade {string} e Cep {string}', function (origin, localityRestriction, zipCode) {
    var logisticRole = "Ambos",
        hub = null;
    return page.cadastre(origin, origin, origin, logisticRole, hub, localityRestriction, zipCode);
});

Given('que cadastro o destino {string} com a restrição de localidade {string} e Cep {string}', function (destination, localityRestriction, zipCode) {
    var logisticRole = "Destino",
        hub = null;
    return page.cadastre(destination, destination, destination, logisticRole, hub, localityRestriction, zipCode);
});

Given('que cadastro a localidade {string} com papel logistico destino com a restrição de localidade {string} e Cep {string}', function (destination, localityRestriction, zipCode) {
    var logisticRole = "Destino",
        hub = null;
    return page.cadastre(destination, destination, destination, logisticRole, hub, localityRestriction, zipCode);
});

Given('que cadastro o hub de passagem {string} com a restrição de localidade {string} e Cep {string}', function (passingHub, localityRestriction, zipCode) {
    var logisticRole = "Ambos",
        hub = "[name='localityPassingHub']";
    return page.cadastre(passingHub, passingHub, passingHub, logisticRole, hub, localityRestriction, zipCode);
});

Given('que cadastro o hub de destino {string} com a restrição de localidade {string} e Cep {string}', function (destinationHub, localityRestriction, zipCode) {
    var logisticRole = "Ambos",
        hub = "[name='localityDestinationHub']";
    return page.cadastre(destinationHub, destinationHub, destinationHub, logisticRole, hub, localityRestriction, zipCode);
});

When('preencho a longitude {string}', function (longitude) {
    return page.setLongitude(longitude);
});

When('preencho a latitude {string}', function (latitude) {
    return page.setLatitude(latitude);
});

Given('que altero a classificação misturar SKUs no mesmo palete {string} da localidade de destino {string}', function (classification, destinationLocalityCode) {
    return page.setMixSKUsInTheSamePalletClassification(classification, destinationLocalityCode);
});

When('altero a classificação categoria de restaurante da localidade {string} para {string}', function (code, classification) {
  return page.updateRestaurantCategoryClassification(code, classification);
});