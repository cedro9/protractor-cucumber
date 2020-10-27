"use strict";

var { Given } = require("cucumber");

const { setCarrierRestrictiontoToUser,
    unsetCarrierRestrictiontoToUser } = require('../pages/Administration/usersPage');

Given('que ligo a restrição de transportadoras para o usuário {string}', function (user) {
    return setCarrierRestrictiontoToUser(user);
});

Given('que desligo a restrição de transportadoras para o usuário {string}', function (user) {
    return unsetCarrierRestrictiontoToUser(user);
});