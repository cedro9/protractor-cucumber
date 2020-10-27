"use strict";

const cadastreButton = "[name='cadastreButton']";
const saveButton = "[name='buttonSubmit']";
const okButton = "[name='buttonOk']";
const { getAddress } = require("../../scripts/possibleAddress");
const utils = require('../../scripts/utils'),
    fillBasicInfo = require("../../scripts/fillBasicEntity").fillBasicEntityInfo,
    filter = require("../../scripts/filter"),
    messages = require("../../scripts/messages");

module.exports = {
    cadastre,
    setDeliveryRestrictionClassification,
    updateDeliveryRestrictionClassification,
    setLeadTimes,
    setLocalityRestrictionAndShipper,
    geocodingByZipCode,
    geocodingByAddress,
    geocodingByCoordinates,
    setZipCode,
    setResponsable,
    setEmail,
    setCountry,
    setState,
    setCity,
    setStreet,
    setLatitude,
    setLongitude,
    setMixSKUsInTheSamePalletClassification,
    fillMixSKUsInTheSamePalletClassification,
    updateRestaurantCategoryClassification,
    setLogisticRole,
    setLocalityRestriction,
    fillAddress
};

function cadastre(code, name, description, logisticRole, hub, localityRestriction, zipCode) {
    navigate.to("Cadastro", "Localidades");
    var countBeforeInsertionPromise = filter.filterBySourceIdAndGetCount(code);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 0) {
            utils.elementClick(cadastreButton);
            fillBasicInfo(code, name, description);
            setLogisticRole(logisticRole);
            setHub(hub);
            setLocalityRestriction(localityRestriction);
            fillAddress(zipCode);
            utils.elementClick(saveButton);
            messages.validaMensagem("A entidade foi salva com sucesso.");
            return utils.elementClick("[name='buttonOk']");
        };
    });
};

function setResponsable(responsable) {
    return utils.fillText("[name='contact.name']", responsable);
};

function setEmail(email) {
    return utils.fillText("[name='contact.email']", email);
};

function setLocalityRestrictionAndShipper(localityRestriction, shipper) {
    return utils.addTextTags("[name='" + shipper + "'] [name='localityRestrictionByShipper']", localityRestriction);
};

function setLeadTimes(leadTime) {
    return utils.addTextTags("[name='leadTime']", leadTime);
};

function setDeliveryRestrictionClassification(classification) {
    const classificationType = "Restrição de Entrega",
        classificationFilter = classification,
        classificationSelection = classification;
    return utils.fillClassification(classificationType, classificationFilter, classificationSelection);
};
// function setDeliveryRestrictionClassification(classification) {
//     return setDeliveryRestrictionClassification(classification);
// };

function updateDeliveryRestrictionClassification(localityCode, classification) {
    navigate.to("Cadastro", "Localidades");
    var countBeforeInsertionPromise = filter.filterBySourceIdAndGetCount(localityCode);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 1) {
            utils.elementClick("[name='editButton']");
            navigateToTab("[name='classifications']");
            setDeliveryRestrictionClassification(classification);
            utils.elementClick(saveButton);
            // messages.validaMensagem("A entidade foi salva com sucesso.");
            return utils.elementClick(okButton);
        }
    });
};

function setDeliveryRestrictionClassification(classificationFilter) {
    if (process.env.CLIENT_NAME === "mcb") {
        const classificationType = "Restrição de Entrega",
            classificationSelection = "(" + classificationType + ") " + classificationFilter + " - " + classificationFilter;
        return utils.fillClassification(classificationType, classificationFilter, classificationSelection);
    }
};

function setLogisticRole(logisticRole) {
    return utils.addTextTags("[name='logisticRole']", logisticRole);
};

function setLocalityRestriction(localityRestriction) {
    return utils.addTextTags("[name='localityRestriction']", localityRestriction);
};

function setHub(hub) {
    if (hub !== null) {
        return utils.elementClick(hub);
    };
};

function setCountry(country) {
    return utils.addTextTags("[name='address.country']", country);
};

function setState(state) {
    return utils.addTextTags("[name='address.state']", state);
};

function setCity(city, cityWithUF) {
    return city ? utils.comboSearchAndSelect("[name='address.city']", city, cityWithUF) : ""
};

function setZipCode(zipCode) {
    return utils.fillText("[name='address.zipCode.value']", process.env.CLIENT_NAME === 'whp-mex' ? zipCode === '08061-020' ? "88660" : "38800" : zipCode);
};

function navigateToTab(tab) {
    return utils.elementClick(tab);
};

function geocodingByZipCode() {
    utils.elementClick("[name='validateAddressByZipCode']");
    return addressSelection();
};

function geocodingByAddress() {
    return utils.elementClick("[name='validateAddressByAddress']");
};

function geocodingByCoordinates() {
    utils.elementClick("[name='validateAddressByCoordinates']");
    return addressSelection();
};

function addressSelection() {
    return element(by.css("[name='addressSelection']")).isPresent().then(function (isPresent) {
        if (isPresent) {
            utils.elementClick("[name='addressSelectionNumber0'] [name='addressSelectionRadio']");
            return utils.elementClick("[name='buttonApply']");
        };
    });
};

function setStreet(street) {
    utils.clearTextField("[name='address.street']");
    return utils.fillText("[name='address.street']", street);
};

function setLongitude(longitude) {
    return utils.fillNumber("[name='address.geographicInfo.longitude']", longitude)
};

function setLatitude(latitude) {
    return utils.fillNumber("[name='address.geographicInfo.latitude']", latitude)
};

function setMixSKUsInTheSamePalletClassification(classification, destinationLocalityCode) {
    navigate.to("Cadastro", "Localidades");
    var countBeforeInsertionPromise = filter.filterBySourceIdAndGetCount(destinationLocalityCode);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 1) {
            utils.elementClick("[name='editButton']");
            utils.elementClick("[name='classifications']");
            fillMixSKUsInTheSamePalletClassification(classification);
            utils.elementClick(saveButton);
            messages.validaMensagem("A entidade foi salva com sucesso.");
            return utils.elementClick(okButton);
        }
    });
};

function fillMixSKUsInTheSamePalletClassification(classificationFilter) {
    const classificationType = "Misturar SKUs no mesmo palete",
        classificationSelection = "(Misturar SKUs no mesmo palete) Não - Não";
    return utils.fillClassification(classificationType, classificationFilter, classificationSelection);
};

function setNumber(number) {
    return utils.fillText("[name='address.number']", number);
};

function setComplement(complement) {
    return utils.fillText("[name='address.complement']", complement);
};

function setDistrict(district) {
    return utils.fillText("[name='address.district']", district);
};

function fillAddress(zipCode) {
    const address = getAddress(zipCode);
    setCountry(address[0].country);
    setState(address[0].state);
    setCity(address[0].city.search, address[0].city.select);
    setStreet(address[0].street);
    setNumber(address[0].number);
    setComplement(address[0].complement);
    setZipCode(address[0].zipCode);
    setLatitude(address[0].latitude);
    setLongitude(address[0].longitude);
    return setDistrict(address[0].district);
};

function setRestaurantCategoryClassification(classification) {
    const classificationType = "Categoria de Restaurante",
        classificationFilter = classification,
        classificationSelection = "(Categoria de Restaurante) " + classification + " - " + classification;
    return utils.fillClassification(classificationType, classificationFilter, classificationSelection);
};

function updateRestaurantCategoryClassification(localityCode, classification) {
    navigate.to("Cadastro", "Localidades");
    var countBeforeInsertionPromise = filter.filterBySourceIdAndGetCount(localityCode);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 1) {
            utils.elementClick("[name='editButton']");
            navigateToTab("[name='classifications']");
            setRestaurantCategoryClassification(classification);
            utils.elementClick(saveButton);
            messages.validaMensagem("A entidade foi salva com sucesso.");
            return utils.elementClick(okButton);
        }
    });
};