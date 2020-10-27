"use strict";

var { Given, When, Then } = require("cucumber");

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect;
var utils = require('../scripts/utils'),
  scroll = require('../scripts/scroll'),
  wait = require("../scripts/wait"),
  elementClick = utils.elementClick,
  elementClickXpath = utils.elementClickXpath,
  present = require("../scripts/wait").present,
  isEnabled = require("../scripts/wait").isEnabled,
  confirmSelectedContext = utils.confirmSelectedContext;
const { setRoutingContext } = require('../pages/analisysPage');

/********* BOTÕES ************/
Given('clico no botão Salvar', function () {
  return element(by.css("[name='buttonSubmit']")).isPresent().then(function (isPresent) {
    if (isPresent === true) {
      return elementClick("[name='buttonSubmit']");
    }
    else {
      return element(by.css("[name='buttonSave']")).isPresent().then(function (isPresent) {
        if (isPresent === true) {
          return elementClick("[name='buttonSave']");
        }
        else {
          return element(by.css("[name='saveButton']")).isPresent().then(function (isPresent) {
            if (isPresent === true) {
              return elementClick("[name='saveButton']");
            }
          });
        }
      })
    }
  })
});

Given('clico no botão salvar e uso o contexto de otimização padrão', function () {
  return element(by.xpath("//*[@name='buttonSave']")).isPresent().then(function (isPresent) {
    if (isPresent === true) {
      utils.elementClickXpath("//*[@name='buttonSave']");
    } else {
      utils.elementClickXpath("//*[@name='buttonOk']");
    }
    return confirmSelectedContext();
  });

});

When('clico no botão Salvar2', function () {
  isEnabled(element(by.xpath("//*[@name='saveButton']")));
  return elementClick("[name='saveButton']");
});

When('clico no botão Salvar e Continuar', function () {
  isEnabled(element(by.xpath("//*[@name='buttonSaveAndContinue']")));
  return elementClickXpath("//*[@name='buttonSaveAndContinue']");
});

When('clico no botão Salvar e confirmo', function () {
  elementClick("[name='buttonSubmit']");
  expect(element(by.css("[name='messages']")).getText()).to.eventually.equal("A entidade foi salva com sucesso.");
  return elementClick("[name='buttonOk']");
});

When('clico no botão Salvar e confirmo2', function () {
  isEnabled(element(by.xpath("//*[@name='saveButton']")));
  elementClick("[name='saveButton']");
  expect(element(by.css("[name='entity.validator.successMessage']")).getText()).to.eventually.equal("A entidade foi salva com sucesso.");
  return elementClick("[name='buttonOk']");
});

When('Clico no botão voltar', function () {
  present(element(by.css("[name='editionViewBack']")));
  return elementClick("[name='editionViewBack']");
});

When('clico no botão editar item de pedido', function () {
  present(element(by.css("[name='editOrderItem']")));
  return elementClick("[name='editOrderItem']");
});

When('clico no botão editar', function () {
  present(element(by.css("[name='editButton']")));
  return elementClick("[name='editButton']");
});

When('clico no botão copiar', function () {
  return elementClick("[name='copyButton']");
});

When('clico no botão Aplicar', function () {
  return elementClick("[name='buttonApply']");
});

Given('clico no botão Cadastro', { timeout: 90 * 1000 }, function () {
  return element(by.css("[name='cadastreButton']")).isPresent().then(function (isPresent) {
    if (isPresent === true) {
      return elementClick("[name='cadastreButton']");
    }
    else {
      return element(by.css("[name='createButton']")).isPresent().then(function (isPresent) {
        if (isPresent === true) {
          elementClick("[name='createButton']");
        }
      })
    }
  })
  // return elementClick("[name='cadastreButton']");
});

Then('clico no botão OK', function () {
  return elementClick("[name='buttonOk']");
});

When('clico no botão Excluir e confirmo', function () {
  elementClick("[name='deleteButton']");
  expect(element(by.css("[name='entityFilter.delete.confirm']")).getText()).to.eventually.equal("Tem certeza que deseja excluir esta entidade?");
  return elementClick("[name='buttonOk']");
});

When('clico no botão Otimizar', function () {
  elementClickXpath("//*[text()='Otimizar']");
  return confirmSelectedContext();
});

Given('clico no botão Aceitar', function () {
  return element(by.css("[name='termsConfirmationModal']")).isPresent().then(function (isPresent) {
    if (isPresent === true) {
      return elementClick("[name='buttonAccept']");
    } else {
      return elementClick("[name='accept']");
    }
  });
});

Then('clico no botão otimizar todas as páginas selecionando o contexto de otimização {string}', function (context) {
  elementClick("[name='optimizeAllPages']");
  return setRoutingContext(context)
});

/********* ABAS ************/
When('clico na aba Empilhamento', function () {
  return elementClick("[name='stacking']");
});

When('clico na aba Funcionamento', function () {
  return elementClick("[name='functioning']");
});

When('clico na aba Custos', function () {
  return utils.elementClick("[name='costs']");
});

When('clico na aba Restrições', function () {
  return elementClick("[name='organize.restrictions']");
});

When('clico no botão Importar', function () {
  wait.isEnabled(element(by.xpath("//*[@name='importButton']")));
  return utils.elementClickXpath("//*[@name='importButton']");
});

When('clico no botão ver no mapa', function () {
  return utils.elementClickXpath("//*[@name='viewRegionButton']");
});

When('clico no botão {string}', function (button) {
  elementClickXpath("//*[text()='" + button + "']");
  return confirmSelectedContext();
});

When('clico no botão Agendar', function () {
  elementClick("[name='scheduleDropdown']");
  return elementClick("[name='scheduleCreation']");
});

When('clico agendar em massa', function () {
  elementClickXpath("//*[@name='scheduleDropdown']");
  return elementClickXpath("//*[@name='scheduleBatchEdition']");
});

When('clico no botão Remoção de UTs', function () {
  elementClick("[name='scheduleDropdown']");
  return elementClick("[name='deleteScheduleDus']");
});

When('clico no botão Cancelar', function () {
  return element(by.css("[name='tripAttributionModal']")).isPresent().then(function (isPresent) {
    if (isPresent === true) {
      return elementClick("[name='buttonCancel']");
    }
  });
});

When('clico em Cancelar', function () {
  return elementClick("[name='buttonCancel']");
});