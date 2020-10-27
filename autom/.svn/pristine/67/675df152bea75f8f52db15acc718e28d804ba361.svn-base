"use strict";

var { Given, When, Then } = require("cucumber");

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect;
require('dotenv').config();
var restricaoLocalidade = '';

var functioningDataHolder = require("../scripts/functioningDataHolder"),
    expect = chai.expect,
    scroll = require('../scripts/scroll'),
    utils = require('../scripts/utils'),
    filter = require("../scripts/filter"),
    messages = require("../scripts/messages"),
    printscreen = require("../scripts/printScreen"),
    present = require("../scripts/wait").present,
    fillDuration = utils.fillDuration,
    assertBasicInfo = require("../scripts/fillBasicEntity").assertBasicEntityInfo,
    assertDurationContent = utils.assertDurationContent,
    assertTextFieldContent = utils.assertTextFieldContent,
    elementClick = utils.elementClick,
    elementClickXpath = utils.elementClickXpath,
    fillText = utils.fillText,
    fillTextxpath = utils.fillTextxpath,
    fillNumber = utils.fillNumber,
    fillNumberXpath = utils.fillNumberXpath,
    fillCombo = utils.fillCombo,
    comboSearchAndSelect = utils.comboSearchAndSelect,
    addTextTags = utils.addTextTags;

const page = require("../pages/cadastre/localityRestrictionPage");

/********* BOTÕES ************/

/********* VALIDAÇÃO CAMPOS ************/
When('confere se os campos estão preenchidos Codigo {string},  Nome {string} e Descrição {string}', function (string, string2, string3) {
    return assertBasicInfo(string, string2, string3);
});

When('confere se o Agrupador está preenchido com {string}', function (string) {
    return assertTextFieldContent(["name='tagAnchor'"], string);
});

When('confere se a duração da ZT {string} está preenchida com {string} dias, {string} horas e {string} minutos', function (string, string2, string3, string4) {
    return assertDurationContent(string, string2, string3, string4);
});

/********* VALIDAÇÃO MENSAGENS ************/
Then('é exibido a mensagem Especificar o calculador de duração de carregamento e descarregamento.', function () {
    let self = this;
    return messages.validaMensagem("Especificar o calculador de duração de carregamento e descarregamento", self);
});

Then('é exibido a mensagem Sem horário de funcionamento definido.', function () {
    let self = this;
    return messages.validaMensagem("Sem horário de funcionamento definido.", self);
});

Then('é exibido a mensagem A categoria de invólucro deve ser preenchida', function () {
    let self = this;
    return messages.validaMensagem("A categoria de invólucro deve ser preenchida", self);
});

Then('é exibido a mensagem Altura máxima por categoria de invólucro não deve possuir propriedades vazias', function () {
    let self = this;
    return messages.validaMensagem("Altura máxima por categoria de invólucro não deve possuir propriedades vazias", self);
});

Then('é exibido a mensagem Volume mínimo da carga é maior que o volume máximo', function () {
    let self = this;
    return messages.validaMensagem("Volume mínimo da carga é maior que o volume máximo", self);
});

Then('é exibido a mensagem Peso mínimo da carga é maior que o peso máximo', function () {
    let self = this;
    return messages.validaMensagem("Peso mínimo da carga é maior que o peso máximo", self);
});

Then('é exibido a mensagem Custo mínimo de carregamento é maior que o custo máximo', function () {
    let self = this;
    return messages.validaMensagem("Custo mínimo de carregamento é maior que o custo máximo", self);
});

Then('é exibido a mensagem Custo mínimo de descarregamento é maior que o custo máximo', function () {
    let self = this;
    return messages.validaMensagem("Custo mínimo de descarregamento é maior que o custo máximo", self);
});

Then('é exibido a mensagem Quantidade de categoria de invólucro não deve possuir valores mínimos maiores que os valores máximos', function () {
    let self = this;
    return messages.validaMensagem("Quantidade de categoria de invólucro não deve possuir valores mínimos maiores que os valores máximos", self);
});

Then('é exibido Quantidade de categoria de invólucro não deve possuir propiedades vazias', function () {
    let self = this;
    return messages.validaMensagem("Quantidade de categoria de invólucro não deve possuir propiedades vazias", self);
});

/********* PREENCHIMENTO DE CAMPOS ************/
function generalCheckboxes() {
    elementClick("[name='allowedUntiedPacks']");
    elementClick("[name='allowedOrderSplit']");
    elementClick("[name='allocateDockForTripFob']");
    elementClick("[name='allowedToEmbed']");
    return elementClick("[name='allowedToBeEmbedded']");
}

function selectAllowedOrientation() {
    elementClick("[name='entity.localityRestrictionWrapperCategory.lwhAllowed.']");
    elementClick("[name='entity.localityRestrictionWrapperCategory.lhwAllowed.']");
    elementClick("[name='entity.localityRestrictionWrapperCategory.hlwAllowed.']");
    elementClick("[name='entity.localityRestrictionWrapperCategory.hwlAllowed.']");
    elementClick("[name='entity.localityRestrictionWrapperCategory.wlhAllowed.']");
    return elementClick("[name='entity.localityRestrictionWrapperCategory.whlAllowed.']");
}

When('clico em todos os checkboxes', function () {
    return generalCheckboxes();
});

When('clico no checkbox Permitir desamarração de fardos?', function () {
    return elementClick("[name='allowedUntiedPacks']");
});

When('clico no checkbox Permitir embutimento das UEs?', function () {
    return elementClick("[name='allowedToEmbed']");
});

When('clico no checkbox Permitir a UEs serem embutidas', function () {
    return elementClick("[name='allowedToBeEmbedded']");
});

When('clico no checkbox Permitir quebra de pedidos?', function () {
    return elementClick("[name='allowedOrderSplit']");
});

When('clico no checkbox Agendar doca em viagem FOB', function () {
    return elementClick("[name='allocateDockForTripFob']");
});

When('clico no checkbox Compatibilidade', function () {
    return elementClick("[name='entity.enabledCompatibilityRestrictions']");
});

When('clico no botão Pesquisar', function () {
    return elementClick("[name='searchIncompatibleLocalityRestrictions']");
});

When('seleciono a Restrição de localidade incompativel {string}', function (string) {
    fillTextxpath("//*[@name='incompatibleLocalityRestrictions']/*/*/*/*[@name='filterLeft']", string);
    elementClick("[name='incompatibleLocalityRestrictions'] [name='ListLeft'] option[label='" + string + "']");
    return elementClickXpath("//*[@name='incompatibleLocalityRestrictions']/*/*/*/*[@name='moveToRight']");
});

When('preencho o campo Volume minimo {string} e Volume máximo {string}', function (string, string2) {
    fillNumberXpath("//*[@name='LocalityRestrictionLogistics.logistConstrs.minVolume']//*[@name='nlgNumberInput']", string);
    return fillNumberXpath("//*[@name='LocalityRestrictionLogistics.logistConstrs.maxVolume']//*[@name='nlgNumberInput']", string2);
});

When('preencho o campo Peso minimo {string} e Peso máximo {string}', function (string, string2) {
    fillNumberXpath("//*[@name='LocalityRestrictionLogistics.logistConstrs.minWeight']//*[@name='nlgNumberInput']", string);
    return fillNumberXpath("//*[@name='LocalityRestrictionLogistics.logistConstrs.maxWeight']//*[@name='nlgNumberInput']", string2);
});

When('preencho o campo Limites para quantidades da categoria de invólucro {string} com mínimo {string} e máximo {string}', function (string, string2, string3) {
    elementClick("[name='addWrapper']");
    fillTextxpath("//*[@name='entity.localityRestrictionLogistics.quantityByWrapperCategory.shipmentUnitWrapperCategories']//*[@name='tagInputTextField']", string);
    fillNumberXpath("//*[@name='localityRestrictionLogistics.quantityByWrapperCategory.min']//*[@name='nlgNumberInput']", string2);
    return fillNumberXpath("//*[@name='localityRestrictionLogistics.quantityByWrapperCategory.max']//*[@name='nlgNumberInput']", string3);
});

When('preencho a Taxa de carregamento com o script {string}', function (string) {
    return addTextTags("[name='entity.loadUnloadTimeCalculatorScript']", string);
});

When('preencho a exceção de funcionamento {string} das {string} as {string}', function (string, string2, string3) {
    elementClick("[name='exceptionalWorkingHour'] [name='add']");
    fillText("[name='dateInput']", string);
    fillCombo("[name='exceptionalWorkingHourType']", "Não-Funcionamento");
    fillNumberXpath("//*[@name='exceptionalWorkingHour']//*[@name='startTime']//*[@name='hour']", string2);
    fillNumberXpath("//*[@name='exceptionalWorkingHour']//*[@name='startTime']//*[@name='minute']", string3);
    fillNumberXpath("//*[@name='exceptionalWorkingHour']//*[@name='endTime']//*[@name='hour']", string4);
    return fillNumberXpath("//*[@name='exceptionalWorkingHour']//*[@name='endTime']//*[@name='minute']", string5);
});

When('preencho a exceção de {string} dia {string} das {string} : {string} as {string} : {string} em função {string}', function (type, date, startTimeHour, startTimeMinute, endTimeHour, endTimeMinute, reason) {
    utils.elementClickXpath("//*[@name='exceptionalWorkingHour']//*[@name='add']");
    utils.clearNumberFieldXpath("//*[@name='dateInput']");
    fillTextxpath("//*[@name='dateInput']", date);
    fillTextxpath("//*[@name='exceptionalWorkingHourType']//*[@name='tagInputTextField']", type);
    fillNumberXpath("//*[@name='exceptionalWorkingHour']//*[@name='startTime']//*[@name='hour']//*[@name='nlgNumberInput']", startTimeHour);
    fillNumberXpath("//*[@name='exceptionalWorkingHour']//*[@name='startTime']//*[@name='minute']//*[@name='nlgNumberInput']", startTimeMinute);
    fillNumberXpath("//*[@name='exceptionalWorkingHour']//*[@name='endTime']//*[@name='hour']//*[@name='nlgNumberInput']", endTimeHour);
    fillNumberXpath("//*[@name='exceptionalWorkingHour']//*[@name='endTime']//*[@name='minute']//*[@name='nlgNumberInput']", endTimeMinute);
    return fillTextxpath("//*[@name='reason']/*/*", reason);
});

When('preencho o custo de carregamento mínimo {string}, máximo {string} e fixo {string}', function (string, string2, string3) {
    fillNumberXpath("//*[@name='loadCostParams']//*[@name='model.minCost']//*[@name='nlgNumberInput']", string);
    fillNumberXpath("//*[@name='loadCostParams']//*[@name='model.maxCost']//*[@name='nlgNumberInput']", string2);
    return fillNumberXpath("//*[@name='loadCostParams']//*[@name='model.independentCost']//*[@name='nlgNumberInput']", string3);
});

When('preencho o custo de descarregamento mínimo {string}, máximo {string} e fixo {string}', function (string, string2, string3) {
    fillNumberXpath("//*[@name='unloadCostParams']//*[@name='model.minCost']//*[@name='nlgNumberInput']", string);
    fillNumberXpath("//*[@name='unloadCostParams']//*[@name='model.maxCost']//*[@name='nlgNumberInput']", string2);
    return fillNumberXpath("//*[@name='unloadCostParams']//*[@name='model.independentCost']//*[@name='nlgNumberInput']", string3);
});

When('clico na aba Monitoramento', function () {
    return elementClick("[name='monitoring']");
});

When('preencho o tempo para considerarmos uma viagem atrasada ou adiantada {string} dia, {string} hora, {string} minutos, {string} segundos e {string} milesundos', function (string, string2, string3, string4, string5) {
    return fillDuration(string, string2, string3, string4, string5);
});

When('clico no checkbox Atualizar tempo de descarga automaticamente', function () {
    return elementClick("[name='updateUnloadFixedTime']");
});

When('seleciono a Categorias de Produtos Bloqueadas em restrições de localidade {string}', function (string) {
    fillTextxpath("//*[@name='localityRestrictionProductCategory.incompCategories']/*/*/*/*[@name='filterLeft']", string);
    elementClick("[name='localityRestrictionProductCategory.incompCategories'] [name='ListLeft'] option[label='" + string + "']");
    elementClickXpath("//*[@name='localityRestrictionProductCategory.incompCategories']/*/*/*/*[@name='moveToRight']");
    return elementClick("[name='localityRestrictionProductCategory.incompCategories'] [name='clearLeftFilter']");
});

When('preencho o valor máximo da Categoria de Produtos {string} em {string}', function (string, string2) {
    fillTextxpath("//*[@name='entity.localityRestrictionProductCategory.productCategoryConstraints']/*[@name='tagInputTextField']", string);
    fillNumberXpath("//*[@name='entity.localityRestrictionProductCategory.productCategoryConstraints.productCategoryRestriction.maxPrice']/*[@name='nlgNumberInput']", string2);
    return elementClick("[name='tag-" + string + "'] [name='nlgTagInputRemoveTag']");
});

When('preencho o valor máximo da Categoria de Produtos {string} em {string} e incompatibilizo a categoria {string}', function (string, string2, string3) {
    fillTextxpath("//*[@name='entity.localityRestrictionProductCategory.productCategoryConstraints']/*[@name='tagInputTextField']", string);
    fillNumberXpath("//*[@name='entity.localityRestrictionProductCategory.productCategoryConstraints.productCategoryRestriction.maxPrice']/*[@name='nlgNumberInput']", string2);
    fillTextxpath("//*[@name='incompatibleProductCategories']/*/*/*/*[@name='filterLeft']", string3);
    elementClick("[name='incompatibleProductCategories'] [name='ListLeft'] option[label='" + string3 + "']");
    return elementClickXpath("//*[@name='incompatibleProductCategories']/*/*/*/*[@name='moveToRight']");
});

When('seleciono a Categoria de invólucro {string} como restrita', function (string) {
    fillTextxpath("//*[@name='localityRestrictionWrapperCategory.incompShipmentUnits']/*/*/*/*[@name='filterLeft']", string);
    elementClick("[name='localityRestrictionWrapperCategory.incompShipmentUnits'] [name='ListLeft'] option[label='" + string + "']");
    elementClickXpath("//*[@name='localityRestrictionWrapperCategory.incompShipmentUnits']/*/*/*/*[@name='moveToRight']");
    return elementClick("[name='localityRestrictionWrapperCategory.incompShipmentUnits'] [name='clearLeftFilter']");
});

When('seleciono a Categoria de invólucro {string} e incompatibilico com {string}', function (string, string2) {
    fillTextxpath("//*[@name='entity.localityRestrictionWrapperCategory.categoryConstraints']/*[@name='tagInputTextField']", string);
    fillTextxpath("//*[@name='localityRestrictionWrapperCategory.comparableShipmentUnits']/*/*/*/*[@name='filterLeft']", string2);
    elementClick("[name='localityRestrictionWrapperCategory.comparableShipmentUnits'] [name='ListLeft'] option[label='" + string2 + "']");
    return elementClickXpath("//*[@name='localityRestrictionWrapperCategory.comparableShipmentUnits']/*/*/*/*[@name='moveToRight']");
});

When('seleciono as Orientações Permitidas para o invólucro {string}', function (string) {
    elementClick("[name='shipmentUnitRotations'] [name='add']");
    fillTextxpath("//*[@name='entity.localityRestrictionWrapperCategory.shipmentUnitRotations.ShipmentUnitWrapperCategory']//*[@name='tagInputTextField']", string);
    return selectAllowedOrientation();
});

When('preencho a Velocidade média {string}', function (string) {
    return fillNumberXpath("//*[@name='entity.localityRestrictionVehicle.defaultSpeed']//*[@name='nlgNumberInput']", string);
});

When('preencho Valor máximo da carga {string}', function (string) {
    return fillNumberXpath("//*[@name='entity.localityRestrictionVehicle.loadPrice']//*[@name='nlgNumberInput']", string);
});

When('desbloqueio o Hub de destino {string}', function (string) {
    return page.blockDestinationHub(string);
});

When('desbloqueio o Hub de passagem {string}', function (string) {
    return page.blockPassageHub(string);
});

When('preencho Distância máxima para carregamento ou descarregamento {string}', function (string) {
    return fillNumberXpath("//*[@name='entity.localityRestrictionLoadUnload.maxDistanceForPositiveXLoadUnload']//*[@name='nlgNumberInput']", 300);
});

When('seleciono Tipo de carregamento ou descarregamento não permitidos {string}', function (string) {
    utils.fillTextxpath("//*[@name='blockedLoadUnloadDirections']/*/*/*/*[@name='filterLeft']", string);
    utils.elementClick("[name='blockedLoadUnloadDirections'] [name='ListLeft'] option[label='" + string + "']");
    utils.elementClickXpath("//*[@name='blockedLoadUnloadDirections']/*/*/*/*[@name='moveToRight']");
    return utils.elementClick("[name='blockedLoadUnloadDirections'] [name='clearLeftFilter']");
});

When('preencho Altura máxima de carregamento ou descarregamento da categoria {string} com {string}', function (string, string2) {
    utils.elementClickXpath("//*[@name='addWrapperCategory']");
    utils.fillTextxpath("//*[@name='entity.localityRestrictionLogistics.unloadCostParams.costByWrapperCategory.shipmentUnitWrapperCategories']/*[@name='tagInputTextField']", string);
    return fillNumberXpath("//*[@name='entity.localityRestrictionLogistics.unloadCostParams.costByWrapperCategory.value']//*[@name='nlgNumberInput']", string2)
});

When('seleciono o veículo {string} e categoria {string} e limito a altura em {string}', function (string, string2, string3) {
    utils.fillTextxpath("//*[@name='entity.localityRestrictionVehicleProductCategorySet.vehicle']/*[@name='tagInputTextField']", string);
    utils.elementClickXpath("//*[@name='addProductCategory']");
    utils.fillTextxpath("//*[@name='entity.localityRestrictionVehicleProductCategorySet.productCategory']/*[@name='tagInputTextField']", string2);
    return fillNumberXpath("//*[@name='entity.localityRestrictionVehicleProductCategorySet.maxHeight']//*[@name='nlgNumberInput']", string3);
});

When('preencho o carregamento com categoria de invólucro {string}, grandeza {string} e variável {string}', function (string, string2, string3) {
    elementClickXpath("//*[@name='loadCostParams']//*[@name='loadcosts']//*[@name='addCostByWrapperCategoryLoad']");
    fillTextxpath("//*[@name='loadCostParams']//*[@name='loadcosts']//*[@name='0']//*[@name='model.costByWrapperCategory.shipmentUnitWrapperCategories']//*[@name='tagInputTextField']", string);
    fillTextxpath("//*[@name='loadCostParams']//*[@name='loadcosts']//*[@name='0']//*[@name='model.costByWrapperCategory.physicalQuantity']//*[@name='tagInputTextField']", string2);
    return fillNumberXpath("//*[@name='loadCostParams']//*[@name='0']//*[@name='model.costByWrapperCategory.cost']//*[@name='nlgNumberInput']", string3);
});

When('preencho o descarregamento com categoria de invólucro {string}, grandeza {string} e variável {string}', function (string, string2, string3) {
    elementClickXpath("//*[@name='unloadCostParams']//*[@name='addCostByWrapperCategoryLoad']");
    fillTextxpath("//*[@name='unloadCostParams']//*[@name='loadcosts']//*[@name='0']//*[@name='model.costByWrapperCategory.shipmentUnitWrapperCategories']//*[@name='tagInputTextField']", string);
    fillTextxpath("//*[@name='unloadCostParams']//*[@name='loadcosts']//*[@name='0']//*[@name='model.costByWrapperCategory.physicalQuantity']//*[@name='tagInputTextField']", string2);
    return fillNumberXpath("//*[@name='unloadCostParams']//*[@name='loadcosts']//*[@name='0']//*[@name='model.costByWrapperCategory.cost']//*[@name='nlgNumberInput']", string3);
});

When('preencho o horario de funcionamento padrão', function () {
    functioningDataHolder.cleanWorkingHour();
    functioningDataHolder.fillDefaultWorking();
    return elementClick("[name='functioning']");
});

When('preencho o horario de funcionamento com intervalo', function () {
    functioningDataHolder.cleanWorkingHour();
    //segunda 08:00 às 18:00
    var startTimeWorkingHour0 = { hour: "08", minute: "00" };
    var endTimeWorkingHour0 = { hour: "18", minute: "00" };
    functioningDataHolder.addWorkingHour(0, "Segunda-Feira", startTimeWorkingHour0, endTimeWorkingHour0);
    //segunda 19:00 às 21:00
    var startTimeWorkingHour1 = { hour: "19", minute: "00" };
    var endTimeWorkingHour1 = { hour: "21", minute: "00" };
    functioningDataHolder.addWorkingHour(1, "Segunda-Feira", startTimeWorkingHour1, endTimeWorkingHour1);
    return elementClick("[name='functioning']");
});

When('removo o horário de funcionamento', function () {
    functioningDataHolder.cleanWorkingHour();
    return elementClick("[name='functioning']");
});

When('removo o sábado e o domingo do horário de funcionamento', function () {
    elementClick("[name='6'] [name='remove']");
    return elementClick("[name='5'] [name='remove']");
});

When('altero o horário de funcionamento do sabado e domingo', function () {
    // utils.fillNumber("[name='br.com.neolog.time.WeekDay.SUNDAY'] [name='startTime'] [name='hour']", "10");
    utils.fillNumberXpath("//*[@name='br.com.neolog.time.WeekDay.SATURDAY']//*[@name='endTime']//*[@name='hour']//*[@name='nlgNumberInput']", "13");
    return utils.fillNumberXpath("//*[@name='br.com.neolog.time.WeekDay.SUNDAY']//*[@name='endTime']//*[@name='hour']//*[@name='nlgNumberInput']", "13");
});

When('preencho o horario de funcionamento com sobreposição', function () {
    functioningDataHolder.cleanWorkingHour();
    //segunda 08:00 às 18:00
    var startTimeWorkingHour0 = { hour: "08", minute: "00" };
    var endTimeWorkingHour0 = { hour: "18", minute: "00" };
    functioningDataHolder.addWorkingHour(0, "Segunda-Feira", startTimeWorkingHour0, endTimeWorkingHour0);
    //segunda 16:00 às 21:00
    var startTimeWorkingHour1 = { hour: "16", minute: "00" };
    var endTimeWorkingHour1 = { hour: "21", minute: "00" };
    functioningDataHolder.addWorkingHour(1, "Segunda-Feira", startTimeWorkingHour1, endTimeWorkingHour1);
    return elementClick("[name='functioning']");
});

When('preencho o horario de funcionamento com horario inicial maior que o final', function () {
    functioningDataHolder.cleanWorkingHour();
    //segunda 08:00 às 18:00
    var startTimeWorkingHour0 = { hour: "08", minute: "00" };
    var endTimeWorkingHour0 = { hour: "07", minute: "00" };
    functioningDataHolder.addWorkingHour(0, "Segunda-Feira", startTimeWorkingHour0, endTimeWorkingHour0);
    return elementClick("[name='functioning']");
});

When('removo a Taxa de carregamento com o script {string}', function (string) {
    return elementClick("[name='tag-" + string + "'] [name='nlgTagInputRemoveTag']");
});

When('removo a Categoria de Invólucro {string}', function (string) {
    return elementClick("[name='tag-" + string + "'] [name='nlgTagInputRemoveTag']");
});

When('removo o dia da Semana {string}', function (string) {
    return elementClick("[name='tag-" + string + "'] [name='nlgTagInputRemoveTag']");
});

Given('preencho a Restrição padrão {string}', function (string) {
    restricaoLocalidade = element(by.css("[name='localityRestrictionSysParams.localityRestriction'] [name='tagAnchor']")).getText();
    return comboSearchAndSelect("[name='localityRestrictionSysParams.localityRestriction']", string, string);
});

Given('preencho a Restrição padrão com a default', function () {
    return restricaoLocalidade.then(function (restricaoLocalidade) {
        var el = "[name='localityRestrictionSysParams.localityRestriction']";
        if (restricaoLocalidade.includes(" - ")) {
            var nomeRestricaLocalidade = restricaoLocalidade.substring(0, restricaoLocalidade.indexOf(' - '));
            return comboSearchAndSelect(el, nomeRestricaLocalidade, restricaoLocalidade);
        } else {
            return comboSearchAndSelect(el, restricaoLocalidade, restricaoLocalidade);
        }
    });
});

Given('que cadastro a restrição de localidade {string}', function (restricaoLocalidade) {
    return page.cadastre(restricaoLocalidade, restricaoLocalidade, restricaoLocalidade);
});