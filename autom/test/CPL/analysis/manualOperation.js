"use strict";

var { Given, When, Then, setDefaultTimeout } = require("cucumber");

const moment = require('moment');
var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect,
    assert = chai.assert;
var driver = browser.driver;
var navigate = require("../scripts/navigate"),
    filter = require("../scripts/filter"),
    clearFilter = filter.clearFilter,
    functioningDataHolder = require("../scripts/functioningDataHolder"),
    expect = chai.expect,
    scroll = require('../scripts/scroll'),
    utils = require('../scripts/utils'),
    filter = require("../scripts/filter"),
    printscreen = require("../scripts/printScreen"),
    present = require("../scripts/wait").present,
    messages = require("../scripts/messages"),
    assertBasicInfo = require("../scripts/fillBasicEntity").assertBasicEntityInfo,
    tripBasket = "[selection='selection.tripBasket']",
    tripBasketXpath = "//*[@selection='selection.tripBasket']",
    userBasket = "[selection='selection.deliveryUnits']",
    userBasketXpath = "//*[@selection='selection.deliveryUnits']",
    generalBasket = "[selection='selection.availableDeliveryUnits']",
    generalBasketXpath = "//*[@selection='selection.availableDeliveryUnits']",
    tripHeader = " [data-node-type='Trip']",
    CompositeDeliveryUnit = " [data-node-type='CompositeDeliveryUnit']",
    tripHeaderXpath = "//*[@data-node-type='Trip']",
    loadHeader = " [data-node-type='Load']",
    stopHeader = " [data-node-type='Stop']",
    scheduleHeader = " [data-node-type='Schedule']",
    orderHeader = "[data-node-type='Order']",
    orderHeaderXpath = "//*[@data-node-type='Order']",
    orderItemHeader = "[data-node-type='DeliveryUnit']",
    dependecies = require('../scripts/dependencies'),
    cancelarViagem = dependecies.ExcluirViagem,
    lastUnloadingStop = '',
    currentlastUnloadingStop = '',
    quantityOfStopUnload = '',
    suggestedSchedule = '';

const menu = "Programação",
    subMenu = "Análise";

const page = require('../pages/analisysPage');

const classificationType = function () {
    let classificationType = "";
    switch (process.env.CLIENT_NAME) {
        case 'whp-mex':
            classificationType = "Clasificación de viaje";
            break;
        case 'orbia':
            classificationType = "Qualidade da viagem";
            break;
        default:
            classificationType = "CLASSIFICAÇÃO DE VIAGEM";
            break;
    }
    return classificationType;
};

//Para uso no monitoramento
Given('que excluo a viagem {string}', function (string) {
    page.searchTripBasket(string);
    return page.cancelTrip();
});

Then('Movo o pedido {string}, para a cesta geral', function (string) {
    return page.moveOrdersToGeneralBasket(string);
});

When('filtro a cesta geral pelo pedido {string}', function (orderCode) {
    filter.configuraFiltroCestaGeral(generalBasket);
    utils.addTextTags(generalBasket, orderCode);
    return utils.elementClick(generalBasket + " [name='submitButton']");
});

When('filtro a cesta do usuário pelo pedido {string}', function (code) {
    filter.configuraFiltroCestaGeral(userBasket);
    utils.addTextTags(userBasket, code);
    return utils.elementClick(userBasket + " [name='submitButton']");
});

When('filtro a cesta de viagem pelo pedido {string}', function (code) {
    filter.configuraFiltroCestaViagem(tripBasket);
    utils.addTextTags(tripBasket, code);
    return utils.elementClick(tripBasket + " [name='submitButton']");
});

When('seleciono o pedido {string} na cesta geral', function (code) {
    var el = generalBasket + " [data-presentation-id='" + code + "']";
    return utils.selectOrderOrTrip(el);
});

When('seleciono o pedido {string} na carga', function (code) {
    var el = tripBasketXpath + "//*[@data-presentation-id='" + code + "'][01]//*[@class='nlgAnalysisTreeHeader']";
    return utils.selectOrderOrTripXpath(el);
});

When('seleciono o pedido {string} na cesta do usuário', function (code) {
    var el = userBasket + " [data-presentation-id='" + code + "']";
    return utils.selectOrderOrTrip(el);
});

When('seleciono o contexto de Otimização {string}', function (string) {
    return page.setRoutingContext(string)
});

When('seleciono o item de pedido {string} na cesta geral', function (code) {
    return utils.elementClickXpath("//*[@data-value='" + code + "']/../../../../../..//input");
});

When('seleciono o item de pedido {string} na cesta do usuário', function (code) {
    return utils.elementClickXpath("//*[@data-value='" + code + "']/../../../../../..//input");
});

When('seleciono o item de pedido {string} na carga', function (code) {
    var el = tripBasket + orderHeader + " [data-presentation-id='" + code + "']";
    return utils.selectOrderOrTrip(el);
});

When('seleciono a unidade de transporte', function () {
    var el = "[data-node-type='DeliveryUnit']";
    return utils.selectOrderOrTrip(el);
});

When('seleciono a viagem do pedido {string} na cesta de viagem', function (string) {
    var el = tripBasket + tripHeader;
    return utils.selectOrderOrTrip(el);
});

When('seleciono a viagem', function () {
    var el = tripBasket + tripHeader;
    return utils.selectOrderOrTrip(el);
});

When('clico em Mover seleção aqui na cesta de viagem', function () {
    page.moveSelectionToTrip();
    page.autoAdjustLocalityWithViolation();
    return page.confirmSelectedContext();
});

When('clico em Mover seleção aqui na cesta do usuário', function () {
    utils.elementClick(userBasket + " [name='nlgAnalysisTreeActions']");
    utils.elementClick("[data-node-type='ROUTING_BASKET'] [name='nlgAnalysisTreeToNodeHere']");
    page.autoAdjustLocalityWithViolation();
    return page.confirmSelectedContext();
});

When('clico em selecionar pedidos na cesta do usuario', function () {
    utils.elementClickXpath(userBasketXpath + "//*[01]/*[@name='nlgAnalysisTreeActions']");
    return utils.elementClickXpath("//*[@data-node-type='ROUTING_BASKET']//*[@name='select.order.button']");
});

When('clico em Mover seleção aqui da carga', function () {
    utils.elementClick(tripBasket + loadHeader + " [name='nlgAnalysisTreeActions']");
    utils.elementClick(loadHeader + " [name='nlgAnalysisTreeToNodeHere']");
    page.autoAdjustLocalityWithViolation();
    return page.confirmSelectedContext();
});

When('clico no botão travar veículo na viagem', function () {
    return utils.elementClickXpath("//*[4]/*[1]/*[1]/*[@name='nodePinAction']/*[1]");
});

When('clico em edição da carga', function () {
    utils.elementClick(tripBasket + loadHeader + " [name='nlgAnalysisTreeActions']");
    return utils.elementClick("[name='loadEdition.button']");
});

When('oculto a visão {string}', function (string) {
    // utils.elementClickXpath("//*[@name='layoutControl.toggleBasket.tripBasket']");
    return utils.elementClickXpath("//*[@name='programmingAnalysisUseGridView']");
    // return scroll.toElement(element(by.xpath(string)).click());
});

When('expando o header da viagem', function () {
    // return element.all(by.css("[name='nlgAnalysisTreeNode'][data-node-type='Trip']")).each(function (tripElement) {
    //     tripElement.element(by.css("[name='nlgAnalysisTreeHeaderContent']")).click();
    return utils.elementClickXpath("//li[1]//*[@data-node-type='Trip']//*[@name='nlgAnalysisTreeExpand']");
    // });
});

When('expando o header da carga', function () {
    // return element.all(by.css("[name='nlgAnalysisTreeNode'][data-node-type='Load']")).each(function (loadElement) {
    //     loadElement.element(by.css("[name='nlgAnalysisTreeExpand']")).click();
    return utils.elementClickXpath("//li[1]//*[@data-node-type='Load']//*[@name='nlgAnalysisTreeExpand']");
    // });
});

When('expando o header da parada', function () {
    return utils.elementClick("[name='nlgAnalysisTreeNode'][data-node-type='Stop'] [name='nlgAnalysisTreeExpand']");
});

When('expando o header do destino', function () {
    return utils.elementClickXpath("//li[1]//*[@data-node-type='Destination']//*[@name='nlgAnalysisTreeExpand']");
});

When('expando o header do pedido', function () {
    return element.all(by.css("[name='nlgAnalysisTreeNode'][data-node-type='Order']")).each(function (orderElement) {
        orderElement.element(by.css("[name='nlgAnalysisTreeExpand']")).click();
    });
});

When('expando o header da UT', function () {
    return element.all(by.css("[name='nlgAnalysisTreeNode'][data-node-type='DeliveryUnit']")).each(function (orderElement) {
        orderElement.element(by.css("[name='nlgAnalysisTreeExpand']")).click();
    });
});

When('preencho a quantidade de UE {string}', function (quantidade) {
    return utils.fillNumber("[name='organize.quantity']", quantidade);
});

function clickDetails(el) {
    return utils.elementClick(el + " [name='nlgAnalysisTreeHeaderActionsExpandNodeBody']");
}

function clickDetailsXpath(el) {
    return utils.elementClickXpath(el + "//*[@name='nlgAnalysisTreeHeaderActionsExpandNodeBody']");
}

When('clico no botão detalhes da viagem', function () {
    var el = tripBasket + tripHeader;
    return clickDetails(el);
});

When('clico no botão detalhes da carga', function () {
    var el = tripBasket + loadHeader;
    return clickDetails(el);
});

When('clico no botão detalhes da parada', function () {
    var el = tripBasket + stopHeader;
    return clickDetails(el);
});

When('clico no botão detalhes do pedido', function () {
    var el = tripBasket + orderHeader;
    return clickDetails(el);
});

When('clico no botão detalhe do pedido {string}', function (codigoPedido) {
    var el = tripBasketXpath + tripHeaderXpath + "//*[@data-presentation-id='" + codigoPedido + "']";
    return clickDetailsXpath(el);
});

When('clico no botão detalhe da UT do pedido {string}', function (codigoPedido) {
    var el = tripBasketXpath + tripHeaderXpath + "//*[@data-presentation-id='" + codigoPedido + "']";
    return utils.elementClickXpath(el + "//*[@name='nlgAnalysisTreeNode']//*[@name='nlgAnalysisTreeHeaderActionsExpandNodeBody']");
});

When('clico no botão detalhes do item de pedido', function () {
    var el = tripBasket + orderItemHeader;
    return clickDetails(el);
});

When('clico no botão detalhes do item de pedido na cesta do usuário', function () {
    return utils.elementClickXpath("//*[@selection='selection.deliveryUnits']//*[@data-node-type='DeliveryUnit']//*[@name='nlgAnalysisTreeHeaderActionsExpandNodeBody']");
});

When('clico no botão Cancelar da cesta de viagem', function () {
    return utils.elementClick("[name='cancel']");
});

When('clico no botão Viagem da cesta de viagem', function () {
    return utils.elementClick("[name='cancelSelectedTrips']");
});

Then('cancelo a viagem', function () {
    return page.cancelTrip();
});

Then('reprogramo a viagem', function () {
    utils.elementClickXpath("//*[@name='tripDropdown']");
    utils.elementClickXpath("//*[@name='unreleaseTripButton']");
    return element(by.css("[name='defaultJustificationForTrips']")).isPresent().then(function (isPresent) {
        if (isPresent === true) {
            utils.fillText("[name='defaultJustificationForTrips'] [name='tagInputTextField']", "Cancelamento de remessa");
            utils.elementClick("[name='buttonOk']");
        } else {
            utils.elementClick("[name='buttonOk']");
        }
    });
});

When('seleciono o Tipo de serviço {string}', function (string) {
    var serviceType = process.env.TIPO_SERVICO_FBVM || string;
    return utils.addTextTags("[name='organize.serviceType']", serviceType);
});

When('altero o Tipo de serviço para {string}', function (string) {
    var serviceType = process.env.TIPO_SERVICO_OPM || string;
    return utils.addTextTags("[name='serviceType']", serviceType);
});

When('seleciono o Veículo {string}', function (veiculo) {
    this.veiculo = process.env.VEICULO || veiculo;
    return utils.addTextTags("[name='organize.vehicle']", this.veiculo);
});

When('seleciono a Transportadora {string}', function (transportadora) {
    this.transportadora = process.env.TRANS_FBVM || transportadora
    return utils.addTextTags("[name='organize.carrier']", this.transportadora);
});

When('clico no checkbox Usar restrições', function () {
    return utils.elementClick("[name='organize.organizeWithRestrictions']");
});

When('clico no checkbox Unitizar', function () {
    return utils.elementClick("[name='organize.unitize']");
});

When('clico no checkbox Unitização automática', function () {
    return utils.elementClickXpath("//*[@name='organize.automaticUnitize']");
});

/********* VALIDAÇÃO ATRIBUTOS ************/
Then('verifico se o pedido {string} está presente na viagem', function (codigoPedido) {
    let self = this;
    var el = tripBasketXpath + "//*[@data-presentation-id='" + codigoPedido + "'][01]//*[@class='nlgAnalysisTreeHeader']//*[@name='nlgAnalysisTreePresentationId']";
    return messages.validaAtributoXpath(el, codigoPedido, self);
});

Then('verifico se o pedido {string} não está presente na viagem', function (codigoPedido) {
    let self = this;
    var el = tripBasket + "[data-presentation-id='" + codigoPedido + "'] [name='nlgAnalysisTreePresentationId']";
    return messages.validaAusenciaAtributo(el, codigoPedido, self);
});

Then('verifico se quantidade do produto presente na viagem é de {string}', function (quantidade) {
    return messages.validaAtributoXpath("//*[@name='presentationnode.nodeproperty.products']", quantidade);
});

Then('verifico o veículo da viagem {string}', function (veiculo) {
    let self = this;
    var el = tripHeader + " [name='presentationnode.nodeproperty.vehicle']";
    this.veiculo = process.env.VEICULO || veiculo;
    return messages.validaAtributo(el, this.veiculo, self);
});

Then('verifico se a UT composta esta presente e a sua quantidade é igual a {string}', function (quantity) {
    var el = CompositeDeliveryUnit + " [name='presentationnode.nodeproperty.quantitySUs']";
    return messages.validaAtributo(el, quantity);
});

Then('verifico se a UT composta não esta presente', function () {
    return element(by.css(menu)).isPresent().then(function (result) {
        const expectedResult = "0";
        return assert.equal(expectedResult, result, "Era esperado [" + expectedResult + "] registro" + " ,porém  foram encontrados [" + result + "].");
    });
});

Then('verifico a transportadora da viagem {string}', function (transportadora) {
    this.transportadora = process.env.TRANS_FBVM || transportadora;
    return assertCarrierTrip(this.transportadora);
});

Then('verifico o tipo de serviço da carga {string}', function (tipoDeServiço) {
    var serviceType = '';
    switch (tipoDeServiço) {
        case '1':
            serviceType = process.env.TIPO_SERVICO_FBVM || tipoDeServiço;
            break;
        case '2':
            serviceType = process.env.TIPO_SERVICO_OPM || tipoDeServiço;
            break;
        default:
            serviceType = tipoDeServiço;
    }
    return messages.validaAtributo("[name='presentationnode.nodeproperty.serviceType']", serviceType);
});

Then('verifico se a viagem está com o status {string}', function (status) {
    return element(by.css("[name='presentationnode.nodeproperty.status']")).getAttribute("tooltip").then(function (tripStatus) {
        expect(tripStatus).to.equal(status);
    })
});

Then('verifico que existe o número {string} na coluna Rejeite', function (status) {
    let self = this;
    var el = "//*[@name='searchResultTable']//*[01]//*[@name='notRoutedDUCount']";
    return messages.validaAtributoXpath(el, status, self);
});

Then('verifico que existe o número {string} na coluna Viagens', function (status) {
    let self = this;
    var el = "//*[@name='searchResultTable']//*[01]//*[@name='createdTripCount']";
    return messages.validaAtributoXpath(el, status, self);
});

Then('o sistema exibe o modal de Violações com as duas mensages {string}', function (status) {
    let self = this;
    var el1 = "//*[@ng-repeat='code in violationMessagesOfDUPaginationOptions.records'][01]//*[@name='message']";
    var el2 = "//*[@ng-repeat='code in violationMessagesOfDUPaginationOptions.records'][02]//*[@name='message']";
    messages.validaAtributoXpath(el1, status, self);
    return messages.validaAtributoXpath(el2, status, self);
});

Then('o sistema exibe o modal de Violações com a mensagem {string}', function (status) {
    let self = this;
    var el1 = "//dd[3]/div[@name='message']";
    return messages.validaAtributoXpath(el1, status, self);
});

When('eu clicar no botão para exibir a violação', function () {
    return utils.elementClickXpath("//*[@name='searchResultTable']//*[@name][01]//*[@name='optimizationViolations']");
});

Then('clico no botão Mover para cesta Geral', function () {
    return utils.elementClickXpath("//*[@name='moveToAvailableBasket']");
});

Then('clico em Mover pedidos para minha cesta', function () {
    return utils.elementClick("[name='moveToUserBasketButton']");
});

When('configuro a Ordenação da cesta do usuário em ordem crescente', function () {
    utils.elementClick(userBasket + " [name='sortButton']");
    utils.elementClick("[name='nlgSortingListIsActivated']");
    return utils.elementClick("[name='buttonApply']");
});

When('configuro a Ordenação em ordem crescente', function () {
    utils.elementClick(tripBasket + " [name='sortButton']");
    utils.elementClick("[name='nlgSortingListIsActivated']");
    return utils.elementClick("[name='buttonApply']");
});

When('clico em Expandir todos os níveis da viagem', function () {
    utils.elementClickXpath(tripBasketXpath + "//*[@data-node-type='TRIP_BASKET']//*[@name='nlgAnalysisTreeActions']");
    return utils.elementClickXpath("//*[@data-node-type='TRIP_BASKET']//*[@name='nlgAnalysisTreeExpandNodes']");
});

When('clico em Contrair todos os níveis da viagem', function () {
    utils.elementClickXpath(tripBasketXpath + "//*[@data-node-type='TRIP_BASKET']//*[@name='nlgAnalysisTreeActions']");
    return utils.elementClickXpath("//*[@data-node-type='TRIP_BASKET']//*[@name='nlgAnalysisTreeCollapseNodes']");
});

When('clico em Selecionar viagens', function () {
    utils.elementClickXpath(tripBasketXpath + "//*[@data-node-type='TRIP_BASKET']//*[@name='nlgAnalysisTreeActions']");
    return utils.elementClick("[data-node-type='TRIP_BASKET'] [name='select.trips.button']");
});

When('clico no botão Cesta geral', function () {
    return utils.elementClick("[name='layoutControl.toggleBasket.generalBasket']");
});

When('clico no botão Minha cesta', function () {
    return utils.elementClick("[name='layoutControl.toggleBasket.userBasket']");
});

When('clico no botão Viagens', function () {
    return utils.elementClick("[name='layoutControl.toggleBasket.tripBasket']");
});

Then('verifico se o item de pedido {string} está na cesta do usuário', function (codigoPedido) {
    let self = this;
    var el = tripBasket + orderHeader + "[data-presentation-id='" + codigoPedido + "'] [name='nlgAnalysisTreePresentationId']";
    return messages.validaAusenciaAtributo(el, codigoPedido, self);
});

Then('a qualidade da carga deve ter status {string} e a ocupação deve ser maior que {string} e menor que {string}', function (status, maiorque, menorque) {
    let self = this;
    var ok = "valido";
    var el = element(by.xpath("//*[@name='presentationnode.nodeproperty.weightUtilizationRate']"));
    return element(by.xpath("//*[@name='presentationnode.nodeproperty.quality']")).getText().then(function (status) {
        if (status === "Boa") {
            return el.getAttribute('data-value').then(function (valor) {
                var resultado = ((valor * 1) >= (maiorque * 1) && (valor * 1) <= (menorque * 1)) ? "valido" : "Invalido"
                expect(resultado).to.equal(ok)
            })
        } else if (status === "Ruim") {
            return el.getAttribute('data-value').then(function (valor) {
                var resultado = (valor <= menorque) ? "valido" : "Invalido"
                expect(resultado).to.equal(ok)
            })
        } else {
            return el.getAttribute('data-value').then(function (valor) {
                var resultado = (valor >= maiorque && valor <= menorque) ? "valido" : "Invalido"
                expect(resultado).to.equal(ok)
            })
        }
    });
});

/********* OPERAÇÃO MANUAL ************/
When('Clico no botão Unidade de Transporte e Alterar Destinos', function () {
    utils.elementClickXpath("//*[@name='deliveryUnitDropdown']");
    return utils.elementClickXpath("//*[@name='selectDestinationsButton']");
});

When('altero o destino para {string}', function (string) {
    return utils.addTextTags("[name='strategy']", string);
});

When('na cesta do usuario clico para expandir o pedido', function () {
    return utils.elementClickXpath(userBasketXpath + "//*[@name='nlgAnalysisTreeChildren']/*/*[@name='nlgAnalysisTreeNode']/*/*/*[@name='nlgAnalysisTreeExpand']");
});

When('na cesta do usuario clico para exibir os detalhes da UT {string}', function (string) {
    return utils.elementClickXpath("//*[@data-value='" + string + "']/../../../../../..//*[@class='fa fa-ellipsis-h']");
});

Then('valido se o destino é o {string}', function (hub) {
    let self = this,
        expectedHub = process.env.HUBDESTINO || hub;
    return expect(element(by.xpath("//*[@name='presentationnode.nodeproperty.deliveryunit.deliveryPlace']/*/*")).getText()).to.eventually.equal(expectedHub).then(function (equal) {
        printscreen.stepPrintScreen(self);
    });
});

Then('na cesta de viagem valido se o destino é o {string}', function (string) {
    let self = this;
    return expect(element(by.xpath("//*[@data-presentation-id='2']//*[@name='presentationnode.nodeproperty.locality']")).getText()).to.eventually.equal(string).then(function (equal) {
        if (equal) {
            printscreen.stepPrintScreen(self);
        } else {
        }
    });
});

When('na mensagem {string} clico no botão {string}', function (string, string2) {
    let el = "[name='termsConfirmationModal']";
    return element(by.css(el)).isPresent().then(function (isPresent) {
        if (isPresent === true) {
            return utils.elementClickXpath("//*[text()='" + string + "']/../../..//*[text()='" + string2 + "']");
        } else {
            let el = "[name='messagesModal']";
            return element(by.css(el)).isPresent().then(function (isPresent) {
                if (isPresent === true) {
                }
                return utils.elementClickXpath("//*[text()='" + string + "']/../../..//*[text()='" + string2 + "']");
            });
        }
    });
});

Then('oferto a viagem', function () {
    utils.elementClickXpath("//*[@name='tripDropdown']");
    return utils.elementClickXpath("//*[@name='offerTripButton']");
});

When('oferto para o pool para todas as transportadora', function () {
    return page.offerTripToPool();
});

When('oferto para o pool apenas para a transportadora {string}', function (carrier) {
    return page.offerTripToCarrier(carrier);
});

Then('rejeito a viagem', function () {
    utils.elementClick("[name='tripDropdown']");
    return utils.elementClick("[name='offerTripButton']");
});

Then('cancelo a oferta da viagem', function () {
    utils.elementClick("[name='tripDropdown']");
    utils.elementClick("[name='cancelOfferButton']");
    utils.fillText("[name='model.reason']", "teste automatizado");
    return utils.elementClick("[name='buttonOk']");
});

Then('altero o status da viagem para {string}', function (status) {
    utils.elementClick("[name='tripDropdown']");
    return utils.elementClick("[name='cancelOfferButton']");
});

Then('libero a viagem', function () {
    utils.elementClickXpath("//*[@name='tripDropdown']");
    return utils.elementClickXpath("//*[@name='releaseTripButton']");
});

Then('expeço a viagem', function () {
    utils.elementClickXpath("//*[@name='tripDropdown']");
    return utils.elementClickXpath("//*[@name='serveTrip']");
});

Then('cancelo a expedição da viagem', function () {
    utils.elementClickXpath("//*[@name='tripDropdown']");
    return utils.elementClickXpath("//*[@name='unserveTrip']");
});

Then('é exibido a mensagem viagem liberada com sucesso', function () {
    element(by.css("[data-node-type='Trip']")).getAttribute("data-presentation-id").then(function (tripCode) {
        var expetedMessage = "Viagem " + tripCode + " liberada com sucesso.";
        return assertSubject(expetedMessage);
    });
});

Then('é exibido a mensagem viagem reprogramada com sucesso', function () {
    element(by.css("[data-node-type='Trip']")).getAttribute("data-presentation-id").then(function (tripCode) {
        var expetedMessage = "Viagem " + tripCode + " reprogramada com sucesso.";
        return assertSubject(expetedMessage);
    });
});

When('atribuo a viagem para a transportadora {string}', function (transportadora) {
    utils.elementClick(tripBasket + tripHeader + " [name='nlgAnalysisTreeActions']");
    utils.elementClick("[data-node-type='Trip'] [name='assignTrip.button']");
    return utils.addTextTags("[name='carrier']", transportadora);
});

When('clico em edição de viagem', function () {
    utils.elementClickXpath("//*[@name='nlgAnalysisTreeChildren']/*/*[@name='nlgAnalysisTreeNode']/*/*/*/*[@name='nlgAnalysisTreeActions']/*");
    return utils.elementClickXpath("//*[@name='tripEdition.button']/*");
});

When('clico no botão Selecionar automaticamente veículo', function () {
    return utils.elementClickXpath("//*[@name='autoSelectVehicle']");
});

When('clico no botão Selecionar automaticamente transportadora', function () {
    return utils.elementClickXpath("//*[@name='autoSelectCarrier']");
});

When('clico em Atributos e classificações da viagem', function () {
    utils.elementClickXpath("//*[@name='nlgAnalysisTreeChildren']/*/*[@name='nlgAnalysisTreeNode']/*/*/*/*[@name='nlgAnalysisTreeActions']/*");
    return utils.elementClickXpath("//*[@name='tripAttributeView.button']/*");
});

When('altero o veiculo para {string}', function (string) {
    this.veiculo = process.env.VEICULO_OPM || string
    return utils.addTextTags("[name='vehicle']", this.veiculo);
});

let self = this;
Then('o veiculo {string} é exibido para a viagem alterada', function (string) {
    this.veiculo = process.env.VEICULO_OPM || string
    return expect(element(by.xpath("//*[@name='presentationnode.nodeproperty.vehicle']/*/*")).getText()).to.eventually.equal(this.veiculo).then(function (equal) {
        if (equal) {
            printscreen.stepPrintScreen(self);
        } else {
        }
    });
});

When('altero a transportadora para {string}', function (string) {
    this.transportadora = process.env.TRANS_OPM || string
    return utils.addTextTags("[name='carrier']", this.transportadora);

});

Then('a transportadora {string} é exibido para a viagem alterada', function (transportadora) {
    this.transportadora = process.env.TRANS_OPM || transportadora
    return assertCarrierTrip(this.transportadora);
});

When('na viagem clico em alterar paradas', function () {
    utils.elementClickXpath("//*[@name='nlgAnalysisTreeChildren']/*/*[@name='nlgAnalysisTreeNode']/*/*/*/*[@name='nlgAnalysisTreeActions']/*");
    return utils.elementClickXpath("//*[@name='alterStops.button']");
});

When('seleciono a parada {string}', function (string) {
    var parada = process.env.PARADA_OPM || string;
    return utils.elementClickXpath("//*[text()='" + parada + "']");
});

When('clico para subir a parada ao topo da lista', function () {
    return utils.elementClickXpath("//*[@name='moveElementUp']");
});

When('verifico qual é a ultima parada de descarregamento', function () {
    element(by.css("[name='nlgAnalysisTreeNode'][data-node-type='Load']")).getAttribute('data-unloadings').then(function (quantity) {
        var numberOfLastStop = (quantity / 1) + 1;
        element(by.css("[data-presentation-id='" + numberOfLastStop + "'] [name='presentationnode.nodeproperty.locality']")).getText().then(function (stop) {
            lastUnloadingStop = stop;
        });
        quantityOfStopUnload = quantity;
    });
});

When('altero a ordem das paradas de descarregamento', function () {
    utils.elementClick("select > option:last-child");
    return utils.elementClick("[name='moveElementUp']");
});

Then('valido se o destino da penultima parada foi alterado', function () {
    return element(by.css("[data-presentation-id='" + quantityOfStopUnload + "'] [name='presentationnode.nodeproperty.locality']")).getText().then(function (penultimateUnloadingStop) {
        // return expect((penultimateUnloadingStop).to.equal(lastUnloadingStop)).then(function (equal) {
        // });
        if (expect(penultimateUnloadingStop).to.equal(lastUnloadingStop)) {
            return printscreen.stepPrintScreen(self);
        }
    });
});

Then('deve exibir a parada {string}', function (string) {
    let self = this;
    return expect(element(by.xpath("//*[@class='nlgAnalysisTreeChildren ng-scope']//*[02]//*[@name='nlgAnalysisTreeChildren']//*[@name='nlgAnalysisTreePresentationId']")).getText()).to.eventually.equal(string).then(function (equal) {

        if (equal) {
            printscreen.stepPrintScreen(self);
        } else {
        }
    });
});

Then('deve exibir o destino {string}', function (string) {
    let self = this;
    return expect(element(by.xpath("//*[@name='presentationnode.nodeproperty.destination']")).getText()).to.eventually.equal(string).then(function (equal) {
        if (equal) {
            printscreen.stepPrintScreen(self);
        } else {
        }
    });
});

Then('deve exibir o  destino {string} no detalhe da UT', function (string) {
    let self = this;
    return expect(element(by.xpath("//*[@name='presentationnode.nodeproperty.deliveryunit.deliveryPlace']")).getText()).to.eventually.equal(string).then(function (equal) {
        if (equal) {
            printscreen.stepPrintScreen(self);
        } else {
        }
    });
});

When('seleciono a parada na cesta de viagem', function () {
    return utils.elementClickXpath("//*[@name='nlgAnalysisTreeChildren']/*/*[@name='nlgAnalysisTreeChildren']/*/*[@name='nlgAnalysisTreeChildren']/*/*[@name='nlgAnalysisTreeChildren']/*/*[@name='nlgAnalysisTreeNode']/*/*/*/*[@name='nlgAnalysisTreeCheckBox']");
});

When('seleciono o pedido {string} dentro da parada na cesta de viagem', function (string) {
    return utils.elementClickXpath("//*[@selection='selection.tripBasket']//*[@data-presentation-id='" + string + "']//*[@name='nlgAnalysisTreeCheckBox']");
});

Then('valido se o destino da parada {string} é o {string}', function (string, expectedLocality) {
    return element.all(by.css("[data-presentation-id='" + string + "'] [name='presentationnode.nodeproperty.locality']")).getText()
        .then(function (unloadingStops) {
            assert.isTrue(unloadingStops.includes(expectedLocality), `Era esperado a localidade [${expectedLocality}] no entando foi encontrado a localidade [${unloadingStops}].`)
        })
});

Then('valido se o destino da parada é o {string}', function (string2) {
    let self = this;
    return expect(element(by.xpath("//*[@name='presentationnode.nodeproperty.locality']")).getText()).to.eventually.equal(string2).then(function (equal) {
        if (equal) {
            printscreen.stepPrintScreen(self);
        } else {
        }
    });
});

Then('valido se o destino da UT é o {string}', function (string2) {
    let self = this;
    return expect(element(by.xpath("//*[@name='presentationnode.nodeproperty.deliveryunit.deliveryPlace']")).getText()).to.eventually.equal(string2).then(function (equal) {
        if (equal) {
            printscreen.stepPrintScreen(self);
        } else {
        }
    });
});

When('altero a classificação da viagem para {string}', function (classification) {
    return page.setClassification(classificationType(), classification);
});

Then('a classificação da viagem exibida deve ser a {string}', function (string) {
    return utils.assertClassification(classificationType(), string);
});

When('preencho o valor do atributo {string}', function (string) {
    return utils.fillNumberXpath("//*[@name='Aging de viagem']//*[@name='attribute']/*/*", string);
});

Then('no detalhe da Viagen deve exibir o texto {string}', function (string) {
    let self = this;
    utils.elementClickXpath("//*[@name='body']/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*[@name='nlgAnalysisTreeChildren']/*/*[@name='nlgAnalysisTreeNode']/*/*/*[@name='nlgAnalysisTreeHeaderActionsExpandNodeBody']/*");
    return expect(element(by.xpath("//*[@name='presentationnode.nodeproperty.observation']/*/*")).getText()).to.eventually.equal(string).then(function (equal) {
        if (equal) {
            printscreen.stepPrintScreen(self);
        } else {
        }
    });
});

When('na edição de viagens apago o campo Observação', function () {
    return utils.clearTextXpath("//*[@name='observation']");
});

Then('no detalhe da Viagen deve exibir a placa {string}', function (string) {
    let self = this;
    utils.elementClickXpath("//*[@name='nlgAnalysisTreeChildren']/*/*[@name='nlgAnalysisTreeNode']/*/*/*[@name='nlgAnalysisTreeHeaderActionsExpandNodeBody']/*");
    const elementTruck = "[name='presentationnode.nodeproperty.truck']";
    return element(by.css(elementTruck)).isPresent().then(function (isPresent) {
        if (isPresent === true) {
            messages.validaAtributo(elementTruck, string, self);
        } else {
            const elementPlaca = "[name='presentationnode.nodeproperty.placa']";
            return element(by.css(elementPlaca)).isPresent().then(function (isPresent) {
                if (isPresent === true) {
                    messages.validaAtributo(elementPlaca, string, self);
                }
            })
        }
    });
});

When('preencho o campo placa do veiculo {string}', function (string) {
    return utils.addTextTags("[name='truck']", string);
});

Then('verifico se o email de oferta foi enviado', function () {
    element(by.css("[data-node-type='Trip']")).getAttribute("data-presentation-id").then(function (tripCode) {
        var expetedSubject = "Oferta de Carga " + tripCode;
        return assertSubject(expetedSubject);
    });
});

Then('verifico se o email de cancelamento de oferta foi enviado', function () {
    element(by.css("[data-node-type='Trip']")).getAttribute("data-presentation-id").then(function (tripCode) {
        var expetedSubject = "Cancelamento de Oferta " + tripCode;
        return assertSubject(expetedSubject);
    });
});

Then('verifico se o email de atribuição de oferta foi enviado', function () {
    element(by.css("[data-node-type='Trip']")).getAttribute("data-presentation-id").then(function (tripCode) {
        var expetedSubject = "Oferta de Carga Atribuída " + tripCode;
        return assertSubject(expetedSubject);
    });
});

When('preencho o contexto de otimização', function () {
    utils.addTextTags("[name='routingConfigInput']", routingContext);
    return utils.elementClick("[name='buttonOk']");
});

Then('limpo a caixa de email', function () {
    return clearMailBox();
});

function assertSubject(expetedSubject) {
    request.get(process.env.MAILCATCHER_URL + '/messages/1.json', function (error, response, body) {
        assert.notEqual(response.statusCode, 404, "@todo: Escolher uma mensagem mais adequada")
        var contentBody = JSON.parse(body),
            subject = contentBody.subject;
        clearMailBox();
        assert.equal(subject, expetedSubject, "O email com assunto [" + expetedSubject + "]" + " não foi encontrado.");
    });
};

function clearMailBox() {
    request.delete(process.env.MAILCATCHER_URL + '/messages', function (error, response, body) {
        assert.equal(response.statusCode, 204, "O mailcatcher não está disponível");
    });
}

Then('o iten de pedido {string} deve ser exibido na viagem', function (string) {
    let self = this;
    return expect(element(by.xpath("//*[@data-value='" + string + "']")).getText()).to.eventually.equal(string).then(function (equal) {
        if (equal) {
            printscreen.stepPrintScreen(self);
        } else {
        }
    });
});

Then('verifico que existem UTs composta', function () {
    let self = this;
    return expect(element(by.xpath("//*[text()='UT composta']")).getText()).to.eventually.equal("UT composta").then(function (equal) {
        if (equal) {
            printscreen.stepPrintScreen(self);
        } else {
        }
    });
});

function assertCarrierTrip(carrier) {
    let self = this;
    var el = "[name='presentationnode.nodeproperty.carrier']";
    return element(by.css(el)).isPresent().then(function (isPresent) {
        if (isPresent === true) {
            messages.validaAtributo(el, carrier, self);
        } else {
            return expect(element(by.css(tripBasket + tripHeader)).getAttribute("data-carrier")).to.equal(carrier);
        }
    });
}

When('cancelo a viagem do pedido {string}', function (code) {
    page.searchTripBasket(code);
    return page.cancelTrip();
});

When('cancelo a viagem do pedido {string} com o contexto {string}', function (code, context) {
    page.searchTripBasket(code);
    return page.cancelTripWithContext(context);
});


When('otimizo com o contexto {string}', function (context) {
    utils.elementClick("[name='optimizeAllPages'");
    page.setRoutingContext(context);
    page.autoAdjustLocalityWithViolation();
    return utils.elementClick("[name='buttonOk']");
});

When('verifico qual a agenda sugerida pela otimização', function () {
    return element(by.css("[name='presentationnode.nodeproperty.date']")).getAttribute('data-value').then(function (schedule) {
        suggestedSchedule = schedule;
    })
});

When('verifico se a agenda sugerida foi mantida', function () {
    return element(by.css("[name='presentationnode.nodetype.schedule']")).getAttribute('data-value').then(function (schedule) {
        assert.equal(schedule, suggestedSchedule);
    });
});

When('verifico se a agenda está confirmada', function () {
    return element(by.css("[name='Status']")).getAttribute('data-value').then(function (status) {
        assert.equal(status, "Confirmado");
    });
});

When('confirmo a agenda sugerida', function () {
    utils.elementClick(scheduleHeader + " [name='nlgAnalysisTreeActions']");
    utils.elementClick("[name='scheduleEdition.button']");
    utils.fillText("input[name='password']", "Teste automatizado");
    utils.elementClickXpath("//*[@name='tag-(Status) Sugerido - Sugerido']/*[@name='nlgTagInputRemoveTag']");
    utils.fillTextxpath("//*[text()='Status']/../../../..//*[@name='tagInputTextField']", "Confirmado");
    utils.elementClick("[name='buttonSave']");
    utils.elementClick("[name='routingSelectionDialog'] [name='buttonOk']");
    return utils.elementClick("[name='messagesModal'] [name='buttonSave']");
});

Given('que libero a viagem com o pedido {string}', function (orderCode) {
    navigate.to(menu, subMenu);
    page.searchTripBasket(orderCode);
    return page.unserveTrip(orderCode);
});

Given('que a viagem com o pedido {string} está expedida', function (orderCode) {
    page.searchTripBasket(orderCode);
    return page.unserveTrip(orderCode);
});

Given('que a viagem com o pedido {string} tenha a sua expedição cancelada', function (orderCode) {
    navigate.to(menu, subMenu);
    page.searchTripBasket(orderCode);
    page.unserveTrip(orderCode);
    return page.reprogrammingTrip(orderCode);
});

Given('cancelo a expedição da viagem com o pedido {string}', function (orderCode) {
    navigate.to(menu, subMenu);
    page.searchTripBasket(orderCode);
    return page.unserveTrip(orderCode);
});

Given('reprogramo a viagem com o pedido {string}', function (orderCode) {
    navigate.to(menu, subMenu);
    page.searchTripBasket(orderCode);
    return page.reprogrammingTrip(orderCode);
});

Given('que cadastro a viagem com o pedido {string}', function (orderCode) {
    navigate.to(menu, subMenu);
    return page.createTrip(orderCode);
});

Given('que seja cancelada a viagem com o pedido {string}', function (orderCode) {
    navigate.to(menu, subMenu);
    page.searchTripBasket(orderCode);
    page.cancelTrip();
    page.searchUserBasket(orderCode);
    page.selectOrderInBasket(userBasket);
    return page.moveToAvailableBasket();
});

Given('preencho a transportadora com {string}', function (carrierCode) {
    return page.setCarrier(carrierCode);
});

Given('preencho o veículo com {string}', function (vehicleCode) {
    return page.setVehicle(vehicleCode);
});

Then('o sistema exibe mensagem informando que a viagem não foi ofertada', function () {
    return messages.validaAMensagemQueTerminaCom("não foi ofertada, pois possui pedido FOB ou FOBT");
});

Then('verifico se o invólucro escolhido é {string}', function (wrapper) {
    return messages.validaAtributo("[name='presentationnode.nodeproperty.deliveryunit.wrapper']", wrapper);
});

When('clico no botão Unitizar', function () {
    return page.unitizeButton();
});

When('que seja cancelada a oferta da viagem com o pedido {string}', function (orderCode) {
    return page.cancelTenderingTrip(orderCode);
});

When('clico no botão Operação manual em todas as páginas', function () {
    return page.organizeAllPages();
});

When('clico no botão Mover todas as páginas para a cesta', function () {
    return page.moveAllPagesToUser();
});

Then('clico no botão Mover Todas as paginas para Geral', function () {
    return page.moveAllPagesToAvailable();
});

Then('altero a visão para Unidades de transporte por viagens', function () {
    return page.changeViewToShipmentUnitView();
});

Then('altero a visão para Unidades de transporte por Destino', function () {
    return page.changeViewByDestination();
});

Then('altero a visão para Agenda', function () {
    return page.changeViewToSchedule();
});

Then('clico no botão Mover pedidos para minha cesta', function () {
    return page.moveToUserBasketButton();
});

Then('verifico se o header da unidade de transporte não contém um invólucro composto', function () {
    return page.assertHeaderHasNoCompositeShipmentUnitWrapper();
});

Then('verifico se o header do invólucro composto é apresentado', function () {
    return page.assertCompositeShipmentUnitWrapperHeaderIspresent();
});

When('altero a estratégia de seleção de destino para Hub de destino mais proximo possíveis do pedido', function () {
    page.selectAllOrders();
    return page.changeDestinationsTo("Hub de destino mais proximo (Possíveis do pedido)");
});

When('unitizo atravez da operação manual em todas as páginas com o contexto {string}', function (context) {
    page.organizeAllPages();
    page.setRoutingContext(context);
    page.autoAdjustLocalityWithViolation();
    utils.elementClick("[name='organize.unitize']");
    return utils.elementClick("[name='buttonOk']");
});

When('realizo operação manual em todas as páginas com o contexto {string}', function (context) {
    page.organizeAllPages();
    page.setRoutingContext(context);
    return page.autoAdjustLocalityWithViolation();
});

Then('verifico se o dia de chagada na parada de descarregamento corresponde ao dia corrente', function () {
    const weekDay = moment().format('dddd');
    return page.assertWeekDayIsEqual(weekDay);
});

Then('verifico se o dia de chagada na parada de descarregamento corresponde ao próximo dia util', function () {
    const weekDay = moment().add(1, 'days').format('dddd');
    return page.assertWeekDayIsEqual(weekDay);
});


Then('verifico se o dia de chagada na parada de descarregamento corresponde a {string}', function (weekDay) {
    return page.assertWeekDayIsEqual(weekDay);
});

Given('que cadastro a viagem para o pedido {string} com a transportadora {string} e veículo {string}', function (order, carrier, vehicle) {
    navigate.to("Programação", "Análise");
    page.searchGeneralBasket(order);
    page.moveAllPagesToUser();
    page.searchUserBasket(order);
    page.organizeAllPages();
    page.autoAdjustLocalityWithViolation();
    page.confirmSelectedContext();
    page.setRestrictions(vehicle, carrier);
    return page.confirmsTripCreation();
});

Given('que gero uma agenda para o pedido {string} com destino {string} e contexto {string}', function (pedido, destination, context) {
    return page.generateLoadingSchedule(pedido, destination, context);
});

When('clico no botão Otimizar todas as páginas', function () {
    page.optimizeAllPages();
    page.confirmSelectedContext();
    return page.autoAdjustLocalityWithViolation();
});

Then('verifico se o horário de chegada está entre {string} e {string}', function (startWindow, endWindow) {
    return page.assertArrivalTime(startWindow, endWindow);
});