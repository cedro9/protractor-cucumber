"use strict";

var { Given, When, Then } = require("cucumber");

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect;

var utils = require('../scripts/utils');
var filter = require('../scripts/filter')
var fillBasicInfo = require("../scripts/fillBasicEntity").fillBasicEntityInfo,
  fillText = utils.fillText,
  fillTextxpath = utils.fillTextxpath,
  fillNumber = utils.fillNumber,
  fillNumberXpath = utils.fillNumberXpath,
  fillCombo = utils.fillCombo,
  elementClick = utils.elementClick,
  functioningDataHolder = require("../scripts/functioningDataHolder"),
  cleanWorkingHour = functioningDataHolder.cleanWorkingHour,
  fillDefaultWorking = functioningDataHolder.fillDefaultWorking,
  assertBasicInfo = require("../scripts/fillBasicEntity").assertBasicEntityInfo;

/********* EXCLUSÃO DE REGISTRO ************/
Then('excluo o cadastro gerado no teste com o codigo {string}', function (string) {
  return utils.excluirCadastro(string);
});

Then('excluo o cadastro gerado no teste com o codigo {string} e atributo {string}', function (string, string2) {
  return utils.excluirCadastroComAtributo(string, string2);
});

Then('excluo o cadastro gerado no teste com o nome {string}', function (string) {
  return utils.excluirCadastroNome(string);
});

/********* PREENCHIMENTO DE CAMPOS ************/
When('preencho o campo Codigo {string},  Nome {string} e Descrição {string}', function (code, name, description) {
  fillBasicInfo(code, name, description);
  assertBasicInfo(code, name, description);
  return elementClick("[name='code']");
});

When('altero o campo  Nome {string} e Descrição {string}', function (name, description) {
  utils.clearTextXpath("//*[@name='name']");
  fillText("[name='name']", name);
  utils.clearTextXpath("//*[@name='description']");
  return fillText("[name='description']", description);
});

When('preencho o campo Codigo {string}', function (code) {
  utils.clearTextXpath("//*[@name='code']");
  return fillText("[name='code']", code);
});

When('preencho o campo Descrição {string}', function (description) {
  utils.clearTextXpath("//*[@name='description']");
  return fillText("[name='description']", description);
});

When('preencho o campo Nome {string}', function (name) {
  utils.clearTextXpath("//*[@name='name']");
  return fillText("[name='name']", name);
});

When('preencho o campo Codigo do item de pedido {string}', function (code) {
  utils.clearTextXpath("//*[@name='orderItem.sourceId']");
  return fillText("[name='orderItem.sourceId']", code);
});

When('Preencho o campo Embarcador com o embarcador {string}', function (embarcador) {
  utils.clearTextFieldXpath("//*[@name='shipper']/*[@name='tagInputTextField']");
  return utils.fillTextxpath("//*[@name='shipper']/*[@name='tagInputTextField']", embarcador);
});

When('preencho o horario de funcionamento segunda a sexta-feira das {string} as {string}', { timeout: 600 * 1000 }, function (string, string2) {
  clickHorarioFuncionamento();
  cleanWorkingHour();
  fillDefaultWorking();
  return elementClick("[name='functioning']");
});

When('preencho a exceção data {string}, Tipo {string} das {string} as {string}', function (string, string2, string3, string4) {
  utils.elementClick("[name='exceptionalWorkingHour'] [name='header'] [name='add']");
  utils.clearTextXpath("//*[@name='dateInput']");
  // utils.clearNumberFieldXpath("//*[@name='dateInput']");
  fillTextxpath("//*[@name='dateInput']", string);
  fillTextxpath("//*[@name='exceptionalWorkingHourType']/*/*/*[@name='tagInputTextField']", string2);
  fillNumberXpath("//*[@name='exceptionalWorkingHour']/*/*[@name='0']/*[@name='startTime']/*/*/*/*[@name='nlgTimepicker']/*[@name='hour']/*[@name='nlgNumberInput']", string3);
  fillNumberXpath("//*[@name='exceptionalWorkingHour']/*/*[@name='0']/*[@name='startTime']/*/*/*/*[@name='nlgTimepicker']/*[@name='minute']/*[@name='nlgNumberInput']", "00");
  fillNumberXpath("//*[@name='exceptionalWorkingHour']/*/*[@name='0']/*[@name='endTime']/*/*/*/*[@name='nlgTimepicker']/*[@name='hour']/*[@name='nlgNumberInput']", string4);
  fillNumberXpath("//*[@name='exceptionalWorkingHour']/*/*[@name='0']/*[@name='endTime']/*/*/*/*[@name='nlgTimepicker']/*[@name='minute']/*[@name='nlgNumberInput']", "00");
  return elementClick("[name='reason']");
});

When('preencho o horario de funcionamento Segunda-Feira {string} as {string} e {string} as {string}', function (string, string2, string3, string4) {
  utils.elementMultiClick("[name='allowedTimes'] [name='header'] [name='add']", 2);
  //DIA
  fillTextxpath("//*[@name='0']/*[@name='dayOnWeek']/*/*/*[@name='tagInputTextField']", "Segunda-Feira");
  fillTextxpath("//*[@name='1']/*[@name='dayOnWeek']/*/*/*[@name='tagInputTextField']", "Segunda-Feira");
  //Hora Inicial
  fillNumberXpath("//*[@name='0']/*[@name='startTime']/*/*/*/*[@name='nlgTimepicker']/*[@name='hour']/*[@name='nlgNumberInput']", string);
  fillNumberXpath("//*[@name='1']/*[@name='startTime']/*/*/*/*[@name='nlgTimepicker']/*[@name='hour']/*[@name='nlgNumberInput']", string3);
  //Minuto Inicial
  fillNumberXpath("//*[@name='0']/*[@name='startTime']/*/*/*/*[@name='nlgTimepicker']/*[@name='minute']/*[@name='nlgNumberInput']", "00");
  fillNumberXpath("//*[@name='1']/*[@name='startTime']/*/*/*/*[@name='nlgTimepicker']/*[@name='minute']/*[@name='nlgNumberInput']", "00");
  //Hora Final
  fillNumberXpath("//*[@name='0']/*[@name='endTime']/*/*/*/*[@name='nlgTimepicker']/*[@name='hour']/*[@name='nlgNumberInput']", string2);
  fillNumberXpath("//*[@name='1']/*[@name='endTime']/*/*/*/*[@name='nlgTimepicker']/*[@name='hour']/*[@name='nlgNumberInput']", string4);
  //Minuto Final
  fillNumberXpath("//*[@name='0']/*[@name='endTime']/*/*/*/*[@name='nlgTimepicker']/*[@name='minute']/*[@name='nlgNumberInput']", "00");
  fillNumberXpath("//*[@name='1']/*[@name='endTime']/*/*/*/*[@name='nlgTimepicker']/*[@name='minute']/*[@name='nlgNumberInput']", "00");
  return elementClick("[name='functioning']");
});

When('preencho a Prioridade {string}', function (string) {
  return fillNumberXpath("//*[@name='entity.priority']/*[@name='nlgNumberInput']", string);
});

When('preencho o Inconterm {string}', function (string) {
  utils.clearTextFieldXpath("//*[@name='entity.incoterm']/*[@name='tagInputTextField']");
  return utils.fillTextxpath("//*[@name='entity.incoterm']/*[@name='tagInputTextField']", string);

});

When('realizo o filtro com o codigo {string}', function (code) {
  filter.configuraFiltro();
  utils.fillTextxpath("//*[@name='tagInputTextField']", code);
  return utils.elementClickXpath("//*[@name='submitButton']");
});

When('realizo o filtro com o codigo externo {string}', function (string) {
  filter.filterByOrderCodeAndGetCount(string);
  fillText("[name='tagInputTextField']", string);
  return elementClick("[name='submitButton']");
});

function clickHorarioFuncionamento() {
  //Verifica se Horários Permitidos está desmarcado para então clicar
  element(by.css("[name='workingHoursAllowed'] [name='workingHoursAllowed']")).isSelected().then(function (isSelected) {
    if (isSelected != true) {
      return elementClick("[name='workingHoursAllowed'] [name='workingHoursAllowed']");
    }
  });
};

// exports.clickHorarioFuncionamento() = function () {
//   //Verifica se Horários Permitidos está desmarcado para então clicar
//   element(by.css("[name='workingHoursAllowed'] [name='workingHoursAllowed']")).isSelected().then(function (isSelected) {
//     if (isSelected != true) {
//       return elementClick("[name='workingHoursAllowed'] [name='workingHoursAllowed']");
//     }
//   });
// };