"use strict";

const { Given, When, Then, setDefaultTimeout } = require("cucumber");
const utils = require('../scripts/utils');
const messages = require('../scripts/messages');
const page = require('../pages/programming/optimizationPage');

Then('verifico se foram criados dois jobs de otimização', function () {
    const expected = '2';
    return page.assertNumberOfJobsCreated(expected);
});

Then('verifico se o job está com o status {string}', function (status) {
    let self = this;
    var el = "//*[@name='searchResultTable']//*[01]//*[@name='status']";
    var endDate = element(by.css("[name='endDate']"));
    utils.elementMultiClickXpath("//*[text()='ID']", 2);
    utils.elementClick("[name='submitButton']");
    return asyncLoop();

    function asyncLoop() {
        return endDate.getText().then(function (dateValue) {
            if (dateValue == '') {
                utils.elementClick("[name='submitButton']");
                return asyncLoop();
            } else {
                messages.validaAtributoXpath(el, status, self);
            }
        });
    }
});