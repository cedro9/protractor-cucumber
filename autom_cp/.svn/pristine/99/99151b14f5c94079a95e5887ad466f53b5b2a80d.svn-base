"use strict";

var utils = require("./utils"),
    messages = require("./messages"),
    modalMessage = messages.modalMessage,
    justificationModalMessage = messages.justificationModalMessage,
    cancellationConfirmationModalMessage = messages.cancellationConfirmationModalMessage,
    elementClick = utils.elementClick,
    elementClickNth = utils.elementClickNth,
    comboSearchAndSelect = utils.comboSearchAndSelect,
    fillFilterDropdown = utils.fillFilterDropdown,
    fillText = utils.fillText;

/**
 * Move o pedido selecionado da cesta geral para a cesta do usuário.
 * @param {string} orderSourceId código do pedido a ser movido.
 */
exports.moveOrderFromAvailableBasketToUserBasket = function(orderSourceId){
    elementClick("[service='transactional/ORDER_ITEM/availableDeliveryUnits'] [name='resetButton']");
    elementClick("[service='transactional/ORDER_ITEM/availableDeliveryUnits'] [name='filterButton']");
    elementClick("[service='transactional/ORDER_ITEM/availableDeliveryUnits'] [name='btnFilterCustomize']");
    comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Pedido / Có", "Pedido / Código");
    fillFilterDropdown("[name='filterCustomizationTable'] [name='operators+0'] option", "'string:br.com.neolog.service.crud.filter.FilterOperation.EQUAL'");
    elementClick("[name='modalContent'] [name='modalFooter'] [name='buttonApply']");
    fillText("[service='transactional/ORDER_ITEM/availableDeliveryUnits'] [name='orderTemplate.code-br.com.neolog.service.crud.filter.FilterOperation.EQUAL'] input", orderSourceId +",");
    elementClick("[service='transactional/ORDER_ITEM/availableDeliveryUnits'] [name='submitButton']");
    var countResult = element.all(by.css("[data-presentation-id='" + orderSourceId + "'] label input")).count();
    countResult.then(function(regCount) {
        if(regCount !== 1){
            throw new Error("Erro! Um item do pedido " + orderSourceId + " esperado na cesta geral, mas foram encontrados " + regCount);
        }
    });
    elementClick("[data-presentation-id='" + orderSourceId + "'] input");
    elementClick("[name='moveToUserBasketButton']");
};

/**
 * Move um pedido da cesta do usuário para a cesta geral.
 * @param {string} orderSourceId código do pedido a ser utilizado.
 */
exports.moveOrderFromRoutingBasketToAvailableBasket = function(orderSourceId){
    elementClick("[service='transactional/ORDER_ITEM/selectedDeliveryUnits'] [name='resetButton']");
    elementClick("[service='transactional/ORDER_ITEM/selectedDeliveryUnits'] [name='filterButton']");
    elementClick("[service='transactional/ORDER_ITEM/selectedDeliveryUnits'] [name='btnFilterCustomize']");
    comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Pedido", "Pedido / Código");
    fillFilterDropdown("[name='filterCustomizationTable'] [name='operators+0'] option", "'string:br.com.neolog.service.crud.filter.FilterOperation.EQUAL'");
    elementClick("[name='modalContent'] [name='modalFooter'] [name='buttonApply']");
    fillText("[service='transactional/ORDER_ITEM/selectedDeliveryUnits'] [name='orderTemplate.code-br.com.neolog.service.crud.filter.FilterOperation.EQUAL'] input", orderSourceId + ",");
    elementClick("[service='transactional/ORDER_ITEM/selectedDeliveryUnits'] [name='submitButton']");
    var countResult = element.all(by.css("[data-presentation-id='" + orderSourceId + "'] label input")).count();
    countResult.then(function(regCount) {
        if(regCount !== 1){
            throw new Error("Erro! Um item do pedido " + orderSourceId + " esperado na cesta do usuário, mas foram encontrados " + regCount);
        }
    });
    elementClick("[data-presentation-id='" + orderSourceId + "'] input");
    elementClick("[name='moveToAvailableBasket']");
};

/**
 * Cria viagem com operação manual para um pedido, considerando que este gera violações.
 * @param {string} orderSourceId código do pedido a ser utilizado.
 */
exports.manualOperationWithOneOrder = function(orderSourceId){
    elementClick("[service='transactional/ORDER_ITEM/selectedDeliveryUnits'] [name='resetButton']");
    elementClick("[service='transactional/ORDER_ITEM/selectedDeliveryUnits'] [name='filterButton']");
    elementClick("[service='transactional/ORDER_ITEM/selectedDeliveryUnits'] [name='btnFilterCustomize']");
    comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Pedido", "Pedido / Código");
    fillFilterDropdown("[name='filterCustomizationTable'] [name='operators+0'] option", "'string:br.com.neolog.service.crud.filter.FilterOperation.EQUAL'");
    elementClick("[name='modalContent'] [name='modalFooter'] [name='buttonApply']");
    fillText("[service='transactional/ORDER_ITEM/selectedDeliveryUnits'] [name='orderTemplate.code-br.com.neolog.service.crud.filter.FilterOperation.EQUAL'] input", orderSourceId + ",");
    elementClick("[service='transactional/ORDER_ITEM/selectedDeliveryUnits'] [name='submitButton']");
    var countResult = element.all(by.css("[data-presentation-id='" + orderSourceId + "'] label input")).count();
    countResult.then(function(regCount) {
        if(regCount !== 1){
            throw new Error("Erro! Um item do pedido " + orderSourceId + " esperado na cesta do usuário, mas foram encontrados " + regCount);
        }
    });
    elementClick("[data-presentation-id='" + orderSourceId + "'] input");
    elementClick("[service='transactional/ORDER_ITEM/tripBasket'] [name='nlgAnalysisTreeActions']");
    elementClickNth("[name='nlgAnalysisTreeToNodeHere']", 2);
    elementClick("[name='overridableGenericParamsRoutingSelectionDialog'] [name='buttonOk']");
    elementClick("[name='organizeDialog'] [name='buttonOk']");
    elementClick("[name='messagesModal'] [name='buttonSave']");
};

/**
 * Cria viagem com operação manual com restrição de veículo para um pedido, considerando que este gera violações.
 * @param {string} orderSourceId código do pedido a ser utilizado.
 */
exports.manualOperationWithOneOrderAndVehicleRestriction = function(orderSourceId, vehicleSourceId, vehicleName){
    elementClick("[service='transactional/ORDER_ITEM/selectedDeliveryUnits'] [name='resetButton']");
    elementClick("[service='transactional/ORDER_ITEM/selectedDeliveryUnits'] [name='filterButton']");
    elementClick("[service='transactional/ORDER_ITEM/selectedDeliveryUnits'] [name='btnFilterCustomize']");
    comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Pedido / Có", "Pedido / Código");
    fillFilterDropdown("[name='filterCustomizationTable'] [name='operators+0'] option", "'string:br.com.neolog.service.crud.filter.FilterOperation.EQUAL'");
    elementClick("[name='modalContent'] [name='modalFooter'] [name='buttonApply']");
    fillText("[service='transactional/ORDER_ITEM/selectedDeliveryUnits'] [name='orderTemplate.code-br.com.neolog.service.crud.filter.FilterOperation.EQUAL'] input", orderSourceId + ",");
    elementClick("[service='transactional/ORDER_ITEM/selectedDeliveryUnits'] [name='submitButton']");
    var countResult = element.all(by.css("[data-presentation-id='" + orderSourceId + "'] label input")).count();
    countResult.then(function(regCount) {
        if(regCount !== 1){
            throw new Error("Erro! Um item do pedido " + orderSourceId + " esperado na cesta do usuário, mas foram encontrados " + regCount);
        }
    });
    elementClick("[data-presentation-id='" + orderSourceId + "'] input");
    elementClick("[service='transactional/ORDER_ITEM/tripBasket'] [name='nlgAnalysisTreeActions']");
    elementClickNth("[name='nlgAnalysisTreeToNodeHere']", 2);
    elementClick("[name='overridableGenericParamsRoutingSelectionDialog'] [name='buttonOk']");
    elementClick("[name='organize.organizeWithRestrictions']");
    elementClick("[name='organize.restrictions']");
    comboSearchAndSelect("[name='organize.vehicle']", vehicleSourceId, vehicleName);
    elementClick("[name='organizeDialog'] [name='buttonOk']");
    elementClick("[name='messagesModal'] [name='buttonSave']");
};

/**
 * Libera a viagem correspondente a um pedido informado. Considera que há apenas uma viagem para o pedido.
 * @param {string} orderSourceId código do pedido usado na busca.
 */
exports.releaseTripOfOrderSourceId = function(orderSourceId){
    elementClick("[service='transactional/ORDER_ITEM/tripBasket'] [name='resetButton']");
    elementClick("[service='transactional/ORDER_ITEM/tripBasket'] [name='filterButton']");
    elementClick("[service='transactional/ORDER_ITEM/tripBasket'] [name='btnFilterCustomize']");
    comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Pedido / Có", "Unidade de transporte / Pedido / Código");
    fillFilterDropdown("[name='filterCustomizationTable'] [name='operators+0'] option", "'string:br.com.neolog.service.crud.filter.FilterOperation.EQUAL'");
    elementClick("[name='modalContent'] [name='modalFooter'] [name='buttonApply']");
    fillText("[service='transactional/ORDER_ITEM/tripBasket'] [name='deliveryUnitTemplate.orderTemplate.code-br.com.neolog.service.crud.filter.FilterOperation.EQUAL'] input", orderSourceId + ",");
    elementClick("[service='transactional/ORDER_ITEM/tripBasket'] [name='submitButton']");
    var countResult = element.all(by.css("[data-node-type='Trip'] label input")).count();
    countResult.then(function(regCount) {
        if(regCount !== 1){
            throw new Error("Erro! Uma viagem com o pedido " + orderSourceId +" era esperada, mas foram encontradas " + regCount);
        }
    });
    elementClick("[data-node-type='Trip'] input");
    elementClick("[name='tripDropdown']");
    elementClick("[name='releaseTripButton']");
    elementClick("[name='messagesModal'] [name='buttonOk']");
};

/**
 * Cancela expedição de viagem correspondente a um pedido informado. Considera que há apenas uma viagem para o pedido.
 * @param {string} orderSourceId código do pedido usado na busca.
 */
exports.cancelExpeditionOfTripOfOrderSourceId = function(orderSourceId){
    elementClick("[service='transactional/ORDER_ITEM/tripBasket'] [name='resetButton']");
    elementClick("[service='transactional/ORDER_ITEM/tripBasket'] [name='filterButton']");
    elementClick("[service='transactional/ORDER_ITEM/tripBasket'] [name='btnFilterCustomize']");
    comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Pedido", "Unidade de transporte / Pedido / Código");
    fillFilterDropdown("[name='filterCustomizationTable'] [name='operators+0'] option", "'string:br.com.neolog.service.crud.filter.FilterOperation.EQUAL'");
    elementClick("[name='modalContent'] [name='modalFooter'] [name='buttonApply']");
    fillText("[service='transactional/ORDER_ITEM/tripBasket'] [name='deliveryUnitTemplate.orderTemplate.code-br.com.neolog.service.crud.filter.FilterOperation.EQUAL'] input", orderSourceId + ",");
    elementClick("[service='transactional/ORDER_ITEM/tripBasket'] [name='submitButton']");
    var countResult = element.all(by.css("[data-node-type='Trip'] label input")).count();
    countResult.then(function(regCount) {
        if(regCount !== 1){
            throw new Error("Erro! Uma viagem com o pedido " + orderSourceId +" era esperada, mas foram encontradas " + regCount);
        }
    });
    elementClick("[data-node-type='Trip'] input");
    elementClick("[name='tripDropdown']");
    elementClick("[name='unserveTrip']");
    modalMessage("Sucesso", "Operação efetuada com sucesso!");
};

/**
 * Reprograma a viagem correspondente a um pedido informado. Considera que há apenas uma viagem para o pedido.
 * @param {string} orderSourceId código do pedido usado na busca.
 */
exports.reprogramTripOfOrderSourceId = function(orderSourceId){
    elementClick("[service='transactional/ORDER_ITEM/tripBasket'] [name='resetButton']");
    elementClick("[service='transactional/ORDER_ITEM/tripBasket'] [name='filterButton']");
    elementClick("[service='transactional/ORDER_ITEM/tripBasket'] [name='btnFilterCustomize']");
    comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Pedido", "Unidade de transporte / Pedido / Código");
    fillFilterDropdown("[name='filterCustomizationTable'] [name='operators+0'] option", "'string:br.com.neolog.service.crud.filter.FilterOperation.EQUAL'");
    elementClick("[name='modalContent'] [name='modalFooter'] [name='buttonApply']");
    fillText("[service='transactional/ORDER_ITEM/tripBasket'] [name='deliveryUnitTemplate.orderTemplate.code-br.com.neolog.service.crud.filter.FilterOperation.EQUAL'] input", orderSourceId + ",");
    elementClick("[service='transactional/ORDER_ITEM/tripBasket'] [name='submitButton']");
    var countResult = element.all(by.css("[data-node-type='Trip'] label input")).count();
    countResult.then(function(regCount) {
        if(regCount !== 1){
            throw new Error("Erro! Uma viagem com o pedido " + orderSourceId +" era esperada, mas foram encontradas " + regCount);
        }
    });
    elementClick("[data-node-type='Trip'] input");
    elementClick("[name='tripDropdown']");
    elementClick("[name='unreleaseTripButton']");
    justificationModalMessage("Justificativa para operação", "Cancelamento de rem", "Cancelamento de remessa - 14");
    elementClick("[name='messagesModal'] [name='modalFooter'] [name='buttonOk']");
};

/**
 * Cancela a viagem DISTRIBUÍDA correspondente a um pedido informado. Considera que há apenas uma viagem para o pedido.
 * @param {string} orderSourceId código do pedido usado na busca.
 */
exports.cancelTripOfOrderSourceId = function(orderSourceId){
    elementClick("[service='transactional/ORDER_ITEM/tripBasket'] [name='resetButton']");
    elementClick("[service='transactional/ORDER_ITEM/tripBasket'] [name='filterButton']");
    elementClick("[service='transactional/ORDER_ITEM/tripBasket'] [name='btnFilterCustomize']");
    comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Pedido", "Unidade de transporte / Pedido / Código");
    fillFilterDropdown("[name='filterCustomizationTable'] [name='operators+0'] option", "'string:br.com.neolog.service.crud.filter.FilterOperation.EQUAL'");
    elementClick("[name='modalContent'] [name='modalFooter'] [name='buttonApply']");
    fillText("[service='transactional/ORDER_ITEM/tripBasket'] [name='deliveryUnitTemplate.orderTemplate.code-br.com.neolog.service.crud.filter.FilterOperation.EQUAL'] input", orderSourceId + ",");
    elementClick("[service='transactional/ORDER_ITEM/tripBasket'] [name='submitButton']");
    var countResult = element.all(by.css("[data-node-type='Trip'] label input")).count();
    countResult.then(function(regCount) {
        if(regCount !== 1){
            throw new Error("Erro! Uma viagem com o pedido " + orderSourceId +" era esperada, mas foram encontradas " + regCount);
        }
    });
    elementClick("[data-node-type='Trip'] input");
    elementClick("[name='tripDropdown']");
    elementClick("[name='cancelTrips']");
    cancellationConfirmationModalMessage();
    elementClick("[name='routingSelectionDialog'] [name='buttonOk']");
    elementClick("[name='messagesModal'] [name='modalFooter'] [name='buttonSave']");
    justificationModalMessage("Justificativa para operação", "Justificativa Padrão de Cancela", "Justificativa Padrão de Cancelamento - 33");
};