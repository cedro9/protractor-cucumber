"use strict";

var { Given } = require("cucumber");

const { fillLocationRestriction,
    fillLocality,
    fillLgpdEntity } = require("../pages/Administration/lgpdPage");

Given('que cadastro uma localidade com restrição', function () {
    fillLocationRestriction();
    return fillLocality();
});

Given('que cadastro uma entidade {string} e campo {string}', function (entity, field) {
    return fillLgpdEntity(entity, field);
});

