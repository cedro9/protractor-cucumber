"use strict";

var { Given, When, Then, } = require("cucumber");

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect;
var printscreen = require("../scripts/printScreen");
var wait = require("../scripts/wait");
var messages = require("../scripts/messages");

/********* MENSAGENS ************/
Then('é exibido uma mensagem de erro que contem {string}', function (string) {
  let self = this;
  return messages.validaMensagemErro(string, self);
});

Then('é exibido a mensagem {string}', function (string) {
  let self = this;
  return messages.validaMensagem(string, self);
});

Then('é exibido uma mensagem de violação que contem {string}', function (string) {
  let self = this;
  return messages.validaMensagemViolação(string, self);
});

Then('é exibido uma mensagem que contem {string}', function (string) {
  let self = this;
  return messages.validaMensagemSemViolação(string, self);
});

Then('é exibido uma mensagem informando que a viagem não foi ofertada', function () {
  return messages.validaParteDaMensagemdoMeioAteOFim("não foi ofertada, pois foi designada a transportador autônomo.", "não");
});

Then('e exibido a mensagem O campo código está vazio.', function () {
  let self = this;
  return messages.validaMensagem("O campo código está vazio.", self);
});

Then('e exibido a mensagem O campo nome está vazio.', function () {
  let self = this;
  return messages.validaMensagem("O campo nome está vazio.", self);
});

Then('e exibido a mensagem O campo descrição está vazio.', function () {
  let self = this;
  return messages.validaMensagem("O campo descrição está vazio.", self);
});

Then('é exibido a mensagem O invólucro não pode ser nulo.', function () {
  let self = this;
  return messages.validaMensagem("O invólucro não pode ser nulo.", self);
});

Then('e exibido a mensagem O produto não pode ser nulo.', function () {
  let self = this;
  return messages.validaMensagem("O produto não pode ser nulo.", self);
});

Then('é exibido a mensagem A entidade foi salva com sucesso.', function () {
  let self = this;
  return messages.validaMensagem("A entidade foi salva com sucesso.", self);
});

Then('e exibido a mensagem Já existe uma entidade com o código informado', function () {
  let self = this;
  return messages.validaMensagem("Já existe uma entidade com o código informado.", self);
});

Then('é exibido a mensagem Já existe uma entidade com o código informado.', function () {
  let self = this;
  return messages.validaMensagem("Já existe uma entidade com o código informado.", self);
});

Then('e exibido a mensagem Nenhuma propriedade da entidade foi alterada.', function () {
  let self = this;
  return messages.validaMensagem("Nenhuma propriedade da entidade foi alterada.", self);
});

Then('e exibido a mensagem Sem horário de funcionamento definido.', function () {
  let self = this;
  return messages.validaMensagem("Sem horário de funcionamento definido.", self);
});

Then('é exibido a mensagem Há sobreposição de horários de funcionamento.', function () {
  let self = this;
  return messages.validaMensagem("Há sobreposição de horários de funcionamento.", self);
});

Then('é exibido a mensagem Faixa de horário de funcionamento inconsistente, hora inicial não pode ser maior ou igual a hora final.', function () {
  let self = this;
  return messages.validaMensagem("Faixa de horário de funcionamento inconsistente, hora inicial não pode ser maior ou igual a hora final.", self);
});

Then('é exibido a mensagem Os horários de exceção de funcionamento são inválidos existe sobreposição de horários.', function () {
  let self = this;
  return messages.validaMensagem("Os horários de exceção de funcionamento são inválidos (existe sobreposição de horários).", self);
});

Then('é exibido a mensagem Os horários de exceção de não funcionamento são inválidos existe sobreposição de horários.', function () {
  let self = this;
  return messages.validaMensagem("Os horários de exceção de não funcionamento são inválidos (existe sobreposição de horários).", self);
});

Then('é exibido a mensagem Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?', function () {
  let self = this;
  return messages.validaMensagem("Em caso de alteração no agrupador de zona de transporte do tempo de espera, os dados existentes serão sobrescritos. Prosseguir?", self);
});

Then('e exibido a mensagem que O agrupador de zonas de transporte não pode ser nulo.', function () {
  let self = this;
  printscreen.stepPrintScreen(self);
  return expect(element(by.css("[name='entity.validator.NullGrouper']")).getText()).to.eventually.equal("O agrupador de zonas de transporte não pode ser nulo.");
});

Then('é exibido a mensagem O veículo é diferente do esperado veículo da viagem', function () {
  let self = this;
  expect(element(by.css("[name='tripOfferEdition.vehicleNotExpected']")).getText()).to.eventually.equal("O veículo é diferente do esperado (veículo da viagem)");
  return printscreen.stepPrintScreen(self);
});

Then('é exibido a mensagem Não foi possível aceitar a viagem com código pois não foi informada a placa do caminhão', function () {
  element(by.css("[name='nlgAnalysisTreePresentationId']")).getText().then(codigoViagem => {
    return messages.validaMensagem("Não foi possível aceitar a viagem com código " + codigoViagem + " pois não foi informada a placa do caminhão.");
  });
});

Then('é exibido a violação não impeditiva que contem {string}', function (message) {
  return messages.validaMensagemPreValidação(message);
});

Then('é exibido a mensagem que contem {string}', function (expectedMessage) {
  return messages.validaParteDaMensagem(expectedMessage);
});