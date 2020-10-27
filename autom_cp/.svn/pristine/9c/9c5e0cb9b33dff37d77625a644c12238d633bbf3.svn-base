"use strict";

const editButton = "[name='editButton']",
    addButton = "[name='addButton']",
    okButton = "[name='buttonOk']",
    closeButton = "[name='closeButton']",
    removeButton = "[name='removeButton']",
    routingConfigsField = "[name='Contexto_Otimizacao']",
    validatorField = "[name='Fabrica_Validador']",
    sequenceField = "[name='Ordem']",
    saveButton = "[name='nlgGenericParamDataSaveButton']",
    genericParamsTab = "[name='genericParams']",
    definitionCombo = "[name='genericParamDefinitionCombo']",
    objetiveFunction = "[name='routingConfigs.objectiveFunction']",
    saveContext = "[name='buttonSubmit']",
    editSelectorButton = "[name='11'] [name='editButton']",
    contextPreValidator = "[name='Contexto de Otimização']",
    preValidatorHard = "[name='Pré-validador']";

const utils = require('../../scripts/utils'),
    filter = require('../../scripts/filter'),
    navigate = require('../../scripts/navigate'),
    transferpanel = require('../../scripts/transferPanel'),
    messages = require('../../scripts/messages');

function setPreRestrictionRoutingConfigs(routingConfigs, validator, sequence) {
    navigate.to("Administração", "Otimização");
    var countBeforeEditonPromise = filter.filterBySourceIdAndGetCount(routingConfigs);
    return countBeforeEditonPromise.then(function (regCount) {
        if (regCount === 1) {
            editRoutingConfigs();
            genericParamTab();
            editGenericParam();
            setPreValidator();
            var countBeforeInsertionPromise = filterAndGetCount(routingConfigs, validator);
            return countBeforeInsertionPromise.then(function (regCount) {
                if (regCount === 0) {
                    addValidator();
                    setValidador(routingConfigs, validator, sequence);
                    saveRoutingConfigsValidators();
                };
                return utils.elementClick(closeButton);
            })
        };
    })
};

function unsetPreRestrictionRoutingConfigs(routingConfigs, validator) {
    navigate.to("Administração", "Otimização");
    var countBeforeEditonPromise = filter.filterBySourceIdAndGetCount(routingConfigs);
    return countBeforeEditonPromise.then(function (regCount) {
        if (regCount === 1) {
            editRoutingConfigs();
            genericParamTab();
            editGenericParam();
            setPreValidator();
            var countBeforeEditonPromise = filterAndGetCount(routingConfigs, validator);
            return countBeforeEditonPromise.then(function (regCount) {
                if (regCount === 1) {
                    removeValidator();
                    saveRoutingConfigsValidators();
                };
                return utils.elementClick(closeButton);
            })
        };
    })
};

function setPosRestrictionRoutingConfigs(routingConfigs, validator, sequence) {
    navigate.to("Administração", "Otimização");
    var countBeforeEditonPromise = filter.filterBySourceIdAndGetCount(routingConfigs);
    return countBeforeEditonPromise.then(function (regCount) {
        if (regCount === 1) {
            editRoutingConfigs();
            genericParamTab();
            editGenericParam();
            setPosValidator();
            var countBeforeInsertionPromise = filterAndGetCount(routingConfigs, validator);
            return countBeforeInsertionPromise.then(function (regCount) {
                if (regCount === 0) {
                    addValidator();
                    setValidador(routingConfigs, validator, sequence);
                    saveRoutingConfigsValidators();
                };
                return utils.elementClick(closeButton);
            })
        };
    })
};

function removePlanObjectiveFunction(planObjetiveFunc, context) {
    navigate.to("Administração", "Otimização");
    var countBeforeEditonPromise = filter.filterBySourceIdAndGetCount(context);
    return countBeforeEditonPromise.then(function (regCount) {
        if (regCount === 1) {
            editRoutingConfigs();
            selectObjetiveFunction();
            transferpanel.moveRigthToLeft("[name='routingConfig.routingConfigObjectiveFunction.planObjectiveFunction']", planObjetiveFunc)
            utils.elementClick(saveContext);
            utils.elementClick("[name='buttonOk']");
        };
    })
};

function copyContext(context, newcontext) {
    navigate.to("Administração", "Otimização");
    var countBeforeCheckPromise = filter.filterBySourceIdAndGetCount(newcontext);
    return countBeforeCheckPromise.then(function (regCountCheck) {
        if (regCountCheck === 0) {
            var countBeforeCopyPromise = filter.filterBySourceIdAndGetCount(context);
            return countBeforeCopyPromise.then(function (regCount) {
                if (regCount === 1) {
                    utils.elementClick("[name='copyButton']");
                    utils.clearTextXpath("//*[@name='code']");
                    utils.fillText("[name='code']", newcontext);
                    utils.fillText("[name='name']", newcontext);
                    utils.fillText("[name='description']", newcontext);
                    utils.elementClick("[name='buttonSubmit']");
                    messages.validaMensagem("A entidade foi salva com sucesso.");
                    utils.elementClick("[name='buttonOk']");
                };
            })
        };
    })
};

function removeSelector(selector, context) {
    navigate.to("Administração", "Otimização");
    var countBeforeEditonPromise = filter.filterBySourceIdAndGetCount(context);
    return countBeforeEditonPromise.then(function (regCount) {
        if (regCount === 1) {
            editRoutingConfigs();
            genericParamTab();
            editSelector();
            setSelector();
            var countBeforeEditonPromise = filterSelectorAndGetCount(selector, context);
            return countBeforeEditonPromise.then(function (regCount) {
                if (regCount === 1) {
                    removeValidator();
                    saveRoutingConfigsValidators();
                };
                return utils.elementClick(closeButton);
            })
        };
    })
};

function filterSelectorAndGetCount(selector, context) {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Contexto de otimização", "Contexto de otimização");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Seletor", "Seletor");
    utils.elementClick("[name='buttonApply']");
    utils.addTextTags("[name='Contexto de otimização-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", context);
    utils.addTextTags("[name='Seletor-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", selector);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

function removeContext(context) {
    navigate.to("Administração", "Otimização");
    var countBeforeEditonPromise = filter.filterBySourceIdAndGetCount(context);
    return countBeforeEditonPromise.then(function (regCount) {
        if (regCount === 1) {
            utils.elementClick("[name='deleteButton']");
            utils.elementClick("[name='messagesModal'] [name='buttonOk']");
            utils.elementClick("[name='messagesModal'] [name='buttonOk']");
            messages.validaMensagem("Entidade removida com sucesso.");

        }
        
    })
};

function saveRoutingConfigsValidators() {
    utils.elementClick(saveButton);
    return utils.elementClick(okButton);
};

function setValidador(routingConfigs, validator, sequence) {
    utils.addTextTags(routingConfigsField, routingConfigs);
    utils.addTextTags(validatorField, validator);
    return utils.fillNumber(sequenceField, sequence);
};

function addValidator() {
    return utils.elementClick(addButton);
};

function setPosValidator() {
    return utils.addTextTags(definitionCombo, "Pós-validadores - Otimização");
};

function setPreValidator() {
    return utils.addTextTags(definitionCombo, "Pré-validadores - Otimização");
};

function editGenericParam() {
    return element.all(by.css("[name='genericParametersTable'] [name='genericParameterGroupSourceId']")).getText().then(function (parameters) {
        const parameterIndex = parameters.indexOf("Validadores por Contexto de Otimização");
        return utils.elementClick("[name='" + parameterIndex + "'] [name='editButton']");
    });
};

function genericParamTab() {
    return utils.elementClick(genericParamsTab);
};

function editRoutingConfigs() {
    return utils.elementClick(editButton);
};

function removeValidator() {
    return utils.elementClick(removeButton);
};

function selectObjetiveFunction() {
    return utils.elementClick(objetiveFunction);
};

function editSelector() {
    return utils.elementClick(editSelectorButton);
};

function setSelector() {
    return utils.addTextTags(definitionCombo, "Seletores de veículo / transportadora / tipo de serviço");
};

const setValidator = validator => {
    return utils.addTextTags("[name='Fabrica_Validador']", validator);
};

const setContext = context => {
    return utils.addTextTags("[name='Contexto_Otimizacao']", context);
};

const setOrder = order => {
    return utils.fillNumber("[name='Ordem']", order);
};

const fillSelectionValidators = (context, validator) => {
    setContext(context);
    setValidator(validator);
    return setOrder("100");
};

const fillContextAttribute = value => {
    return utils.addTextTags("[name='Contexto_Otimizacao-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", value)
};

const fillValidatorAttribute = value => {
    return utils.addTextTags("[name='Fabrica_Validador-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", value)
};

const customizeFilter = () => {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Contexto Otimizacao", "Contexto Otimizacao");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Fabrica Validador", "Fabrica Validador");
    return utils.elementClick("[name='buttonApply']");
};

const filterAndGetCount = (context, validator) => {
    customizeFilter();
    fillContextAttribute(context);
    fillValidatorAttribute(validator);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

const setSelectionValidators = (context, validator) => {
    navigate.to("Administração", "Otimização");
    var countBeforeEditionPromise = filter.filterBySourceIdAndGetCount(context);
    return countBeforeEditionPromise.then(function (regCount) {
        if (regCount === 1) {
            utils.elementClick("[name='editButton']");
            utils.elementClick("[name='genericParams']");
            editGenericParam()
            utils.addTextTags("[name='genericParamDefinitionCombo']", "Validadores de seleção");
            var countBeforeAditionPromise = filterAndGetCount(context, validator);
            countBeforeAditionPromise.then(function (regCount) {
                if (regCount === 0) {
                    utils.elementClick("[name='addButton']");
                    fillSelectionValidators(context, validator);
                    utils.elementClick("[name='nlgGenericParamDataSaveButton']");
                    return utils.elementClick("[name='buttonOk']");
                }
            });
        }
    });
};

function fillPreValidatorHard(context, validator, sequence) {
    navigate.to("Administração", "Otimização");
    var countBeforeEditionPromise = filter.filterBySourceIdAndGetCount(context);
    return countBeforeEditionPromise.then(function (regCount) {
        if (regCount === 1) {
            utils.elementClick("[name='editButton']");
            utils.elementClick("[name='genericParams']");
            editPreValidatorHard();
            utils.addTextTags("[name='genericParamDefinitionCombo']", "Pré-validadores de otimização (Hard)");
            var countBeforeAditionPromise = filterPreValidatorAndGetCount(context, validator);
            countBeforeAditionPromise.then(function (regCount) {
                if (regCount === 0) {
                    addValidator();
                    setPreValidatorHard(context, sequence, validator);
                    utils.elementClick("[name='nlgGenericParamDataSaveButton']");
                    utils.elementClick("[name='buttonOk']");                   
                    }
                return utils.elementClick("[name='closeButton']");
            });
        }
    });
};

function fillManualPreValidatorHard(context, validator, sequence) {
    navigate.to("Administração", "Otimização");
    var countBeforeEditionPromise = filter.filterBySourceIdAndGetCount(context);
    return countBeforeEditionPromise.then(function (regCount) {
        if (regCount === 1) {
            utils.elementClick("[name='editButton']");
            utils.elementClick("[name='genericParams']");
            editPreValidatorHard();
            utils.addTextTags("[name='genericParamDefinitionCombo']", "Pré-validadores de operação manual (Hard)");
            var countBeforeAditionPromise = filterPreValidatorAndGetCount(context, validator);
            countBeforeAditionPromise.then(function (regCount) {
                if (regCount === 0) {
                    addValidator();
                    setPreValidatorHard(context, sequence, validator);
                    utils.elementClick("[name='nlgGenericParamDataSaveButton']");
                    utils.elementClick("[name='buttonOk']");
                    }
                return utils.elementClick("[name='closeButton']");
            });
        }
    });
};

function setPreValidatorHard(context, sequence, validator) {
    utils.addTextTags(contextPreValidator, context);
    utils.fillNumber(sequenceField, sequence);
    return utils.addTextTags(preValidatorHard, validator);
};

function removePreValidatorHard(validator, context) {
    navigate.to("Administração", "Otimização");
    var countBeforeEditionPromise = filter.filterBySourceIdAndGetCount(context);
    return countBeforeEditionPromise.then(function (regCount) {
        if (regCount === 1) {
            utils.elementClick("[name='editButton']");
            utils.elementClick("[name='genericParams']");
            editPreValidatorHard();
            utils.addTextTags("[name='genericParamDefinitionCombo']", "Pré-validadores de otimização (Hard)");
            var countBeforeAditionPromise = filterPreValidatorAndGetCount(context, validator);
            countBeforeAditionPromise.then(function (regCount) {
                if (regCount === 1) {
                    utils.elementClick("[name='removeButton']");
                    utils.elementClick("[name='nlgGenericParamDataSaveButton']");
                    utils.elementClick("[name='buttonOk']");
                    }
                return utils.elementClick("[name='closeButton']");
            });
        }
    });
};

function removeManualPreValidatorHard(validator, context) {
    navigate.to("Administração", "Otimização");
    var countBeforeEditionPromise = filter.filterBySourceIdAndGetCount(context);
    return countBeforeEditionPromise.then(function (regCount) {
        if (regCount === 1) {
            utils.elementClick("[name='editButton']");
            utils.elementClick("[name='genericParams']");
            editPreValidatorHard();
            utils.addTextTags("[name='genericParamDefinitionCombo']", "Pré-validadores de operação manual (Hard)");
            var countBeforeAditionPromise = filterPreValidatorAndGetCount(context, validator);
            countBeforeAditionPromise.then(function (regCount) {
                if (regCount === 1) {
                    utils.elementClick("[name='removeButton']");
                    utils.elementClick("[name='nlgGenericParamDataSaveButton']");
                    utils.elementClick("[name='buttonOk']");                    
                }
                return utils.elementClick("[name='closeButton']");
            });
        }
    });
};

function editPreValidatorHard() {
    return element.all(by.css("[name='genericParametersTable'] [name='genericParameterGroupSourceId']")).getText().then(function (parameters) {
        const parameterIndex = parameters.indexOf("Validadores pré-otimização");
        return utils.elementClick("[name='" + parameterIndex + "'] [name='editButton']");
    });
};

function filterPreValidatorAndGetCount(context, validator) {
    filter.clearFilter();
    filter.customizeFilter();
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+0']", "Contexto de Otimização", "Contexto de Otimização");
    utils.elementClick("[name='buttonAdd+0']");
    utils.comboSearchAndSelect("[name='filterCustomizationTable'] [name='attributes+1']", "Pré-validador", "Pré-validador");
    utils.elementClick("[name='buttonApply']");
    utils.addTextTags("[name='Contexto de Otimização-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", context);
    utils.addTextTags("[name='Pré-validador-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", validator);
    utils.elementClick("[name='submitButton']");
    return element.all(by.css("[name='nlgGenericParamDataTable'] tbody tr")).count();
};

module.exports = {
    setPosRestrictionRoutingConfigs,
    unsetPreRestrictionRoutingConfigs,
    setPreRestrictionRoutingConfigs,
    removePlanObjectiveFunction,
    copyContext,
    removeSelector,
    removeContext,
    setSelectionValidators,
    fillPreValidatorHard,
    fillManualPreValidatorHard,
    removeManualPreValidatorHard,
    removePreValidatorHard
};