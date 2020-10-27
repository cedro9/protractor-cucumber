"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);

//Transformar const em arquivo yml

const utils = require('../../scripts/utils'),
    filter = require('../../scripts/filter'),
    messages = require("../../scripts/messages"),
    navigate = require("../../scripts/navigate"),
    fillBasicEntity = require("../../scripts/fillBasicEntity"),
    localityRestrictionPage = require("../cadastre/localityRestrictionPage"),
    localityPage = require("../cadastre/localityPage"),
    cadastreButton = "[name='cadastreButton']",
    saveButton = "[name='buttonSubmit']",
    okButton = "[name='buttonOk']",
    buttonApply = "[name='buttonApply']",
    submitButton = "[name='submitButton']",
    addButton = "[name='buttonAdd+0']",
    tabFunctioning = "[name='functioning']",
    locationRestriction = 'RESTLOCDEPLGPD',
    location = 'LOCDEPLGPD',
    logisticRole = 'Destino',
    cep = '78515-000',
    validMenssages = 'A entidade foi salva com sucesso.',
    cadastreMenu = 'Cadastro',
    administrationMenu = 'Administração',
    subMenuLocationRestriction = 'Restrições de localidade',
    subMenuLocation = 'Localidades',
    subMenulgpdEntity = 'Entidades';

module.exports = {
    fillLocationRestriction,
    fillLocality,
    fillLgpdEntity
};

function fillLocationRestriction() {
    navigate.to(cadastreMenu, subMenuLocationRestriction);
    var countBeforeInsertionPromise = filter.filterBySourceIdAndGetCount(locationRestriction);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 0) {
            utils.elementClick(cadastreButton);
            fillBasicEntity.fillBasicEntityInfo(locationRestriction, locationRestriction, locationRestriction);
            utils.elementClick(tabFunctioning);
            localityRestrictionPage.setTimeCalculatorLoadUnload();
            localityRestrictionPage.setLoadUnloadTimeCalculatorScript();
            utils.elementClick(saveButton);
            messages.validaMensagem(validMenssages);
            return utils.elementClick(okButton);
        }
    });
};

function fillLocality() {
    navigate.to(cadastreMenu, subMenuLocation);
    var countBeforeInsertionPromise = filter.filterBySourceIdAndGetCount(location);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 0) {
            utils.elementClick(cadastreButton);
            fillBasicEntity.fillBasicEntityInfo(location, location, location);
            localityPage.setLogisticRole(logisticRole);
            localityPage.setLocalityRestriction(locationRestriction);
            localityPage.fillAddress(cep);
            utils.elementClick(saveButton);
            messages.validaMensagem(validMenssages);
            return utils.elementClick(okButton);
        };
    });
};

function fillLgpdEntity(entity, field) {
    navigate.to(administrationMenu, subMenulgpdEntity);
    var countBeforeInsertionPromise = filterLgpdEntityAndGetCount(entity, field);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 0) {
            utils.elementClick(cadastreButton);
            setLgpdEntity(entity, field);
            utils.elementClick(saveButton);
            messages.validaMensagem(validMenssages);
            return utils.elementClick(okButton);
        };
    });
};

function setLgpdEntity(entity, field){}

function filterLgpdEntityAndGetCount(entity, field) {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Entidade", "Entidade");
    utils.elementClick(addButton);
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Campo", "Campo");
    utils.elementClick(buttonApply);
    utils.addTextTags("[name='Entidade-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", entity);
    utils.addTextTags("[name='Campo-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", field);
    utils.elementClick(submitButton);
    return element.all(by.css("[name='searchResultTable'] tbody tr")).count();
};

// function fillLocality(zipCode) {
//     const address = getLocality(zipCode);
//     setCountry(address[0].country);
//     setState(address[0].state);
//     setCity(address[0].city.search, address[0].city.select);
//     setStreet(address[0].street);
//     setNumber(address[0].number);
//     setComplement(address[0].complement);
//     setZipCode(address[0].zipCode);
//     setLatitude(address[0].latitude);
//     setLongitude(address[0].longitude);
//     return setDistrict(address[0].district);
// };
