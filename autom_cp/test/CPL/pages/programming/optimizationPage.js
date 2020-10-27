const chai = require('chai');
const chaiAsPromised = require('chai-as-promised');

chai.use(chaiAsPromised);

const assert = chai.assert;

const utils = require('../../scripts/utils');
const filter = require('../../scripts/filter');

const assertNumberOfJobsCreated = expectedResult => {
    return searchAndCount().then(result => {
        return assert.equal(expectedResult, result, "Era esperado [" + expectedResult + "] registro" + " ,porém  foram encontrados [" + result + "].");
    });
};

const searchAndCount = () => {
    customizeFilter();
    fillStatusAttribute("Enviando,Esperando,Não enviado,Processando,Salvando");
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='searchResultTable'] tbody tr")).count();
};

const fillStatusAttribute = value => {
    return utils.addTextTags("[name='jobStatus-br.com.neolog.service.crud.filter.FilterOperation.IN']", value);
};

function customizeFilter() {
    filter.customizeFilter();
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Status", "Status");
    utils.elementClick("[name='operators+1'] [value='string:br.com.neolog.service.crud.filter.FilterOperation.IN']");
  return  utils.elementClick("[name='buttonApply']");
};

module.exports = {
    assertNumberOfJobsCreated, customizeFilter, fillStatusAttribute
};