"use strict";

const tabGeneral = "[name='general']",
    wrapperValue = "[name='value']",
    wrapperWeight = "[name='weight']",
    wrapperCategory = "[name='shipmentUnitWrapperCategory']",
    checkboxSimple = "[name='simple']",
    checkboxComposite = "[name='composite']",
    weightPolicy = "[name='shipmentUnitPolicies.weightPolicyType']",
    valuePolicy = "[name='shipmentUnitPolicies.valuePolicyType']",
    dimensionPolicy = "[name='shipmentUnitPolicies.externalShipmentUnitDimensionPolicyType']",
    orientationsPolicy = "[name='shipmentUnitPolicies.allowedOrientationsPolicyType']",
    maxWeightByAllowedOrientationPolicy = "[name='shipmentUnitPolicies.maxWeightByAllowedOrientationPolicyType']",
    fragileOrientationsPolicy = "[name='shipmentUnitPolicies.fragileOrientationsPolicyType']",
    maxPiledByAllowedOrientationPolicy = "[name='shipmentUnitPolicies.maxPiledByAllowedOrientationPolicyType']",
    getAllowedPiledPolicy = "[name='shipmentUnitPolicies.allowedPiledPolicyType']",
    loadDirectionShipmentUnitPolicy = "[name='shipmentUnitPolicies.loadDirectionShipmentUnitPolicyType']",
    specialPriorityShipmentUnitPolicy = "[name='shipmentUnitPolicies.specialPriorityShipmentUnitPolicyType']",
    minPercentageSupportObjectPolicy = "[name='shipmentUnitPolicies.minPercentageSupportObjectPolicyType']",
    embeddingInfoShipmentUnitPolicy = "[name='shipmentUnitPolicies.embeddingInfoShipmentUnitPolicyType']",
    untiePacksShipmentUnitPolicy = "[name='shipmentUnitPolicies.untiePacksShipmentUnitPolicyType']",
    internalArrangementPolicy = "[name='shipmentUnitPolicies.internalArrangementPolicyType']",
    enabledSupportDimensions = "[name='useSupportDimensions']",
    heightSupport = "[name='height']",
    widthSupoort = "[name='width']",
    lengthSupport = "[name='length']",
    enabledInternalMaximumDimensions = "[name='useMaxInternalDimensions']",
    maxInternalHeight = "[name='maxInternalHeight']",
    maxInternalWidth = "[name='maxInternalWidth']",
    maxInternalLength = "[name='maxInternalLength']",
    enabledExternalMaximumDimensions = "[name='useMaxExternalDimensions']",
    maxExternalHeight = "[name='maxExternalHeight']",
    maxExternalWidth = "[name='maxExternalWidth']",
    maxExternalLength = "[name='maxExternalLength']",
    enabledEmbedding = "[name='entity.useEmbedding'][ng-model='model.value']",
    canBeEmbedded = "[name='entity.useEmbedding'][ng-model='entity.embeddingInfo.embeddable']",
    canEmbedInsideIt = "[name='embeddingInfo.embedder']",
    embeddingOrientations = "[name='embeddingInfo.orientation']",
    embeddingOffset = "[name='embeddingInfo.offset']",
    useSupportObjectRestrictions = "[name='entity.useSupportObjectRestrictions']",
    minPercentageSupportObject = "[name='minPercentageSupportObject']",
    useAllowedOrientationRestrictions = "[name='entity.useAllowedOrientationRestrictions']",
    origin = "[name='allowedOrientations.origin']",
    maxPressureLWH = "[name='allowedOrientations.maxPressure.lwh']",
    maxPressureByStackSizeLWH = "[name='allowedOrientations.maxPressureByStackSize.lwh']",
    maxSelfPileLWH = "[name='allowedOrientations.maxSelfPile.lwh']",
    maxPressureWLH = "[name='allowedOrientations.maxPressure.wlh']",
    maxPressureByStackSizeWLH = "[name='allowedOrientations.maxPressureByStackSize.wlh']",
    maxSelfPileWLH = "[name='allowedOrientations.maxSelfPile.wlh']",
    maxPressureHWL = "[name='allowedOrientations.maxPressure.hwl']",
    maxPressureByStackSizeHWL = "[name='allowedOrientations.maxPressureByStackSize.hwl']",
    maxSelfPileHWL = "[name='allowedOrientations.maxSelfPile.hwl']",
    maxPressureLHW = "[name='allowedOrientations.maxPressure.lhw']",
    maxPressureByStackSizeLHW = "[name='allowedOrientations.maxPressureByStackSize.lhw']",
    maxSelfPileLHW = "[name='allowedOrientations.maxSelfPile.lhw']",
    maxPressureWHL = "[name='allowedOrientations.maxPressure.whl']",
    maxPressureByStackSizeWHL = "[name='allowedOrientations.maxPressureByStackSize.whl']",
    maxSelfPileWHL = "[name='allowedOrientations.maxSelfPile.whl']",
    maxPressureHLW = "[name='allowedOrientations.maxPressure.hlw']",
    maxPressureByStackSizeHLW = "[name='allowedOrientations.maxPressureByStackSize.hlw']",
    maxSelfPileHLW = "[name='allowedOrientations.maxSelfPile.hlw']",
    changeAllAButton = "[name='allowedOrientations.batchEdition']",
    fragileOrientations = "[name='entity.useFragileOrientationRestrictions']",
    fragileOrientationsLWH = "[name='fragileOrientations.lwh']",
    fragileOrientationsWLH = "[name='fragileOrientations.wlh']",
    fragileOrientationsHWL = "[name='fragileOrientations.hwl']",
    fragileOrientationsLHW = "[name='fragileOrientations.lhw']",
    fragileOrientationsWHL = "[name='fragileOrientations.whl']",
    fragileOrientationsHLW = "[name='fragileOrientations.hlw']",
    loadUnloadConfigurations = "[name='entity.useBlockedLoadDirectionRestrictions']",
    blockedLoadDirections = "[name='blockedLoadDirections']",
    moving = "[name='entity.specialPriorityAllowed']",
    movementRestrictions = "[name='specialPriority']",
    fractionatedItens = "[name='fractionProperties.fractionationPolicy']",
    itemFractionWrapper = "[name='fractionProperties.fractionationWrapper']",
    tabPiling = "[name='stacking']",
    allowedPiledShipmentUnitWrapperOnTop = "[name='allowedPiledShipmentUnitWrapperOnTop']",
    allowedPiledShipmentUnitWrapperBelow = "[name='allowedPiledShipmentUnitWrapperBelow']",
    allowedPiledProductCategoryAbove = "[name='allowedPiledProductCategoryAbove']",
    allowedPiledProductCategoryBelow = "[name='allowedPiledProductCategoryBelow']",
    useAllowedPiledRestrictions = "[name='useAllowedPiledRestrictions']",
    tabInternalRestrictions = "[name='internalRestrictions']",
    minVolume = "[panel='edition.shipmentUnitWrapper.internalItensLimits'] [name='minVolume']",
    maxVolume = "[panel='edition.shipmentUnitWrapper.internalItensLimits'] [name='maxVolume']",
    minWeight = "[panel='edition.shipmentUnitWrapper.internalItensLimits'] [name='minWeight']",
    maxWeight = "[panel='edition.shipmentUnitWrapper.internalItensLimits'] [name='maxWeight']",
    minValue = "[panel='edition.shipmentUnitWrapper.internalItensLimits'] [name='minValue']",
    maxValue = "[panel='edition.shipmentUnitWrapper.internalItensLimits'] [name='maxValue']",
    minQuantity = "[panel='edition.shipmentUnitWrapper.internalItensLimits'] [name='minQuantity']",
    maxQuantity = "[panel='edition.shipmentUnitWrapper.internalItensLimits'] [name='maxQuantity']",
    useQuantityByCategory = "[name='useQuantityByCategory']",
    quantityByCategoryTable = "[name='quantityByCategory']",
    wrapperCategoryInternalRestrictions = "[name='quantityByCategory'] [name='wrapperCategory']",
    minColumnInternalRestrictions = "[name='quantityByCategory'] [name='minColumn']",
    maxColumnInternalRestrictions = "[name='quantityByCategory'] [name='maxColumn']",
    useShipmentUnitRestrictions = "[name='useShipmentUnitRestrictions']",
    incompatibleWrapperCategories = "[name='incompatibleWrapperCategories']",
    useShipmentUnitWrapperRestrictions = "[name='useShipmentUnitWrapperRestrictions']",
    incompatibleShipmentUnitWrappers = "[name='incompatibleShipmentUnitWrappers']",
    useProductCategoryRestrictions = "[name='useProductCategoryRestrictions']",
    incompatibleProductCategories = "[name='incompatibleProductCategories']",
    tabProductRestrictions = "[name='productRestrictions']",
    useProductRestrictions = "[name='useProductRestrictions']",
    incompatibleProducts = "[name='incompatibleProducts']",
    genralRestrictionsTable = "[panel='edition.shipmentUnitWrapper.generalRestrictions']",
    product = "[panel='edition.shipmentUnitWrapper.generalRestrictions'] [name='product']",
    minQuantityProductRestrictions = "[panel='edition.shipmentUnitWrapper.generalRestrictions']  [name='minQuantity']",
    maxQuantityProductRestrictions = "[panel='edition.shipmentUnitWrapper.generalRestrictions'] [name='useShipmentUnitRestrictions']";

const utils = require('../scripts/utils'),
    fillCombo = utils.fillCombo,
    elementClick = utils.elementClick,
    fillText = utils.fillText,
    addTextTags = utils.addTextTags,
    present = require("../scripts/wait").present,
    dblClick = require("../scripts/events").dblClick,
    fillBasicInfo = require("../scripts/fillBasicEntity").fillBasicEntityInfo,
    scroll = require("../scripts/scroll"),
    taginput = require("../scripts/taginput"),
    filter = require("../scripts/filter"),
    transfer = require('../scripts/transferPanel'),
    validaMensagem = require("../scripts/messages").validaMensagem;

exports.cadastreSimpleWrapperByOrderItem = function (code, name, description) {
    const category = "Granel Unit",
        weightPolicy = "Item de pedido",
        valuePolicy = "Item de pedido",
        dimensionPolicy = "Item de pedido",
        orientationsPolicy = "Item de pedido",
        generalPolicies = "Produto";
    return cadastre(code, name, description, category, weightPolicy, valuePolicy, dimensionPolicy, orientationsPolicy, generalPolicies, "simple");
};

exports.cadastreSimpleWrapperByProduct = function (code, name, description) {
    const category = "Granel Unit",
        weightPolicy = "Produto",
        valuePolicy = "Produto",
        dimensionPolicy = "Produto",
        orientationsPolicy = "Produto",
        generalPolicies = "Produto";
    return cadastre(code, name, description, category, weightPolicy, valuePolicy, dimensionPolicy, orientationsPolicy, generalPolicies, "simple");
};

exports.cadastreCompositeWrapper = function (code, name, description) {
    const category = "Palete",
        weightPolicy = "Invólucro",
        valuePolicy = "Invólucro",
        dimensionPolicy = "Dimensões máximas externas",
        orientationsPolicy = "Invólucro",
        generalPolicies = "Invólucro";
    return cadastre(code, name, description, category, weightPolicy, valuePolicy, dimensionPolicy, orientationsPolicy, generalPolicies, "composite");
};

exports.cadastreCompositeWrapperWithEspecificCategory = function (code, name, description, categoria) {
    const category = categoria,
        weightPolicy = "Invólucro",
        valuePolicy = "Invólucro",
        dimensionPolicy = "Dimensões máximas externas",
        orientationsPolicy = "Invólucro",
        generalPolicies = "Invólucro";
    return cadastre(code, name, description, category, weightPolicy, valuePolicy, dimensionPolicy, orientationsPolicy, generalPolicies, "composite");
};

function cadastre(code, name, description, category, weightPolicy, valuePolicy, dimensionPolicy, orientationsPolicy, generalPolicies, wrapprerType) {
    navigate.to("Administração", "Invólucros de UE");
    var countBeforeInsertionPromise = filter.filterBySourceIdAndGetCount(code);
    return countBeforeInsertionPromise.then(function (regCount) {
        if (regCount === 0) {
            elementClick("[name='cadastreButton']");
            fillBasicInfo(code, name, description);
            setWrapperValue("5000");
            setWrapperWeight("5");
            setWrapperCategory(category);
            setWrapperType(wrapprerType);
            setWeightPolicy(weightPolicy);
            setValuePolicy(valuePolicy);
            setDimensionPolicy(dimensionPolicy);
            setOrientationsPolicy(orientationsPolicy);
            setMaxWeightByAllowedOrientationPolicy(generalPolicies);
            setFragileOrientationsPolicy(generalPolicies);
            setMaxPiledByAllowedOrientationPolicy(generalPolicies);
            setAllowedPiledPolicy(generalPolicies);
            setLoadDirectionShipmentUnitPolicy(generalPolicies);
            setSpecialPriorityShipmentUnitPolicy(generalPolicies);
            setMinPercentageSupportObjectPolicy(generalPolicies);
            setEmbeddingInfoShipmentUnitPolicy(generalPolicies);
            setUntiePacksShipmentUnitPolicy("Destino");
            setInternalArrangementPolicy("Unidade Sólida");
            setFractionationPolicy("Proporção de altura, peso e valor");
            if (wrapprerType === "composite") {
                setMaxInternalHeight("3,00");
                setMaxInternalWidth("1,20");
                setMaxInternalLength("1,20");
                utils.elementClick(tabInternalRestrictions);
                setMaxWeight("30");
            }
            elementClick("[name='buttonSubmit']");
            validaMensagem("A entidade foi salva com sucesso.");
            return elementClick("[name='buttonOk']");
        }
    });
};

exports.duplicateWrapperCategory = function (oldCode, newCode, name, description) {
    navigate.to("Administração", "Categorias de invólucro");

    var countBeforeEditionPromise = filter.filterBySourceIdAndGetCount(newCode);
    return countBeforeEditionPromise.then(function (regCount) {
        if (regCount === 0) {
            var countBeforeEditionPromiseOld = filter.filterBySourceIdAndGetCount(oldCode);
            return countBeforeEditionPromiseOld.then(function (regCount) {
                if (regCount === 1) {
                    elementClick("[name='copyButton']");
                    fillBasicInfo(newCode, name, description);
                    elementClick("[name='buttonSubmit']");
                    validaMensagem("A entidade foi salva com sucesso.");
                    return elementClick("[name='buttonOk']");
                }
            });
        }
    });
};

exports.removeWrapperCategory = function (category) {
    navigate.to("Administração", "Categorias de invólucro");
    var countBeforeEditionPromiseOld = filter.filterBySourceIdAndGetCount(category);
    return countBeforeEditionPromiseOld.then(function (regCount) {
        if (regCount === 1) {
            elementClick("[name='deleteButton']");
            elementClick("[name='buttonOk']");
            validaMensagem("Entidade removida com sucesso.");
            return elementClick("[name='buttonOk']");
        }
    });
};

function setWrapperType(wrapprerType) {
    if (wrapprerType === "composite") {
        elementClick(checkboxComposite);
    }
};

function setWeightPolicy(policy) {
    utils.addTextTags(weightPolicy, policy);
};

function setValuePolicy(policy) {
    utils.addTextTags(valuePolicy, policy);
};

function setDimensionPolicy(policy) {
    utils.addTextTags(dimensionPolicy, policy);
};

function setOrientationsPolicy(policy) {
    utils.addTextTags(orientationsPolicy, policy);
};

function setMaxWeightByAllowedOrientationPolicy(policy) {
    utils.addTextTags(maxWeightByAllowedOrientationPolicy, policy);
};

function setFragileOrientationsPolicy(policy) {
    utils.addTextTags(fragileOrientationsPolicy, policy);
};

function setMaxPiledByAllowedOrientationPolicy(policy) {
    utils.addTextTags(maxPiledByAllowedOrientationPolicy, policy);
};

function setAllowedPiledPolicy(policy) {
    utils.addTextTags(getAllowedPiledPolicy, policy);
};

function setLoadDirectionShipmentUnitPolicy(policy) {
    utils.addTextTags(loadDirectionShipmentUnitPolicy, policy);
};

function setSpecialPriorityShipmentUnitPolicy(policy) {
    utils.addTextTags(specialPriorityShipmentUnitPolicy, policy);
};

function setMinPercentageSupportObjectPolicy(policy) {
    utils.addTextTags(minPercentageSupportObjectPolicy, policy);
};

function setEmbeddingInfoShipmentUnitPolicy(policy) {
    utils.addTextTags(embeddingInfoShipmentUnitPolicy, policy);
};

function setUntiePacksShipmentUnitPolicy(policy) {
    utils.addTextTags(untiePacksShipmentUnitPolicy, policy);
};

function setInternalArrangementPolicy(policy) {
    utils.addTextTags(internalArrangementPolicy, policy);
};

function setFractionationPolicy(policy) {
    utils.addTextTags(fractionatedItens, policy);
};

function setWrapperCategory(category) {
    utils.addTextTags(wrapperCategory, category);
};

function setWrapperWeight(weight) {
    utils.fillNumber(wrapperWeight, weight);
};

function setWrapperValue(value) {
    utils.fillNumber(wrapperValue, value);
};

function setMaxInternalLength(length) {
    utils.fillNumber(maxInternalLength, length);
};

function setMaxInternalWidth(width) {
    utils.fillNumber(maxInternalWidth, width);
};

function setMaxInternalHeight(height) {
    utils.fillNumber(maxInternalHeight, height);
};

function setMaxWeight(weight) {
    utils.fillNumber(maxWeight, weight);
};

exports.setMaxSelfPileForAllAllowedOrientations = function (quantity) {
    utils.fillNumber("[name='allowedOrientations.maxSelfPile.lwh']", quantity);
    utils.fillNumber("[name='allowedOrientations.maxSelfPile.wlh']", quantity);
    utils.fillNumber("[name='allowedOrientations.maxSelfPile.hwl']", quantity);
    utils.fillNumber("[name='allowedOrientations.maxSelfPile.lhw']", quantity);
    utils.fillNumber("[name='allowedOrientations.maxSelfPile.whl']", quantity);
    return utils.fillNumber("[name='allowedOrientations.maxSelfPile.hlw']", quantity);
};

exports.setMaxPressureByStackSizeForAllAllowedOrientations = function (maxWeightForStacking) {
    utils.fillNumber("[name='allowedOrientations.maxPressureByStackSize.lwh']", maxWeightForStacking);
    utils.fillNumber("[name='allowedOrientations.maxPressureByStackSize.wlh']", maxWeightForStacking);
    utils.fillNumber("[name='allowedOrientations.maxPressureByStackSize.hwl']", maxWeightForStacking);
    utils.fillNumber("[name='allowedOrientations.maxPressureByStackSize.lhw']", maxWeightForStacking);
    utils.fillNumber("[name='allowedOrientations.maxPressureByStackSize.whl']", maxWeightForStacking);
    return utils.fillNumber("[name='allowedOrientations.maxPressureByStackSize.hlw']", maxWeightForStacking);
};

exports.setMaxPressureForAllAllowedOrientations = function (maxWeight) {
    utils.fillNumber("[name='allowedOrientations.maxPressure.lwh']", maxWeight);
    utils.fillNumber("[name='allowedOrientations.maxPressure.wlh']", maxWeight);
    utils.fillNumber("[name='allowedOrientations.maxPressure.hwl']", maxWeight);
    utils.fillNumber("[name='allowedOrientations.maxPressure.lhw']", maxWeight);
    utils.fillNumber("[name='allowedOrientations.maxPressure.whl']", maxWeight);
    return utils.fillNumber("[name='allowedOrientations.maxPressure.hlw']", maxWeight);
};

exports.setAllowedOrientationsByOrigin = function (origin) {
    return utils.addTextTags("[name='allowedOrientations.origin']", origin);
};

exports.setQuantityMaxAndMinByProduct = function (product, minQuantity, maxQuantity) {
    utils.elementClick("[name='quantityOfProducts'] [name='add']");
    utils.addTextTags("[name='product']", product);
    utils.fillNumber("[name='quantityOfProducts'] [name='minQuantity']", minQuantity);
    return utils.fillNumber("[name='quantityOfProducts'] [name='maxQuantity']", maxQuantity);
};

exports.setIncompatibleProducts = function (product) {
    utils.elementClick("[name='entity.useProductRestrictions']");
    return transfer.moveLeftToRigth("[name='incompatibleProducts']", product);
    utils.fillTextxpath("//*[@name='incompatibleProducts']/*/*/*/*[@name='filterLeft']", product);
    utils.elementClick("[name='incompatibleProducts'] [name='ListLeft'] option[label='" + product + "']");
    return utils.elementClickXpath("//*[@name='incompatibleProducts']/*/*/*/*[@name='moveToRight']");
};

exports.setIncompatibleProductCategories = function (productCategory) {
    return transfer.moveLeftToRigth("[name='incompatibleProductCategories']", productCategory);
    utils.elementClickXpath("//*[@name='entity.useProductCategoryRestrictions']");
    utils.fillTextxpath("//*[@name='incompatibleProductCategories']/*/*/*/*[@name='filterLeft']", productCategory);
    utils.elementClick("[name='incompatibleProductCategories'] [name='ListLeft'] option[label='" + productCategory + "']");
    return utils.elementClickXpath("//*[@name='incompatibleProductCategories']/*/*/*/*[@name='moveToRight']");
}

exports.setIncompatibleShipmentUnitWrappers = function (shipmentUnit) {
    utils.elementClick("[name='entity.useShipmentUnitWrapperRestrictions']");
    return transfer.moveLeftToRigth("[name='incompatibleShipmentUnitWrappers']", shipmentUnit);
    utils.fillTextxpath("//*[@name='incompatibleShipmentUnitWrappers']/*/*/*/*[@name='filterLeft']", shipmentUnit);
    utils.elementClick("[name='incompatibleShipmentUnitWrappers'] [name='ListLeft'] option[label='" + shipmentUnit + "']");
    return utils.elementClickXpath("//*[@name='incompatibleShipmentUnitWrappers']/*/*/*/*[@name='moveToRight']");
};

exports.setIncompatibleWrapperCategories = function (wrapperCategory) {
    utils.elementClick("[name='entity.useShipmentUnitRestrictions']");
    return transfer.moveLeftToRigth("[name='incompatibleWrapperCategories']", wrapperCategory);
    utils.fillTextxpath("//*[@name='incompatibleWrapperCategories']/*/*/*/*[@name='filterLeft']", wrapperCategory);
    utils.elementClick("[name='incompatibleWrapperCategories'] [name='ListLeft'] option[label='" + wrapperCategory + "']");
    return utils.elementClickXpath("//*[@name='incompatibleWrapperCategories']/*/*/*/*[@name='moveToRight']");
};

exports.setAllowedPiledProductCategoryBelow = function (productCategory) {
    return transfer.moveLeftToRigth("[name='allowedPiledProductCategoryBelow']", productCategory);
    utils.fillTextxpath("//*[@name='allowedPiledProductCategoryBelow']/*/*/*/*[@name='filterLeft']", productCategory);
    utils.elementClick("[name='allowedPiledProductCategoryBelow'] [name='ListLeft'] option[label='" + productCategory + "']");
    return utils.elementClickXpath("//*[@name='allowedPiledProductCategoryBelow']/*/*/*/*[@name='moveToRight']");
};

exports.setAllowedPiledProductCategoryAbove = function (productCategory) {
    return transfer.moveLeftToRigth("[name='allowedPiledProductCategoryAbove']", productCategory);
    utils.fillTextxpath("//*[@name='allowedPiledProductCategoryAbove']/*/*/*/*[@name='filterLeft']", productCategory);
    utils.elementClick("[name='allowedPiledProductCategoryAbove'] [name='ListLeft'] option[label='" + productCategory + "']");
    return utils.elementClickXpath("//*[@name='allowedPiledProductCategoryAbove']/*/*/*/*[@name='moveToRight']");
};

exports.setAllowedPiledShipmentUnitWrapperBelow = function (shipmentUnit) {
    return transfer.moveLeftToRigth("[name='allowedPiledShipmentUnitWrapperBelow']", shipmentUnit);
    utils.fillTextxpath("//*[@name='allowedPiledShipmentUnitWrapperBelow']/*/*/*/*[@name='filterLeft']", shipmentUnit);
    utils.elementClick("[name='allowedPiledShipmentUnitWrapperBelow'] [name='ListLeft'] option[label='" + shipmentUnit + "']");
    return utils.elementClickXpath("//*[@name='allowedPiledShipmentUnitWrapperBelow']/*/*/*/*[@name='moveToRight']");
};

exports.setAllowedPiledShipmentUnitWrapperOnTop = function (shipmentUnit) {
    utils.elementClick("[name='entity.useAllowedPiledRestrictions']");
    return transfer.moveLeftToRigth("[name='allowedPiledShipmentUnitWrapperOnTop']", shipmentUnit);
    utils.fillTextxpath("//*[@name='allowedPiledShipmentUnitWrapperOnTop']/*/*/*/*[@name='filterLeft']", shipmentUnit);
    utils.elementClick("[name='allowedPiledShipmentUnitWrapperOnTop'] [name='ListLeft'] option[label='" + shipmentUnit + "']");
    return utils.elementClickXpath("//*[@name='allowedPiledShipmentUnitWrapperOnTop']/*/*/*/*[@name='moveToRight']");
};

exports.setUnblockedLoadDirectionRestrictions = function (value) {
    utils.elementClick("[name='entity.useBlockedLoadDirectionRestrictions']");
    return transfer.moveLeftToRigth("[name='blockedLoadDirections']", value);
    utils.fillTextxpath("//*[@name='blockedLoadDirections']/*/*/*/*[@name='filterLeft']", value);
    utils.elementClick("[name='blockedLoadDirections'] [name='ListLeft'] option[label='" + value + "']");
    return utils.elementClickXpath("//*[@name='blockedLoadDirections']/*/*/*/*[@name='moveToRight']");
};