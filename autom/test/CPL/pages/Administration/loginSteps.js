"use strict";

var { Given, When, Then } = require("cucumber");
const { logout, login } = require("../../pages/LoginPage");

When('que logue com o usuário {string}', (email) => {
    logout();
    return login(email, "neolog");
});