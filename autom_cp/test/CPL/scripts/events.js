"use strict";

exports.dblClick = function dblClick(element) {
	return browser.actions().doubleClick(element);
};