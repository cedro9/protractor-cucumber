"use strict";

const menu = "Programação",
    subMenu = "Análise",
    generalBasket = "[selection='selection.availableDeliveryUnits']",
    userBasket = "[selection='selection.deliveryUnits']",
    tripBasket = "[selection='selection.tripBasket']",
    orderHeader = " [data-node-type='Order']",
    tripHeader = " [data-node-type='Trip']",
    compositeDeliveryUnitHeader = " [data-node-type='CompositeDeliveryUnit']",
    moveToUserBasketButton = "[name='moveToUserBasketButton']",
    tripGearButton = "[selection='selection.tripBasket']" + " [name='nlgAnalysisTreeActions']",
    cancelButton = "[name='cancel']",
    okButton = "[name='buttonOk']",
    saveButton = "[name='buttonSave']",
    submitButton = " [name='submitButton']",
    tripButton = "[name='tripDropdown']",
    releaseTripMenu = "[name='releaseTripButton']",
    cancelOfferButton = "[name='cancelOfferButton']",
    serveTripMenu = "[name='serveTrip']",
    unserveTripMenu = "[name='unserveTrip']",
    reprogrammingTripMenu = "[name='unreleaseTripButton']",
    cancelSelectedTripsMenu = "[name='cancelSelectedTrips']",
    analysisTreeCheckBox = " [name='nlgAnalysisTreeCheckBox']",
    moveToAvailableBasketButton = "[name='moveToAvailableBasket']",
    justificationModal = "[name='defaultJustificationForTrips']",
    reasonJustification = "Teste automatizado",
    reasonModal = "[name='model.reason']";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect,
    assert = chai.assert;
const moment = require('moment');

const utils = require('../scripts/utils'),
    messages = require("../scripts/messages"),
    elementClick = utils.elementClick,
    addTextTags = utils.addTextTags,
    fillText = utils.fillText,
    navigate = require("../scripts/navigate"),
    filter = require("../scripts/filter"),
    transfer = require('../scripts/transferPanel'),
    fillCombo = utils.fillCombo,
    present = require("../scripts/wait").present,
    dblClick = require("../scripts/events").dblClick,
    fillBasicInfo = require("../scripts/fillBasicEntity").fillBasicEntityInfo,
    scroll = require("../scripts/scroll"),
    taginput = require("../scripts/taginput"),
    moveLeftToRigth = transfer.moveLeftToRigth,
    moveRigthToLeft = transfer.moveRigthToLeft,
    moveToPreValidator = transfer.moveToPreValidator,
    validaMensagem = require("../scripts/messages").validaMensagem,
    selectOrderOrTrip = utils.selectOrderOrTrip;

const generateLoadingSchedule = (code, destination) => {
    clickScheduleButton();
    utils.elementClick("[name='nlgScheduleLoading']");
    setDestination(destination);
    utils.elementClick("[name='selectAll']");
    suggestSchedule();
    utils.elementClick("[name='buttonOk']");
    utils.elementClick("[name='messagesModal'] [name='buttonSave']");
    return utils.elementClick("[name='buttonOk']");
};

module.exports = {
    releaseTrip,
    serveTrip,
    reprogrammingTrip,
    unserveTrip,
    searchGeneralBasket,
    searchUserBasket,
    searchTripBasket,
    createTrip,
    cancelTrip,
    cancelTripWithContext,
    toDestroyCompositeDeliveryUnit,
    moveOrdersToGeneralBasket,
    moveToAvailableBasket,
    selectOrderInBasket,
    getTripCode,
    setCarrier,
    setVehicle,
    moveAllPagesToAvailable,
    moveAllPagesToUser,
    organizeAllPages,
    unitizeButton,
    changeViewToShipmentUnitByTrips,
    changeViewToSchedule,
    changeViewByDestination,
    moveToUserBasketButtonClick,
    cancelTenderingTrip,
    confirmSelectedContext,
    assertHeaderHasNoCompositeShipmentUnitWrapper,
    assertCompositeShipmentUnitWrapperHeaderIspresent,
    changeViewToShipmentUnitView,
    setRoutingContext,
    selectAllOrders,
    changeDestinationsTo,
    autoAdjustLocalityWithViolation,
    setRestrictions,
    confirmsTripCreation,
    autoAdjustLocalityWithViolation,
    assertWeekDayIsEqual,
    searchGeneralBasket,
    searchUserBasket,
    searchTripBasket,
    moveSelectionToTrip,
    useRestrictions,
    offerTripToCarrier,
    offerTripToPool,
    generateLoadingSchedule,
    optimizeAllPages,
    setClassification,
    assertArrivalTime,
    setClassification,
    setHourScheduleDate,
    setMinuteScheduleDate,
    setScheduleDate,
    setHourExpeditionDate,
    setMinuteExpeditionDate,
    setExpeditionDate,
    generateLoadingSchedule,
    clickBatchEditDate,
    clickBatchEditExpeditionDate,
    clickSelectAll,
    setDestinationScheduler,
    setOriginsSheduler
};

function suggestSchedule() {
    utils.elementClick("[name='suggestSchedule']");
    utils.elementClick("[name='buttonOk']");
    utils.elementClick("[name='buttonOk']");
    return utils.elementClick("[name='buttonSave']");
};

function createTrip(orderCode) {
    navigate.to("Programação", "Análise");
    searchGeneralBasket(orderCode);
    selectOrderInBasket(generalBasket);
    moveToUserBasketButtonClick();
    searchUserBasket(orderCode);
    organizeAllPages();
    autoAdjustLocalityWithViolation();
    confirmSelectedContext();
    utils.elementClick(okButton);
    return utils.elementClick(saveButton);
};

function cancelTrip() {
    getTripStatus().then(function (tripStatus) {
        if (tripStatus === "Liberada") {
            reprogrammingTrip(orderCode);
        }
    });
    selectTrips();
    utils.elementClick(cancelButton);
    utils.elementClick(cancelSelectedTripsMenu);
    toDestroyCompositeDeliveryUnit();
    confirmSelectedContext();
    setCancellingJustification();
    return utils.elementClick(okButton);
};

function cancelTripWithContext(context) {
    getTripStatus().then(function (tripStatus) {
        if (tripStatus === "Liberada") {
            reprogrammingTrip(orderCode);
        }
    });
    selectTrips();
    utils.elementClick(cancelButton);
    utils.elementClick(cancelSelectedTripsMenu);
    toDestroyCompositeDeliveryUnit();
    element(by.css("[name='overridableGenericParamsRoutingSelectionDialog']"))
        .isPresent().then(function (isPresent) {
            if (isPresent) {
                addTextTags("[name='routingConfigInput']", context);
                return elementClick("[name='buttonOk']");
            }
        });
    confirmSelectedContext();
    setCancellingJustification();
    return utils.elementClick(okButton);
};

function moveOrdersToGeneralBasket(code) {
    let countBeforeMovePromise = filterUserBasketByOrderCodeAndGetCount(code);
    return countBeforeMovePromise.then(function (regCount) {
        if (regCount === 1) {
            return elementClick("[name='moveAllPagesToAvailable']");
        }
    });
};

function toDestroyCompositeDeliveryUnit() {
    element(by.css("[name='cancellationConfirmationModal']")).isPresent().then(function (isPresent) {
        if (isPresent === true) {
            utils.elementClick("[name='isCancelRecursiveCheckbox']");
            utils.elementClick("[name='buttonOk']");
        }
    });
}

function selectHeader(header) {
    return utils.elementClick(header + analysisTreeCheckBox);
};

function selectOrderInBasket(basket) {
    return selectHeader(basket + orderHeader);
};

function selectTrips() {
    utils.elementClick("[data-node-type='TRIP_BASKET'] [name='nlgAnalysisTreeActions']");
    return utils.elementClick("[name='select.trips.button']");
};

function releaseTrip() {
    selectTrips();
    utils.elementClick(tripButton);
    utils.elementClick(releaseTripMenu);
    return utils.elementClick(okButton);
};

function serveTrip(orderCode) {
    getTripStatus().then(function (tripStatus) {
        if (tripStatus !== "Liberada") {
            releaseTrip(orderCode);
        }
    });
    selectTrips();
    utils.elementClick(tripButton);
    utils.elementClick(serveTripMenu);
    return utils.elementClick(okButton);
};

function reprogrammingTrip() {
    selectTrips();
    utils.elementClick(tripButton);
    utils.elementClick(reprogrammingTripMenu);
    setReprogrammingJustification();
    return utils.elementClick(okButton);
};

function unserveTrip() {
    selectTrips();
    utils.elementClick(tripButton);
    utils.elementClick(unserveTripMenu);
    return utils.elementClick(okButton);
};

function getTripStatus() {
    return element(by.css("[name='presentationnode.nodeproperty.status']")).getAttribute("tooltip");
};

function getTripCode(orderCode) {
    searchTripBasket(orderCode);
    return element(by.css(tripHeader + " [name='nlgAnalysisTreePresentationId']")).getText();
};

function setReprogrammingJustification() {
    const reprogrammingJustification = "JUSREPDEPMON";
    return setJustification(reprogrammingJustification);
};

function setCancellingJustification() {
    let cancellingJustification = "JUSCANDEPMON";
    if (process.env.CLIENT_NAME === 'grd') {
        cancellingJustification = 'Cancelamento de Remessa'
    }
    return setJustification(cancellingJustification);
};

function setJustification(justification) {
    return element(by.css(justificationModal)).isPresent().then(function (isPresent) {
        if (isPresent === true) {
            return utils.addTextTags(justificationModal, justification);
        }
    });
};

function searchGeneralBasket(orderCode) {
    filter.configuraFiltro("[selection='selection.availableDeliveryUnits']", "Pedido / Código");
    utils.addTextTags("[selection='selection.availableDeliveryUnits']", orderCode);
    return utils.elementClick("[selection='selection.availableDeliveryUnits']" + submitButton);
};

function searchUserBasket(orderCode) {
    filter.configuraFiltro("[selection='selection.deliveryUnits']", "Pedido / Código");
    utils.addTextTags("[selection='selection.deliveryUnits']", orderCode);
    return utils.elementClick("[selection='selection.deliveryUnits']" + submitButton);
};

function searchTripBasket(orderCode) {
    navigate.acessoTela("[name='menu-userMenu.programming']", "[name='subMenu-userMenu.review']");
    filter.configuraFiltro("[selection='selection.tripBasket']", "Unidade de transporte / Pedido / Código");
    utils.addTextTags("[name='deliveryUnitTemplate.orderTemplate.code-br.com.neolog.service.crud.filter.FilterOperation.IN']", orderCode);
    return utils.elementClick("[selection='selection.tripBasket']" + submitButton);
};

function moveToAvailableBasket() {
    return utils.elementClick(moveToAvailableBasketButton);
};

function setCarrier(carrierCode) {
    return utils.addTextTags("[name='organize.carrier']", carrierCode);
};

function setVehicle(vehicleCode) {
    return utils.addTextTags("[name='organize.vehicle']", vehicleCode);
};

function cancelTenderingTrip(orderCode) {
    searchTripBasket(orderCode);
    selectTrips();
    elementClick(tripButton);
    elementClick(cancelOfferButton);
    fillText(reasonModal, reasonJustification);
    return elementClick(okButton);
};

function moveAllPagesToAvailable() {
    return utils.elementClick("[name='moveAllPagesToAvailable']");
};

function moveAllPagesToUser() {
    return utils.elementClick("[name='moveAllPagesToUser']");
};

function moveToUserBasketButtonClick() {
    return utils.elementClick(moveToUserBasketButton);
};

function organizeAllPages() {
    return utils.elementClick("[name='organizeAllPages']");
};

function unitizeButton() {
    utils.elementClick("[name='unitizeButton']");
};

function changeView() {
    return utils.elementClick("[name='viewType']");
};

function changeViewToShipmentUnitByTrips() {
    changeView();
    return utils.elementClick("[name='programming.viewTypes.shipmentUnitView']");
};

function changeViewByDestination() {
    changeView();
    return utils.elementClick("[name='programming.viewTypes.SimpleViewByDestination']");
};

function changeViewToSchedule() {
    changeView();
    return utils.elementClick("[name='programming.viewTypes.scheduleView']");
};

function confirmSelectedContext() {
    return element(by.css("[name='overridableGenericParamsRoutingSelectionDialog']")).isPresent()
        .then(function (isPresent) {
            if (isPresent) {
                utils.elementClick("[name='buttonOk']");
            } else {
                return element(by.css("[name='routingSelectionDialog']")).isPresent()
                    .then(function (isPresent) {
                        if (isPresent) {
                            utils.elementClick("[name='buttonOk']");
                        }
                    });
            }
        });
};

function confirmsTripCreation() {
    return utils.elementClick("[name='buttonSave']");
}

function assertHeaderHasNoCompositeShipmentUnitWrapper() {
    var el = "[selection='selection.tripBasket']" + compositeDeliveryUnitHeader;
    return utils.assertElementDoesNotExist(el);
};

function assertCompositeShipmentUnitWrapperHeaderIspresent() {
    var el = "[selection='selection.tripBasket']" + compositeDeliveryUnitHeader;
    return utils.assertElementExist(el);
};

function changeViewToShipmentUnitView() {
    changeView();
    return utils.elementClick("[name='programming.viewTypes.shipmentUnitView']");
};

function setRoutingContext(context) {
    return element(by.css("[name='overridableGenericParamsRoutingSelectionDialog']"))
        .isPresent().then(function (isPresent) {
            if (isPresent) {
                utils.addTextTags("[name='routingConfigInput']", context);
                return utils.elementClick("[name='buttonOk']");
            }
        });
};

function selectAllOrders() {
    utils.elementClick("[data-node-type='ROUTING_BASKET'] [name='nlgAnalysisTreeActions']");
    return utils.elementClick("[data-node-type='ROUTING_BASKET'] [name='select.order.button']");
};

function changeDestinationsTo(strategy) {
    return elementClick("[name='deliveryUnitDropdown']").then(function () {
        return utils.elementClick("[name='selectDestinationsButton']")
    }).then(function () {
        return utils.addTextTags("[name='strategy']", strategy);
    }).then(function () {
        return utils.elementClick("[name='buttonSave']")
    }).then(function () {
        return utils.elementClick("[name='buttonOk']")
    }).then(function () {
        return utils.elementClick("[name='messagesModal'] [name='buttonSave']")
    }).then(function () {
        return utils.elementClick("[name='modalFooter'] [name='buttonOk']");
    });
};

function autoAdjustLocalityWithViolation() {
    return element(by.css("[name='preViolationModal']"))
        .isPresent().then(function (isPresent) {
            if (isPresent) {
                utils.elementClick("[name='preViolationModal.localityAdjustment']");
                utils.elementClick("[name='header'] input");
                return utils.elementClick("[name='preViolationModalAutoAdjust']");
            }
        });
};

function setRestrictions(vehicle, carrier) {
    utils.elementClick("[name='organize.organizeWithRestrictions']");
    utils.elementClick("[name='organize.restrictions']");
    setVehicle(vehicle);
    setCarrier(carrier);
    return utils.elementClick("[name='buttonOk']");
};

function assertWeekDayIsEqual(weekDay) {
    return element(by.css("[data-presentation-id='2']")).getAttribute("data-start")
        .then(function (dateTimeStart) {
            const currentWeekDay = getWeekDay(dateTimeStart);
            return expect(currentWeekDay).to.equal(weekDay);
        });
}

function getWeekDay(dateTimeStart) {
    const date = dateTimeStart.split("/");
    const year = ("20" + date[2]).substring(0, 4);
    const month = date[1] - 1;
    const day = date[0];
    return moment().set({ 'year': year, 'month': month, 'date': day }).format('dddd');
};

function moveSelectionToTrip() {
    utils.elementClick(tripBasket + " [name='nlgAnalysisTreeActions']");
    return utils.elementClick("[data-node-type='TRIP_BASKET'] [name='nlgAnalysisTreeToNodeHere']");
};

function useRestrictions() {
    utils.selectCheckbox("[name='organize.organizeWithRestrictions']");
    return utils.elementClick("[name='organize.restrictions']");
};

function offerTripToCarrier(carrier) {
    elementClick("[name='tripDropdown']");
    elementClick("[name='offerTripToPoolButton']");
    utils.fillTimePicker("[name='timeWindowEnd']", "23", "59");
    elementClick("[name='allowedAllCarriers']");
    transfer.moveLeftToRigth("[name='allowedCarriers']", carrier);
    return elementClick("[name='buttonConfirm']");
};

function offerTripToPool() {
    elementClick("[name='tripDropdown']");
    elementClick("[name='offerTripToPoolButton']");
    setTimeLimit();
    return elementClick("[name='buttonConfirm']");

    function setTimeLimit() {
        const today = new Date();
        const day = formatDate(today.getTime() + 1000 * 60 * 60 * 24 * 1);
        fillText("[name='timeWindowEnd'] [name='dateInput'] [name='dateInput']", "0" + day);
        utils.fillTimePicker("[name='timeWindowEnd']", "23", "59");
        return utils.elementClick("[name='timeWindowEnd']");
    }

    function formatDate(dateInMilliseconds) {
        const date = new Date(dateInMilliseconds);
        const months = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"];
        const day = date.getDate();
        const month = months[date.getMonth()];
        const year = date.getFullYear();
        return day + "/" + month + "/" + year;
    };
};

function setScheduleDate(dateSchedule) {
    return utils.fillText("[name='batchScheduledDate'] [name='datepicker'] [name='dateInput']", dateSchedule);
};

function setHourScheduleDate(hourschedule) {
    return utils.fillText("[name='batchScheduledDate'] [name='hour'] ", hourschedule);
};

function setMinuteScheduleDate(minuteschedule) {
    return utils.fillText("[name='batchScheduledDate'] [name='minute'] ", minuteschedule);
};

function setExpeditionDate(dateExpedition) {
    return utils.fillText("[name='batchScheduledExpeditionDate'] [name='datepicker'] [name='dateInput']", dateExpedition);
};

function setHourExpeditionDate(hourexpedition) {
    return utils.fillText("[name='batchScheduledExpeditionDate'] [name='hour']", hourexpedition);
};

function setMinuteExpeditionDate(minuteexpedition) {
    return utils.fillText("[name='batchScheduledExpeditionDate'] [name='minute']", minuteexpedition);
};

function setDestination(destination) {
    return utils.addTextTags("[name='destinations']", destination);
};

function clickScheduleButton() {
    utils.elementClick("[name='scheduleDropdown']");
    return utils.elementClick("[name='scheduleCreation']");
};

function optimizeAllPages() {
    return utils.elementClick("[name='optimizeAllPages']");
};

function setClassification(classificationType, classificationFilter) {
    const classificationSelection = "(" + classificationType + ") " + classificationFilter + " - " + classificationFilter;
    return utils.fillClassification(classificationType, classificationFilter, classificationSelection);
};

function assertArrivalTime(startWindow, endWindow) {
    return element(by.css("[data-presentation-id='2'] [name='presentationnode.nodeproperty.arrival']"))
        .getText().then(function (arrival) {
            const hour = arrival.substring(9);
            return assert.isTrue(hour >= startWindow && hour <= endWindow, `O horário ${hour} está fora da janela esperada: ${startWindow} às ${endWindow}.`);
        });
};

function clickBatchEditDate() {
    return utils.elementClick("[name='batchEditDate']");
};

function clickBatchEditExpeditionDate() {
    return utils.elementClick("[name='batchEditExpeditionDate']");
};

function clickSelectAll() {
    return utils.elementClick("[name='selectAll']");
};

function setDestinationScheduler(destino) {
    utils.clearCombo("[name='destinations']");
    return utils.addTextTags("[name='destinations']", destino);
};

function setOriginsSheduler(origins) {
    utils.clearCombo("[name='origins']");
    return utils.addTextTags("[name='origins']", origins);
};