"use strict";

var { When } = require("cucumber");

const { setDestinationHub,
    setCarrierZoneGroup,
    setCarrierZone } = require("../pages/Administration/destinationHubsAllowedByCarrierZoneGenericParamPage");

When('preencho o hub de destino {string}', function (destinationhub) {
    return setDestinationHub(destinationhub);
});

When('preencho o agrupador de zt {string}', function (carrierzonegroup) {
    return setCarrierZoneGroup(carrierzonegroup);
});

When('preencho a zt de destino {string}', function (carrierzone) {
    return setCarrierZone(carrierzone);
});