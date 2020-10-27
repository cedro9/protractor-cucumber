"use strict";

const { When } = require("cucumber");

const { checkPriorityIconIsPresent,
    checkPriorityIconIsNotPresent } = require('../pages/Administration/orderPriorityPresentationPage');

When('verifico se o header do pedido contém o identificador de prioridade', function () {
    return checkPriorityIconIsPresent();
});

When('verifico que o header do pedido não contém o identificador de prioridade', function () {
    return checkPriorityIconIsNotPresent();
});