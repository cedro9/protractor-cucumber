var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
var request = require("request");

chai.use(chaiAsPromised);
var expect = chai.expect;

var utils = require('../scripts/utils'),
  elementClick = utils.elementClick;
var wait = require('../scripts/wait');
var driver = browser.driver;
// side effect
require('dotenv').config();

var url;
var userToken;
var currentRevision;
var currentVersion;

if (process.env.GATEWAY_URL) {
  url = process.env.GATEWAY_URL.toString().replace('/cockpit-gateway/', '')
} else {
  url = "http://nlg" + process.env.CPL_VM + "v.neolog.com.br:" + process.env.CPL_PORT;
}

var usuario = process.env.USER_NEOLOG;
var senha = process.env.PASSWORD_NEOLOG;

module.exports = {
  acessar: function acessar() {
    return browser.wait(checkGatewayOnline(), 5 * 1000, 'Gateway should start within 5 seconds')
      .catch(acessar)
      .then(function () {
        return driver.get(url + "/front-end-web");
      });

    function checkGatewayOnline() {
      return new Promise(function (resolve, reject) {
        request.post({
          'url': url + "/cockpit-gateway/authentication/login",
          'form': { password: senha, username: usuario }
        }
          , function (error, response, body) {
            if (error || response.statusCode < 200 || response.statusCode >= 400) {
              return reject(error);
            }
            const contentBody = JSON.parse(body);
            userToken = contentBody.token;
            resolve(true);
          });
      });
    }
  },

  login1: function login1() {
    return checkServerOnline();

    function checkServerOnline() {
      var options = {
        method: 'GET',
        "url": url + '/cockpit-gateway/cockpit/rest/system/version',
        headers:
          { 'user.token': userToken }
      };

      return request(options, function (error, response, body) {
        if (response.statusCode === 200) {
          var contentBody = JSON.parse(body);
          setVersion(contentBody.version);
          setRevision(contentBody.revision);
          utils.fillText("[name='username']", usuario);
          utils.fillText("[name='password']", senha);
          return utils.elementClick("[name='submit']");
        } else {
          return checkServerOnline();
        }
      });
    }
  },

  logout: () => {
    utils.elementClick("[name='userButton']");
    return utils.elementClick("[name='logout']");
  },

  changeLanguage: function () {
    elementClick("[name='authenticationViewChangeLanguage']");
    return elementClick("[name='authenticationViewChangeLanguageTo-pt_br']");
  },

  getRevision, getVersion, login
};

function login(usuario, senha) {
  utils.fillText("[name='username']", usuario);
  utils.fillText("[name='password']", senha);
  return utils.elementClick("[name='submit']");
};

function setRevision(revision) {
  currentRevision = revision;
};

function setVersion(version) {
  currentVersion = version;
};

function getRevision() {
  return currentRevision;
};

function getVersion() {
  return currentVersion;
};