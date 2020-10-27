var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');

chai.use(chaiAsPromised);

var expect = chai.expect;
var assert = chai.assert;

var printscreen = require("../scripts/printScreen"),
    utils = require('../scripts/utils');

/**
 * Valida mensagem de erro em parâmetro
 *
 * */
exports.validaMensagemErro = function (expectedMessage) {
    return element(by.css("[name='messages'] [name='form.edition.generic.param.definition.unique.key.violation']")).getText().then(function (message) {
        assert.equal(message, expectedMessage);
    });
};

/**
* Valida Mensagem
*
* */
exports.validaMensagem = function (expectedMessage) {
    return element(by.css("[name='messages']")).getText().then(function (message) {
        assert.equal(message, expectedMessage);
    });
};

/**
 * Valida mensagem de violação
 *
 * */
exports.validaMensagemViolação = function (expectedMessage) {
    let self = this;
    return expect(element(by.css("inner-arguments-message div .ng-scope")).getText()).to.eventually.equal(expectedMessage).then(function (equal) {
        if (equal) {
            printscreen.stepPrintScreen(self);
        } else {
        }
    });
};

exports.validaMensagemSemViolação = function (expectedMessage) {
    let self = this;
    return expect(element(by.css("nlg-violations-inner-body .ng-scope:nth-of-type(2) .ng-scope")).getText()).to.eventually.equal(expectedMessage).then(function (equal) {
        if (equal) {
            printscreen.stepPrintScreen(self);
        }
    });
};

exports.validaMensagemPreValidação = function (expectedMessage) {
    element(by.css("ol > .ng-binding.ng-scope")).getText().then(function (message) {
        assert.equal(message, expectedMessage);
    });
    return utils.elementClick("[name='violationModalCancel']");
};

/**
 * Valida Atributo
 *
 * */
exports.validaAtributo = function (el, expected) {
    return element.all(by.css(el)).getText().then(function (result) {
        return assert.isTrue(result.includes(expected), `Era esperado ${expected}, porém foi retornado ${result}.`);
    });
};

exports.assertAttribute = function (el, expected) {
    return element.all(by.css(el)).getAttribute("value").then(function (result) {
        return assert.isTrue(result.includes(expected), `Era esperado ${expected}, porém foi retornado ${result}.`);
    });
};

/**
 * Valida Atributo com Xpath
 *
 * */

exports.validaAtributoXpath = function (el, expected, self) {
    return expect(element(by.xpath(el)).getText()).to.eventually.equal(expected).then(function (equal) {
        if (equal) {
            printscreen.stepPrintScreen(self);
        }
    });
};

/**
 * Valida parte final da mensagem
 *
 * */
exports.validaAMensagemQueTerminaCom = function (el, expected, self) {
    return element(by.css("[name='messages']")).getText().then(function (message) {
        assert.equal(message.endsWith(expected), true);
    });
};

/**
 * Valida Ausencia de atributo
 *
 * */
exports.validaAusenciaAtributo = function (el, expected, self) {
    if (element(by.css(el)).getText() != expected) {
        return printscreen.stepPrintScreen(expected);
    } else {
    }
};

/**
 * Valida parte de mensagem
 * ex.: A localidate está em uso como local de destino das seguintes localidades: Localidade23 - DEFAULT
 * será ignorado a parte que sucede o nome da localidade para que a mensagem fique genérica, portanto a mensagem
 * que consideraremos é A localidate está em uso como local de destino das seguintes localidades: Localidade23
 *
 * */
exports.validaParteDaMensagem = function (expectedMessage) {
    return element(by.css("[name='messages']")).getText().then(function (message) {
        assert.equal(message.startsWith(expectedMessage), true,`
        Era esperarado o resultado: [${expectedMessage}], no entanto o resultado foi: [${message}]`);
    });
};

exports.validaParteDaMensagemAgendamento = function (expectedMessage, text, self) {
    var originalMessage = element(by.xpath("//*[@name='message']//*[contains(text(),'" + text + "')]"));
    return originalMessage.getText().then(function (message) {
        var validableMessage = message.substring(0, message.indexOf('. A '));
        expect(validableMessage).to.equal(expectedMessage)
    })
};

exports.validaParteDaMensagemdoMeioAteOFim = function (expectedMessage, index) {
    var originalMessage = element(by.css("[name='messages']"));
    return originalMessage.getText().then(function (message) {
        var validableMessage = message.substring(message.indexOf(index));
        return expect(validableMessage).to.equal(expectedMessage);
    })
};

/**
 * Validador de múltiplas mensagens em modal de edição de viagens.
 *
 * @param {string} header: título do modal.
 * @param {string} message: mensagem que deve ser exibida.
 * */
exports.editPlateMultipleModalMessage = function (header, messages) {
    element.all(by.css("[name='messages'] li")).count().then(function (value) {
        if (messages.length === value) {
            expect(element(by.css("[name='termsConfirmationModal'] [name='modalHeader']")).getText()).toEqual(header);
            for (var i = 0; i < messages.length; i++) {
                expect(element.all(by.css("[name='messages'] li")).get(i).getText()).toEqual(messages[i]);
            }
            element(by.css("[name='termsConfirmationModal'] [name='modalFooter'] [name='buttonAccept']")).click();
        } else {
            throw new Error("Erro! O número de mensagens para validação (" + messages.length + ") é diferente do número de mensagens encontradas no modal (" + value + ").");
        }
    });
};