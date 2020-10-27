"use strict";

/**
 * Alterar o conteudo do Script.
 * @param {string} scriptContent: conteúdo a ser inserido.
 */
exports.updateScriptContent = function(scriptContent){
    browser.executeScript(function (scriptContent) {
        /* globals document */
        var editor = document.querySelector(".CodeMirror").CodeMirror;
        editor.setValue(scriptContent);
    }, scriptContent);
};

/**
 * Confere se o conteúdo do Script está igual ao que foi passado pelo parâmetro.
 * @param {string} validScriptContent: conteúdo a ser conferido.
 */
exports.assertScript = function(validScriptContent){
    browser.executeScript(function () {
        /* globals document */
        var editor = document.querySelector(".CodeMirror").CodeMirror;
        return editor.getValue();
    }).then(function (result) {
        if (result !== validScriptContent) {
            throw new Error("Era esperado um script igual ao que foi registrado.");
        }
    });
};