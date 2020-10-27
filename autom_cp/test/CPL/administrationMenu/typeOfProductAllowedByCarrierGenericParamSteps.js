"use strict";

var { When, Then } = require("cucumber");

const param = require("../pages/Administration/typeOfProductAllowedByCarrierPage");

When('que adiciono ao parâmetro Tipo de produto permitido por transportadora a transportadora {string} e tipo de produto {string}', function (carrier, productType) {
    return param.fillTypeOfProductAllowedByCarrierGenericParam(carrier, productType);
});