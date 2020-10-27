"use strict";

var { When } = require("cucumber");

const { fillUserCarrierRestrictionGenericParam } = require('../pages/Administration/userCarrierRestrictionGenericParamsPage');

When('que somente a transportadora {string} seja permitida para o usuário {string}', function(carrier, user) {
    return fillUserCarrierRestrictionGenericParam(carrier, user);
});