"use strict";

var { When } = require("cucumber");

const { setDestination,
    setProduct,
    setQuantityOfProductPiled,
    setQuantityOfProductBase,
    setWrapper,
    fillPalletizationByDestinationGenericParam } = require("../pages/Administration/palletizationByDestinationGenericParamPage");

When('preencho o destino {string}', function (destination) {
    return setDestination(destination);
});

When('preencho o produto {string}', function (product) {
    return setProduct(product);
});

When('preencho a quantidade de produtos empilhados {string}', function (quantityproductpiled) {
    return setQuantityOfProductPiled(quantityproductpiled);
});

When('preencho a quantidade de produtos da base {string}', function (quantityproductbase) {
    return setQuantityOfProductBase(quantityproductbase);
});

When('preencho o invólucro {string}', function (wrapper) {
    return setWrapper(wrapper);
});

When('que preencho o parâmetro genérico Paletização por Cliente com a localidade {string} produto {string} quantidade de produtos empilhados {string} quantidade de produtos da base {string} e invólucro {string}', function (destination, product, quantityproductpiled, quantityproductbase, wrapper) {
    return fillPalletizationByDestinationGenericParam(destination, product, quantityproductpiled, quantityproductbase, wrapper);
});