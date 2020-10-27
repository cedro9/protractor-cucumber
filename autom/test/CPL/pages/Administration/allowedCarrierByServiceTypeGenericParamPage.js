"use strict";

const utils = require('../../scripts/utils'),
    genericParam = require("./genericParamPage"),
    tranfer = require('../../scripts/transferPanel');

const fillAllowedCarrierByServiceTypeGenericParam = carrier => {
    return genericParam.navigateToParamEditingPage("Transportadoras permitidas por tipo de serviço")
        .then(() => {
            utils.addTextTags("[name='entity']", carrier);
            utils.elementClick("[name='syncButton']");
            element.all(by.css("[name='transferedEntities'] [name='ListLeft'] option")).count()
            .then(function (regCount) {
                if (regCount > 0) {
                    return tranfer.moveAllToRight();
                }
            });
            genericParam.saveTransferParam();
            utils.elementClick("[name='genericParamEditionConfirmationOk']");
            genericParam.clickOkButton();
            return genericParam.cancelParam();
        })
};

module.exports = {
    fillAllowedCarrierByServiceTypeGenericParam
}