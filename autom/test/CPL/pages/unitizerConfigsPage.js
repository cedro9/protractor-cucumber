"use strict";

const tabGeneralData = "[name='generalData']",
  tabObjectiveFunction = "[name='objectiveFunction']",
  tabWrapperSelection = "[name='wrapperSelection']",
  tabRestrictions = "[name='restrictionsOptimization']",
  tabRestrictionsManual = "[name='restrictionsManual']",
  tabSimplePallets = "[name='simplePallets']",
  comboBoxArrangementContext = "[name='arrangementConfig']",
  comboBoxUnitizerScript = "[name='unitizerScript']",
  unitizerConfigObjectiveFunction = "[name='unitizerConfigObjectiveFunction']",
  unitizerWrapperSelection = "[name='unitizerWrapperSelection']",
  restrictionsAvailable = "[name='restrictionsActivation']",
  wrapperPreRestrictions = "[name='wrapperPreRestrictions']",
  tripPreRestrictions = "[name='tripPreRestrictions']",
  tripPostRestrictions = "[name='tripPostRestrictions']",
  preValidatorsOptimization = "[name='nlgMultiTransferListModel-0']",
  postValidatorsOptimization = "[name='nlgMultiTransferListModel-1']",
  filterLeft = " [name='filterLeft']",
  filterRight = " [name='filterRight']",
  maxUnitizationLevel = "[name='maxUnitizationLevel']",
  saveButton = "[name='buttonSubmit']",
  backButton = "[name='editionViewBack']",
  editButton = "[name='editButton']",
  submitButton = "[name = 'buttonSubmit']",
  okButton = "[name='buttonOk']",
  restrictionsOptimizationTab = "[name='restrictionsOptimization']",
  restrictionsManualTab = "[name='restrictionsManual']",
  removeButton = "[name='removeButton']";

const utils = require('../scripts/utils'),
  fillCombo = utils.fillCombo,
  elementClick = utils.elementClick,
  elementClickXpath = utils.elementClickXpath,
  fillText = utils.fillText,
  addTextTags = utils.addTextTags,
  present = require("../scripts/wait").present,
  dblClick = require("../scripts/events").dblClick,
  fillBasicInfo = require("../scripts/fillBasicEntity").fillBasicEntityInfo,
  scroll = require("../scripts/scroll"),
  taginput = require("../scripts/taginput"),
  filter = require("../scripts/filter"),
  transfer = require('../scripts/transferPanel'),
  moveLeftToRigth = transfer.moveLeftToRigth,
  moveRigthToLeft = transfer.moveRigthToLeft,
  moveToPreValidator = transfer.moveToPreValidator,
  validaMensagem = require("../scripts/messages").validaMensagem,
  filterBySourceIdAndGetCount = filter.filterBySourceIdAndGetCount;

module.exports = {
  cadastre,
  cadastreWithNameCodeAndDescription,
  setPreValidatorsOptimization,
  setWrapperSelection,
  setObjectiveFunction,
  setUnitizerScript,
  setArrangementContext,
  getSaveButton,
  getTabObjectiveFunction,
  getTabWrapperSelection,
  getTabRestrictions,
  setPreRestrictionValidatorUnitizerConfigs,
  setManualUnitizerPreRestrictionValidatorUnitizerConfigs,
  setPosRestrictionValidatorUnitizerConfigs,
  setManualUnitizerPosRestrictionValidatorUnitizerConfigs,
  setSelectionValidatorUnitizerConfigs,
  setMaxUnitizationLevelUnitizerConfigs,
  setUnitizationScriptUnitizerConfigs,
  removeUnitizationContext,
  removeContextoDeUnitizaçãodoContextoDeOtimizacaoDefault,
  disablePreRestrictionValidatorUnitizerConfigs
};

function cadastre() {
  if (process.env.CLIENT_NAME === 'automtest') {
    navigate.to("Administração", "Unitização");
    const sourceId = "DEF";
    var scriptUnitization = "DefaultUnitizerScript";
    var countBeforeEditionPromise = filterBySourceIdAndGetCount(sourceId);
    return countBeforeEditionPromise.then(function (regCount) {
      if (regCount === 0) {
        elementClick("[name='cadastreButton']");
        fillBasicInfo("DEF", "DEF", "DEF");
        setArrangementContext();
        setUnitizerScript(scriptUnitization);
        elementClick(getTabObjectiveFunction());
        setObjectiveFunction();
        elementClick(getTabWrapperSelection());
        setWrapperSelection();
        elementClick(getTabRestrictions());
        setPreValidatorsOptimization("Arranjo espacial");
        setPreValidatorsOptimization("Nível máximo de unitização");
        elementClick(getSaveButton());
        validaMensagem("A entidade foi salva com sucesso.");
        return elementClick("[name='buttonOk']");
      }
    });
  }
};

function cadastreWithNameCodeAndDescription(context) {
  navigate.to("Administração", "Unitização");
  const sourceId = context;
  var scriptUnitization = "DefaultUnitizerScript";
  var countBeforeEditionPromise = filterBySourceIdAndGetCount(sourceId);
  return countBeforeEditionPromise.then(function (regCount) {
    if (regCount === 0) {
      elementClick("[name='cadastreButton']");
      fillBasicInfo(context, context, context);
      setArrangementContext();
      setUnitizerScript(scriptUnitization);
      elementClick(getTabObjectiveFunction());
      setObjectiveFunction();
      elementClick(getTabWrapperSelection());
      setWrapperSelection();
      elementClick(getTabRestrictions());
      setPreValidatorsOptimization("Arranjo espacial");
      setPreValidatorsOptimization("Nível máximo de unitização");
      elementClick(getSaveButton());
      validaMensagem("A entidade foi salva com sucesso.");
      return elementClick("[name='buttonOk']");
    }
  });
};

function setPreValidatorsOptimization(preValidators) {
  return moveToPreValidator(restrictionsAvailable, preValidatorsOptimization, preValidators);
};

function setWrapperSelection() {
  const wrapSelectionStrategy = "Minimizar as dimensões máximas dos invólucros";
  return moveLeftToRigth(unitizerWrapperSelection, wrapSelectionStrategy);
};

function setObjectiveFunction() {
  const objectiveFunction = "Minimizar número de unidades de embarque compostas";
  return moveLeftToRigth(unitizerConfigObjectiveFunction, objectiveFunction);
};

function setUnitizerScript(script) {
  return addTextTags(comboBoxUnitizerScript, script);
};

function setArrangementContext() {
  addTextTags(comboBoxArrangementContext, "DEFAULT");
};

function getSaveButton() {
  return saveButton;
};
function getBackButton() {
  return backButton;
};

function getTabObjectiveFunction() {
  return tabObjectiveFunction;
};

function getTabWrapperSelection() {
  return tabWrapperSelection;
};

function getTabRestrictions() {
  return tabRestrictions;
};

function getabRestrictionsManual() {
  return tabRestrictionsManual;
};

function getTabSimplePallets() {
  return tabSimplePallets;
};

function getTabGeneralData() {
  return tabGeneralData;
};

function setPreRestrictionValidatorUnitizerConfigs(validator, unitizerConfig) {
  navigate.to("Administração", "Unitização");
  var countBeforeEditionPromise = filterBySourceIdAndGetCount(unitizerConfig);
  return countBeforeEditionPromise.then(function (regCount) {
    if (regCount === 1) {
      elementClick(editButton);
      elementClick(restrictionsOptimizationTab);
      setPreRestrictionsValidator(validator);
      elementClick(submitButton);
      return elementClick(okButton);
    }
  });
};

function setManualUnitizerPreRestrictionValidatorUnitizerConfigs(validator, unitizerConfig) {
  navigate.to("Administração", "Unitização");
  var countBeforeEditionPromise = filterBySourceIdAndGetCount(unitizerConfig);
  return countBeforeEditionPromise.then(function (regCount) {
    if (regCount === 1) {
      elementClick(editButton);
      elementClick(restrictionsManualTab);
      setManualUnitizerPreRestrictionsValidator(validator);
      elementClick(submitButton);
      return elementClick(okButton);
    }
  });
};

function setPosRestrictionValidatorUnitizerConfigs(validator, unitizerConfig) {
  navigate.to("Administração", "Unitização");
  var countBeforeEditionPromise = filterBySourceIdAndGetCount(unitizerConfig);
  return countBeforeEditionPromise.then(function (regCount) {
    if (regCount === 1) {
      elementClick(editButton);
      elementClick(restrictionsOptimizationTab);
      setPosRestrictionsValidator(validator);
      elementClick(restrictionsManualTab);
      setManualUnitizerSelectionValidator(validator);
      elementClick(submitButton);
      return elementClick(okButton);
    }
  });
};

function setManualUnitizerPosRestrictionValidatorUnitizerConfigs(validator, unitizerConfig) {
  navigate.to("Administração", "Unitização");
  var countBeforeEditionPromise = filterBySourceIdAndGetCount(unitizerConfig);
  return countBeforeEditionPromise.then(function (regCount) {
    if (regCount === 1) {
      elementClick(editButton);
      elementClick(restrictionsManualTab);
      setManualUnitizerPosRestrictionsValidator(validator);
      elementClick(submitButton);
      return elementClick(okButton);
    }
  });
};

function setSelectionValidatorUnitizerConfigs(validator, unitizerConfig) {
  navigate.to("Administração", "Unitização");
  var countBeforeEditionPromise = filterBySourceIdAndGetCount(unitizerConfig);
  return countBeforeEditionPromise.then(function (regCount) {
    if (regCount === 1) {
      elementClick(editButton);
      elementClick(restrictionsManualTab);
      setManualUnitizerSelectionValidator(validator);
      elementClick(submitButton);
      return elementClick(okButton);
    }
  });
};

function setMaxUnitizationLevelUnitizerConfigs(valor, unitizerConfig) {
  navigate.to("Administração", "Unitização");
  var countBeforeEditionPromise = filterBySourceIdAndGetCount(unitizerConfig);
  return countBeforeEditionPromise.then(function (regCount) {
    if (regCount === 1) {
      elementClick(editButton);
      elementClick(restrictionsOptimizationTab);
      setMaxUnitizationLevel(valor);
      elementClick(submitButton);
      return elementClick(okButton);
    }
  });
};

function setUnitizationScriptUnitizerConfigs(scriptUnitization, unitizerConfig) {
  navigate.to("Administração", "Unitização");
  var countBeforeEditionPromise = filterBySourceIdAndGetCount(unitizerConfig);
  return countBeforeEditionPromise.then(function (regCount) {
    if (regCount === 1) {
      elementClick(editButton);
      setUnitizerScript(scriptUnitization);
      elementClick(submitButton);
      validaMensagem("A entidade foi salva com sucesso.");
      return elementClick(okButton);
    }
  });
};

function setPreRestrictionsValidator(validator) {
  return moveToPreValidator(restrictionsAvailable, preValidatorsOptimization, validator);
};

function setPosRestrictionsValidator(validator) {
  return moveToPreValidator(restrictionsAvailable, postValidatorsOptimization, validator);
};

function setManualUnitizerPreRestrictionsValidator(validator) {
  return moveLeftToRigth(tripPreRestrictions, validator);
};

function setManualUnitizerPosRestrictionsValidator(validator) {
  return moveLeftToRigth(tripPostRestrictions, validator);
};

function setManualUnitizerSelectionValidator(validator) {
  return moveLeftToRigth(wrapperPreRestrictions, validator);
};

function setMaxUnitizationLevel(valor) {
  return utils.fillNumber(maxUnitizationLevel, valor);
};

function removeUnitizationContext(context) {
  navigate.to("Administração", "Unitização");
  var countBeforeInsertionPromise = filterBySourceIdAndGetCount(context);
  return countBeforeInsertionPromise.then(function (regCount) {
    if (regCount === 1) {
      return filter.excluirPosFiltro(context);
    }
  });
};

function removeContextoDeUnitizaçãodoContextoDeOtimizacaoDefault() {
  navigate.to("Administração", "Otimização");
  const sourceId = "DEF";
  var countBeforeEditionPromise = filterBySourceIdAndGetCount(sourceId);
  return countBeforeEditionPromise.then(function (regCount) {
    if (regCount === 1) {
      elementClick("[name='editButton']");
      elementClick("[name='routingConfigs.contexts']");
      addTextTags("[name='routingConfig.contexts.unitizerConfig']", " ");
      elementClick("[name='buttonSubmit']");
      return elementClick("[name='buttonOk']");
    }
  });
};

function disablePreRestrictionValidatorUnitizerConfigs(validator, unitizerConfig) {
  navigate.to("Administração", "Unitização");
  var countBeforeEditionPromise = filterBySourceIdAndGetCount(unitizerConfig);
  return countBeforeEditionPromise.then(function (regCount) {
    if (regCount === 1) {
      elementClick(editButton);
      elementClick(restrictionsOptimizationTab);
      disablePreRestrictionsValidator(validator);
      elementClick(submitButton);
      return elementClick(okButton);
    }
  });
};

function disablePreRestrictionsValidator(validator) {
  return transfer.movePreValidatorToAvailable(preValidatorsOptimization, restrictionsAvailable, validator);
};