const path = require("path");
const protractorHelper = require("protractor-helper");
const utils = require('./utils');

var elementClick = utils.elementClick;

/**
 * Realiza upload de arquivos em formulário que possue elemento input do tipo file.
 *
 * @param {string} fileInputField: elemento em que o upload deve ser realizado.
 * @param {string} relativePathOfFileToUpload: local onde se encontra o arquivo, 
 * considerando o caminho a ser percorrido a partir do diretório de origem d o arquivo utils.js 
 *
 * */
exports.importFiles = (fileInputField, relativePathOfFileToUpload) => {
    const absolutePathOfFileToUpload = path.resolve(__dirname, relativePathOfFileToUpload);
    
    return protractorHelper.uploadFileIntoInputField(fileInputField, absolutePathOfFileToUpload);
    // return utils.elementClick("[name='spreadsheetImportDialog.save']");
};