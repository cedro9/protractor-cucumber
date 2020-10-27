"use strict";

const okButton = "[name='buttonOk']",
    backgroundTaskTableName = "[name='backgroundTaskTable'] [name='backgroundTaskName']";

const utils = require('../../scripts/utils'),
    elementClick = utils.elementClick;

module.exports = {
    playBackgroundTask
};

function playBackgroundTask(backgroundTask) {
    navigate.to("Configuração", "Tarefas de background");
    return element.all(by.css(backgroundTaskTableName)).getText().then(function (tasks) {
        const taskIndex = tasks.indexOf(backgroundTask);
        elementClick("[name='" + taskIndex + "'] [name='playTask']");
        return elementClick(okButton);
    });
};