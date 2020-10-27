var PropertiesReader = require('properties-reader');
var prop = PropertiesReader('./test/properties/prop.properties');
var month = [
  "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"
];
var today = new Date(),
  timeStamp = today.getDate() + '/' + month[today.getMonth()] + '/' + today.getFullYear() + ' as ' + today.getHours() + ':' + today.getMinutes() + ' ';

exports.config = {
  seleniumAddress: prop.get('seleniumAddress'),
  //directConect: true,
  getPagetimeout: prop.get('pageTimeOut'),
  allScriptsTimeout: prop.get('scriptTimeout'),
  framework: 'custom',
  restartBrowserBetweenTests: false,
  frameworkPath: require.resolve('protractor-cucumber-framework'),
  capabilities: {

    // TRUE = SIMULTANEO -- ATIVAR PARA TESTE SIMULTANEO
    shardTestFiles: true,
    //................................

    //FUNÇÃO DE CONFIGURAÇÃO DO SELENIUM GRID
    'goog:chromeOptions': { args: ["--headless", "--disable-gpu", "--window-size=1600,2400"] },
    // 'goog:chromeOptions': { args: ["--start-maximized"] },
    //................................

    //NUMERO MAXIMO DE TESTES RODANDO EM PARALELO
    maxInstances: 2,
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

   //PLUGIN RELATORIO
  plugins: [{
    package: require.resolve('protractor-multiple-cucumber-html-reporter-plugin'),
    options: {
      // read the options part
      automaticallyGenerateReport: true,
      removeExistingJsonReportFile: true,
      removeOriginalJsonReportFile: false,
      displayDuration: true,
      pageFooter: "<div><p>  </p></div>",
      pageTitle: 'Relatorio Teste Automatizado',
      reportName: 'Relatorio Teste Automatizado',
      customData: {
        title: 'Informações de execução',
        data: [
          { label: 'Projeto', value: 'Teste Automatizado' },
          { label: 'Versão', value: '6.2.0' },
          // { label: 'Revisão', value: '...' },
          { label: 'Data/Hora Execução', value: timeStamp },
        ]
      },
    }
  }],

  

  specs: [prop.get('featurePath')], // caminho da pasta com as features
  ignoreUncaughtExceptions: true,


  cucumberOpts: {
    // require step definitions
    tags: ['@Operacoes','~@FluxosPartnerCollaborantion','~@bug','~@SEB','~@WHP'],
    ignoreUncaughtExceptions: true,
    strict: true,
    'dry-run': false,
    format: 'json:.tmp/Relatorio/results.json',
    plugin: 'pretty',
    require: [
      prop.get('stepsPath'), // caminho da pasta com os steps
      'timeout.js'
    ]
  }
};