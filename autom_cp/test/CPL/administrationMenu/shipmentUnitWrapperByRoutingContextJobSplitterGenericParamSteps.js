"use strict";

const { Given, When, Then } = require("cucumber");

const page = require("../pages/administration/shipmentUnitWrapperByRoutingContextJobSplitterGenericParamPage");

Given('que adiciono ao parâmetro genérico Invólucro por contexto de otimização o invólucro {string} e o contexto {string}', function (shipmentUnitWrapper, routingContext) {
    if (process.env.CLIENT_NAME === "mcb") {
        return page.fillShipmentUnitWrapperByRoutingContextJobSplitterGenericParam(shipmentUnitWrapper, routingContext);
    }
});