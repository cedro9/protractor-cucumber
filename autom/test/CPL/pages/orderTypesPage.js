"use strict";

const compatibilityPanel = "[name='compatibility']";
const { moveLeftToRigth, moveRigthToLeft } = require('../scripts/transferPanel');

/**
 * Compatibiliza tipos de pedido.
 *
 * @param {string} value: tipo de pedido a ser compatibilizado.
 *
 * */
function setOrderTypeCompatibility(value) {
    return moveLeftToRigth(compatibilityPanel, value);
};

/**
 * Incompatibiliza tipos de pedido.
 *
 * @param {string} value: tipo de pedido a ser incompatibilizado.
 *
 * */
function setOrderTypeIncompatibility(value) {
    return moveRigthToLeft(compatibilityPanel, value);
};

module.exports = {
    setOrderTypeCompatibility,
    setOrderTypeIncompatibility,
};