"use strict";

var utils = require("./utils"),
    elementClick = utils.elementClick,
    comboSearchAndSelect = utils.comboSearchAndSelect,
    fillTimePicker = utils.fillTimePicker,
    fillText = utils.fillText,
    assertTextFieldContent = utils.assertTextFieldContent,
    assertText = utils.assertText,
    assertTimePicker = utils.assertTimePicker;

/**
 * Utilitários para o componente functioningEdition
 * @type {{addWorkingHour: exports.functioningDataHolder.addWorkingHour, cleanWorkingHour: exports.functioningDataHolder.cleanWorkingHour, addExceptionHour: exports.functioningDataHolder.addExceptionHour, assertWorkingHour: exports.functioningDataHolder.assertWorkingHour, assertExceptionHour: exports.functioningDataHolder.assertExceptionHour, fillDefaultWorking: exports.functioningDataHolder.fillDefaultWorking, assertDefaultWorking: exports.functioningDataHolder.assertDefaultWorking}}
 */

/**
 * Adiciona e preenchi o horário de funcionamento
 * @param row linha a ser alterada
 * @param dayOfWeek dia da semana
 * @param startTime um objeto  startTime.hour startTime.minute com a hora ínicial do funcionamento
 * @param endTime um objeto endTime.hour e endTime.minute com a hora final do fucntionamento
 */
exports.addWorkingHour = function (row, dayOfWeek, startTime, endTime) {
    elementClick("[name='allowedTimes'] [name='add']");
    exports.fillWorkingHour(row, dayOfWeek, startTime, endTime);
};

/**
 * Preenchi o horário de funcionamento
 * @param row linha a ser alterada
 * @param dayOfWeek dia da semana
 * @param startTime um objeto  startTime.hour startTime.minute com a hora ínicial do funcionamento
 * @param endTime um objeto endTime.hour e endTime.minute com a hora final do fucntionamento
 */
exports.fillWorkingHour = function (row, dayOfWeek, startTime, endTime) {
    comboSearchAndSelect("[name='allowedTimes'] tr[name='" + row + "'] [name='dayOnWeek']", dayOfWeek, dayOfWeek);
    utils.fillTimePicker("[name='allowedTimes'] [name='" + row + "'] [name='startTime']", startTime.hour, startTime.minute);
    return utils.fillTimePicker("[name='allowedTimes'] [name='" + row + "'] [name='endTime']", endTime.hour, endTime.minute);
};

/**
 * Limpa horário de funcionamento
 */
exports.cleanWorkingHour = function () {
    element.all(by.repeater("record in allowedTimesTableOptions.records")).count().then(function (numberOfTheDays) {
        for (var i = numberOfTheDays - 1; i >= 0; i--) {
            elementClick("[name='allowedTimes'] tr[name='" + i + "'] [name='remove']");
        }
    });
};

exports.clearExceptionHour = function () {
    element.all(by.repeater("record in exceptionalWorkingHourOptions.records")).count().then(function (numberOfTheDays) {
        for (var i = numberOfTheDays - 1; i >= 0; i--) {
            elementClick("[name='exceptionalWorkingHour'] tr[name='" + i + "'] [name='remove']");
        }
    });
};

/**
 *  Adiciona e preenchi uma linha em horas excepcionais
 * @param row inteiro linha a ser alterada
 * @param functioningType string com tipo de excepcão
 * @param date string com a data
 * @param startTime um objeto  startTime.hour startTime.minute com a hora ínicial do funcionamento
 * @param endTime um objeto endTime.hour e endTime.minute com a hora final do fucntionamento
 * @param reason string com a motivação da exceção
 */
exports.addExceptionHour = function (row, functioningType, date, startTime, endTime, reason) {
    elementClick("[name='exceptionalWorkingHour'] [name='add']");
    exports.fillExceptionHour(row, functioningType, date, startTime, endTime, reason);
};

/**
 * Preenchi uma linha em horas excepcionais
 * @param row inteiro linha a ser alterada
 * @param functioningType string com tipo de excepcão
 * @param date string com a data
 * @param startTime um objeto  startTime.hour startTime.minute com a hora ínicial do horário da exceção
 * @param endTime um objeto endTime.hour e endTime.minute com a hora final do horário da exceção
 * @param reason string com a motivação da exceção
 */
exports.fillExceptionHour = function (row, functioningType, date, startTime, endTime, reason) {
    fillText("[name='exceptionalWorkingHour'] tr[name='" + row + "'] [name='dateInput']", date);
    comboSearchAndSelect("[name='exceptionalWorkingHour'] tr[name='" + row + "'] [name='exceptionalWorkingHourType']", functioningType, functioningType);
    fillTimePicker("[name='exceptionalWorkingHour'] tr[name='" + row + "'] [name='startTime']", startTime.hour, startTime.minute);
    fillTimePicker("[name='exceptionalWorkingHour'] tr[name='" + row + "'] [name='endTime']", endTime.hour, endTime.minute);
    if (reason) {
        fillText("[name='exceptionalWorkingHour'] tr[name='" + row + "'] [name='reason'] [type='text']", reason);
    }
};

/**
 * Assegura resultado em funcionamento
 * @param row linha a ser alterada
 * @param dayOfWeek dia da semana
 * @param startTime um objeto  startTime.hour startTime.minute com a hora ínicial do funcionamento
 * @param endTime um objeto endTime.hour e endTime.minute com a hora final do fucntionamento
 */
exports.assertWorkingHour = function (row, dayOfWeek, startTime, endTime) {
    assertText("[name='allowedTimes'] tr[name='" + row + "'] [name='dayOnWeek']", dayOfWeek);
    assertTimePicker("[name='allowedTimes'] tr[name='" + row + "'] [name='startTime']", startTime.hour, startTime.minute);
    assertTimePicker("[name='allowedTimes'] tr[name='" + row + "'] [name='endTime']", endTime.hour, endTime.minute);
};

/**
 * Assegura horas de excessoes
 * @param row inteiro linha a ser alterada
 * @param functioningType string com tipo de excepcão
 * @param date string com a data
 * @param startTime um objeto  startTime.hour startTime.minute com a hora ínicial do funcionamento
 * @param endTime um objeto endTime.hour e endTime.minute com a hora final do fucntionamento
 */
exports.assertExceptionHour = function (row, functioningType, date, startTime, endTime, reason) {
    assertTextFieldContent("[name='exceptionalWorkingHour'] tr[name='" + row + "'] [name='dateInput']", date);
    assertText("[name='exceptionalWorkingHour'] tr[name='" + row + "'] [name='exceptionalWorkingHourType']", functioningType);
    assertTimePicker("[name='exceptionalWorkingHour'] tr[name='" + row + "'] [name='startTime']", startTime.hour, startTime.minute);
    assertTimePicker("[name='exceptionalWorkingHour'] tr[name='" + row + "'] [name='endTime']", endTime.hour, endTime.minute);
    assertTextFieldContent("[name='exceptionalWorkingHour'] tr[name='" + row + "'] [name='reason'] [type='text']", reason);
};

/**
 * Preenche de segunda a sexta com horário de 10:00 às 22:00
 * */
exports.fillDefaultWorking = function () {
    var workingDays = ["Segunda-Feira", "Terça-Feira", "Quarta-Feira", "Quinta-Feira", "Sexta-Feira"];
    for (var i = 0; i < workingDays.length; i++) {
        var startTime = { hour: "10", minute: "00" };
        var endTime = { hour: "22", minute: "00" };
        exports.addWorkingHour(i, workingDays[i], startTime, endTime);
    }
};

/**
 * Assegura resultado do preenchimento de @see fillDefaultWorking
 */
exports.assertDefaultWorking = function () {
    var workingDays = ["Segunda-Feira", "Terça-Feira", "Quarta-Feira", "Quinta-Feira", "Sexta-Feira"];

    for (var i = 0; i < workingDays.length; i++) {
        var startTime = { hour: "10", minute: "00" };
        var endTime = { hour: "22", minute: "00" };
        this.assertWorkingHour(i, workingDays[i], startTime, endTime);
    }
};