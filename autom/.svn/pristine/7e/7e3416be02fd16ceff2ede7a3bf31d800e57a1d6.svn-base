var PropertiesReader = require('properties-reader');
var prop = PropertiesReader('./test/properties/prop.properties');
var months = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"];
var today = new Date(),
  startDate = today.getDate() + '/' + months[today.getMonth()] + '/' + today.getFullYear(),
  startHour = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();

require('dotenv').config();

exports.config = {
  // directConnect: true,
  getPagetimeout: prop.get('pageTimeOut'),
  allScriptsTimeout: prop.get('scriptTimeout'),
  framework: 'custom',
  restartBrowserBetweenTests: false,
  frameworkPath: require.resolve('protractor-cucumber-framework'),
  suites: {
    administracao: 'test/features/administração/*.feature',
    cadastro: 'test/features/cadastro/*.feature',
    operacoes: 'test/features/Operações/*.feature',
    programacao: 'test/features/programação/*.feature',
    monitoramento: 'test/features/monitoramento/*.feature',
    mcb: 'test/features/#MCB/*.feature',
    mad: 'test/features/#MAD/*.feature',
    wav: 'test/features/#WAV/*.feature',
    seb: 'test/features/#SEB/*.feature',
    grd: 'test/features/#GRD/*.feature',
    krn: 'test/features/#KRN/*.feature',
    rdf: 'test/features/#RDF/*.feature'
  },

  capabilities: {
    // TRUE = SIMULTANEO -- ATIVAR PARA TESTE SIMULTANEO
    shardTestFiles: true,
    //................................
    //FUNCAO DE CONFIGURACAO DO SELENIUM GRID
    // 'goog:chromeOptions': { args: ["--headless", "--disable-gpu", "--window-size=1600,2400"] },
    // 'goog:chromeOptions': { args: ["--start-maximized"] },
    //................................
    //NUMERO MAXIMO DE TESTES RODANDO EM PARALELO
    maxInstances: process.env.CONFIG_CAPABILITIES_MAX_INSTANCES !== undefined ? process.env.CONFIG_CAPABILITIES_MAX_INSTANCES : 2,
    //................................
    browserName: 'chrome',
    "seleniumProtocol": "WebDriver",
    metadata: {
      device: 'Dell Optiplex 7010',
      platform: {
        name: 'Windows',
        version: '10'
      }
    }
  },

  plugins: [{
    package: require.resolve('protractor-multiple-cucumber-html-reporter-plugin'),
    options: {
      // read the options part
      automaticallyGenerateReport: true,
      removeExistingJsonReportFile: true,
      removeOriginalJsonReportFile: true,
      displayDuration: true,
      saveCollectedJSON: true,
      pageFooter: "<div><p>  </p></div>",
      pageTitle: 'Relatorio de execucao de teste Automatizado',
      reportName: 'Relatorio de execucao de teste Automatizado',
      customData: {
        title: 'Informacoes de execucao',
        data: [
          { label: 'Projeto', value: process.env.PROJETO },
          { label: 'Versao', value: '6.4.X' },
          { label: 'Revisao', value: process.env.REVISAO },
          { label: 'Usuario Utilizado', value: process.env.USER_NEOLOG },
          { label: 'Data/Hora inicio de Execucao', value: startDate + " - " + startHour },
          // { label: 'Data/Hora fim de Execucao', value: endDate + " - " + endHour },
        ]
      },
    }
  }],

  specs: [prop.get('featurePath')], // caminho da pasta com as features
  ignoreUncaughtExceptions: true,

  cucumberOpts: {
    // require step definitions
    tags: '@Agendamento',
    ignoreUncaughtExceptions: true,
    strict: true,
    'dry-run': false,
    format: 'json:.tmp/' + (process.env.REPORT_FOLDER || process.env.FOLDER) + '/results.json',
    plugin: 'pretty',
    require: [
      prop.get('stepsPath'), // caminho da pasta com os steps
      'timeout.js'
    ]
  }
};
