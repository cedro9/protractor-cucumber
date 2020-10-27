"use strict";

var { Given, When, Then } = require("cucumber");

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect;
var scroll = require("../scripts/scroll");
var wait = require("../scripts/wait");
var utils = require('../scripts/utils'),
navigate = require("../scripts/navigate");
var driver = browser.driver;
var elementClick = utils.elementClick;
var present = require("../scripts/wait").present;
var isEnabled = require("../scripts/wait").isEnabled;

/********* ACESSO A TELA ************/
Given('que acesso a tela {string}, {string}', function (menu, subMenu) {
  return navigate.to(menu, subMenu)
});

/********* NAVEGAÇÃO DE TELA ************/
When('clico na aba {string}', function (string) {
  return scroll.toElement(element(by.xpath("//a[1 and text()='" + string + "']"))).click();
});