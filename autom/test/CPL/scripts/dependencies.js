"use strict";

var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect;
var messages = require('./messages');
let self = this;

var utils = require("../scripts/utils"),
	assertText = utils.assertText,
	assertNumberFieldContent = utils.assertNumberFieldContent,
	assertTextFieldContent = utils.assertTextFieldContent,
	navigate = require("./navigate"),
	fillBasicInfo = require("./fillBasicEntity").fillBasicEntityInfo,
	fillText = utils.fillText,
	fillDurationInput = utils.fillDurationInput,
	addTextTags = utils.addTextTags,
	fillNumber = utils.fillNumber,
	fillTextxpath = utils.fillTextxpath,
	elementClickXpath = utils.elementClickXpath,
	clearTextFieldXpath = utils.clearTextFieldXpath,
	fillNumberXpath = utils.fillNumberXpath,
	selectDropdownbyOption = utils.selectDropdownbyOption,
	comboSearchAndSelect = utils.comboSearchAndSelect,
	assertDisabled = utils.assertDisabled,
	assertEnabled = utils.assertEnabled,
	assertSelectedCheckbox = utils.assertSelectedCheckbox,
	assertUnselectedCheckbox = utils.assertUnselectedCheckbox,
	assertBasicInfo = require("./fillBasicEntity").assertBasicEntityInfo,
	updateScriptContent = require("./scriptUtils").updateScriptContent,
	//unselectPanelOption = utils.unselectPanelOption,
	modalMessage = require("./messages").modalMessage,
	waitLoadingService = require("./messages").waitLoadingService,
	confirmModalMessage = require("./messages").confirmModalMessage,
	filterByOrderCodeAndGetCount = require("./filter").filterByOrderCodeAndGetCount,
	filterByIdentifierAndGetCount = require("./filter").filterByIdentifierAndGetCount,
	filterByDeviceNumberAndGetCount = require("./filter").filterBydeviceNumberAndGetCount,
	filterByNameAndGetCount = require("./filter").filterByNameAndGetCount,
	filterBydeviceNumberAndGetCount = require("./filter").filterBydeviceNumberAndGetCount,
	filterBySourceIdAndGetCount = require("./filter").filterBySourceIdAndGetCount,
	filterBySourceIdCOAndGetCount = require("./filter").filterBySourceIdCOAndGetCount,
	filterBySourceIdCOAndGetCount = require("./filter").filterBySourceIdCOAndGetCount,
	webFilterBySourceIdAndGetCount = require("./filter").webFilterBySourceIdAndGetCount,
	webFilterByEmailAndGetCount = require("./filter").webFilterByEmailAndGetCount,
	filterByTypeAndGetCount = require("./filter").filterByTypeAndGetCount,
	filterTripBasketByOrderCodeAndGetCount = require("./filter").filterTripBasketByOrderCodeAndGetCount,
	filterSelectionUserBasketByOrderCodeAndGetCount = require("./filter").filterSelectionUserBasketByOrderCodeAndGetCount,
	filterSelectionTripBasketByOrderCodeAndGetCount = require("./filter").filterSelectionTripBasketByOrderCodeAndGetCount,
	filterUserBasketByOrderCodeAndGetCount = require("./filter").filterUserBasketByOrderCodeAndGetCount,
	functioningDataHolder = require("./functioningDataHolder"),
	cleanWorkingHour = functioningDataHolder.cleanWorkingHour,
	fillDefaultWorking = functioningDataHolder.fillDefaultWorking,
	elementClick = utils.elementClick,
	elementMultiClick = utils.elementMultiClick,
	fillPercentage = utils.fillPercentage,
	assertPercentageFieldContent = utils.assertPercentageFieldContent,
	assertSelectedCheckbox = utils.assertSelectedCheckbox,
	clearCombo = utils.clearCombo,
	adiconaBau = utils.adiconaBau,
	adicionaBauPeso = utils.adiconaBauPeso,
	basicEntityInfo = require("./fillBasicEntity"),
	scroll = require("./scroll"),
	present = require("./wait").present,
	modalClosed = require("./wait").modalClosed,
	filter = require("./filter"),
	routingContext = require("../pages/LoginPage").getRoutingContext,
	confirmSelectedContext = utils.confirmSelectedContext,
	CestaViagens = "//*[@selection='selection.tripBasketSelection']",
	Cestapedidos = "//*[@selection='selection.deliveryUnitBasketSelection']";

module.exports = {
	//TIPO DE PEDIDO
	CadastroTipoDePedido: function (code, name, description) {
		navigate.to("Administração", "Tipos de pedido");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	ExcluirTipoDePedido: function (string) {
		element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
		navigate.acessoTela("[name='menu-userMenu.administration']", "[name='subMenu-userMenu.orderTypes']");
		filter.configuraFiltro();
		utils.fillText("[name='tagInputTextField']", string);
		utils.elementClick("[name='submitButton']");
		return filter.excluirPosFiltro(string);
		//elementClick("[name='buttonOk']");
	},

	//TIPO DE ITEM DE PEDIDO
	CadastroTipoDeItemDePedido: function (code, name, description) {
		navigate.to("Administração", "Tipos de item de pedido");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				assertBasicInfo(code, name, description);
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	ExcluirTipoDeItemDePedido: function (string) {
		element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
		navigate.acessoTela("[name='menu-userMenu.administration']", "[name='subMenu-userMenu.itemOrderTypes']");
		filter.configuraFiltro();
		utils.fillText("[name='tagInputTextField']", string);
		utils.elementClick("[name='submitButton']");
		return filter.excluirPosFiltro(string);
		//elementClick("[name='buttonOk']");
	},

	//LOCALIDADES
	CadastroLocalidades: function (code, name, description, logisticRole, hub, localityRestriction, zipCode) {
		navigate.to("Cadastro", "Localidades");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				assertBasicInfo(code, name, description);
				elementClick("[name='code']");
				// Tipo de Localidade
				utils.clearTextFieldXpath("//*[@name='logisticRole']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='logisticRole']/*[@name='tagInputTextField']", logisticRole);
				//Hub
				if (hub !== null) {
					utils.elementClick(hub);
				}
				// Restrição geral
				utils.fillTextxpath("//*[@name='localityRestriction']/*[@name='tagInputTextField']", localityRestriction);
				// Seleção do pais
				utils.fillTextxpath("//*[@name='address.country']/*[@name='tagInputTextField']", process.env.CLIENT_NAME === 'whp-mex' ? "México" : "Brasil");
				// Cep
				utils.fillNumberXpath("//*[@name='address.zipCode.value']", process.env.CLIENT_NAME === 'whp-mex' ? zipCode === '08061-020' ? "88660" : "38800" : zipCode);
				// Confirmar Geolocalização
				utils.setGeolocalizacao();
				// Botão salvar e confirma	
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	CadastroLocalidadesDestino: function (code, name, description) {
		navigate.to("Cadastro", "Localidades")
		elementClick("[name='cadastreButton']");
		fillBasicInfo(code, name, description);
		assertBasicInfo(code, name, description);
		elementClick("[name='code']");
		// Tipo de Localidade
		utils.clearTextFieldXpath("//*[@name='logisticRole']/*[@name='tagInputTextField']");
		utils.fillTextxpath("//*[@name='logisticRole']/*[@name='tagInputTextField']", "Destino");
		// Restrição geral
		utils.fillTextxpath("//*[@name='localityRestriction']/*[@name='tagInputTextField']", "Padrao");
		// Seleção do pais
		utils.fillTextxpath("//*[@name='address.country']/*[@name='tagInputTextField']", "Brasil");
		utils.fillTextxpath("//*[@name='address.state']/*[@name='tagInputTextField']", "São Paulo");
		utils.fillTextxpath("//*[@name='address.city']/*[@name='tagInputTextField']", "São Paulo");
		// Cep
		utils.fillNumberXpath("//*[@name='address.zipCode.value']", "04265000");
		// Confirmar Geolocalização
		utils.elementClickXpath("//*[@name='validateAddressByZipCode']");
		utils.elementClickXpath("//*[@name='addressSelectionNumber0']/*/*[@name='addressSelectionRadio']");
		utils.elementClickXpath("//*[@name='buttonApply']");
		// Botão salvar e confirma	
		elementClick("[name='buttonSubmit']");
		messages.validaMensagem("A entidade foi salva com sucesso.", self);
		return elementClick("[name='buttonOk']");
	},

	CadastroLocalidadesHubDePassagem: function (code, name, description) {
		navigate.to("Cadastro", "Localidades")
		elementClick("[name='cadastreButton']");
		fillBasicInfo(code, name, description);
		assertBasicInfo(code, name, description);
		elementClick("[name='code']");
		// Tipo de Localidade
		utils.clearTextFieldXpath("//*[@name='logisticRole']/*[@name='tagInputTextField']");
		utils.fillTextxpath("//*[@name='logisticRole']/*[@name='tagInputTextField']", "Ambos");
		//Hub de passagem
		utils.elementClickXpath("//*[@name='localityPassingHub']");
		// Restrição geral
		utils.fillTextxpath("//*[@name='localityRestriction']/*[@name='tagInputTextField']", "Padrao");
		// Seleção do pais
		utils.fillTextxpath("//*[@name='address.country']/*[@name='tagInputTextField']", "Brasil");
		utils.fillTextxpath("//*[@name='address.state']/*[@name='tagInputTextField']", "São Paulo");
		utils.fillTextxpath("//*[@name='address.city']/*[@name='tagInputTextField']", "São Paulo");
		// Cep
		utils.fillNumberXpath("//*[@name='address.zipCode.value']", "04265000");
		// Confirmar Geolocalização
		utils.elementClickXpath("//*[@name='validateAddressByZipCode']");
		utils.elementClickXpath("//*[@name='addressSelectionNumber0']/*/*[@name='addressSelectionRadio']");
		utils.elementClickXpath("//*[@name='buttonApply']");
		// Botão salvar e confirma	
		elementClick("[name='buttonSubmit']");
		messages.validaMensagem("A entidade foi salva com sucesso.", self);
		return elementClick("[name='buttonOk']");
	},

	CadastroLocalidadesHubDeDestino: function (code, name, description) {
		navigate.to("Cadastro", "Localidades")
		elementClick("[name='cadastreButton']");
		fillBasicInfo(code, name, description);
		assertBasicInfo(code, name, description);
		elementClick("[name='code']");
		// Tipo de Localidade
		utils.clearTextFieldXpath("//*[@name='logisticRole']/*[@name='tagInputTextField']");
		utils.fillTextxpath("//*[@name='logisticRole']/*[@name='tagInputTextField']", "Ambos");
		//Hub de Destino
		utils.elementClick("[name='localityDestinationHub']");
		// Restrição geral
		utils.fillTextxpath("//*[@name='localityRestriction']/*[@name='tagInputTextField']", "Padrao");
		// Seleção do pais
		utils.fillTextxpath("//*[@name='address.country']/*[@name='tagInputTextField']", "Brasil");
		utils.fillTextxpath("//*[@name='address.state']/*[@name='tagInputTextField']", "São Paulo");
		utils.fillTextxpath("//*[@name='address.city']/*[@name='tagInputTextField']", "São Paulo");
		// Cep
		utils.fillNumberXpath("//*[@name='address.zipCode.value']", "04265000");
		// Confirmar Geolocalização
		utils.elementClickXpath("//*[@name='validateAddressByZipCode']");
		utils.elementClickXpath("//*[@name='addressSelectionNumber0']/*/*[@name='addressSelectionRadio']");
		utils.elementClickXpath("//*[@name='buttonApply']");
		// Botão salvar e confirma	
		elementClick("[name='buttonSubmit']");
		messages.validaMensagem("A entidade foi salva com sucesso.", self);
		return elementClick("[name='buttonOk']");
	},

	ExcluirLocalidades: function (string) {
		element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
		navigate.acessoTela("[name='menu-userMenu.cadastre']", "[href='#/access/entity/localities']");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(string);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 1) {
				return filter.excluirPosFiltro(string);
				//elementClick("[name='buttonOk']");
			}
		});
	},

	// // CATEGORIAS DE PRODUTO
	// CadastroCategoriasDeProduto: function (code, name, description) {
	// 	navigate.to("Cadastro", "Categorias de produto");
	// 	var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
	// 	return countBeforeInsertionPromise.then(function (regCount) {
	// 		if (regCount === 0) {
	// 			elementClick("[name='cadastreButton']");
	// 			fillBasicInfo(code, name, description);
	// 			assertBasicInfo(code, name, description);
	// 			elementClick("[name='code']");
	// 			elementClick("[name='buttonSubmit']");
	// 			messages.validaMensagem("A entidade foi salva com sucesso.", self);
	// 			return elementClick("[name='buttonOk']");
	// 		}
	// 	});
	// },

	// CATEGORIAS DE PRODUTO COM CLASSIFICAÇÃO
	cadastroCategoriasDeProdutoClassificação: function (code, name, description, classification) {
		navigate.to("Cadastro", "Categorias de produto");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				assertBasicInfo(code, name, description);
				// elementClick("[name='code']");
				if (process.env.CLIENT_NAME === "mcb") {
					scroll.toElement(element(by.css("[name='classifications']"))).click();
					addTextTags("[name='classification']", classification);
				}
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	ExcluirCategoriaDeprodutos: function (string) {
		element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
		navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.productCategories']");
		filter.configuraFiltro();
		utils.fillText("[name='tagInputTextField']", string);
		utils.elementClick("[name='submitButton']");
		return filter.excluirPosFiltro(string);
		//elementClick("[name='buttonOk']");
	},

	// // EMBARCADORES  
	// CadastroDeEmbarcadores: function (code, name, description) {
	// 	navigate.to("Cadastro", "Embarcadores");
	// 	var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
	// 	return countBeforeInsertionPromise.then(function (regCount) {
	// 		if (regCount === 0) {
	// 			elementClick("[name='cadastreButton']");
	// 			fillBasicInfo(code, name, description);
	// 			assertBasicInfo(code, name, description);
	// 			elementClick("[name='code']");
	// 			elementClick("[name='buttonSubmit']");
	// 			messages.validaMensagem("A entidade foi salva com sucesso.", self);
	// 			return elementClick("[name='buttonOk']");
	// 		}
	// 	});
	// },

	Excluirembarcadores: function (string) {
		element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
		navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.shippers']");
		filter.configuraFiltro();
		utils.fillText("[name='tagInputTextField']", string);
		utils.elementClick("[name='submitButton']");
		return filter.excluirPosFiltro(string);
		//return elementClick("[name='buttonOk']");
	},

	// VEÍCULOS  
	cadastroDeVeiculo: function (code, name, description, largura, comprimento, altura) {
		var codigoBau = "Bau1",
			bau = 1;
		modalClosed();
		navigate.to("Cadastro", "Veículos")
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				//Verifica se o modal Rodoviário já está Associado, caso não esteja, será associado
				element(by.css("[name='modals'] [name='ListRight'] [label='Rodoviário']")).isPresent().then(function (isPresent) {
					if (!isPresent) {
						fillTextxpath("//*[@name='modals']/*/*/*/*[@name='filterLeft']", "Rodoviário");
						elementClick("[name='modals'] [name='ListLeft'] option[label='Rodoviário']");
						elementClickXpath("//*[@name='modals']/*/*/*/*[@name='moveToRight']");
					}
				});
				elementClickXpath("//*[@name='containers']/*");
				adiconaBau(codigoBau, largura, comprimento, altura, bau);
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	// VEÍCULOS com peso
	cadastroDeVeiculoComPeso: function (code, name, description, largura, comprimento, altura, peso) {
		var codigoBau = "Bau1",
			bau = 1;
		modalClosed();
		navigate.to("Cadastro", "Veículos")
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				//Verifica se o modal Rodoviário já está Associado, caso não esteja, será associado
				element(by.css("[name='modals'] [name='ListRight'] [label='Rodoviário']")).isPresent().then(function (isPresent) {
					if (!isPresent) {
						fillTextxpath("//*[@name='modals']/*/*/*/*[@name='filterLeft']", "Rodoviário");
						elementClick("[name='modals'] [name='ListLeft'] option[label='Rodoviário']");
						elementClickXpath("//*[@name='modals']/*/*/*/*[@name='moveToRight']");
					}
				});
				elementClickXpath("//*[@name='containers']/*");
				adicionaBauPeso(codigoBau, largura, comprimento, altura, bau, peso);
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	excluirVeiculo: function (code) {
		element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
		navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.vehicles']");
		filter.configuraFiltro();
		utils.fillText("[name='tagInputTextField']", code);
		utils.elementClick("[name='submitButton']");
		return filter.excluirPosFiltro(code);
		// return elementClick("[name='buttonOk']");
	},

	// CAMINHÃO  
	cadastroCaminhao: function (code, name, description, veiculo, transportadora) {
		navigate.to("Cadastro", "Caminhões");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				element(by.css("[name='plate.country'] [name='nlgTagInputRemoveTag']")).isPresent().then(function (isPresent) {
					if (isPresent) {
						elementClick("[name='plate.country'] [name='nlgTagInputRemoveTag']");
					}
					fillTextxpath("//*[@name='plate.country']/*[@name='tagInputTextField']", "Brasil");
					fillTextxpath("//*[@name='selection.state']/*[@name='tagInputTextField']", "São Paulo");
					fillTextxpath("//*[@name='plate.city']/*[@name='tagInputTextField']", "São Paulo");
				});
				element(by.css("[name='truckStatus'] [name='nlgTagInputRemoveTag']")).isPresent().then(function (isPresent) {
					if (isPresent) {
						elementClick("[name='truckStatus'] [name='nlgTagInputRemoveTag']");
					}
					fillTextxpath(" //*[@name='truckStatus']/*[@name='tagInputTextField']", "Frota própria");
				});
				element(by.css("[name='vehicle'] [name='nlgTagInputRemoveTag']")).isPresent().then(function (isPresent) {
					if (isPresent) {
						elementClick("[name='vehicle'] [name='nlgTagInputRemoveTag']");
					}
					fillTextxpath("//*[@name='vehicle']/*[@name='tagInputTextField']", veiculo);
				});
				element(by.css("[name='moveAllToLeft']")).isPresent().then(function (isPresent) {
					if (isPresent) {
						elementClick("[name='moveAllToLeft']");
					}
					if (transportadora !== ' ') {
						fillTextxpath("//*[@name='filterLeft']", transportadora);
						elementClick("[name='carriers'] [name='ListLeft'] option[label='" + transportadora + "']");
						elementClickXpath("//*[@name='moveToRight']");
					}
				});
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	excluirCaminhao: function (code) {
		element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
		navigate.to("Cadastro", "Caminhões");
		filter.configuraFiltro();
		utils.fillText("[name='tagInputTextField']", code);
		utils.elementClick("[name='submitButton']");
		return filter.excluirPosFiltro(code);
		//return elementClick("[name='buttonOk']");
	},

	// TRANSPORTADORA  
	cadastroDeTransportadora: function (code, name, description, tipoDeServico, agrupador, grupoLogistico, calculadorFreteViagem) {
		navigate.to("Cadastro", "Transportadoras");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				utils.clearTextXpath("//*[@name='emailLoadOffering']");
				fillTextxpath("//*[@name='emailLoadOffering']", "neolog@neolog.com.br");
				utils.clearTextFieldXpath("//*[@name='serviceTypeCalculatorConfig']/*[@name='tagInputTextField']");
				fillTextxpath("//*[@name='serviceTypeCalculatorConfig']/*[@name='tagInputTextField']", tipoDeServico);
				//Verifica se SLA está desmarcado para então clicar
				element(by.css("[name='entity.serviceLevelOn']")).isSelected().then(function (isSelected) {
					if (isSelected != true) {
						elementClick("[name='entity.serviceLevelOn']");
					}
				});
				utils.clearTextFieldXpath("//*[@name='justification']/*[@name='tagInputTextField']");
				elementClick("[name='justification'] [name='tagInputShowValues']");
				element(by.xpath("//*[@name='justification']/*[@name='tagInputTextField']")).sendKeys(protractor.Key.ENTER);
				elementClickXpath("//*[@name='logisticRestrictions']/*");
				utils.clearTextFieldXpath("//*[@name='carrierZone']/*[@name='tagInputTextField']");
				fillTextxpath("//*[@name='carrierZone']/*[@name='tagInputTextField']", agrupador);
				utils.clearTextFieldXpath("//*[@name='logisticGroup']/*[@name='tagInputTextField']");
				fillTextxpath("//*[@name='logisticGroup']/*[@name='tagInputTextField']", grupoLogistico);
				//Aba Funcionamento
				elementClick("[name='functioning']");
				//Verifica se Horários Permitidos está desmarcado para então clicar
				element(by.css("[name='workingHoursAllowed'] [name='workingHoursAllowed']")).isSelected().then(function (isSelected) {
					if (isSelected != true) {
						elementClick("[name='workingHoursAllowed'] [name='workingHoursAllowed']");
					}
				});
				cleanWorkingHour();
				fillDefaultWorking();
				//Aba Frete
				elementClickXpath("//*[@name='freight']/*");
				fillTextxpath("//*[@name='freightTripCalculatorConfig']/*[@name='tagInputTextField']", calculadorFreteViagem);
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	// TRANSPORTADORA COM VALOR MÁXIMO DE VIAGEM 
	cadastroDeTransportadoraValorMáximoViagem: function (code, name, description, tipoDeServico, agrupador, grupoLogistico, calculadorFreteViagem, valorMáximoViagem) {
		navigate.to("Cadastro", "Transportadoras");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				utils.clearTextXpath("//*[@name='emailLoadOffering']");
				fillTextxpath("//*[@name='emailLoadOffering']", "neolog@neolog.com.br");
				utils.clearTextFieldXpath("//*[@name='serviceTypeCalculatorConfig']/*[@name='tagInputTextField']");
				fillTextxpath("//*[@name='serviceTypeCalculatorConfig']/*[@name='tagInputTextField']", tipoDeServico);
				//Verifica se SLA está desmarcado para então clicar
				element(by.css("[name='entity.serviceLevelOn']")).isSelected().then(function (isSelected) {
					if (isSelected != true) {
						elementClick("[name='entity.serviceLevelOn']");
					}
				});
				utils.clearTextFieldXpath("//*[@name='justification']/*[@name='tagInputTextField']");
				elementClick("[name='justification'] [name='tagInputShowValues']");
				element(by.xpath("//*[@name='justification']/*[@name='tagInputTextField']")).sendKeys(protractor.Key.ENTER);
				elementClickXpath("//*[@name='logisticRestrictions']/*");
				utils.clearTextFieldXpath("//*[@name='carrierZone']/*[@name='tagInputTextField']");
				fillTextxpath("//*[@name='carrierZone']/*[@name='tagInputTextField']", agrupador);
				utils.clearTextFieldXpath("//*[@name='logisticGroup']/*[@name='tagInputTextField']");
				fillTextxpath("//*[@name='logisticGroup']/*[@name='tagInputTextField']", grupoLogistico);
				//Aba Restrições Logísticas
				utils.elementClick("[name='logisticRestrictions']");
				utils.clearNumberField("[name='maxTripValue']");
				utils.fillNumber("[name='maxTripValue']", valorMáximoViagem);
				//Aba Funcionamento
				elementClick("[name='functioning']");
				//Verifica se Horários Permitidos está desmarcado para então clicar
				element(by.css("[name='workingHoursAllowed'] [name='workingHoursAllowed']")).isSelected().then(function (isSelected) {
					if (isSelected != true) {
						elementClick("[name='workingHoursAllowed'] [name='workingHoursAllowed']");
					}
				});
				cleanWorkingHour();
				fillDefaultWorking();
				//Aba Frete
				elementClickXpath("//*[@name='freight']/*");
				fillTextxpath("//*[@name='freightTripCalculatorConfig']/*[@name='tagInputTextField']", calculadorFreteViagem);
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	excluirTransportadora: function (code) {
		element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
		navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.carrier']");
		filter.configuraFiltro();
		utils.fillText("[name='tagInputTextField']", code);
		utils.elementClick("[name='submitButton']");
		return filter.excluirPosFiltro(code);
		//return elementClick("[name='buttonOk']");
	},

	cadastroNotaFiscal: function (code, name, description, order) {
		navigate.to("Cadastro", "Notas fiscais");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				fillText("[name='totalValue'] [name='nlgNumberInput']", "10,00");
				addTextTags("[name='orders']", order);
				fillText("[name='totalWeight'] [name='nlgNumberInput']", "10,00");
				fillText("[name='nfeKey']", "nfeKey");
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	excluirNotaFiscal: function (code) {
		element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
		navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.invoices']");
		filter.configuraFiltro();
		utils.fillText("[name='tagInputTextField']", code);
		utils.elementClick("[name='submitButton']");
		return filter.excluirPosFiltro(code);
	},

	cadastroMotorista: function (name, identifier, code, user) {
		navigate.to("Monitoramento", "Motoristas");
		var countBeforeInsertionPromise = filterByIdentifierAndGetCount(identifier);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillText("[name='driverName']", name);
				fillText("[name='driverIdentifier']", identifier);
				fillText("[name='driverSourceId']", code);
				addTextTags("[name='driver.user']", user);
				elementClick("[name='saveButton']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	cadastroDispositivo: function (deviceNumber, plate, description) {
		navigate.to("Monitoramento", "Dispositivos");
		var countBeforeInsertionPromise = filterByDeviceNumberAndGetCount(deviceNumber);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				// addTextTags("[name='provider']", "Autotrac");
				addTextTags("[name='provider']", "mobile");
				// fillText("[name='deviceId']", deviceNumber);
				fillText("[name='phoneNumber'] [name='nlgIntlPhoneNumber']", deviceNumber);
				fillText("[name='plate']", plate);
				fillText("[name='description']", description);
				elementClick("[name='saveButton']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	cadastroCategoriaDeOcorrência: function (code, name, description) {
		navigate.to("Monitoramento", "Categorias de ocorrência");
		var countBeforeInsertionPromise = filterBySourceIdCOAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				// elementClick("[name='occurrenceCategoryQuantity']");
				// elementClick("[name='occurrenceCategoryTimeDelta']");
				// elementClick("[name='occurrenceCategoryValueDelta']");
				// elementClick("[name='occurrenceCategoryNotifyExternalSystem']");
				elementClick("[name='buttonSave']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	cadastroCausaDeOcorrência: function (code, name, description, occurrenceStatus, occurrenceCategory) {
		navigate.to("Monitoramento", "Causas de ocorrência");
		var countBeforeInsertionPromise = filterBySourceIdCOAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				// fillText("[name='occurrenceCauseValueDelta'] [name='nlgNumberInput']", "10,00");
				// fillText("[name='occurrenceCauseQuantityDelta'] [name='nlgNumberInput']", "10");
				// fillText("[name='hour'] [name='nlgNumberInput']", "07");
				// fillText("[name='minute'] [name='nlgNumberInput']", "00");
				addTextTags("[name='occurrenceCauseDefaultStatus']", occurrenceStatus);
				// fillText("[name='occurrenceCauseOrder'] [name='nlgNumberInput']", "0");
				addTextTags("[name='occurrenceCauseOccurrenceCategory']", occurrenceCategory);
				// fillText("[name='occurrenceCauseAllowedMonitorableTypes'] [name='tagInputTextField']", "Viagem");
				// fillText("[name='occurrenceCauseOccurrenceCategoryIcons'] [name='tagInputTextField']", "Alimentação");
				// elementClick("[name='occurrenceCauseImageRequired']");
				elementClick("[name='buttonSave']");
				messages.validaMensagem("A entidade foi salva com sucesso.");
				return elementClick("[name='buttonOk']");
			}
		});
	},

	// TIPO DE SERVIÇO  
	cadastroTipoDeServico: function (code, name, description) {
		navigate.to("Administração", "Tipos de serviço");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	excluirTipoDeServico: function (code) {
		element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
		navigate.acessoTela("[name='menu-userMenu.administration']", "[name='subMenu-userMenu.servicesTypes']");
		filter.configuraFiltro();
		utils.fillText("[name='tagInputTextField']", code);
		utils.elementClick("[name='submitButton']");
		return filter.excluirPosFiltro(code);
		// return elementClick("[name='buttonOk']");
	},

	// CALCULADOR TIPO DE SERVIÇO  
	cadastroCalculadorTipoDeServico: function (code, name, description, agrupador) {
		navigate.to("Administração", "Calculadores de tipo de serviço");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				assertBasicInfo(code, name, description);
				elementClick("[name='code']");
				fillTextxpath("//*[@name='originCarrierZoneGrouper']/*[@name='tagInputTextField']", agrupador);
				fillTextxpath("//*[@name='destinationCarrierZoneGrouper']/*[@name='tagInputTextField']", agrupador);
				//Preenche o Script
				var validScriptContent = "serviceType = null";
				updateScriptContent(validScriptContent);
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	excluirCalculadorTipoDeServico: function (code) {
		element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
		navigate.acessoTela("[name='menu-userMenu.administration']", "[name='subMenu-userMenu.serviceTypeCalculator']");
		filter.configuraFiltro();
		utils.fillText("[name='tagInputTextField']", code);
		utils.elementClick("[name='submitButton']");
		return filter.excluirPosFiltro(code);
		// return elementClick("[name='buttonOk']");
	},

	// AGRUPADOR DE ZONA DE TRANSPORTE  
	cadastroAgrupadorDeZonaTransporte: function (code, name, description) {
		navigate.to("Cadastro", "Agrupadores de zona de transporte");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	excluirAgrupadorDeZonaTransporte: function (code) {
		element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
		navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.transportZoneGroupers']");
		filter.configuraFiltro();
		utils.fillText("[name='tagInputTextField']", code);
		utils.elementClick("[name='submitButton']");
		return filter.excluirPosFiltro(code);
		// return elementClick("[name='buttonOk']");
	},

	// ZONA DE TRANSPORTE  
	cadastroZonaDeTransporte: function (code, name, description, agrupador, cidade, restricaoLocalidade, prioridade) {
		navigate.to("Cadastro", "Zonas de transporte");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				clearTextFieldXpath("//*[@name='edition.carrierZone.carrierZoneGrouper']/*[@name='tagInputTextField']");
				fillTextxpath("//*[@name='edition.carrierZone.carrierZoneGrouper']/*[@name='tagInputTextField']", agrupador);
				fillNumber("[name='edition.carrierZone.priority']", prioridade);
				clearTextFieldXpath("//*[@name='edition.carrierZone.carrierZoneDetail']/*[@name='tagInputTextField']");
				fillTextxpath("//*[@name='edition.carrierZone.carrierZoneDetail']/*[@name='tagInputTextField']", "Cidade");
				fillTextxpath("//*[@name='edition.carrierZone.localityRestriction']/*[@name='tagInputTextField']", restricaoLocalidade);
				fillNumber("[name='edition.carrierZone.averageSpeed']", "50");
				fillTextxpath("//*[@name='edition.carrierZone.availableCity.country']/*[@name='tagInputTextField']", "Brasil");
				// fillTextxpath("//*[@name='edition.carrierZone.availableCity.state']/*[@name='tagInputTextField']", "São Paulo");
				elementClickXpath("//*[@name='filterAvailableCity']");
				fillTextxpath("//*[@name='filterLeft']", cidade);
				elementClick("[name='ListLeft'] option[label='" + cidade + " (SP)']");
				elementClickXpath("//*[@name='moveToRight']");
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				elementClick("[name='buttonOk']");
			}
		});
	},

	// ZONA DE TRANSPORTE REGIOES
	cadastroZonaDeTransporteRegioes: function (code, name, description, agrupador, restricaoLocalidade, prioridade) {
		navigate.to("Cadastro", "Zonas de transporte");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				clearTextFieldXpath("//*[@name='edition.carrierZone.carrierZoneGrouper']/*[@name='tagInputTextField']");
				fillTextxpath("//*[@name='edition.carrierZone.carrierZoneGrouper']/*[@name='tagInputTextField']", agrupador);
				fillNumber("[name='edition.carrierZone.priority']", prioridade);
				clearTextFieldXpath("//*[@name='edition.carrierZone.carrierZoneDetail']/*[@name='tagInputTextField']");
				fillTextxpath("//*[@name='edition.carrierZone.carrierZoneDetail']/*[@name='tagInputTextField']", "Região");
				fillTextxpath("//*[@name='edition.carrierZone.localityRestriction']/*[@name='tagInputTextField']", restricaoLocalidade);
				fillNumber("[name='edition.carrierZone.averageSpeed']", "50");
				elementClick("[name='importRegionGroup']");
				fillTextxpath("//*[@name='regionGroupsAvailable']/*[@name='tagInputTextField']", process.env.CLIENT_NAME === 'whp-mex' ? "Estados do México" : "Estados brasileiros");
				elementClick("[name='moveAllToRight']");
				elementClick("[name='buttonImport']")
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				elementClick("[name='buttonOk']");
			}
		});
	},

	// ZONA DE TRANSPORTE REGIOES
	cadastroZonaDeTransporteAll: function (code, name, description, agrupador, restricaoLocalidade, prioridade) {
		navigate.to("Cadastro", "Zonas de transporte");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				clearTextFieldXpath("//*[@name='edition.carrierZone.carrierZoneGrouper']/*[@name='tagInputTextField']");
				fillTextxpath("//*[@name='edition.carrierZone.carrierZoneGrouper']/*[@name='tagInputTextField']", agrupador);
				fillNumber("[name='edition.carrierZone.priority']", prioridade);
				clearTextFieldXpath("//*[@name='edition.carrierZone.carrierZoneDetail']/*[@name='tagInputTextField']");
				fillTextxpath("//*[@name='edition.carrierZone.carrierZoneDetail']/*[@name='tagInputTextField']", "Cidade");
				fillTextxpath("//*[@name='edition.carrierZone.localityRestriction']/*[@name='tagInputTextField']", restricaoLocalidade);
				fillNumber("[name='edition.carrierZone.averageSpeed']", "50");
				addTextTags("[name='edition.carrierZone.availableCity.country']","Brasil");
				elementClick("[name='filterAvailableCity']");
				elementClick("[name='moveAllToRight']");
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				elementClick("[name='buttonOk']");
			}
		});
	},

	carimbaZonaDeTransporte: function (code) {
		navigate.to("Cadastro", "Agrupadores de zona de transporte");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 1) {
				elementClick("[name='stampButton']");
				element(by.css("[name='loadingModal']")).isPresent().then(function (isPresent) {
					if (isPresent === true) {
						return element(by.css("[name='loadingModal']")).sendKeys(protractor.Key.ESCAPE);
					} else {
						return utils.elementClick("[name='buttonOk']");
					}
				});
			}
		});
	},

	excluirZonaDeTransporte: function (code) {
		element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
		navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.carrierZone']");
		filter.configuraFiltro();
		utils.fillText("[name='tagInputTextField']", code);
		utils.elementClick("[name='submitButton']");
		return filter.excluirPosFiltro(code);
		// return elementClick("[name='buttonOk']");
	},

	// // RESTRIÇÂO DE LOCALIDADE  
	// cadastroRestricaoLocalidade: function (code, name, description) {
	// 	navigate.to("Cadastro", "Restrições de localidade");
	// 	var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
	// 	return countBeforeInsertionPromise.then(function (regCount) {
	// 		if (regCount === 0) {
	// 			elementClick("[name='cadastreButton']");
	// 			fillBasicInfo(code, name, description);
	// 			elementClick("[name='functioning']");
	// 			utils.addTextTags("[name='entity.loadUnloadTimeCalculatorScript']", "Calculador de duração de serviço linear (Localidade)");
	// 			// fillText("[name='entity.loadUnloadTimeCalculatorScript'] [name='tagInputTextField']", "Calculador de duração de serviço linear (Localidade)");
	// 			cleanWorkingHour();
	// 			fillDefaultWorking();
	// 			elementClick("[name='buttonSubmit']");
	// 			messages.validaMensagem("A entidade foi salva com sucesso.", self);
	// 			return elementClick("[name='buttonOk']");
	// 		}
	// 	});
	// },

	excluirRestricaoLocalidade: function (code) {
		element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
		navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.locationRestrictions']");
		filter.configuraFiltro();
		utils.fillText("[name='tagInputTextField']", code);
		utils.elementClick("[name='submitButton']");
		return filter.excluirPosFiltro(code);
		//elementClick("[name='buttonOk']");
	},

	// TEMPO DE ESPERA
	cadastroTempoDeEspera: function (code, name, description, agrupador) {
		navigate.to("Cadastro", "Tempo de espera");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				fillTextxpath("//*[@name='tagInputTextField']", agrupador);
				elementClick("[name='buttonSubmit']");
				elementClick("[name='buttonOk']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	excluirTempoDeEspera: function (code) {
		// element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
		// navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.leadTimes']");
		// filter.configuraFiltro();
		// utils.fillText("[name='tagInputTextField']", code);
		// utils.elementClick("[name='submitButton']");
		// return filter.excluirPosFiltro(code);
		navigate.to("Cadastro", "Tempo de espera");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 1) {
				return filter.excluirPosFiltro(code);
				// return elementClick("[name='buttonOk']");
			}
		});
	},

	// CALCULADOR DE FRETE CARGA
	cadastroFreteCarga: function (code, name, description, agrupador) {
		navigate.to("Administração", "Calculadores de frete - Carga");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				elementClick("[name='freightRoute0']");
				addTextTags("[name='routeSplitStrategy0']", "LoadingToUnloadingZoneLoadSplitStrategy");
				addTextTags("[name='originCarrierZoneGrouper0']", agrupador);
				addTextTags("[name='destinationCarrierZoneGrouper0']", agrupador);
				addTextTags("[name='resolverStrategy0']", "Impede Múltiplas Regras");
				addTextTags("[name='consolidationStrategy0']", "Valor Máximo");
				addTextTags("[name='freightLaneCalculator0']", "SimpleValuePerKMFreightLaneCalculator");
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	excluirFreteCarga: function (code) {
		element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
		navigate.to("Administração", "Calculadores de frete - Carga");
		filter.configuraFiltro();
		utils.fillText("[name='tagInputTextField']", code);
		utils.elementClick("[name='submitButton']");
		return filter.excluirPosFiltro(code);
		// return elementClick("[name='buttonOk']");
	},

	// CALCULADOR DE FRETE VIAGEM
	cadastroFreteViagem: function (code, name, description) {
		navigate.to("Administração", "Frete-Viagem");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	excluirFreteViagem: function (code) {
		element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
		navigate.to("Administração", "Frete-Viagem");
		filter.configuraFiltro();
		utils.fillText("[name='tagInputTextField']", code);
		utils.elementClick("[name='submitButton']");
		return filter.excluirPosFiltro(code);
		// return elementClick("[name='buttonOk']");
	},

	// CADASTRO ENTIDADE
	cadastroClassificacoesEntidade: function (code, name, description) {
		var tipoClassificacao = function () {
			if (process.env.CLIENT_NAME === 'whp-mex') {
				return "Clasificación de viaje"
			} 
			if (process.env.CLIENT_NAME === 'orbia') {
				return "Qualidade da viagem"
			} else {
				return "CLASSIFICAÇÃO DE VIAGEM";
			}
		};

		navigate.to("Administração", "Classificações");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				utils.addTextTags("[name='classificationTypetagInput']", tipoClassificacao());
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	//CADASTRO PRODUTOS
	CadastroDeProdutos: function (code, name, description, catproduct, shipper) {
		navigate.to("Cadastro", "Produtos");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				assertBasicInfo(code, name, description);
				elementClick("[name='code']");
				//Categioria
				utils.clearTextFieldXpath("//*[@name='category']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='category']/*[@name='tagInputTextField']", catproduct);
				//Embarcador
				utils.clearTextFieldXpath("//*[@name='shipper']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipper']/*[@name='tagInputTextField']", shipper);
				//Dimensões e valor
				utils.fillNumberXpath("//*[@name='value']/*[@name='nlgNumberInput']", "1000");
				utils.fillNumberXpath("//*[@name='length']/*[@name='nlgNumberInput']", "0,050");
				utils.fillNumberXpath("//*[@name='width']/*[@name='nlgNumberInput']", "0,150");
				utils.fillNumberXpath("//*[@name='height']/*[@name='nlgNumberInput']", "0,370");
				utils.fillNumberXpath("//*[@name='weight']/*[@name='nlgNumberInput']", "1,000");
				//Embutimento Orientação
				// utils.elementClick("[name='entity.embeddingAllowed']");
				// utils.elementClick("[name='embeddingInfo.embeddable']");
				// utils.elementClick("[name='embeddingInfo.embedder']");
				// utils.fillTextxpath("//*[@name='embeddingInfo.orientation']/*[@name='tagInputTextField']", "Comprimento");
				// utils.fillTextxpath("//*[@name='embeddingInfo.offset']/*[@name='nlgNumberInput']", "0,005");
				//opção de carregamento / descarregamento
				utils.elementClick("[name='entity.directionAllowed']");
				utils.fillTextxpath("//*[@name='blockedDirections']/*/*/*/*[@name='filterLeft']", "Chão para cima");
				utils.elementClick("[name='blockedDirections'] [name='ListLeft'] option[label='" + "Chão para cima" + "']");
				utils.elementClickXpath("//*[@name='blockedDirections']/*/*/*/*[@name='moveToRight']");
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	ExcluirProdutos: function (string) {
		element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
		navigate.acessoTela("[name='menu-userMenu.cadastre']", "[name='subMenu-userMenu.simpleProducts']");
		filter.configuraFiltro();
		utils.fillText("[name='tagInputTextField']", string);
		utils.elementClick("[name='submitButton']");
		return filter.excluirPosFiltro(string);
		//return elementClick("[name='buttonOk']");
	},

	//CADASTRO INVOLUCROS
	CadastroDeInvolucros: function (code, name, description, value, obterOritencao, obterPeso, obterFacesgFrageis) {
		navigate.to("Administração", "Invólucros de UE");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				assertBasicInfo(code, name, description);
				elementClick("[name='code']");
				//Valor Peso e Categoria
				utils.fillNumberXpath("//*[@name='value']/*[@name='nlgNumberInput']", "5000,00");
				utils.fillNumberXpath("//*[@name='weight']/*[@name='nlgNumberInput']", "5,00");
				utils.clearTextFieldXpath("//*[@name='shipmentUnitWrapperCategory']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitWrapperCategory']/*[@name='tagInputTextField']", "Palete");
				//Involucro simples
				utils.elementClickXpath("//*[@name='simple']");
				//Politica Peso, valor, dimensoes
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.weightPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.weightPolicyType']/*[@name='tagInputTextField']", value);
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.valuePolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.valuePolicyType']/*[@name='tagInputTextField']", value);
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.externalShipmentUnitDimensionPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.externalShipmentUnitDimensionPolicyType']/*[@name='tagInputTextField']", value);
				//Politica orientações, peso máximo por orientação, faces frágeis
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.allowedOrientationsPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.allowedOrientationsPolicyType']/*[@name='tagInputTextField']", obterOritencao);
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.maxWeightByAllowedOrientationPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.maxWeightByAllowedOrientationPolicyType']/*[@name='tagInputTextField']", obterPeso);
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.fragileOrientationsPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.fragileOrientationsPolicyType']/*[@name='tagInputTextField']", obterFacesgFrageis);
				//Politica empilhamento máximo, empilhamento por, direções de carregamento
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.maxPiledByAllowedOrientationPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.maxPiledByAllowedOrientationPolicyType']/*[@name='tagInputTextField']", "Produto");
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.allowedPiledPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.allowedPiledPolicyType']/*[@name='tagInputTextField']", "Produto");
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.loadDirectionShipmentUnitPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.loadDirectionShipmentUnitPolicyType']/*[@name='tagInputTextField']", "Produto");
				//Politica regras de movimentação, mínimo suporte, embutimento por
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.specialPriorityShipmentUnitPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.specialPriorityShipmentUnitPolicyType']/*[@name='tagInputTextField']", "Produto");
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.minPercentageSupportObjectPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.minPercentageSupportObjectPolicyType']/*[@name='tagInputTextField']", "Produto");
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.embeddingInfoShipmentUnitPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.embeddingInfoShipmentUnitPolicyType']/*[@name='tagInputTextField']", "Produto");
				//Politica Permitir desamarração, Arranjo em carga
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.untiePacksShipmentUnitPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.untiePacksShipmentUnitPolicyType']/*[@name='tagInputTextField']", "Produto");
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.internalArrangementPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.internalArrangementPolicyType']/*[@name='tagInputTextField']", "Unidade Sólida");
				//regra dos itens fracionados
				utils.clearTextFieldXpath("//*[@name='fractionProperties.fractionationPolicy']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='fractionProperties.fractionationPolicy']/*[@name='tagInputTextField']", "Proporção de altura, peso e valor");
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	cadastroDeInvolucroComposto: function (code, name, description) {
		var value = "Invólucro",
			altura = "3,00",
			largura = "1,20",
			comprimento = "1,20";

		navigate.to("Administração", "Invólucros de UE");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo(code, name, description);
				assertBasicInfo(code, name, description);
				elementClick("[name='code']");
				//Categoria
				utils.clearTextFieldXpath("//*[@name='shipmentUnitWrapperCategory']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitWrapperCategory']/*[@name='tagInputTextField']", "Palete");
				//Involucro Composto
				utils.elementClickXpath("//*[@name='composite']");
				//Politica Peso, valor, dimensoes
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.weightPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.weightPolicyType']/*[@name='tagInputTextField']", value);
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.valuePolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.valuePolicyType']/*[@name='tagInputTextField']", value);
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.externalShipmentUnitDimensionPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.externalShipmentUnitDimensionPolicyType']/*[@name='tagInputTextField']", "Dimensões máximas externas");
				//Politica orientações, peso máximo por orientação, faces frágeis
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.allowedOrientationsPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.allowedOrientationsPolicyType']/*[@name='tagInputTextField']", value);
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.maxWeightByAllowedOrientationPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.maxWeightByAllowedOrientationPolicyType']/*[@name='tagInputTextField']", value);
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.fragileOrientationsPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.fragileOrientationsPolicyType']/*[@name='tagInputTextField']", value);
				//Politica empilhamento máximo, empilhamento por, direções de carregamento
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.maxPiledByAllowedOrientationPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.maxPiledByAllowedOrientationPolicyType']/*[@name='tagInputTextField']", value);
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.allowedPiledPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.allowedPiledPolicyType']/*[@name='tagInputTextField']", value);
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.loadDirectionShipmentUnitPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.loadDirectionShipmentUnitPolicyType']/*[@name='tagInputTextField']", value);
				//Politica regras de movimentação, mínimo suporte, embutimento por
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.specialPriorityShipmentUnitPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.specialPriorityShipmentUnitPolicyType']/*[@name='tagInputTextField']", value);
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.minPercentageSupportObjectPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.minPercentageSupportObjectPolicyType']/*[@name='tagInputTextField']", value);
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.embeddingInfoShipmentUnitPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.embeddingInfoShipmentUnitPolicyType']/*[@name='tagInputTextField']", value);
				//Politica Permitir desamarração, Arranjo em carga
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.untiePacksShipmentUnitPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.untiePacksShipmentUnitPolicyType']/*[@name='tagInputTextField']", "Destino");
				utils.clearTextFieldXpath("//*[@name='shipmentUnitPolicies.internalArrangementPolicyType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipmentUnitPolicies.internalArrangementPolicyType']/*[@name='tagInputTextField']", "Unidade Sólida");
				//Dimnensões internas
				utils.fillNumberXpath("//*[@name='maxInternalHeight']/*[@name='nlgNumberInput']", altura);
				utils.fillNumberXpath("//*[@name='maxInternalWidth']/*[@name='nlgNumberInput']", largura);
				utils.fillNumberXpath("//*[@name='maxInternalLength']/*[@name='nlgNumberInput']", comprimento);
				//regra dos itens fracionados
				utils.clearTextFieldXpath("//*[@name='fractionProperties.fractionationPolicy']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='fractionProperties.fractionationPolicy']/*[@name='tagInputTextField']", "Proporção de altura, peso e valor");
				//peso máximo - aba Restrições internas
				elementClick("[name='internalRestrictions']");
				fillNumberXpath("//*[@name='maxWeight']/*[@name='nlgNumberInput']", "30")
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},
	ExcluirInvolucros: function (string) {
		element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
		navigate.acessoTela("[name='menu-userMenu.administration']", "[name='subMenu-userMenu.wrappersEU']");
		filter.configuraFiltro();
		utils.fillText("[name='tagInputTextField']", string);
		utils.elementClick("[name='submitButton']");
		return filter.excluirPosFiltro(string);
		//return elementClick("[name='buttonOk']");
	},

	//CADASTRO Pedidos
	Cadastro1Pedido: function (code, shipper, orderType, DestinationLocality, OriginLocality, product, orderItemType, Wrapper, hubDestino) {
		navigate.to("Programação", "Pedido");
		var countBeforeInsertionPromise = filter.filterByOrderCodeAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				// utils.clearTextXpath("//*[@name='code']");
				fillText("[name='code']", code);
				// embarcador
				utils.fillTextxpath("//*[@name='shipper']/*[@name='tagInputTextField']", shipper);
				//incoterm
				utils.fillTextxpath("//*[@name='entity.incoterm']/*[@name='tagInputTextField']", "CIF");
				//tipo de pedido
				utils.addTextTags("[name='entity.orderType']", orderType);
				//localidade
				utils.addTextTags("[name='entity.destination']", DestinationLocality);
				// comboSearchAndSelect("[name='entity.destination']", DestinationLocality, DestinationLocality);
				utils.addTextTags("[name='entity.passingHubUsageType']", "Opcional");
				utils.addTextTags("[name='entity.destinationHubUsageType']", "Opcional");
				utils.addTextTags("[name='entity.possibleDestinationHubs']", hubDestino || " ");
				//Inicio janela de embarque
				const today = new Date();
				const pickupStartDate = formatDate(today.getTime());
				fillText("[name='entity.pickupStart'] [name='dateInput'] [name='dateInput']", pickupStartDate);
				utils.fillTimePickerXpath("//*[@name='entity.pickupStart']//*[@name='timeInput']", "00", "00");
				//janela de entrega
				const deliveryEndDate = formatDate(today.getTime() + 1000 * 60 * 60 * 24 * 14);
				fillText("[name='entity.deliveryEnd'] [name='dateInput'] [name='dateInput']", deliveryEndDate);
				utils.fillTimePickerXpath("//*[@name='entity.deliveryEnd']//*[@name='timeInput']", "23", "59");
				//aba itens de pedido
				scroll.toElement(element(by.xpath("//a[1 and text()='" + "Itens de pedidos" + "']"))).click();
				//item de pedido
				addOrderItem(OriginLocality, product, orderItemType, Wrapper);
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});

		function formatDate(dateInMilliseconds) {
			const a = new Date(dateInMilliseconds);
			const months = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"];
			const day = a.getDate();
			const month = months[a.getMonth()];
			const year = a.getFullYear();
			return day + "/" + month + "/" + year;
		};
	},

	//CADASTRO Pedidos Sem Hub
	Cadastro1PedidoSemHub: function (code, shipper, orderType, DestinationLocality, OriginLocality, product, orderItemType, Wrapper) {
		navigate.to("Programação", "Pedido");
		var countBeforeInsertionPromise = filter.filterByOrderCodeAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				// utils.clearTextXpath("//*[@name='code']");
				fillText("[name='code']", code);
				// embarcador
				utils.fillTextxpath("//*[@name='shipper']/*[@name='tagInputTextField']", shipper);
				//incoterm
				utils.fillTextxpath("//*[@name='entity.incoterm']/*[@name='tagInputTextField']", "CIF");
				//tipo de pedido
				utils.addTextTags("[name='entity.orderType']", orderType);
				//localidade
				utils.addTextTags("[name='entity.destination']", DestinationLocality);
				// comboSearchAndSelect("[name='entity.destination']", DestinationLocality, DestinationLocality);
				utils.addTextTags("[name='entity.passingHubUsageType']", "Opcional");
				utils.addTextTags("[name='entity.destinationHubUsageType']", "Opcional");
				//Inicio janela de embarque
				fillText("[name='entity.pickupStart'] [name='dateInput'] [name='dateInput']", "01/02/2019");
				utils.fillTimePickerXpath("//*[@name='entity.pickupStart']//*[@name='timeInput']", "00", "00");
				//janela de entrega
				fillText("[name='entity.deliveryEnd'] [name='dateInput'] [name='dateInput']", "20/02/2019");
				utils.fillTimePickerXpath("//*[@name='entity.deliveryEnd']//*[@name='timeInput']", "23", "59");
				//aba itens de pedido
				scroll.toElement(element(by.xpath("//a[1 and text()='" + "Itens de pedidos" + "']"))).click();
				//item de pedido
				addOrderItem(OriginLocality, product, orderItemType, Wrapper);
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	//CADASTRO Pedidos com Classificação
	Cadastro1PedidoComClassificação: function (code, shipper, orderType, DestinationLocality, OriginLocality, product, orderItemType, Wrapper, classification) {
		navigate.to("Programação", "Pedido");
		var countBeforeInsertionPromise = filter.filterByOrderCodeAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				// utils.clearTextXpath("//*[@name='code']");
				fillText("[name='code']", code);
				// embarcador
				utils.fillTextxpath("//*[@name='shipper']/*[@name='tagInputTextField']", shipper);
				//incoterm
				utils.fillTextxpath("//*[@name='entity.incoterm']/*[@name='tagInputTextField']", "CIF");
				//tipo de pedido
				utils.addTextTags("[name='entity.orderType']", orderType);
				//localidade
				utils.addTextTags("[name='entity.destination']", DestinationLocality);
				// comboSearchAndSelect("[name='entity.destination']", DestinationLocality, DestinationLocality);
				utils.addTextTags("[name='entity.passingHubUsageType']", "Opcional");
				utils.addTextTags("[name='entity.destinationHubUsageType']", "Opcional");
				//Inicio janela de embarque
				fillText("[name='entity.pickupStart'] [name='dateInput'] [name='dateInput']", "01/02/2019");
				utils.fillTimePickerXpath("//*[@name='entity.pickupStart']//*[@name='timeInput']", "00", "00");
				//janela de entrega
				fillText("[name='entity.deliveryEnd'] [name='dateInput'] [name='dateInput']", "20/02/2019");
				utils.fillTimePickerXpath("//*[@name='entity.deliveryEnd']//*[@name='timeInput']", "23", "59");
				//aba Classificações
				setOrderClassification(classification);
				//aba Itens de pedido
				scroll.toElement(element(by.xpath("//a[1 and text()='" + "Itens de pedidos" + "']"))).click();
				//item de pedido
				addOrderItem(OriginLocality, product, orderItemType, Wrapper);
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	//CADASTRO Pedidos com Valor (de Item de Pedido)
	Cadastro1PedidoComValor: function (code, shipper, orderType, DestinationLocality, OriginLocality, product, orderItemType, Wrapper, value) {
		navigate.to("Programação", "Pedido");
		var countBeforeInsertionPromise = filter.filterByOrderCodeAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				// utils.clearTextXpath("//*[@name='code']");
				fillText("[name='code']", code);
				// embarcador
				utils.fillTextxpath("//*[@name='shipper']/*[@name='tagInputTextField']", shipper);
				//incoterm
				utils.fillTextxpath("//*[@name='entity.incoterm']/*[@name='tagInputTextField']", "CIF");
				//tipo de pedido
				utils.addTextTags("[name='entity.orderType']", orderType);
				//localidade
				utils.addTextTags("[name='entity.destination']", DestinationLocality);
				// comboSearchAndSelect("[name='entity.destination']", DestinationLocality, DestinationLocality);
				utils.addTextTags("[name='entity.passingHubUsageType']", "Opcional");
				utils.addTextTags("[name='entity.destinationHubUsageType']", "Opcional");
				//Inicio janela de embarque
				fillText("[name='entity.pickupStart'] [name='dateInput'] [name='dateInput']", "01/02/2019");
				utils.fillTimePickerXpath("//*[@name='entity.pickupStart']//*[@name='timeInput']", "00", "00");
				//janela de entrega
				fillText("[name='entity.deliveryEnd'] [name='dateInput'] [name='dateInput']", "20/02/2019");
				utils.fillTimePickerXpath("//*[@name='entity.deliveryEnd']//*[@name='timeInput']", "23", "59");
				//aba Itens de pedido
				scroll.toElement(element(by.xpath("//a[1 and text()='" + "Itens de pedidos" + "']"))).click();
				//item de pedido
				addOrderItem(OriginLocality, product, orderItemType, Wrapper);
				//valor (de item de pedido)
				utils.clearNumberField("[name='orderItem.value']");
				utils.fillNumber("[name='orderItem.value']", value);
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	cadastroPedidoQuantidade: function (code, shipper, orderType, DestinationLocality, OriginLocality, product, orderItemType, Wrapper, hubDestino, quantidade) {
		navigate.to("Programação", "Pedido");
		var countBeforeInsertionPromise = filter.filterByOrderCodeAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				utils.clearTextXpath("//*[@name='code']");
				fillText("[name='code']", code);
				// embarcador
				utils.clearTextFieldXpath("//*[@name='shipper']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipper']/*[@name='tagInputTextField']", shipper);
				//incoterm
				utils.clearTextFieldXpath("//*[@name='entity.incoterm']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='entity.incoterm']/*[@name='tagInputTextField']", "CIF");
				//tipo de pedido
				comboSearchAndSelect("[name='entity.orderType']", orderType, orderType);
				//localidade
				utils.fillTextxpath("//*[@name='entity.destination']/*[@name='tagInputTextField']", DestinationLocality);
				// comboSearchAndSelect("[name='entity.destination']", DestinationLocality, DestinationLocality);
				utils.clearTextFieldXpath("//*[@name='entity.passingHubUsageType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='entity.passingHubUsageType']/*[@name='tagInputTextField']", "Opcional");
				utils.clearTextFieldXpath("//*[@name='entity.destinationHubUsageType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='entity.destinationHubUsageType']/*[@name='tagInputTextField']", "Opcional");
				utils.fillTextxpath("//*[@name='entity.possibleDestinationHubs']/*[@name='tagInputTextField']", hubDestino);
				//Inicio janela de embarque
				fillText("[name='entity.pickupStart'] [name='dateInput'] [name='dateInput']", "01/02/2019");
				utils.fillTimePickerXpath("//*[@name='entity.pickupStart']//*[@name='timeInput']", "00", "00");
				//janela de entrega
				fillText("[name='entity.deliveryEnd'] [name='dateInput'] [name='dateInput']", "20/02/2019");
				utils.fillTimePickerXpath("//*[@name='entity.deliveryEnd']//*[@name='timeInput']", "23", "59");
				//aba itens de pedido
				scroll.toElement(element(by.xpath("//a[1 and text()='" + "Itens de pedidos" + "']"))).click();
				//item de pedido
				elementClick("[name='addOrderItemButton']");
				elementClick("[name='editOrderItem']");
				//localidade de Origem
				utils.fillTextxpath("//*[@name='orderItem.origin']/*[@name='tagInputTextField']", OriginLocality);
				// comboSearchAndSelect("[name='orderItem.origin']", OriginLocality, OriginLocality);
				//Produto
				utils.elementClickXpath("//*[@name='orderItem.product']/*[@name='tagInputTextField']").sendKeys(protractor.Key.BACK_SPACE);
				// browser.actions().sendKeys(protractor.Key.BACK_SPACE);
				utils.fillTextxpath("//*[@name='orderItem.product']/*[@name='tagInputTextField']", product);
				//Tipo de pedido
				utils.fillTextxpath("//*[@name='orderItem.orderItemType']/*[@name='tagInputTextField']", orderItemType);
				// comboSearchAndSelect("[name='orderItem.orderItemType']", orderItemType, orderItemType);
				//Involucro
				utils.fillTextxpath("//*[@name='orderItem.shipmentUnitWrapper']/*[@name='tagInputTextField']", Wrapper);
				// comboSearchAndSelect("[name='orderItem.shipmentUnitWrapper']", Wrapper, Wrapper);
				//Orientações
				elementClick("[name='orderItem.lwhAllow']");
				elementClick("[name='orderItem.lhwAllow']");
				elementClick("[name='orderItem.hlwAllow']");
				elementClick("[name='orderItem.hwlAllow']");
				elementClick("[name='orderItem.wlhAllow']");
				elementClick("[name='orderItem.whlAllow']");
				//total de produtos 
				fillNumber("[name='orderItem.quantity']", quantidade);
				//Quantidade de UEs
				fillNumber("[name='orderItem.quantityInShipmentUnits']", "1,00");
				//UE completa
				fillNumber("[name='orderItem.quantityOfProductsInShipmentUnits']", "1");
				elementClick("[name='buttonApply']");
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	cadastroPedidoDoisItens: function (code, shipper, orderType, DestinationLocality, OriginLocality, product, product2, orderItemType, Wrapper, hubDestino) {
		navigate.to("Programação", "Pedido");
		var countBeforeInsertionPromise = filter.filterByOrderCodeAndGetCount(code);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				utils.clearTextXpath("//*[@name='code']");
				fillText("[name='code']", code);
				// embarcador
				utils.clearTextFieldXpath("//*[@name='shipper']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='shipper']/*[@name='tagInputTextField']", shipper);
				//incoterm
				utils.clearTextFieldXpath("//*[@name='entity.incoterm']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='entity.incoterm']/*[@name='tagInputTextField']", "CIF");
				//tipo de pedido
				comboSearchAndSelect("[name='entity.orderType']", orderType, orderType);
				//localidade
				utils.fillTextxpath("//*[@name='entity.destination']/*[@name='tagInputTextField']", DestinationLocality);
				// comboSearchAndSelect("[name='entity.destination']", DestinationLocality, DestinationLocality);
				utils.clearTextFieldXpath("//*[@name='entity.passingHubUsageType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='entity.passingHubUsageType']/*[@name='tagInputTextField']", "Opcional");
				utils.clearTextFieldXpath("//*[@name='entity.destinationHubUsageType']/*[@name='tagInputTextField']");
				utils.fillTextxpath("//*[@name='entity.destinationHubUsageType']/*[@name='tagInputTextField']", "Opcional");
				utils.fillTextxpath("//*[@name='entity.possibleDestinationHubs']/*[@name='tagInputTextField']", hubDestino);
				//Inicio janela de embarque
				fillText("[name='entity.pickupStart'] [name='dateInput'] [name='dateInput']", "01/02/2019");
				utils.fillTimePickerXpath("//*[@name='entity.pickupStart']//*[@name='timeInput']", "00", "00");
				//janela de entrega
				fillText("[name='entity.deliveryEnd'] [name='dateInput'] [name='dateInput']", "20/02/2019");
				utils.fillTimePickerXpath("//*[@name='entity.deliveryEnd']//*[@name='timeInput']", "23", "59");
				scroll.toElement(element(by.xpath("//a[1 and text()='" + "Itens de pedidos" + "']"))).click();
				elementClick("[name='addOrderItemButton']");
				elementClick("[name='0'] [name='editOrderItem']");
				fillOrderItem(OriginLocality, product, orderItemType, Wrapper);
				elementClick("[name='addOrderItemButton']");
				elementClick("[name='1'] [name='editOrderItem']");
				fillOrderItem(OriginLocality, product2, orderItemType, Wrapper);
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	cadastradoItemDePedido: function (OriginLocality, product, orderItemType, Wrapper) {
		//aba itens de pedido
		scroll.toElement(element(by.xpath("//a[1 and text()='" + "Itens de pedidos" + "']"))).click();
		//item de pedido
		elementClick("[name='addOrderItemButton']");
		elementClick("[name='editOrderItem']");
		//localidade de Origem
		utils.fillTextxpath("//*[@name='orderItem.origin']/*[@name='tagInputTextField']", OriginLocality);
		// comboSearchAndSelect("[name='orderItem.origin']", OriginLocality, OriginLocality);
		//Produto
		utils.elementClickXpath("//*[@name='orderItem.product']/*[@name='tagInputTextField']").sendKeys(protractor.Key.BACK_SPACE);
		// browser.actions().sendKeys(protractor.Key.BACK_SPACE);
		utils.fillTextxpath("//*[@name='orderItem.product']/*[@name='tagInputTextField']", product);
		//Tipo de pedido
		utils.fillTextxpath("//*[@name='orderItem.orderItemType']/*[@name='tagInputTextField']", orderItemType);
		// comboSearchAndSelect("[name='orderItem.orderItemType']", orderItemType, orderItemType);
		//Involucro
		utils.fillTextxpath("//*[@name='orderItem.shipmentUnitWrapper']/*[@name='tagInputTextField']", Wrapper);
		// comboSearchAndSelect("[name='orderItem.shipmentUnitWrapper']", Wrapper, Wrapper);
		//Orientações
		elementClick("[name='orderItem.lwhAllow']");
		elementClick("[name='orderItem.lhwAllow']");
		elementClick("[name='orderItem.hlwAllow']");
		elementClick("[name='orderItem.hwlAllow']");
		elementClick("[name='orderItem.wlhAllow']");
		elementClick("[name='orderItem.whlAllow']");
		//total de produtos 
		fillNumber("[name='orderItem.quantity']", "10");
		//Quantidade de UEs
		fillNumber("[name='orderItem.quantityInShipmentUnits']", "10");
		//UE completa
		fillNumber("[name='orderItem.quantityOfProductsInShipmentUnits']", "1");
	},
	ExcluirPedido: function (codigo) {
		element(by.xpath("//*[@name='body']")).sendKeys(protractor.Key.ESCAPE);
		navigate.acessoTela("[name='menu-userMenu.programming']", "[name='subMenu-userMenu.order']");
		var countBeforeInsertionPromise = filterByOrderCodeAndGetCount(codigo);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 1) {
				return filter.excluirPosFiltro(codigo);
			}
		});
	},

	//COPIAR Pedidos
	CopiarPedidos15x: function (code, clicks, OriginLocality, product, orderItemType, Wrapper) {
		let origem = process.env.ORIGEM || OriginLocality;
		navigate.to("Programação", "Pedido");
		filter.configuraFiltroPorAtributo("Código");
		fillText("[name='tagInputTextField']", code);
		elementClick("[name='submitButton']");
		for (var i = 0; i < clicks; i++) {
			elementClick("[name='copyButton']");
			utils.clearTextXpath("//*[@name='code']");
			fillText("[name='code']", code + i);
			scroll.toElement(element(by.xpath("//a[1 and text()='" + "Itens de pedidos" + "']"))).click();
			elementClick("[name='nlgTableRemoveButton']");
			addOrderItem(origem, process.env.PRODUTO || product, orderItemType, Wrapper, 4);
			//Salvar e sair
			elementClick("[name='buttonSubmit']");
			messages.validaMensagem("A entidade foi salva com sucesso.", self);
			elementClick("[name='buttonOk']");
			present(element(by.css("[name='editionViewBack']")));
			elementClick("[name='editionViewBack']");
		}
		return navigate.to("Programação", "Pedido");
	},

	//COPIAR Pedido para WHP-MEX
	copiaPedido: function (code, newCode) {
		navigate.to("Programação", "Pedido");
		let countBeforeCopyPromise = filterByOrderCodeAndGetCount(code);
		return countBeforeCopyPromise.then(function (regCount) {
			if (regCount === 1) {
				elementClick("[name='copyButton']");
				utils.clearTextXpath("//*[@name='code']");
				fillText("[name='code']", newCode);
				scroll.toElement(element(by.xpath("//a[1 and text()='" + "Itens de pedidos" + "']"))).click();
				//Editar item de pedido
				elementClick("[name='editOrderItem']");
				fillText("[name='orderItem.sourceId']", newCode + "/1");
				elementClick("[name='buttonApply']");
				//Salvar e sair
				elementClick("[name='buttonSubmit']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				elementClick("[name='buttonOk']");
				present(element(by.css("[name='editionViewBack']")));
				elementClick("[name='editionViewBack']");
			}
		});
	},

	ExcluirPedidos15x: function (code, clicks) {
		navigate.to("Programação", "Pedido")
		filter.configuraFiltro("Código");
		for (var i = 0; i < clicks; i++) {
			utils.clearTextFieldXpath("//*[@name='tagInputTextField']");
			fillText("[name='tagInputTextField']", code + i);
			utils.elementClick("[name='submitButton']");
			filter.excluirPosFiltro(code + i);
			// elementClick("[name='buttonOk']");
		}
		return navigate.to("Programação", "Pedido");
	},

	//CADASTRO VIAGENS SEB
	CadastroViagemSEB: function (code) {
		navigate.to("Programação", "Análise");
		//filtro cesta geral
		var basket1 = "//*[@selection='selection.availableDeliveryUnits']";
		filter.configuraFiltroCestaGeral(basket1);
		utils.fillTextxpath(basket1 + " //*[@name='tagInputTextField']", code);
		utils.elementClickXpath(basket1 + " //*[@name='submitButton']");
		//seleciono pedido
		var el = "[selection='selection.availableDeliveryUnits'] [data-presentation-id='" + code + "']"
		elementClick(el + " [name='nlgAnalysisTreeCheckBox']");
		utils.elementClickXpath("//*[text()='Mover pedidos para minha cesta']");
		//filtro cesta do usuario
		var basket2 = "//*[@selection='selection.deliveryUnits']";
		filter.configuraFiltroCestaUsuario(basket2);
		utils.fillTextxpath(basket2 + " //*[@name='tagInputTextField']", code);
		utils.elementClickXpath(basket2 + " //*[@name='submitButton']");
		//seleciono pedido
		var el = "[selection='selection.deliveryUnits'] [data-presentation-id='" + code + "']"
		elementClick(el + " [name='nlgAnalysisTreeCheckBox']");
		//clico em Mover seleção aqui na cesta de viagem
		elementClick("[selection='selection.tripBasket'] [data-node-type='TRIP_BASKET'] [name='nlgAnalysisTreeActions']");
		elementClick("[data-node-type='TRIP_BASKET'] [name='nlgAnalysisTreeToNodeHere']");
		//altero o contexto
		utils.clearTextFieldXpath("//*[@name='routingConfigInput']/*[@name='tagInputTextField']");
		utils.fillTextxpath("//*[@name='routingConfigInput']/*[@name='tagInputTextField']", "Otimização");
		//clico no botão OK
		elementClick("[name='buttonOk']");
		//no contexto de otimização clico em OK
		elementClick("[name='buttonOk']");
		//clico no botão "Salvar"
		return utils.elementClickXpath("//*[@name='buttonSave']");
		// //filtro pela viagem "PEDIDO01"
		// var basket3 = "//*[@selection='selection.tripBasket']";
		// filter.configuraFiltroCestaViagem(basket3);
		// utils.fillTextxpath(basket3 + " //*[@name='tagInputTextField']", code);
		// return utils.elementClickXpath(basket3 + " //*[@name='submitButton']");
	},

	//CADASTRO VIAGENS
	CadastroViagem: function (pedido) {
		navigate.to("Programação", "Análise");
		//filtro cesta geral
		var basket1 = "[selection='selection.availableDeliveryUnits']";
		filter.configuraFiltroCestaGeral(basket1);
		utils.fillText(basket1 + " [name='tagInputTextField']", pedido);
		utils.elementClick(basket1 + " [name='submitButton']");
		//seleciono pedido
		var el = basket1 + " [data-presentation-id='" + pedido + "']"
		elementClick(el + " [name='nlgAnalysisTreeCheckBox']");
		utils.elementClickXpath("//*[text()='Mover pedidos para minha cesta']");
		//filtro cesta do usuario
		var basket2 = "[selection='selection.deliveryUnits']";
		filter.configuraFiltroCestaUsuario(basket2);
		utils.fillText(basket2 + " [name='tagInputTextField']", pedido);
		utils.elementClick(basket2 + " [name='submitButton']");
		//seleciono pedido
		var el = basket2 + " [data-presentation-id='" + pedido + "']"
		elementClick(el + " [name='nlgAnalysisTreeCheckBox']");
		//clico em Mover seleção aqui na cesta de viagem
		elementClick("[selection='selection.tripBasket'] [data-node-type='TRIP_BASKET'] [name='nlgAnalysisTreeActions']");
		elementClick("[data-node-type='TRIP_BASKET'] [name='nlgAnalysisTreeToNodeHere']");
		// element(by.xpath("//*[@name='overridableGenericParamsRoutingSelectionDialog']")).isPresent().then(function (isPresent) {
		// 	if (isPresent === true) {
		// 		utils.elementClickXpath("//*[@name='buttonOk']");
		// 	}
		// });
		confirmSelectedContext();
		//clico no botão OK
		elementClick("[name='buttonOk']");
		//clico no botão "Salvar"
		return utils.elementClickXpath("//*[@name='buttonSave']");
		// //filtro pela viagem "PEDIDO01"
		// var basket3 = "//*[@selection='selection.tripBasket']";
		// filter.configuraFiltroCestaViagem(basket3);
		// utils.fillTextxpath(basket3 + " //*[@name='tagInputTextField']", code);
		// return utils.elementClickXpath(basket3 + " //*[@name='submitButton']");
	},
	//CADASTRO VIAGEM COM RESTRIÇÂO
	criarViagemComRestrição: function (pedido, transportadora, veiculo) {
		navigate.to("Programação", "Análise")
		//filtro cesta geral
		var basket1 = "[selection='selection.availableDeliveryUnits']";
		filter.configuraFiltroCestaGeral(basket1);
		utils.fillText(basket1 + " [name='tagInputTextField']", pedido);
		utils.elementClick(basket1 + " [name='submitButton']");
		//seleciono pedido
		var el = basket1 + " [data-presentation-id='" + pedido + "']"
		// elementClick(el + " [name='nlgAnalysisTreeCheckBox']");
		// utils.elementClickXpath("//*[text()='Mover pedidos para minha cesta']");
		utils.elementClickXpath("//*[text()='Mover todas as páginas para a cesta']");
		//filtro cesta do usuario
		var basket2 = "[selection='selection.deliveryUnits']";
		filter.configuraFiltroCestaUsuario(basket2);
		utils.fillText(basket2 + " [name='tagInputTextField']", pedido);
		utils.elementClick(basket2 + " [name='submitButton']");
		//seleciono pedido
		var el = basket2 + " [data-presentation-id='" + pedido + "']"
		// elementClick(el + " [name='nlgAnalysisTreeCheckBox']");
		//clico em Mover seleção aqui na cesta de viagem
		// elementClick("[selection='selection.tripBasket'] [data-node-type='TRIP_BASKET'] [name='nlgAnalysisTreeActions']");
		// elementClick("[data-node-type='TRIP_BASKET'] [name='nlgAnalysisTreeToNodeHere']");
		utils.elementClickXpath("//*[text()='Operação manual em todas as páginas']");
		element(by.css("[name='overridableGenericParamsRoutingSelectionDialog']")).isPresent().then(function (isPresent) {
			if (isPresent === true) {
				utils.elementClick("[name='buttonOk']");
			}
		});
		//clico em Usar restrições
		elementClick("[name='organize.organizeWithRestrictions']");
		//clico em Restrições
		elementClick("[name='organize.restrictions']");
		//seleciono veículo
		addTextTags("[name='organize.vehicle']", veiculo)
		//seleciono transportadora
		addTextTags("[name='organize.carrier']", transportadora)
		//clico no botão OK
		elementClick("[name='buttonOk']");
		//clico no botão "Salvar"
		return utils.elementClickXpath("//*[@name='buttonSave']");
		// //filtro pela viagem "PEDIDO01"
		// var basket3 = "//*[@selection='selection.tripBasket']";
		// filter.configuraFiltroCestaViagem(basket3);
		// utils.fillTextxpath(basket3 + " //*[@name='tagInputTextField']", pedido);
		// return utils.elementClickXpath(basket3 + " //*[@name='submitButton']");
	},

	//CADASTRO VIAGEM COM RESTRIÇÃO E UNITIZAÇÃO
	criarViagemComRestriçãoEUnitização: function (pedido, transportadora, veiculo) {
		navigate.to("Programação", "Análise")
		//filtro cesta geral
		var basket1 = "[selection='selection.availableDeliveryUnits']";
		filter.configuraFiltroCestaGeral(basket1);
		utils.fillText(basket1 + " [name='tagInputTextField']", pedido);
		utils.elementClick(basket1 + " [name='submitButton']");
		//seleciono pedido
		var el = basket1 + " [data-presentation-id='" + pedido + "']"
		// elementClick(el + " [name='nlgAnalysisTreeCheckBox']");
		// utils.elementClickXpath("//*[text()='Mover pedidos para minha cesta']");
		utils.elementClickXpath("//*[text()='Mover todas as páginas para a cesta']");
		//filtro cesta do usuario
		var basket2 = "[selection='selection.deliveryUnits']";
		filter.configuraFiltroCestaUsuario(basket2);
		utils.fillText(basket2 + " [name='tagInputTextField']", pedido);
		utils.elementClick(basket2 + " [name='submitButton']");
		//seleciono pedido
		var el = basket2 + " [data-presentation-id='" + pedido + "']"
		// elementClick(el + " [name='nlgAnalysisTreeCheckBox']");
		//clico em Mover seleção aqui na cesta de viagem
		// elementClick("[selection='selection.tripBasket'] [data-node-type='TRIP_BASKET'] [name='nlgAnalysisTreeActions']");
		// elementClick("[data-node-type='TRIP_BASKET'] [name='nlgAnalysisTreeToNodeHere']");
		utils.elementClickXpath("//*[text()='Operação manual em todas as páginas']");
		element(by.css("[name='overridableGenericParamsRoutingSelectionDialog']")).isPresent().then(function (isPresent) {
			if (isPresent === true) {
				utils.elementClick("[name='buttonOk']");
			}
		});
		//clico em Usar restrições
		elementClick("[name='organize.organizeWithRestrictions']");
		//clico em Unitização Automática
		elementClick("[name='organize.automaticUnitize']");
		//clico em Restrições
		elementClick("[name='organize.restrictions']");
		//seleciono veículo
		addTextTags("[name='organize.vehicle']", veiculo)
		//seleciono transportadora
		addTextTags("[name='organize.carrier']", transportadora)
		//clico no botão OK
		elementClick("[name='buttonOk']");
		//clico no botão "Salvar"
		return utils.elementClickXpath("//*[@name='buttonSave']");
		// //filtro pela viagem "PEDIDO01"
		// var basket3 = "//*[@selection='selection.tripBasket']";
		// filter.configuraFiltroCestaViagem(basket3);
		// utils.fillTextxpath(basket3 + " //*[@name='tagInputTextField']", pedido);
		// return utils.elementClickXpath(basket3 + " //*[@name='submitButton']");
	},

	//CADASTRO VIAGEM COM RESTRIÇÂO SEB
	criarViagemComRestriçãoSEB: function (pedido, transportadora, veiculo) {
		navigate.to("Programação", "Análise")
		//filtro cesta geral
		var basket1 = "//*[@selection='selection.availableDeliveryUnits']";
		filter.configuraFiltroCestaGeral(basket1);
		utils.fillTextxpath(basket1 + " //*[@name='tagInputTextField']", pedido);
		utils.elementClickXpath(basket1 + " //*[@name='submitButton']");
		//seleciono pedido
		var el = "//*[@selection='selection.availableDeliveryUnits']//*[@data-presentation-id='" + pedido + "']"
		elementClickXpath(el + "//*[@name='nlgAnalysisTreeCheckBox']");
		utils.elementClickXpath("//*[text()='Mover pedidos para minha cesta']");
		//filtro cesta do usuario
		var basket2 = "//*[@selection='selection.deliveryUnits']";
		filter.configuraFiltroCestaUsuario(basket2);
		utils.fillTextxpath(basket2 + "//*[@name='tagInputTextField']", pedido);
		utils.elementClickXpath(basket2 + "//*[@name='submitButton']");
		//seleciono pedido
		var el = "[selection='selection.deliveryUnits'] [data-presentation-id='" + pedido + "']"
		elementClick(el + " [name='nlgAnalysisTreeCheckBox']");
		//clico em Mover seleção aqui na cesta de viagem
		elementClick("[selection='selection.tripBasket'] [data-node-type='TRIP_BASKET'] [name='nlgAnalysisTreeActions']");
		elementClick("[data-node-type='TRIP_BASKET'] [name='nlgAnalysisTreeToNodeHere']");
		//Seleciono o contexto "Otimização"
		utils.clearTextFieldXpath("//*[@name='routingConfigInput']/*[@name='tagInputTextField']");
		utils.fillTextxpath("//*[@name='routingConfigInput']/*[@name='tagInputTextField']", "Otimização");
		elementClickXpath("//*[@name='buttonOk']");
		//clico em Usar restrições
		elementClick("[name='organize.organizeWithRestrictions']");
		//clico em Restrições
		elementClick("[name='organize.restrictions']");
		//seleciono veículo
		fillText("[name='organize.vehicle'] [name='tagInputTextField']", veiculo)
		//seleciono transportadora
		fillText("[name='organize.carrier'] [name='tagInputTextField']", transportadora)
		//clico no botão OK
		elementClick("[name='buttonOk']");
		//clico no botão "Salvar"
		return utils.elementClickXpath("//*[@name='buttonSave']");
		// //filtro pela viagem "PEDIDO01"
		// var basket3 = "//*[@selection='selection.tripBasket']";
		// filter.configuraFiltroCestaViagem(basket3);
		// utils.fillTextxpath(basket3 + " //*[@name='tagInputTextField']", pedido);
		// return utils.elementClickXpath(basket3 + " //*[@name='submitButton']");
	},

	//ExcluirViagem SEB
	ExcluirViagemSEB: function (code) {
		utils.elementClickXpath("//*[@name='headerNeologLogo']/*");
		navigate.to("Programação", "Análise")
		//Filtro
		var basket3 = "//*[@selection='selection.tripBasket']";
		filter.configuraFiltroCestaViagem(basket3);
		utils.fillTextxpath(basket3 + " //*[@name='tagInputTextField']", code);
		utils.elementClickXpath(basket3 + " //*[@name='submitButton']");
		//seleção viagem
		var el = "[selection='selection.tripBasket']"
		utils.elementClickXpath("//*[@selection='selection.tripBasket'] //*[@name='nlgAnalysisTreeCheckBox']");
		//Clico no botão Cancelar
		utils.elementClickXpath("//*[@name='cancel']");
		utils.elementClickXpath("//*[@name='cancelSelectedTrips']");
		utils.elementClickXpath("//*[@name='buttonOk']");
		return utils.elementClickXpath("//*[@name='buttonOk']");
	},

	//ExcluirViagem
	ExcluirViagem: function (code) {
		if (process.env.CLIENT_NAME === 'whp-mex') {
			navigate.to("Programação", "Seleção");
			let countBeforeMovePromise = filterSelectionTripBasketByOrderCodeAndGetCount(code);
			countBeforeMovePromise.then(function (regCount) {
				if (regCount === 1) {
					var user = "Neolog"
					utils.elementClickXpath(CestaViagens + "//*[@name='nlgAnalysisTreeCheckBox']");
					utils.elementClickXpath("//*[@name='moveTripToUserButton']");
					utils.fillTextxpath("//*[@name='model.user']/*[@name='tagInputTextField']", user);
					elementClick("[name='buttonOk']");
					elementClick("[name='buttonOk']");
				} else {
					let countBeforeMovePromise = filterSelectionUserBasketByOrderCodeAndGetCount(code);
					countBeforeMovePromise.then(function (regCount) {
						if (regCount === 1) {
							utils.elementClickXpath(CestaViagens + "//*[@name='nlgAnalysisTreeCheckBox']");
							utils.elementClickXpath("//*[@name='moveTripToUserButton']");
							utils.fillTextxpath("//*[@name='model.user']/*[@name='tagInputTextField']", user);
							elementClick("[name='buttonOk']");
							elementClick("[name='buttonOk']");
						}
					});
				}
			});
		}

		navigate.to("Programação", "Análise");
		//Filtro
		let countBeforeDeletePromise = filterTripBasketByOrderCodeAndGetCount(code);
		return countBeforeDeletePromise.then(function (regCount) {
			if (regCount === 1) {
				//seleção viagem
				utils.selectOrderOrTrip("[selection='selection.tripBasket']")
				//Clico no botão Cancelar
				utils.elementClickXpath("//*[@name='cancel']");
				utils.elementClickXpath("//*[@name='cancelSelectedTrips']");
				element(by.xpath("//*[@name='overridableGenericParamsRoutingSelectionDialog']")).isPresent().then(function (isPresent) {
					if (isPresent === true) {
						utils.elementClickXpath("//*[@name='buttonOk']");
					}
				});
				element(by.xpath("//*[@name='defaultJustificationForTrips']")).isPresent().then(function (isPresent) {
					if (isPresent === true) {
						utils.elementClick("[name='defaultJustificationForTrips'] [name='tagInputShowValues']");
						utils.elementClickXpath("//*[@role='option']");
					}
				});
				utils.elementClickXpath("//*[@name='buttonOk']");
			}
			let countBeforeMovePromise = filterUserBasketByOrderCodeAndGetCount(code);
			return countBeforeMovePromise.then(function (regCount) {
				if (regCount === 1) {
					return elementClick("[name='moveAllPagesToAvailable']");
				}
			});
		});
	},

	adicionaValidador: function (validador) {
		var contexto = process.env.CONTEXTO || "DEF";
		navigate.to("Administração", "Otimização");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(contexto);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 1) {
				elementClick("[name='editButton']");
				elementClick("[name='genericParams']");
				elementClickXpath("//*[@name='12']//*[@name='editButton']");
				utils.addTextTags("[name='genericParamDefinitionCombo']", "Validadores de seleção - Operação manual");
				elementClick("[name='submitButton']");
				elementClick("[name='addButton']");
				utils.addTextTags("[name='Contexto_Otimizacao']", contexto);
				utils.addTextTags("[name='Fabrica_Validador']", validador);
				elementClickXpath("//*[@name='Filtro_Validador']/*/*/*[@name='tagInputTextField']");
				fillNumberXpath("//*[@name='Ordem']/*/*/*[@name='nlgNumberInput']", "0");
				elementClickXpath("//*[@name='nlgGenericParamDataSaveButton']");
				elementClickXpath("//*[@name='buttonOk']");
				elementClickXpath("//*[@name='closeButton']");
				elementClickXpath("//*[@name='buttonSubmit']");
				return elementClickXpath("//*[@name='buttonOk']");
			}
		})
	},

	adicionaPreValidadorOtimizacao: function (validador) {
		var contexto = process.env.CONTEXTO || "DEF";
		navigate.to("Administração", "Otimização");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(contexto);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 1) {
				elementClick("[name='editButton']");
				elementClick("[name='genericParams']");
				elementClickXpath("//*[@name='12']//*[@name='editButton']");
				utils.addTextTags("[name='genericParamDefinitionCombo']", "Pré-validadores - Otimização");
				// elementClick("[name='submitButton']");
				elementClick("[name='addButton']");
				utils.addTextTags("[name='Contexto_Otimizacao']", contexto);
				utils.addTextTags("[name='Fabrica_Validador']", validador);
				fillNumber("[name='Ordem']", "100");
				elementClickXpath("//*[@name='nlgGenericParamDataSaveButton']");
				elementClickXpath("//*[@name='buttonOk']");
				elementClickXpath("//*[@name='closeButton']");
				elementClickXpath("//*[@name='buttonSubmit']");
				return elementClickXpath("//*[@name='buttonOk']");
			}
		})
	},

	removeValidador: function (validador) {
		var contexto = process.env.CONTEXTO || "DEF";
		navigate.to("Administração", "Otimização");
		let countBeforeDeletePromise = filterBySourceIdAndGetCount(contexto);
		return countBeforeDeletePromise.then(function (regCount) {
			if (regCount === 1) {
				elementClick("[name='editButton']");
				elementClick("[name='genericParams']");
				elementClickXpath("//*[@name='12']//*[@name='editButton']");
				utils.addTextTags("[name='genericParamDefinitionCombo']", "Validadores de seleção - Operação manual");
				elementClick("[name='deleteFilterButtons']");
				elementClick("[name='filterButton']");
				elementClick("[name='btnFilterCustomize']");
				utils.addTextTags("[name='attributes+0']", "Fabrica Validador");
				// utils.fillFilterDropdown("[name='operators+0']", "string:br.com.neolog.service.crud.filter.FilterOperation.IN");
				elementClick("[name='modalContent'] [name='buttonApply']");
				utils.addTextTags("[name='Fabrica_Validador-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", validador);
				elementClick("[name='submitButton']");
				elementClick("[name='removeButton']");
				elementClickXpath("//*[@name='nlgGenericParamDataSaveButton']");
				elementClickXpath("//*[@name='buttonOk']");
				elementClickXpath("//*[@name='closeButton']");
				elementClickXpath("//*[@name='buttonSubmit']");
				return elementClickXpath("//*[@name='buttonOk']");
			}
		})
	},

	alteraSeletor: function (seletor) {
		var contexto = process.env.CONTEXTO || "DEF";
		navigate.to("Administração", "Otimização");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(contexto);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 1) {
				elementClick("[name='editButton']");
				elementClick("[name='genericParams']");
				elementClickXpath("//*[@name='10']//*[@name='editButton']");
				utils.addTextTags("[name='genericParamDefinitionCombo']", "RoutingConfigVehicleSelectors");
				elementClick("[name='submitButton']");
				elementClick("[name='Seletor'] [name='nlgTagInputRemoveTag']");
				utils.addTextTags("[name='Seletor']", seletor);
				elementClickXpath("//*[@name='nlgGenericParamDataSaveButton']");
				elementClickXpath("//*[@name='buttonOk']");
				elementClickXpath("//*[@name='closeButton']");
				elementClickXpath("//*[@name='buttonSubmit']");
				return elementClickXpath("//*[@name='buttonOk']");
			}
		})
	},

	adicionaRegistroEmParametro: function (transportadora, origem, parametro) {
		var origem = process.env.ORIGEM || origem
		navigate.to("Administração", "Parâmetros");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(parametro);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 1) {
				elementClick("[name='editButton']");
				elementClick("[name='genericParamDefinitionEditData']");
				elementClick("[name='tableViewType']");
				elementClick("[name='submitButton']");
				elementClick("[name='addButton']");
				utils.addTextTags("[name='Transportadora']", transportadora);
				utils.addTextTags("[name='Origem']", origem);
				elementClick("[name='nlgGenericParamDataSaveButton']");
				elementClick("[name='buttonOk']");
				return elementClick("[name='buttonCancel']");
			}
		})
	},

	removeRegistroDeParametro: function (transportadora, origem, parametro) {
		navigate.to("Administração", "Parâmetros")
		var countBeforeDeletePromise = filterBySourceIdAndGetCount(parametro);
		return countBeforeDeletePromise.then(function (regCount) {
			if (regCount === 1) {
				filterBySourceIdAndGetCount(parametro);
				elementClick("[name='editButton']");
				elementClick("[name='genericParamDefinitionEditData']");
				elementClick("[name='tableViewType']");
				elementClick("[name='filterButton']");
				elementClick("[name='btnFilterCustomize']");
				elementClick("[name='buttonAdd+0']");
				utils.addTextTags("[name='attributes+0']", "Transportadora");
				utils.addTextTags("[name='attributes+1']", "Origem");
				elementClick("[name='buttonApply']");
				utils.addTextTags("[name='Transportadora-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", transportadora);
				utils.addTextTags("[name='Origem-br.com.neolog.service.crud.filter.FilterOperation.EQUAL']", origem);
				elementClick("[name='submitButton']");
				elementClick("[name='removeButton']");
				elementClick("[name='nlgGenericParamDataSaveButton']");
				elementClick("[name='buttonOk']");
				return elementClick("[name='buttonCancel']");
			}
		})
	},

	alteraTipoPedidoPadrao: function () {
		navigate.acessoTela("[name='menu-userMenu.setting']", "[name='subMenu-userMenu.orderSysParams']");
		elementClick("[name='orderSysParams.orderType'] [name='nlgTagInputRemoveTag']");
		elementClick("[name='orderSysParams.orderType'] [name='tagInputShowValues']");
		element(by.xpath("//*[@name='orderSysParams.orderType']/*[@name='tagInputTextField']")).sendKeys(protractor.Key.ENTER);
		utils.elementClickXpath("//*[@name='buttonSave']");
		return utils.elementClickXpath("//*[@name='buttonOk']");
	},

	//GERA AGENDA DE PEDIDO NA CESTA DO USUARIO
	gerarAgenda: function (code, origin, destination) {
		navigate.to("Programação", "Análise");
		//filtro cesta geral
		var basket1 = "//*[@selection='selection.availableDeliveryUnits']";
		filter.configuraFiltroCestaGeral(basket1);
		utils.fillTextxpath(basket1 + " //*[@name='tagInputTextField']", code);
		utils.elementClickXpath(basket1 + " //*[@name='submitButton']");
		//seleciono pedido
		var el = "[selection='selection.availableDeliveryUnits'] [data-presentation-id='" + code + "']"
		utils.elementClick(el + " [name='nlgAnalysisTreeCheckBox']");
		utils.elementClickXpath("//*[text()='Mover pedidos para minha cesta']");
		//filtro cesta do usuario
		var basket2 = "//*[@selection='selection.deliveryUnits']";
		filter.configuraFiltroCestaUsuario(basket2);
		utils.fillTextxpath(basket2 + " //*[@name='tagInputTextField']", code);
		utils.elementClickXpath(basket2 + " //*[@name='submitButton']");
		//seleciono pedido
		var el = "[selection='selection.deliveryUnits'] [data-presentation-id='" + code + "']"
		utils.elementClick(el + " [name='nlgAnalysisTreeCheckBox']");
		//clico em agendar
		utils.elementClick("[name='scheduleDropdown']");
		utils.elementClick("[name='scheduleCreation']");
		//seleciono destino
		utils.fillTextxpath("//*[@name='destinations']/*[@name='tagInputTextField']", destination);
		// seleciono todas uts
		utils.elementClick("[name='selectAll']");
		// clico em sugerir agenda
		utils.elementClickXpath("//*[@name='suggestSchedule']");
		//seleciono o contexto otimização
		utils.clearTextFieldXpath("//*[@name='routingConfigInput']/*[@name='tagInputTextField']");
		utils.fillTextxpath("//*[@name='routingConfigInput']/*[@name='tagInputTextField']", "otimização");
		utils.elementClickXpath("//*[@name='buttonOk']");
		utils.elementClickXpath("//*[@name='buttonOk']");
		utils.elementClickXpath("//*[@name='buttonSave']");
		utils.clearTextFieldXpath("//*[@name='routingConfigInput']/*[@name='tagInputTextField']");
		utils.fillTextxpath("//*[@name='routingConfigInput']/*[@name='tagInputTextField']", "otimização");
		utils.elementClickXpath("//*[@name='buttonOk']");
		utils.elementClickXpath("//*[text()='Violações']/../../..//*[text()='Salvar']");
		utils.elementClickXpath("//*[@name='buttonOk']");
		//seleciono pedido
		var el = "[selection='selection.deliveryUnits'] [data-presentation-id='" + code + "']"
		utils.elementClick(el + " [name='nlgAnalysisTreeCheckBox']");
		//clico em agendar
		utils.elementClick("[name='scheduleDropdown']");
		utils.elementClick("[name='scheduleCreation']");
		//clico em Carregamento
		elementClickXpath("//*[01]/*[text()='Carregamento']/../..//*[@name='nlgScheduleLoading']");
		//seleciono origem
		utils.fillTextxpath("//*[@name='origins']/*[@name='tagInputTextField']", origin);
		// seleciono todas uts
		utils.elementClick("[name='selectAll']");
		// clico em sugerir agenda
		utils.elementClickXpath("//*[@name='suggestSchedule']");
		//seleciono o contexto otimização
		utils.clearTextFieldXpath("//*[@name='routingConfigInput']/*[@name='tagInputTextField']");
		utils.fillTextxpath("//*[@name='routingConfigInput']/*[@name='tagInputTextField']", "otimização");
		utils.elementClickXpath("//*[@name='buttonOk']");
		utils.elementClickXpath("//*[@name='buttonOk']");
		utils.elementClickXpath("//*[@name='buttonSave']");
		utils.clearTextFieldXpath("//*[@name='routingConfigInput']/*[@name='tagInputTextField']");
		utils.fillTextxpath("//*[@name='routingConfigInput']/*[@name='tagInputTextField']", "otimização");
		utils.elementClickXpath("//*[@name='buttonOk']");
		utils.elementClickXpath("//*[text()='Violações']/../../..//*[text()='Salvar']");
		return utils.elementClickXpath("//*[@name='buttonOk']");
	},

	gerarAgendaDescarregamento: function (code, destination) {
		navigate.to("Programação", "Análise");
		//filtro cesta geral
		var basket1 = "[selection='selection.availableDeliveryUnits']";
		filter.configuraFiltroCestaGeral(basket1);
		utils.fillText(basket1 + " [name='tagInputTextField']", code);
		utils.elementClick(basket1 + " [name='submitButton']");
		//seleciono pedido
		var el = "[selection='selection.availableDeliveryUnits'] [data-presentation-id='" + code + "']"
		utils.elementClick(el + " [name='nlgAnalysisTreeCheckBox']");
		utils.elementClick("[name='moveToUserBasketButton']");
		//filtro cesta do usuario
		var basket2 = "[selection='selection.deliveryUnits']";
		filter.configuraFiltroCestaUsuario(basket2);
		utils.fillText(basket2 + " [name='tagInputTextField']", code);
		utils.elementClick(basket2 + " [name='submitButton']");
		//seleciono pedido
		var el = "[selection='selection.deliveryUnits'] [data-presentation-id='" + code + "']"
		utils.elementClick(el + " [name='nlgAnalysisTreeCheckBox']");
		//clico em agendar
		utils.elementClick("[name='scheduleDropdown']");
		utils.elementClick("[name='scheduleCreation']");
		//seleciono destino
		utils.addTextTags("[name='destinations']", destination);
		// seleciono todas uts
		utils.elementClick("[name='selectAll']");
		// clico em sugerir agenda
		utils.elementClick("[name='suggestSchedule']");
		//seleciono o contexto otimização: Sugerir Agenda
		utils.clearTextField("[name='routingConfigInput'] [name='tagInputTextField']");
		utils.addTextTags("[name='routingConfigInput']", "Sugerir Agenda");
		utils.elementClick("[name='buttonOk']");
		utils.elementClick("[name='buttonOk']");
		utils.elementClick("[name='buttonSave']");
		utils.clearTextField("[name='routingConfigInput'] [name='tagInputTextField']");
		utils.addTextTags("[name='routingConfigInput']", "Sugerir Agenda");
		utils.elementClick("[name='buttonOk']");
		utils.elementClick("[name='messagesModal'] [name='buttonSave']");
		return utils.elementClick("[name='buttonOk']");
	},

	gerarAgendaDescarregamentoComContexto: function (code, destination, context) {
		//clico em agendar
		utils.elementClick("[name='scheduleDropdown']");
		utils.elementClick("[name='scheduleCreation']");
		//seleciono destino
		utils.addTextTags("[name='destinations']", destination);
		// seleciono todas uts
		utils.elementClick("[name='selectAll']");
		// clico em sugerir agenda
		utils.elementClick("[name='suggestSchedule']");
		//seleciono o contexto otimização
		utils.clearTextField("[name='routingConfigInput'] [name='tagInputTextField']");
		utils.addTextTags("[name='routingConfigInput']", context);
		utils.elementClick("[name='buttonOk']");
		utils.elementClick("[name='buttonOk']");
		utils.elementClick("[name='suggestNextPossibleSchedule']");
		utils.clearTextField("[name='routingConfigInput'] [name='tagInputTextField']");
		utils.addTextTags("[name='routingConfigInput']", context);
		utils.elementClick("[name='buttonOk']");
		utils.elementClick("[name='buttonOk']");
		utils.elementClick("[name='buttonSave']");
		utils.elementClick("[name='buttonOk']");
		utils.elementClick("[name='messagesModal'] [name='buttonSave']");
		return utils.elementClick("[name='buttonOk']");
	},

	cancelarAgendaDescarregamento: function (code) {
		var userBasket = "[selection='selection.deliveryUnits']",
			el = userBasket + " [data-presentation-id='" + code + "']";
		selectOrderOrTrip(el);
		elementClick("[name='scheduleDropdown']");
		elementClick("[name='deleteScheduleDus']");
		element(by.css("[name='routingSelectionDialog']")).isPresent().then(function (isPresent) {
			if (isPresent === true) {
				elementClick("[name='routingSelectionDialog'] [name='buttonOk']");
			}
		});
		return elementClick("[name='buttonSave']");
	},

	cadastroParametroUnitPeso: function (string1, string2, string3, string4, string5, string6) {
		navigate.to("Administração", "Parâmetros");
		filterBySourceIdAndGetCount("TripClassByMaxWeightUtilization");
		elementClick("[name='editButton']");
		elementClick("[name='genericParamDefinitionEditData']");
		elementClick("[name='addButton']");
		elementClick("[name='addButton']");
		elementClick("[name='addButton']");
		//Agrupador de Zona de Transporte de Origem
		utils.fillTextxpath("//*[@name='-1']/*[@name='Agrupador de zona de transporte']/*/*/*[@name='tagInputTextField']", "AgrupadorPRxBrasil");
		utils.fillTextxpath("//*[@name='-2']/*[@name='Agrupador de zona de transporte']/*/*/*[@name='tagInputTextField']", "AgrupadorPRxBrasil");
		utils.fillTextxpath("//*[@name='-3']/*[@name='Agrupador de zona de transporte']/*/*/*[@name='tagInputTextField']", "AgrupadorPRxBrasil");
		//Zona de Transporte de Origem
		utils.fillTextxpath("//*[@name='-1']/*[@name='Zona de Transporte de Origem']/*/*/*[@name='tagInputTextField']", "Brasil_sem_PR");
		utils.fillTextxpath("//*[@name='-2']/*[@name='Zona de Transporte de Origem']/*/*/*[@name='tagInputTextField']", "Brasil_sem_PR");
		utils.fillTextxpath("//*[@name='-3']/*[@name='Zona de Transporte de Origem']/*/*/*[@name='tagInputTextField']", "Brasil_sem_PR");
		//Zona de Transporte de destino
		utils.fillTextxpath("//*[@name='-1']/*[@name='Zona de Transporte de destino']/*/*/*[@name='tagInputTextField']", "Brasil_sem_PR");
		utils.fillTextxpath("//*[@name='-2']/*[@name='Zona de Transporte de destino']/*/*/*[@name='tagInputTextField']", "Brasil_sem_PR");
		utils.fillTextxpath("//*[@name='-3']/*[@name='Zona de Transporte de destino']/*/*/*[@name='tagInputTextField']", "Brasil_sem_PR");
		//Máxima utilização em peso
		utils.fillNumberXpath("//*[@name='-1']/*[@name='Máxima utilização em peso']/*/*/*[@name='nlgNumberInput']", string1);
		utils.fillNumberXpath("//*[@name='-2']/*[@name='Máxima utilização em peso']/*/*/*[@name='nlgNumberInput']", string3);
		utils.fillNumberXpath("//*[@name='-3']/*[@name='Máxima utilização em peso']/*/*/*[@name='nlgNumberInput']", string5);
		//Classificação de viagem
		utils.fillTextxpath("//*[@name='-1']/*[@name='Classificação de viagem']/*/*/*[@name='tagInputTextField']", string2);
		utils.fillTextxpath("//*[@name='-2']/*[@name='Classificação de viagem']/*/*/*[@name='tagInputTextField']", string4);
		utils.fillTextxpath("//*[@name='-3']/*[@name='Classificação de viagem']/*/*/*[@name='tagInputTextField']", string6);
		utils.elementClick("[name='nlgGenericParamDataSaveButton']");
		utils.elementClick("[name='buttonOk']");
		return utils.elementClickXpath("//*[@name='buttonCancel']");
	},

	excluoCadastroParametroUnitPeso: function () {
		navigate.to("Administração", "Parâmetros");
		filterBySourceIdAndGetCount("TripClassByMaxWeightUtilization");
		elementClick("[name='editButton']");
		elementClick("[name='genericParamDefinitionEditData']");
		utils.elementClickXpath("//*[@name='submitButton']");
		utils.elementClickXpath("//*[@name='removeButton']");
		utils.elementClickXpath("//*[@name='removeButton']");
		utils.elementClickXpath("//*[@name='removeButton']");
		utils.elementClick("[name='nlgGenericParamDataSaveButton']");
		utils.elementClick("[name='buttonOk']");
		return utils.elementClickXpath("//*[@name='buttonCancel']");
	},

	gerarAgendaCarregamento: function (code, origin) {
		navigate.to("Programação", "Análise");
		//filtro cesta geral
		var basket1 = "[selection='selection.availableDeliveryUnits']";
		filter.configuraFiltroCestaGeral(basket1);
		utils.fillText(basket1 + " [name='tagInputTextField']", code);
		utils.elementClick(basket1 + " [name='submitButton']");
		//seleciono pedido
		var el = "[selection='selection.availableDeliveryUnits'] [data-presentation-id='" + code + "']"
		utils.elementClick(el + " [name='nlgAnalysisTreeCheckBox']");
		utils.elementClick("[name='moveToUserBasketButton']");
		//filtro cesta do usuario
		var basket2 = "[selection='selection.deliveryUnits']";
		filter.configuraFiltroCestaUsuario(basket2);
		utils.fillText(basket2 + " [name='tagInputTextField']", code);
		utils.elementClick(basket2 + " [name='submitButton']");
		//seleciono pedido
		var el = "[selection='selection.deliveryUnits'] [data-presentation-id='" + code + "']"
		utils.elementClick(el + " [name='nlgAnalysisTreeCheckBox']");
		//clico em agendar
		utils.elementClick("[name='scheduleDropdown']");
		utils.elementClick("[name='scheduleCreation']");
		//clico em Carregamento
		elementClickXpath("//*[01]/*[text()='Carregamento']/../..//*[@name='nlgScheduleLoading']");
		//seleciono origem
		utils.addTextTags("[name='origins']", origin);
		// seleciono todas uts
		utils.elementClick("[name='selectAll']");
		// clico em sugerir agenda
		utils.elementClick("[name='suggestSchedule']");
		//seleciono o contexto otimização: Sugerir Agenda
		utils.clearTextField("[name='routingConfigInput'] [name='tagInputTextField']");
		utils.addTextTags("[name='routingConfigInput']", "Sugerir Agenda");
		utils.elementClick("[name='buttonOk']");
		utils.elementClick("[name='buttonOk']");
		utils.elementClick("[name='buttonSave']");
		utils.clearTextField("[name='routingConfigInput'] [name='tagInputTextField']");
		utils.addTextTags("[name='routingConfigInput']", "Sugerir Agenda");
		utils.elementClick("[name='buttonOk']");
		utils.elementClick("[name='messagesModal'] [name='buttonSave']");
		return utils.elementClick("[name='buttonOk']");
	},

	//Liberar acesso a todas as telas do sistema
	liberaAcessoATodasAsTelas: function () {
		navigate.to("Administração", "Permissões CPL");
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount("Administrador");
		return countBeforeInsertionPromise.then(function (regCount) {
			var menuAdministracao = "manager",
				menuCadastro = "cadastre",
				menuConfiguracao = "setting",
				menuInterface = "interface",
				menuKPI = "kpi",
				menuMonitoramento = "monitoring",
				menuPC = "partner.collaboration",
				menuPersonalizacao = "customize",
				menuProgramacao = "programming",
				menuRelatorios = "report",
				menuShowroom = "showroom";
			if (regCount === 1) {
				elementClick("[name='editButton']");
				exports.assertMenuIsEnabled(menuAdministracao);
				exports.assertMenuIsEnabled(menuCadastro);
				exports.assertMenuIsEnabled(menuConfiguracao);
				exports.assertMenuIsEnabled(menuInterface);
				exports.assertMenuIsEnabled(menuKPI);
				exports.assertMenuIsEnabled(menuMonitoramento);
				exports.assertMenuIsEnabled(menuPC);
				exports.assertMenuIsEnabled(menuPersonalizacao);
				exports.assertMenuIsEnabled(menuProgramacao);
				exports.assertMenuIsEnabled(menuRelatorios);
				exports.assertMenuIsEnabled(menuShowroom);
			}
			elementClick("[name='buttonSubmit']");
			return element(by.css("[name='entity.validator.successMessage']")).isPresent().then(function (isPresent) {
				if (isPresent === true) {
					messages.validaMensagem("A entidade foi salva com sucesso.", self);
				} else {
					element(by.css("[name='entity.validator.noModification']")).isPresent().then(function (isPresent) {
						if (isPresent === true) {
							messages.validaMensagem("Nenhuma propriedade da entidade foi alterada.", self);
						}
					});
				}
				elementClick("[name='buttonOk']");
			});
		});
	},

	//Liberar todas as tarefas de geolocalização
	liberaTodasAsTarefasDeGeolocalizacao: function () {
		navigate.to("Configuração", "Base de dados geográfica");
		elementClick("[name='moveAllToRight']");
		elementClick("[name='buttonSave']");
		return elementClick("[name='buttonOk']");
	},

	//Cadastra usuário
	cadastraUsuario: function (usuario) {
		navigate.to("Administração", "Cadastros gerais");
		var countBeforeInsertionPromise = webFilterByEmailAndGetCount(usuario);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='createButton']");
				fillText("[name='user.email']", usuario);
				if (process.env.CLIENT_NAME === "mcb") {
					utils.addTextTags("[name='userProfile']", "root");
				} else {
					utils.addTextTags("[name='userProfile']", "Administrador");	
				}
				fillText("[name='passwordFields.password']", "neolog");
				fillText("[name='passwordFields.confirmation']", "neolog");
				elementClick("[name='buttonSave']");
				messages.validaMensagem("A entidade foi salva com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	//Exclui usuário
	excluiUsuario: function (usuario) {
		navigate.to("Administração", "Cadastros gerais");
		var countBeforeInsertionPromise = webFilterByEmailAndGetCount(usuario);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 1) {
				elementClick("[name='deleteButton']");
				messages.validaMensagem("Tem certeza que deseja excluir esta entidade?", self);
				elementClick("[name='buttonOk']");
				messages.validaMensagem("Entidade removida com sucesso.", self);
				return elementClick("[name='buttonOk']");
			}
		});
	},

	//Cadastra Justificativa
	cadastraJustificativa: function (justificativa, categoria) {
		navigate.acessoTela("[name='menu-userMenu.setting']", "[name='subMenu-userMenu.tripJustification']");
		elementClick("[class='justificationContainer justificationContainerHeader'] [name='buttonAdd']");
		fillBasicInfo(justificativa, justificativa, justificativa);
		comboSearchAndSelect("[name='operationCategory']", categoria, categoria);
		elementClick("[name='buttonOk']");
		return element(by.css("[name='entity.validator.EntityAlreadyExists']")).isPresent().then(function (isPresent) {
			if (isPresent === true) {
				utils.elementClick("[name='buttonOk']");
			}
		});
	},

	//Excluir Justificativa
	excluiJustificativa: function (justificativa) {
		navigate.acessoTela("[name='menu-userMenu.setting']", "[name='subMenu-userMenu.tripJustification']");
		return elementClick("[name='" + justificativa + "'] [name='buttonRemove']");
	},

	removeConfiguracaoDeEntidadePadrao: function (entidade) {
		navigate.to("Administração", "Entidades padrão");
		comboSearchAndSelect("[name='entityTemplatePossibilities']", entidade, entidade);
		elementClick("[name='0'] [name='remove']");
		elementClick("[name='buttonSave']");
		return elementClick("[name='buttonOk']")
	},

	exclusaoDeDependencia: function (menu, submenu, codigo) {
		navigate.to(menu, submenu);
		var countBeforeInsertionPromise = filterBySourceIdAndGetCount(codigo);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 1) {
				return filter.excluirPosFiltro(codigo);
			}
		});
	},

	exclusaoDeDependenciaCO: function (menu, submenu, codigo) {
		navigate.to(menu, submenu);
		var countBeforeInsertionPromise = filterBySourceIdCOAndGetCount(codigo);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 1) {
				return filter.excluirPosFiltro(codigo);
			}
		});
	},

	exclusaoDeDependenciaIdentificador: function (menu, submenu, identificador) {
		navigate.to(menu, submenu);
		var countBeforeInsertionPromise = filterByIdentifierAndGetCount(identificador);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 1) {
				return filter.excluirPosFiltro(identificador);
			}
		});
	},

	exclusaoDeDependenciaNome: function (menu, submenu, nome) {
		navigate.to(menu, submenu);
		var countBeforeInsertionPromise = filterByNameAndGetCount(nome);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 1) {
				return filter.excluirPosFiltro(nome);
			}
		});
	},

	exclusaoDeDependenciaNúmeroDoDispositivo: function (menu, submenu, númeroDoDispositivo) {
		navigate.to(menu, submenu);
		var countBeforeInsertionPromise = filterBydeviceNumberAndGetCount(númeroDoDispositivo);
		return countBeforeInsertionPromise.then(function (regCount) {
			if (regCount === 1) {
				return filter.excluirPosFiltro(númeroDoDispositivo);
			}
		});
	},

	atualizaScriptDefaultOptimizationScript: function () {
		navigate.to("Administração", "Scripts");
		const sourceId = "DefaultOptimizationScript";
		var countBeforeEditionPromise = filterBySourceIdAndGetCount(sourceId);
		return countBeforeEditionPromise.then(function (regCount) {
			if (regCount === 1) {
				const validScriptContent = exports.upgradeScritDefaultOptimizationScript();
				elementClick("[name='editButton']");
				updateScriptContent(validScriptContent);
				elementClick("[name='buttonSubmit']");
				return elementClick("[name='buttonOk']");
			}
		});
	},

	atualizaContextoDeOtimizacaoDefault: function () {
		// if (process.env.CLIENT_NAME === 'automtest') {
		navigate.to("Administração", "Otimização");
		const sourceId = "DEF";
		var countBeforeEditionPromise = filterBySourceIdAndGetCount(sourceId);
		return countBeforeEditionPromise.then(function (regCount) {
			if (regCount === 1) {
				elementClick("[name='editButton']");
				elementClick("[name='routingConfigs.contexts']");
				addTextTags("[name='routingConfig.contexts.unitizerConfig']", "DEF");
				elementClick("[name='buttonSubmit']");
				return elementClick("[name='buttonOk']");
			}
		});
	}
};
// };

/**
* Garante que menu será habilitado
**/
exports.assertMenuIsEnabled = function (menu) {
	element(by.css("[name='group." + menu + ".read']")).isSelected().then(function (isChecked) {
		if (isChecked) {
			elementMultiClick("[name='group." + menu + ".read']", 2);
		} else {
			elementClick("[name='group." + menu + ".read']");
		}
	});
	element(by.css("[name='group." + menu + ".write']")).isSelected().then(function (isChecked) {
		if (isChecked) {
			elementMultiClick("[name='group." + menu + ".write']", 2);
		} else {
			elementClick("[name='group." + menu + ".write']");
		}
	});
};

/**
* Cria perfil dependência 1
**/
//FIXME Resolver conflito na criação via Json
exports.createDependenceProfile1 = function () {
	navigate.byName("menu-userMenu.administration", "subMenu-userMenu.userManagementProfile");
	var countBeforeInsertionPromise = webFilterBySourceIdAndGetCount("CD-PRF-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='createButton']");
			fillText("[name='profile.sourceId']", "CD-PRF-DEP01");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
	navigate.byName("menu-userMenu.administration", "subMenu-userMenu.profiles");
	var countBeforeEditionPromise = filterBySourceIdAndGetCount("CD-PRF-DEP01");
	countBeforeEditionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-PRF-DEP01'] [name='editButton']");
			elementClick("[name='group.operation.write']");
		}
	});
};

/**
 * Cria perfil dependência 2
 **/
exports.createDependenceProfile2 = function () {
	navigate.byName("menu-userMenu.administration", "subMenu-userMenu.userManagementProfile");
	var countBeforeInsertionPromise = webFilterBySourceIdAndGetCount("CD-PRF-DEP02");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='createButton']");
			fillText("[name='profile.sourceId']", "CD-PRF-DEP02");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
	navigate.byName("menu-userMenu.administration", "subMenu-userMenu.profiles");
	var countBeforeEditionPromise = filterBySourceIdAndGetCount("CD-PRF-DEP02");
	countBeforeEditionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-PRF-DEP02'] [name='editButton']");
			elementClick("[name='group.operation.write']");
		}
	});
};

// Dependencias inseridas via Json corretamente
exports.createDependenceScript = function () {
	var countBeforeInsertionPromise = filterByTypeAndGetCount("Otimização - Roteador de servidores de roteirização");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
			var countBeforeInsertionPromise1 = filterBySourceIdAndGetCount("CD-SCP-DEP01");
			countBeforeInsertionPromise1.then(function (regCount) {
				if (regCount === 0) {
					elementClick("[name='cadastreButton']");
					fillText("[name='code']", "CD-SCP-DEP01");
					fillText("[name='name']", "CD-SCP-DEP01");
					fillText("[name='description']", "CD-SCP-DEP01");
					comboSearchAndSelect("[name='scriptType']", "Otimização - Roteador de servidores de roteirização", "Otimização - Roteador de servidores de roteirização");
					var validScriptContent = "package br.com.neolog.system.routing;import br.com.neolog.containerloading.AbstractContainerLoadingProblem;import br.com.neolog.facade.ConfigParamsFacadeForUpdate;import br.com.neolog.model.parameters.config.ConfigParams;import br.com.neolog.model.parameters.config.RemoteServicesConfigParams;import br.com.neolog.model.script.StandardScriptType;import br.com.neolog.routing.manual.ManualRoutingEngineParameters;import br.com.neolog.routing.remote.ManualRoutingParameter;import java.util.Collection;import javax.annotation.Resource;import org.apache.logging.log4j.LogManager;import org.apache.logging.log4j.Logger;import org.springframework.stereotype.Component;@Component public final class DefaultRoutingServerRouter implements RoutingServerRouter{private static final Logger logger=LogManager.getLogger( DefaultRoutingServerRouter.class ); public static final int MAX_REMOTE_CONFIG=1; @Resource private ConfigParamsFacadeForUpdate configParamsFacadeForUpdate; @Override public RemoteServicesConfigParams route( final Integer jobId ){logger.info( \"Routing job{}\", jobId ); return defaultRoute();}@Override public RemoteServicesConfigParams route( final Collection<AbstractContainerLoadingProblem> problems ){logger.info( \"Routing{}container loading problems\", problems.size() ); return defaultRoute();}@Override public RemoteServicesConfigParams route( final ManualRoutingParameter parameter, final ManualRoutingEngineParameters engineParameters ){logger.info( \"Routing{}DUs,{}operations and{}trips to routing server\", parameter.getDus().size(), parameter.getOperations().size(), parameter.getTrips().size() ); return defaultRoute();}private RemoteServicesConfigParams defaultRoute(){logger.info( \"Routing request to default server\" ); return configParamsFacadeForUpdate.getDefaultRemoteServicesConfig();}}";
					updateScriptContent(validScriptContent);
					elementClick("[name='buttonSubmit']");
					modalMessage("Sucesso", "A entidade foi salva com sucesso.");
				}
			});
		} else {
			var countBeforeInsertionPromise2 = filterBySourceIdAndGetCount("CD-SCP-DEP01");
			countBeforeInsertionPromise2.then(function (regCount) {
				if (regCount === 0) {
					elementClick("[name='cadastreButton']");
					fillText("[name='code']", "CD-SCP-DEP01");
					fillText("[name='name']", "CD-SCP-DEP01");
					fillText("[name='description']", "CD-SCP-DEP01");
					comboSearchAndSelect("[name='scriptType']", "Otimização - Roteador de servidores de roteirização", "Otimização - Roteador de servidores de roteirização");
					var validScriptContent = "package br.com.neolog.system.routing;import br.com.neolog.containerloading.AbstractContainerLoadingProblem;import br.com.neolog.facade.ConfigParamsFacadeForUpdate;import br.com.neolog.model.parameters.config.ConfigParams;import br.com.neolog.model.parameters.config.RemoteServicesConfigParams;import br.com.neolog.model.script.StandardScriptType;import br.com.neolog.routing.manual.ManualRoutingEngineParameters;import br.com.neolog.routing.remote.ManualRoutingParameter;import java.util.Collection;import javax.annotation.Resource;import org.apache.logging.log4j.LogManager;import org.apache.logging.log4j.Logger;import org.springframework.stereotype.Component;@Component public final class DefaultRoutingServerRouter implements RoutingServerRouter{private static final Logger logger=LogManager.getLogger( DefaultRoutingServerRouter.class ); public static final int MAX_REMOTE_CONFIG=1; @Resource private ConfigParamsFacadeForUpdate configParamsFacadeForUpdate; @Override public RemoteServicesConfigParams route( final Integer jobId ){logger.info( \"Routing job{}\", jobId ); return defaultRoute();}@Override public RemoteServicesConfigParams route( final Collection<AbstractContainerLoadingProblem> problems ){logger.info( \"Routing{}container loading problems\", problems.size() ); return defaultRoute();}@Override public RemoteServicesConfigParams route( final ManualRoutingParameter parameter, final ManualRoutingEngineParameters engineParameters ){logger.info( \"Routing{}DUs,{}operations and{}trips to routing server\", parameter.getDus().size(), parameter.getOperations().size(), parameter.getTrips().size() ); return defaultRoute();}private RemoteServicesConfigParams defaultRoute(){logger.info( \"Routing request to default server\" ); return configParamsFacadeForUpdate.getDefaultRemoteServicesConfig();}}";
					updateScriptContent(validScriptContent);
					elementClick("[name='buttonSubmit']");
					modalMessage("Sucesso", "A entidade foi salva com sucesso.");
				}
			});
		}
	});
};

exports.deleteDependenceScript = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-SCP-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-SCP-DEP01'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* 
* Cria usuário dependência 1
*
**/
exports.createDependenceUser1 = function () {
	var createDependenceProfile1 = require("./dependencies").createDependenceProfile1;
	createDependenceProfile1();
	navigate.byName("menu-userMenu.administration", "subMenu-userMenu.userManagementUser");
	var countBeforeInsertionPromise = webFilterByEmailAndGetCount("CD-USR-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='createButton']");
			fillText("[name='user.email']", "CD-USR-DEP01");
			comboSearchAndSelect("[name='userProfile']", "CD-PRF", "CD-PRF-DEP01");
			fillText("input[name='passwordFields.password']", "neolog");
			fillText("input[name='passwordFields.confirmation']", "neolog");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		} else {
			throw new Error("Erro! Nenhum usuário era esperado, mas foram encontrados " + regCount);
		}
	});
};

/**
* 
* Exclui usuário dependência 1
* 
**/
exports.deleteDependenceUser1 = function () {
	navigate.byName("menu-userMenu.administration", "subMenu-userMenu.userManagementUser");
	var countBeforeInsertionPromise = webFilterByEmailAndGetCount("CD-USR-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-USR-DEP01'] [name='deleteButton']");
			confirmModalMessage("Deseja prosseguir?", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* 
* Cria embarcador dependência 1
* 
**/
exports.createDependenceShipper1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-EMB-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-EMB-DEP01");
			fillText("[name='name']", "CD-EMB-DEP01");
			fillText("[name='description']", "CD-EMB-DEP01");
			comboSearchAndSelect("[name='logisticGroupGrouper']", "CD-AZT-DEP01", "NM-AZT-DEP01 - CD-AZT-DEP01");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

exports.deleteDependenceShipper1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-EMB-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-EMB-DEP01'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* 
* Cria embarcador dependência 2
* 
**/
exports.createDependenceShipper2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-EMB-DEP02");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-EMB-DEP02");
			fillText("[name='name']", "CD-EMB-DEP02");
			fillText("[name='description']", "CD-EMB-DEP02");
			comboSearchAndSelect("[name='logisticGroupGrouper']", "distribuicao", "distribuicao_1411");
			/*
			comboSearchAndSelect("[name='serviceTypeCalculatorConfig']", "Calculador", "Calculador_GAB");
			elementClick("[name='freight'] a");
			comboSearchAndSelect("[name='freightTripCalculatorConfig']", "Viagem", "Viagem");
			*/
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* 
* Cria embarcador dependência 3
* 
**/
exports.createDependenceShipper3 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-EMB-DEP03");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			basicEntityInfo.fillBasicEntityInfo("CD-EMB-DEP03", "CD-EMB-DEP03", "CD-EMB-DEP03");
			comboSearchAndSelect("[name='logisticGroupGrouper']", "Cidades", "Cidades");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* 
* Exclui embarcador dependência 3
* 
**/
exports.deleteDependenceShipper3 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-EMB-DEP03");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-EMB-DEP03'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* 
* Cria invólucro dependência 1
* 
**/
exports.createDependenceWrapper1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-INV-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-INV-DEP01");
			fillText("[name='name']", "CD-INV-DEP01");
			fillText("[name='description']", "CD-INV-DEP01");
			comboSearchAndSelect("[name='shipmentUnitWrapperCategory']", "Gran", "Granel Unit");
			comboSearchAndSelect("[name='shipmentUnitPolicies.weightPolicyType']", "Prod", "Produto");
			comboSearchAndSelect("[name='shipmentUnitPolicies.valuePolicyType']", "Prod", "Produto");
			comboSearchAndSelect("[name='shipmentUnitPolicies.externalShipmentUnitDimensionPolicyType']", "Prod", "Produto");
			comboSearchAndSelect("[name='shipmentUnitPolicies.allowedOrientationsPolicyType']", "Produto", "Produto ou categoria de produto");
			comboSearchAndSelect("[name='shipmentUnitPolicies.maxWeightByAllowedOrientationPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro (peso)");
			comboSearchAndSelect("[name='shipmentUnitPolicies.fragileOrientationsPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			comboSearchAndSelect("[name='shipmentUnitPolicies.maxPiledByAllowedOrientationPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			comboSearchAndSelect("[name='shipmentUnitPolicies.allowedPiledPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			comboSearchAndSelect("[name='shipmentUnitPolicies.loadDirectionShipmentUnitPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			comboSearchAndSelect("[name='shipmentUnitPolicies.specialPriorityShipmentUnitPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			comboSearchAndSelect("[name='shipmentUnitPolicies.minPercentageSupportObjectPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro ou contexto de arranjo");
			comboSearchAndSelect("[name='shipmentUnitPolicies.embeddingInfoShipmentUnitPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			comboSearchAndSelect("[name='shipmentUnitPolicies.untiePacksShipmentUnitPolicyType']", "Dest", "Destino");
			comboSearchAndSelect("[name='fractionProperties.fractionationPolicy']", "Mesmo", "Mesmo invólucro do item de pedido");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* 
* Exclui invólucro dependência 1
* 
**/
exports.deleteDependenceWrapper1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-INV-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-INV-DEP01'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* 
* Cria invólucro composto dependência 1
* 
**/
exports.createDependenceCompositeWrapper1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-INVC-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-INVC-DEP01");
			fillText("[name='name']", "CD-INVC-DEP01");
			fillText("[name='description']", "CD-INVC-DEP01");
			fillNumber("[name='value']", "100000,000");
			comboSearchAndSelect("[name='shipmentUnitWrapperCategory']", "Palete", "Palete");
			elementClick("[name='composite']");
			comboSearchAndSelect("[name='shipmentUnitPolicies.weightPolicyType']", "Invólucro", "Invólucro + Itens internos");
			comboSearchAndSelect("[name='shipmentUnitPolicies.valuePolicyType']", "Invólucro + Itens internos", "Invólucro + Itens internos");
			comboSearchAndSelect("[name='shipmentUnitPolicies.externalShipmentUnitDimensionPolicyType']", "Dimensões", "Dimensões do melhor arranjo");
			comboSearchAndSelect("[name='shipmentUnitPolicies.allowedOrientationsPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			comboSearchAndSelect("[name='shipmentUnitPolicies.maxWeightByAllowedOrientationPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro (peso)");
			comboSearchAndSelect("[name='shipmentUnitPolicies.fragileOrientationsPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			comboSearchAndSelect("[name='shipmentUnitPolicies.maxPiledByAllowedOrientationPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			comboSearchAndSelect("[name='shipmentUnitPolicies.allowedPiledPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			comboSearchAndSelect("[name='shipmentUnitPolicies.loadDirectionShipmentUnitPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			comboSearchAndSelect("[name='shipmentUnitPolicies.specialPriorityShipmentUnitPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			comboSearchAndSelect("[name='shipmentUnitPolicies.minPercentageSupportObjectPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro ou contexto de arranjo");
			comboSearchAndSelect("[name='shipmentUnitPolicies.embeddingInfoShipmentUnitPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			elementClick("[name='useSupportDimensions']");
			fillNumber("[name='height']", "0,10");
			fillNumber("[name='width']", "1,20");
			fillNumber("[name='length']", "1,00");
			fillNumber("[name='maxInternalHeight']", "2,00");
			fillNumber("[name='maxInternalWidth']", "1,20");
			fillNumber("[name='maxInternalLength']", "1,00");
			comboSearchAndSelect("[name='shipmentUnitPolicies.untiePacksShipmentUnitPolicyType']", "Dest", "Destino");
			comboSearchAndSelect("[name='fractionProperties.fractionationPolicy']", "Mesmo", "Mesmo invólucro do item de pedido");
			comboSearchAndSelect("[name='allowedOrientations.origin']", "CD-LOC-ORI-DEP01", "CD-LOC-ORI-DEP01");
			elementClick("[name='allowedOrientations.hwl']");
			elementClick("[name='allowedOrientations.lhw']");
			elementClick("[name='allowedOrientations.whl']");
			elementClick("[name='allowedOrientations.hlw']");
			scroll.toTop();
			elementClick("[name='internalRestrictions'] a");
			fillNumber("[name='maxWeight']", "10000");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* 
* Exclui invólucro composto dependência 1
* 
**/
exports.deleteDependenceCompositeWrapper1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-INVC-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-INVC-DEP01'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* 
* Cria invólucro dependência 2
* Obtém peso, valor, dimensões e orientações pelo item de pedido
* 
**/
exports.createDependenceWrapper2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-INV-DEP02");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-INV-DEP02");
			fillText("[name='name']", "CD-INV-DEP02");
			fillText("[name='description']", "CD-INV-DEP02");
			comboSearchAndSelect("[name='shipmentUnitWrapperCategory']", "Gran", "Granel Unit");
			comboSearchAndSelect("[name='shipmentUnitPolicies.weightPolicyType']", "Item", "Item de pedido");
			comboSearchAndSelect("[name='shipmentUnitPolicies.valuePolicyType']", "Item", "Item de pedido");
			comboSearchAndSelect("[name='shipmentUnitPolicies.externalShipmentUnitDimensionPolicyType']", "Item", "Item de pedido");
			comboSearchAndSelect("[name='shipmentUnitPolicies.allowedOrientationsPolicyType']", "Item", "Item de pedido");
			comboSearchAndSelect("[name='shipmentUnitPolicies.maxWeightByAllowedOrientationPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro (peso)");
			comboSearchAndSelect("[name='shipmentUnitPolicies.fragileOrientationsPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			comboSearchAndSelect("[name='shipmentUnitPolicies.maxPiledByAllowedOrientationPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			comboSearchAndSelect("[name='shipmentUnitPolicies.allowedPiledPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			comboSearchAndSelect("[name='shipmentUnitPolicies.loadDirectionShipmentUnitPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			comboSearchAndSelect("[name='shipmentUnitPolicies.specialPriorityShipmentUnitPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			comboSearchAndSelect("[name='shipmentUnitPolicies.minPercentageSupportObjectPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro ou contexto de arranjo");
			comboSearchAndSelect("[name='shipmentUnitPolicies.embeddingInfoShipmentUnitPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			comboSearchAndSelect("[name='shipmentUnitPolicies.untiePacksShipmentUnitPolicyType']", "Dest", "Destino");
			comboSearchAndSelect("[name='fractionProperties.fractionationPolicy']", "Mesmo", "Mesmo invólucro do item de pedido");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* 
* Exclui invólucro dependência 2
* 
**/
exports.deleteDependenceWrapper2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-INV-DEP02");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-INV-DEP02'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* 
* Cria invólucro dependência 3
* 
**/
exports.createDependenceWrapper3 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-INV-DEP03");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-INV-DEP03");
			fillText("[name='name']", "CD-INV-DEP03");
			fillText("[name='description']", "CD-INV-DEP03");
			comboSearchAndSelect("[name='shipmentUnitWrapperCategory']", "Gran", "Granel Unit");
			comboSearchAndSelect("[name='shipmentUnitPolicies.weightPolicyType']", "Prod", "Produto");
			comboSearchAndSelect("[name='shipmentUnitPolicies.valuePolicyType']", "Prod", "Produto");
			comboSearchAndSelect("[name='shipmentUnitPolicies.externalShipmentUnitDimensionPolicyType']", "Prod", "Produto");
			comboSearchAndSelect("[name='shipmentUnitPolicies.allowedOrientationsPolicyType']", "Produto", "Produto ou categoria de produto");
			comboSearchAndSelect("[name='shipmentUnitPolicies.maxWeightByAllowedOrientationPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro (peso)");
			comboSearchAndSelect("[name='shipmentUnitPolicies.fragileOrientationsPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			comboSearchAndSelect("[name='shipmentUnitPolicies.maxPiledByAllowedOrientationPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			comboSearchAndSelect("[name='shipmentUnitPolicies.allowedPiledPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			comboSearchAndSelect("[name='shipmentUnitPolicies.loadDirectionShipmentUnitPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			comboSearchAndSelect("[name='shipmentUnitPolicies.specialPriorityShipmentUnitPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			comboSearchAndSelect("[name='shipmentUnitPolicies.minPercentageSupportObjectPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro ou contexto de arranjo");
			comboSearchAndSelect("[name='shipmentUnitPolicies.embeddingInfoShipmentUnitPolicyType']", "Invólucro", "Invólucro ou categoria de invólucro");
			comboSearchAndSelect("[name='shipmentUnitPolicies.untiePacksShipmentUnitPolicyType']", "Dest", "Destino");
			comboSearchAndSelect("[name='fractionProperties.fractionationPolicy']", "Mesmo", "Mesmo invólucro do item de pedido");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* 
* Exclui invólucro dependência 3
* 
**/
exports.deleteDependenceWrapper3 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-INV-DEP03");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-INV-DEP03'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* 
* Cria localidade dependência (destino)
* 
**/
exports.createDependenceLocalityDest1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-LOC-DEST-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-LOC-DEST-DEP01");
			fillText("[name='name']", "CD-LOC-DEST-DEP01");
			fillText("[name='description']", "CD-LOC-DEST-DEP01");
			comboSearchAndSelect("[name='logisticRole']", "Dest", "Destino");
			comboSearchAndSelect("[name='localityRestriction']", "DEF", "DEFAULT");
			comboSearchAndSelect("[name='address.country']", "Brasil", "Brasil");
			comboSearchAndSelect("[name='address.state']", "São Paulo", "São Paulo (BR)");
			comboSearchAndSelect("[name='address.city']", "São Paulo", "São Paulo (SP)");
			fillText("[name='address.street']", "Av. Engenheiro Luís Carlos Berrini");
			fillText("[name='address.number']", "1681");
			fillText("[name='address.complement']", "Conj. 82");
			fillText("[name='address.zipCode.value']", "04571-011");
			fillText("[name='address.district']", "Cidade Monções");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

exports.createDependenceLocalityDest2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-LOC-DEST-DEP02");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-LOC-DEST-DEP02");
			fillText("[name='name']", "CD-LOC-DEST-DEP02");
			fillText("[name='description']", "CD-LOC-DEST-DEP02");
			comboSearchAndSelect("[name='logisticRole']", "Dest", "Destino");
			comboSearchAndSelect("[name='localityRestriction']", "DEF", "DEFAULT");
			comboSearchAndSelect("[name='address.country']", "Brasil", "Brasil");
			comboSearchAndSelect("[name='address.state']", "São Paulo", "São Paulo (BR)");
			comboSearchAndSelect("[name='address.city']", "São Paulo", "São Paulo (SP)");
			fillText("[name='address.street']", "Av. Engenheiro Luís Carlos Berrini");
			fillText("[name='address.number']", "1681");
			fillText("[name='address.complement']", "Conj. 82");
			fillText("[name='address.zipCode.value']", "04571-011");
			fillText("[name='address.district']", "Cidade Monções");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* 
* Cria localidade dependência (destino)
* 
**/
exports.createDependenceLocalityDest3 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-LOC-DEST-DEP03");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			basicEntityInfo.fillBasicEntityInfo("CD-LOC-DEST-DEP03", "CD-LOC-DEST-DEP03", "CD-LOC-DEST-DEP03");

			comboSearchAndSelect("[name='logisticRole']", "Dest", "Destino");
			comboSearchAndSelect("[ng-model='entity.localityRestriction']", "DEF", "DEFAULT");
			comboSearchAndSelect("[name='address.country']", "Brasil", "Brasil");
			comboSearchAndSelect("[name='address.state']", "São Paulo", "São Paulo (BR)");
			comboSearchAndSelect("[name='address.city']", "São Paulo", "São Paulo (SP)");
			fillText("[name='address.street']", "Av. Engenheiro Luís Carlos Berrini");
			fillText("[name='address.number']", "1681");
			fillText("[name='address.complement']", "Conj. 82");
			fillText("[name='address.zipCode.value']", "04571-011");
			fillText("[name='address.district']", "Cidade Monções");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* 
* Cria localidade dependência (origem)
* 
**/
exports.createDependenceLocalityOri1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-LOC-ORI-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-LOC-ORI-DEP01");
			fillText("[name='name']", "CD-LOC-ORI-DEP01");
			fillText("[name='description']", "CD-LOC-ORI-DEP01");
			comboSearchAndSelect("[name='logisticRole']", "Ori", "Origem");
			comboSearchAndSelect("[name='localityRestriction']", "DEF", "DEFAULT");
			comboSearchAndSelect("[name='address.country']", "Brasil", "Brasil");
			comboSearchAndSelect("[name='address.state']", "São Paulo", "São Paulo (BR)");
			comboSearchAndSelect("[name='address.city']", "São Paulo", "São Paulo (SP)");
			fillText("[name='address.street']", "Av. Engenheiro Luís Carlos Berrini");
			fillText("[name='address.number']", "1681");
			fillText("[name='address.complement']", "Conj. 82");
			fillText("[name='address.zipCode.value']", "04571-011");
			fillText("[name='address.district']", "Cidade Monções");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

exports.createDependenceLocalityOri2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-LOC-ORI-DEP02");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-LOC-ORI-DEP02");
			fillText("[name='name']", "CD-LOC-ORI-DEP02");
			fillText("[name='description']", "CD-LOC-ORI-DEP02");
			comboSearchAndSelect("[name='logisticRole']", "Ori", "Origem");
			comboSearchAndSelect("[name='localityRestriction']", "DEF", "DEFAULT");
			comboSearchAndSelect("[name='address.country']", "Brasil", "Brasil");
			comboSearchAndSelect("[name='address.state']", "São P", "São Paulo (BR)");
			comboSearchAndSelect("[name='address.city']", "São P", "São Paulo (SP)");
			fillText("[name='address.street']", "Av. Engenheiro Luís Carlos Berrini");
			fillText("[name='address.number']", "1681");
			fillText("[name='address.complement']", "Conj. 82");
			fillText("[name='address.zipCode.value']", "04571-011");
			fillText("[name='address.district']", "Cidade Monções");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

exports.createDependenceLocalityOri3 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-LOC-ORI-DEP03");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-LOC-ORI-DEP03");
			fillText("[name='name']", "CD-LOC-ORI-DEP03");
			fillText("[name='description']", "CD-LOC-ORI-DEP03");
			comboSearchAndSelect("[name='logisticRole']", "Ori", "Origem");
			comboSearchAndSelect("[name='localityRestriction']", "DEF", "DEFAULT");
			comboSearchAndSelect("[name='address.country']", "Brasil", "Brasil");
			comboSearchAndSelect("[name='address.state']", "São P", "São Paulo (BR)");
			comboSearchAndSelect("[name='address.city']", "São P", "São Paulo (SP)");
			fillText("[name='address.street']", "Av. Engenheiro Luís Carlos Berrini");
			fillText("[name='address.number']", "1681");
			fillText("[name='address.complement']", "Conj. 82");
			fillText("[name='address.zipCode.value']", "04571-011");
			fillText("[name='address.district']", "Cidade Monções");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* 
* Cria localidade dependência (hub de destino)
* 
**/
exports.createDependenceLocalityDH1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-LOC-DH-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-LOC-DH-DEP01");
			fillText("[name='name']", "CD-LOC-DH-DEP01");
			fillText("[name='description']", "CD-LOC-DH-DEP01");
			comboSearchAndSelect("[name='logisticRole']", "Dest", "Destino");
			elementClick("[name='localityDestinationHub']");
			comboSearchAndSelect("[name='localityRestriction']", "DEF", "DEFAULT");
			comboSearchAndSelect("[name='address.country']", "Brasil", "Brasil");
			comboSearchAndSelect("[name='address.state']", "São P", "São Paulo (BR)");
			comboSearchAndSelect("[name='address.city']", "São P", "São Paulo (SP)");
			fillText("[name='address.street']", "Av. Engenheiro Luís Carlos Berrini");
			fillText("[name='address.number']", "1681");
			fillText("[name='address.complement']", "Conj. 82");
			fillText("[name='address.zipCode.value']", "04571-011");
			fillText("[name='address.district']", "Cidade Monções");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

exports.createDependenceLocalityDH2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-LOC-DH-DEP02");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-LOC-DH-DEP02");
			fillText("[name='name']", "CD-LOC-DH-DEP02");
			fillText("[name='description']", "CD-LOC-DH-DEP02");
			comboSearchAndSelect("[name='logisticRole']", "Dest", "Destino");
			elementClick("[name='localityDestinationHub']");
			comboSearchAndSelect("[name='localityRestriction']", "DEF", "DEFAULT");
			comboSearchAndSelect("[name='address.country']", "Brasil", "Brasil");
			comboSearchAndSelect("[name='address.state']", "São P", "São Paulo (BR)");
			comboSearchAndSelect("[name='address.city']", "São P", "São Paulo (SP)");
			fillText("[name='address.street']", "Av. Engenheiro Luís Carlos Berrini");
			fillText("[name='address.number']", "1681");
			fillText("[name='address.complement']", "Conj. 82");
			fillText("[name='address.zipCode.value']", "04571-011");
			fillText("[name='address.district']", "Cidade Monções");
			elementClick("[name='validateAddress']");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* 
* Cria localidade dependência (hub de passagem)
* 
**/
exports.createDependenceLocalityPH1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-LOC-PH-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-LOC-PH-DEP01");
			fillText("[name='name']", "CD-LOC-PH-DEP01");
			fillText("[name='description']", "CD-LOC-PH-DEP01");
			comboSearchAndSelect("[name='logisticRole']", "Ambos", "Ambos");
			elementClick("[name='localityPassingHub']");
			comboSearchAndSelect("[name='localityRestriction']", "DEF", "DEFAULT");
			comboSearchAndSelect("[name='address.country']", "Brasil", "Brasil");
			comboSearchAndSelect("[name='address.state']", "São P", "São Paulo (BR)");
			comboSearchAndSelect("[name='address.city']", "São P", "São Paulo (SP)");
			fillText("[name='address.street']", "Av. Engenheiro Luís Carlos Berrini");
			fillText("[name='address.number']", "1681");
			fillText("[name='address.complement']", "Conj. 82");
			fillText("[name='address.zipCode.value']", "04571-011");
			fillText("[name='address.district']", "Cidade Monções");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

exports.createDependenceLocalityPH2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-LOC-PH-DEP02");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-LOC-PH-DEP02");
			fillText("[name='name']", "CD-LOC-PH-DEP02");
			fillText("[name='description']", "CD-LOC-PH-DEP02");
			comboSearchAndSelect("[name='logisticRole']", "Ambos", "Ambos");
			elementClick("[name='localityPassingHub']");
			comboSearchAndSelect("[name='localityRestriction']", "DEF", "DEFAULT");
			comboSearchAndSelect("[name='address.country']", "Brasil", "Brasil");
			comboSearchAndSelect("[name='address.state']", "São P", "São Paulo (BR)");
			comboSearchAndSelect("[name='address.city']", "São P", "São Paulo (SP)");
			fillText("[name='address.street']", "Av. Engenheiro Luís Carlos Berrini");
			fillText("[name='address.number']", "1681");
			fillText("[name='address.complement']", "Conj. 82");
			fillText("[name='address.zipCode.value']", "04571-011");
			fillText("[name='address.district']", "Cidade Monções");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

exports.deleteDependenceLocalityDest3 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-LOC-DEST-DEP03");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-LOC-DEST-DEP03'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* 
* Exclui localidade dependência (origem)
* 
**/
exports.deleteDependenceLocalityOri1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-LOC-ORI-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-LOC-ORI-DEP01'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

exports.deleteDependenceLocalityOri2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-LOC-ORI-DEP02");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-LOC-ORI-DEP02'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

exports.deleteDependenceLocalityOri3 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-LOC-ORI-DEP03");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-LOC-ORI-DEP03'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* Cria produto dependência 1
**/
exports.createDependenceProduct1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-PRD-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-PRD-DEP01");
			fillText("[name='name']", "CD-PRD-DEP01");
			fillText("[name='description']", "CD-PRD-DEP01");
			comboSearchAndSelect("[name='category']", "CD-CATPROD-DEP01", "CD-CATPROD-DEP01");
			comboSearchAndSelect("[name='shipper']", "CD-EMB", "CD-EMB-DEP01");
			fillText("[name='value'] input", "1");
			fillText("[name='length'] input", "0,200");
			fillText("[name='width'] input", "0,360");
			fillText("[name='height'] input", "0,1400");
			fillText("[name='weight'] input", "23,000");
			elementClick("[name='entity.embeddingAllowed']");
			elementClick("[ng-model='entity.embeddingInfo.embeddable']");
			elementClick("[ng-model='entity.embeddingInfo.embedder']");
			comboSearchAndSelect("[name='embeddingInfo.orientation']", "Altura", "Altura");
			fillText("[name='embeddingInfo.offset'] input", "0,005");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* Exclui produto dependência 1
**/
exports.deleteDependenceProduct1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-PRD-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-PRD-DEP01'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* Cria produto dependência 2
**/
exports.createDependenceProduct2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-PRD-DEP02");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-PRD-DEP02");
			fillText("[name='name']", "CD-PRD-DEP02");
			fillText("[name='description']", "CD-PRD-DEP02");
			comboSearchAndSelect("[name='category']", "CD-CATPROD-DEP01", "CD-CATPROD-DEP01");
			comboSearchAndSelect("[name='shipper']", "CD-EMB", "CD-EMB-DEP01");
			fillText("[name='value'] input", "0,1");
			fillText("[name='length'] input", "0,1");
			fillText("[name='width'] input", "0,1");
			fillText("[name='height'] input", "0,1");
			fillText("[name='weight'] input", "0,1");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* 
* Exclui produto dependência 2
* 
**/
exports.deleteDependenceProduct2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-PRD-DEP02");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-PRD-DEP02'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* Cria produto dependência 3 - com orientações
* OBS: necessário ter cadastrado a localidade dependência ORIGEM 1
**/
exports.createDependenceProduct3 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-PRD-DEP03");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-PRD-DEP03");
			fillText("[name='name']", "CD-PRD-DEP03");
			fillText("[name='description']", "CD-PRD-DEP03");
			comboSearchAndSelect("[name='category']", "TARUGO", "TARUGO-1411");
			comboSearchAndSelect("[name='shipper']", "CD-EMB", "CD-EMB-DEP01");
			fillText("[name='value'] input", "0,1");
			fillText("[name='length'] input", "10,000");
			fillText("[name='width'] input", "0,120");
			fillText("[name='height'] input", "0,120");
			fillText("[name='weight'] input", "1000,000");
			elementClick("[name='entity.orientationAllowed']");
			comboSearchAndSelect("[name='allowedOrientations.origin']", "CD-LOC-ORI", "CD-LOC-ORI-DEP01");
			assertSelectedCheckbox("[name='allowedOrientations.lwh']");
			assertSelectedCheckbox("[name='allowedOrientations.wlh']");
			assertSelectedCheckbox("[name='allowedOrientations.hwl']");
			assertSelectedCheckbox("[name='allowedOrientations.lhw']");
			assertSelectedCheckbox("[name='allowedOrientations.whl']");
			assertSelectedCheckbox("[name='allowedOrientations.hlw']");
			fillText("[name='allowedOrientations.maxPressure.lwh'] input", "150");
			fillText("[name='allowedOrientations.maxPressure.wlh'] input", "150");
			fillText("[name='allowedOrientations.maxPressure.hwl'] input", "150");
			fillText("[name='allowedOrientations.maxPressure.lhw'] input", "150");
			fillText("[name='allowedOrientations.maxPressure.whl'] input", "150");
			fillText("[name='allowedOrientations.maxPressure.hlw'] input", "150");
			fillText("[name='allowedOrientations.maxPressureByStackSize.lwh'] input", "5");
			fillText("[name='allowedOrientations.maxPressureByStackSize.wlh'] input", "5");
			fillText("[name='allowedOrientations.maxPressureByStackSize.hwl'] input", "5");
			fillText("[name='allowedOrientations.maxPressureByStackSize.lhw'] input", "5");
			fillText("[name='allowedOrientations.maxPressureByStackSize.whl'] input", "5");
			fillText("[name='allowedOrientations.maxPressureByStackSize.hlw'] input", "5");
			fillText("[name='allowedOrientations.maxSelfPile.lwh'] input", "4");
			fillText("[name='allowedOrientations.maxSelfPile.wlh'] input", "4");
			fillText("[name='allowedOrientations.maxSelfPile.hwl'] input", "4");
			fillText("[name='allowedOrientations.maxSelfPile.lhw'] input", "4");
			fillText("[name='allowedOrientations.maxSelfPile.whl'] input", "4");
			fillText("[name='allowedOrientations.maxSelfPile.hlw'] input", "4");
			elementClick("[name='entity.fragilityAllowed']");
			elementClick("[name='fragileOrientations.lwh']");
			elementClick("[name='fragileOrientations.wlh']");
			elementClick("[name='fragileOrientations.hwl']");
			elementClick("[name='fragileOrientations.lhw']");
			elementClick("[name='fragileOrientations.whl']");
			elementClick("[name='fragileOrientations.hlw']");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* 
* Cria produto dependência 4 - com orientações
* OBS: necessário ter cadastrado a localidade dependência ORIGEM 1
**/
exports.createDependenceProduct4 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-PRD-DEP04");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-PRD-DEP04");
			fillText("[name='name']", "CD-PRD-DEP04");
			fillText("[name='description']", "CD-PRD-DEP04");
			comboSearchAndSelect("[name='category']", "TARUGO", "TARUGO-1411");
			comboSearchAndSelect("[name='shipper']", "CD-EMB", "CD-EMB-DEP01");
			fillText("[name='value'] input", "0,1");
			fillText("[name='length'] input", "10,000");
			fillText("[name='width'] input", "0,120");
			fillText("[name='height'] input", "0,120");
			fillText("[name='weight'] input", "1000,000");
			elementClick("[name='entity.orientationAllowed']");
			comboSearchAndSelect("[name='allowedOrientations.origin']", "CD-LOC-ORI", "CD-LOC-ORI-DEP01");
			assertSelectedCheckbox("[name='allowedOrientations.lwh']");
			assertSelectedCheckbox("[name='allowedOrientations.wlh']");
			assertSelectedCheckbox("[name='allowedOrientations.hwl']");
			assertSelectedCheckbox("[name='allowedOrientations.lhw']");
			assertSelectedCheckbox("[name='allowedOrientations.whl']");
			assertSelectedCheckbox("[name='allowedOrientations.hlw']");
			fillText("[name='allowedOrientations.maxPressure.lwh'] input", "150");
			fillText("[name='allowedOrientations.maxPressure.wlh'] input", "150");
			fillText("[name='allowedOrientations.maxPressure.hwl'] input", "150");
			fillText("[name='allowedOrientations.maxPressure.lhw'] input", "150");
			fillText("[name='allowedOrientations.maxPressure.whl'] input", "150");
			fillText("[name='allowedOrientations.maxPressure.hlw'] input", "150");
			fillText("[name='allowedOrientations.maxPressureByStackSize.lwh'] input", "5");
			fillText("[name='allowedOrientations.maxPressureByStackSize.wlh'] input", "5");
			fillText("[name='allowedOrientations.maxPressureByStackSize.hwl'] input", "5");
			fillText("[name='allowedOrientations.maxPressureByStackSize.lhw'] input", "5");
			fillText("[name='allowedOrientations.maxPressureByStackSize.whl'] input", "5");
			fillText("[name='allowedOrientations.maxPressureByStackSize.hlw'] input", "5");
			fillText("[name='allowedOrientations.maxSelfPile.lwh'] input", "4");
			fillText("[name='allowedOrientations.maxSelfPile.wlh'] input", "4");
			fillText("[name='allowedOrientations.maxSelfPile.hwl'] input", "4");
			fillText("[name='allowedOrientations.maxSelfPile.lhw'] input", "4");
			fillText("[name='allowedOrientations.maxSelfPile.whl'] input", "4");
			fillText("[name='allowedOrientations.maxSelfPile.hlw'] input", "4");
			elementClick("[name='entity.fragilityAllowed']");
			elementClick("[name='fragileOrientations.lwh']");
			elementClick("[name='fragileOrientations.wlh']");
			elementClick("[name='fragileOrientations.hwl']");
			elementClick("[name='fragileOrientations.lhw']");
			elementClick("[name='fragileOrientations.whl']");
			elementClick("[name='fragileOrientations.hlw']");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* 
* Cria produto dependência 5
* 
**/
exports.createDependenceProduct5 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-PRD-DEP05");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-PRD-DEP05");
			fillText("[name='name']", "CD-PRD-DEP05");
			fillText("[name='description']", "CD-PRD-DEP05");
			comboSearchAndSelect("[name='category']", "TARUGO", "TARUGO-1411");
			comboSearchAndSelect("[name='shipper']", "CD-EMB", "CD-EMB-DEP01");
			fillText("[name='value'] input", "0,1");
			fillText("[name='length'] input", "0,1");
			fillText("[name='width'] input", "0,1");
			fillText("[name='height'] input", "0,1");
			fillText("[name='weight'] input", "0,1");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* Exclui produto dependência 5
**/
exports.deleteDependenceProduct5 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-PRD-DEP05");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-PRD-DEP05'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* Cria produto dependência 6 - com orientações
* OBS: necessário ter a localidade 1400-1400 e embarcador de dependência 03
**/
exports.createDependenceProduct6 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-PRD-DEP06");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-PRD-DEP06");
			fillText("[name='name']", "CD-PRD-DEP06");
			fillText("[name='description']", "CD-PRD-DEP06");
			comboSearchAndSelect("[name='category']", "SCR-Prego", "SCR-Prego e Grampo");
			comboSearchAndSelect("[name='shipper']", "CD-EMB", "CD-EMB-DEP03");
			fillText("[name='value'] input", "0,1");
			fillText("[name='length'] input", "10,000");
			fillText("[name='width'] input", "0,120");
			fillText("[name='height'] input", "0,120");
			fillText("[name='weight'] input", "1000,000");
			elementClick("[name='entity.orientationAllowed']");
			comboSearchAndSelect("[name='allowedOrientations.origin']", "1400", "Localidade_SCR - 1400-1400");
			assertSelectedCheckbox("[name='allowedOrientations.lwh']");
			assertSelectedCheckbox("[name='allowedOrientations.wlh']");
			assertSelectedCheckbox("[name='allowedOrientations.hwl']");
			assertSelectedCheckbox("[name='allowedOrientations.lhw']");
			assertSelectedCheckbox("[name='allowedOrientations.whl']");
			assertSelectedCheckbox("[name='allowedOrientations.hlw']");
			fillText("[name='allowedOrientations.maxPressure.lwh'] input", "150");
			fillText("[name='allowedOrientations.maxPressure.wlh'] input", "150");
			fillText("[name='allowedOrientations.maxPressure.hwl'] input", "150");
			fillText("[name='allowedOrientations.maxPressure.lhw'] input", "150");
			fillText("[name='allowedOrientations.maxPressure.whl'] input", "150");
			fillText("[name='allowedOrientations.maxPressure.hlw'] input", "150");
			fillText("[name='allowedOrientations.maxPressureByStackSize.lwh'] input", "5");
			fillText("[name='allowedOrientations.maxPressureByStackSize.wlh'] input", "5");
			fillText("[name='allowedOrientations.maxPressureByStackSize.hwl'] input", "5");
			fillText("[name='allowedOrientations.maxPressureByStackSize.lhw'] input", "5");
			fillText("[name='allowedOrientations.maxPressureByStackSize.whl'] input", "5");
			fillText("[name='allowedOrientations.maxPressureByStackSize.hlw'] input", "5");
			fillText("[name='allowedOrientations.maxSelfPile.lwh'] input", "4");
			fillText("[name='allowedOrientations.maxSelfPile.wlh'] input", "4");
			fillText("[name='allowedOrientations.maxSelfPile.hwl'] input", "4");
			fillText("[name='allowedOrientations.maxSelfPile.lhw'] input", "4");
			fillText("[name='allowedOrientations.maxSelfPile.whl'] input", "4");
			fillText("[name='allowedOrientations.maxSelfPile.hlw'] input", "4");
			elementClick("[name='entity.fragilityAllowed']");
			elementClick("[name='fragileOrientations.lwh']");
			elementClick("[name='fragileOrientations.wlh']");
			elementClick("[name='fragileOrientations.hwl']");
			elementClick("[name='fragileOrientations.lhw']");
			elementClick("[name='fragileOrientations.whl']");
			elementClick("[name='fragileOrientations.hlw']");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* Exclui produto dependência 6
**/
exports.deleteDependenceProduct6 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-PRD-DEP06");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-PRD-DEP06'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* Cria produto dependência 7 - cilindo
**/
exports.createDependenceProduct7 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-PRD-DEP07");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-PRD-DEP07");
			fillText("[name='name']", "CD-PRD-DEP07");
			fillText("[name='description']", "CD-PRD-DEP07");
			comboSearchAndSelect("[name='category']", "CD-CATPROD-DEP01", "CD-CATPROD-DEP01");
			comboSearchAndSelect("[name='shipper']", "CD-EMB", "CD-EMB-DEP01");
			comboSearchAndSelect("[name='shape']", "Cilindro", "Cilindro");
			fillText("[name='value'] input", "100");
			fillText("[name='length'] input", "1");
			fillText("[name='width'] input", "1");
			fillText("[name='weight'] input", "1");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* Exclui produto dependência 7 - cilindro
**/
exports.deleteDependenceProduct7 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-PRD-DEP07");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-PRD-DEP07'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* Cria produto dependência 8 - tubo
**/
exports.createDependenceProduct8 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-PRD-DEP08");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-PRD-DEP08");
			fillText("[name='name']", "CD-PRD-DEP08");
			fillText("[name='description']", "CD-PRD-DEP08");
			comboSearchAndSelect("[name='category']", "CD-CATPROD-DEP01", "CD-CATPROD-DEP01");
			comboSearchAndSelect("[name='shipper']", "CD-EMB", "CD-EMB-DEP01");
			comboSearchAndSelect("[name='shape']", "Tubo", "Tubo");
			fillText("[name='value'] input", "100");
			fillText("[name='length'] input", "1");
			fillText("[name='width'] input", "1");
			fillText("[name='height'] input", "0,8");
			fillText("[name='weight'] input", "1");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* Exclui produto dependência 8 - tubo
**/
exports.deleteDependenceProduct8 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-PRD-DEP08");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-PRD-DEP08'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};


/**
* Cria produto dependência 9 - cilindo (2)
**/
exports.createDependenceProduct9 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-PRD-DEP09");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-PRD-DEP09");
			fillText("[name='name']", "CD-PRD-DEP09");
			fillText("[name='description']", "CD-PRD-DEP09");
			comboSearchAndSelect("[name='category']", "CD-CATPROD-DEP01", "CD-CATPROD-DEP01");
			comboSearchAndSelect("[name='shipper']", "CD-EMB", "CD-EMB-DEP01");
			comboSearchAndSelect("[name='shape']", "Cilindro", "Cilindro");
			fillText("[name='value'] input", "110");
			fillText("[name='length'] input", "1,1");
			fillText("[name='width'] input", "1,1");
			fillText("[name='weight'] input", "1,1");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* Exclui produto dependência 9 - cilindro (2)
**/
exports.deleteDependenceProduct9 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-PRD-DEP09");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-PRD-DEP09'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* Cria produto dependência 10 - tubo (2)
**/
exports.createDependenceProduct10 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-PRD-DEP10");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-PRD-DEP10");
			fillText("[name='name']", "CD-PRD-DEP10");
			fillText("[name='description']", "CD-PRD-DEP10");
			comboSearchAndSelect("[name='category']", "CD-CATPROD-DEP01", "CD-CATPROD-DEP01");
			comboSearchAndSelect("[name='shipper']", "CD-EMB", "CD-EMB-DEP01");
			comboSearchAndSelect("[name='shape']", "Tubo", "Tubo");
			fillText("[name='value'] input", "110");
			fillText("[name='length'] input", "1,1");
			fillText("[name='width'] input", "1,1");
			fillText("[name='height'] input", "0,7");
			fillText("[name='weight'] input", "1,1");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* Exclui produto dependência 10 - tubo (2)
**/
exports.deleteDependenceProduct10 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-PRD-DEP10");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-PRD-DEP10'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
 * Cria GPS se necessário
 */
//FIXME Migrar para Json quando implementado
exports.createDependenceGPSDevice = function (gpsProvider, deviceName) {
	elementClick("[name='newPositioningDevice']");
	assertText("[name='provider'] span", gpsProvider);
	fillText("[name='name']", deviceName);
	elementClick("[name='newPositioningDeviceModal'] [name='modalFooter'] [name='buttonSave']");
	modalMessage("Sucesso", "A entidade foi salva com sucesso.");
};

/**
* Cria transportadora dependência GRD 1
**/
exports.createDependenceCarrierGRD1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-CAR-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-CAR-DEP01");
			fillText("[name='name']", "CD-CAR-DEP01");
			fillText("[name='description']", "CD-CAR-DEP01");
			fillText("[name='personInChargeName']", "Neolog");
			fillText("[name='personInChargeEmail']", "teste@neolog.com.br");
			fillText("[name='emailLoadOffering']", "carrier@neolog.com.br");
			comboSearchAndSelect("[name='serviceTypeCalculatorConfig']", "Calculad", "Calculador_GAB");
			elementClick("[name='entity.serviceLevelOn']");
			assertEnabled("[name='justification']");
			comboSearchAndSelect("[name='justification']", "Justificativa Padrão de Cancelam", "Justificativa Padrão de Cancelamento - 33");
			elementClick("[name='logisticRestrictions'] a");
			comboSearchAndSelect("[name='carrierZone']", "Cidades", "Cidades");
			comboSearchAndSelect("[name='logisticGroup']", "Cidades", "Cidades");
			elementClick("[name='functioning'] a");
			elementClick("[name='workingHoursAllowed'] [name='workingHoursAllowed']");
			assertUnselectedCheckbox("[name='workingHoursAllowed'] [name='workingHoursAllowed']");
			elementClick("[name='freight'] a");
			comboSearchAndSelect("[name='freightTripCalculatorConfig']", "Viagem", "Viagem");
			comboSearchAndSelect("[name='FULL_TRUCK_LOAD'] [name='freightCalculatorConfigs']", "Frete Viagem", "Frete Viagem GT");
			comboSearchAndSelect("[name='FOBT'] [name='freightCalculatorConfigs']", "FreteFobt", "FreteFobt");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
			waitLoadingService();
		}
	});
};

/**
* Exclui transportadora dependência GRD 1
**/
exports.deleteDependenceCarrierGRD1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-CAR-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-CAR-DEP01'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

//FIXME Criação de pedidos via jSon não implementada ainda
/**
 * Criar pedido - um item - invólucro obtém dimensões/valor/peso do produto.
 * Obs: É necessário ter criado a origem 4, destino 3, embarcador 3, produto 6 e invóluvro 3.
 * @param {string} orderSourceId: código a ser cadastrado no pedido.
 */
exports.createDependenceOrder = function (orderSourceId) {
	expect(orderSourceId).toBeTruthy();
	var countBeforeInsertionPromise = filterByOrderCodeAndGetCount(orderSourceId);
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", orderSourceId);
			comboSearchAndSelect("[name='shipper']", "CD-EMB", "CD-EMB-DEP03");
			fillNumber("[name='entity.priority']", "1");
			comboSearchAndSelect("[name='entity.incoterm']", "CIF", "CIF");
			comboSearchAndSelect("[name='entity.orderType']", "Remessa", "Remessa");
			fillText("[name='entity.reference']", "Referencia pedido");
			fillText("[name='entity.observations']", "Observacoes pedido");
			comboSearchAndSelect("[name='entity.destination']", "CD-LOC", "CD-LOC-DEST-DEP03");
			comboSearchAndSelect("[name='entity.passingHubUsageType']", "Inválido", "Inválido");
			assertDisabled("[name='entity.possiblePassingHubs'] input");
			comboSearchAndSelect("[name='entity.destinationHubUsageType']", "Inválido", "Inválido");
			assertDisabled("[name='entity.possibleDestinationHubs'] input");
			fillText("[name='entity.pickupStart'] [name='dateInput'] [ng-model='date']", "01/11/2015");
			fillNumber("[name='entity.pickupStart'] [name='timeInput'] [name='hour']", "00");
			fillNumber("[name='entity.pickupStart'] [name='timeInput'] [name='minute']", "00");
			fillText("[name='entity.pickupEnd'] [name='dateInput'] [ng-model='date']", "10/11/2015");
			fillNumber("[name='entity.pickupEnd'] [name='timeInput'] [name='hour']", "23");
			fillNumber("[name='entity.pickupEnd'] [name='timeInput'] [name='minute']", "59");
			fillText("[name='entity.deliveryStart'] [name='dateInput'] [ng-model='date']", "11/11/2015");
			fillNumber("[name='entity.deliveryStart'] [name='timeInput'] [name='hour']", "00");
			fillNumber("[name='entity.deliveryStart'] [name='timeInput'] [name='minute']", "00");
			fillText("[name='entity.deliveryEnd'] [name='dateInput'] [ng-model='date']", "30/11/2015");
			fillNumber("[name='entity.deliveryEnd'] [name='timeInput'] [name='hour']", "23");
			fillNumber("[name='entity.deliveryEnd'] [name='timeInput'] [name='minute']", "59");
			fillText("[name='entity.billingLimit'] [name='dateInput'] [ng-model='date']", "30/11/2015");
			fillNumber("[name='entity.billingLimit'] [name='timeInput'] [name='hour']", "23");
			fillNumber("[name='entity.billingLimit'] [name='timeInput'] [name='minute']", "59");
			elementClick("[name='orderItems'] a");
			elementClick("[name='orderItemTable'] [name='addOrderItemButton']");
			elementClick("[name='orderItemTable'] [name='0'] [name='editOrderItem']");
			fillText("[name='orderItemEditionModal'] [name='orderItem.sourceId']", orderSourceId + "_01");
			comboSearchAndSelect("[name='orderItem.origin']", "1400", "Localidade_SCR - 1400-1400");
			comboSearchAndSelect("[name='orderItem.product']", "CD-PRD", "CD-PRD-DEP06");
			comboSearchAndSelect("[name='orderItem.orderItemType']", "Critico", "Critico - CRITICO");
			fillText("[name='orderItemEditionModal'] [name='orderItem.reference']", "Referencia item");
			fillText("[name='orderItem.dsk']", "DSK");
			fillText("[name='orderItem.mit']", "MIT");
			fillText("[name='orderItem.proportionalityId']", "2");
			comboSearchAndSelect("[name='orderItem.shipmentUnitWrapper']", "CD-INV", "CD-INV-DEP03");
			assertDisabled("[name='orderItem.length']");
			assertDisabled("[name='orderItem.width']");
			assertDisabled("[name='orderItem.height']");
			assertDisabled("[name='orderItem.value']");
			assertDisabled("[name='orderItem.weight']");
			assertDisabled("[name='orderItem.hlwAllow']");
			assertDisabled("[name='orderItem.hwlAllow']");
			assertDisabled("[name='orderItem.lhwAllow']");
			assertDisabled("[name='orderItem.lwhAllow']");
			assertDisabled("[name='orderItem.whlAllow']");
			assertDisabled("[name='orderItem.wlhAllow']");
			fillNumber("[name='orderItem.quantity']", "10");
			fillNumber("[name='orderItem.quantityInShipmentUnits']", "10");
			elementClick("[name='buttonApply']");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
			navigate.to("Programação", "Pedido");
			var countAfterInsertionPromise = filterByOrderCodeAndGetCount(orderSourceId);
			countAfterInsertionPromise.then(function (regCount) {
				if (regCount === 1) {
					elementClick("[name='searchResultTable'] [name='" + orderSourceId + "'] [name='editButton']");
					assertTextFieldContent("[name='code']", orderSourceId);
					assertText("[name='shipper']", "CD-EMB-DEP03");
					assertNumberFieldContent("[name='entity.priority']", "1");
					assertText("[name='entity.incoterm']", "CIF");
					assertText("[name='entity.orderType']", "Remessa");
					assertText("[name='entity.integrationDataSource']", "REST");
					assertTextFieldContent("[name='entity.reference']", "Referencia pedido");
					assertTextFieldContent("[name='entity.observations']", "Observacoes pedido");
					assertText("[name='entity.destination']", "CD-LOC-DEST-DEP03");
					assertUnselectedCheckbox("[name='entity.deliveryExclusivity']");
					assertText("[name='entity.passingHubUsageType']", "Inválido");
					assertDisabled("[name='entity.possiblePassingHubs'] input");
					assertText("[name='entity.destinationHubUsageType']", "Inválido");
					assertDisabled("[name='entity.possibleDestinationHubs'] input");
					assertTextFieldContent("[name='entity.pickupStart'] [name='dateInput'] [ng-model='date']", "01/11/2015");
					assertNumberFieldContent("[name='entity.pickupStart'] [name='timeInput'] [name='hour']", "00");
					assertNumberFieldContent("[name='entity.pickupStart'] [name='timeInput'] [name='minute']", "00");
					assertTextFieldContent("[name='entity.pickupEnd'] [name='dateInput'] [ng-model='date']", "10/11/2015");
					assertNumberFieldContent("[name='entity.pickupEnd'] [name='timeInput'] [name='hour']", "23");
					assertNumberFieldContent("[name='entity.pickupEnd'] [name='timeInput'] [name='minute']", "59");
					assertTextFieldContent("[name='entity.deliveryStart'] [name='dateInput'] [ng-model='date']", "11/11/2015");
					assertNumberFieldContent("[name='entity.deliveryStart'] [name='timeInput'] [name='hour']", "00");
					assertNumberFieldContent("[name='entity.deliveryStart'] [name='timeInput'] [name='minute']", "00");
					assertTextFieldContent("[name='entity.deliveryEnd'] [name='dateInput'] [ng-model='date']", "30/11/2015");
					assertNumberFieldContent("[name='entity.deliveryEnd'] [name='timeInput'] [name='hour']", "23");
					assertNumberFieldContent("[name='entity.deliveryEnd'] [name='timeInput'] [name='minute']", "59");
					assertTextFieldContent("[name='entity.billingLimit'] [name='dateInput'] [ng-model='date']", "30/11/2015");
					assertNumberFieldContent("[name='entity.billingLimit'] [name='timeInput'] [name='hour']", "23");
					assertNumberFieldContent("[name='entity.billingLimit'] [name='timeInput'] [name='minute']", "59");
					elementClick("[name='orderItems'] a");
					elementClick("[name='orderItemTable'] [name='0'] [name='editOrderItem']");
					assertTextFieldContent("[name='orderItemEditionModal'] [name='orderItem.sourceId']", orderSourceId + "_01");
					assertText("[name='orderItem.origin']", "Localidade_SCR - 1400-1400");
					assertText("[name='orderItem.product']", "CD-PRD-DEP06");
					assertText("[name='orderItem.orderItemType']", "Critico - CRITICO");
					assertTextFieldContent("[name='orderItemEditionModal'] [name='orderItem.reference']", "Referencia item");
					assertTextFieldContent("[name='orderItem.dsk']", "DSK");
					assertTextFieldContent("[name='orderItem.mit']", "MIT");
					assertTextFieldContent("[name='orderItem.proportionalityId']", "2");
					assertText("[name='orderItem.shipmentUnitWrapper']", "CD-INV-DEP03");
					assertDisabled("[name='orderItem.length']");
					assertDisabled("[name='orderItem.width']");
					assertDisabled("[name='orderItem.height']");
					assertDisabled("[name='orderItem.value']");
					assertDisabled("[name='orderItem.weight']");
					assertDisabled("[name='orderItem.hlwAllow']");
					assertDisabled("[name='orderItem.hwlAllow']");

					assertDisabled("[name='orderItem.lhwAllow']");
					assertDisabled("[name='orderItem.lwhAllow']");
					assertDisabled("[name='orderItem.whlAllow']");
					assertDisabled("[name='orderItem.wlhAllow']");
					assertNumberFieldContent("[name='orderItem.quantity']", "10,00");
					assertNumberFieldContent("[name='orderItem.quantityInShipmentUnits']", "10,00");
					assertNumberFieldContent("[name='orderItem.quantityOfProductsInShipmentUnits']", "1");
					elementClick("[name='orderItemEditionModal'] [name='buttonClose']");
				} else {
					throw new Error("Erro! Um pedido era esperado, mas foram encontrados " + regCount);
				}
			});
		}
	});
};

/**
 * Deletar pedido.
 * @param {string} orderSourceId: código do pedido.
 */
exports.deleteDependenceOrder = function (orderSourceId) {
	expect(orderSourceId).toBeTruthy();
	var countBeforeDeletePromise = filterByOrderCodeAndGetCount(orderSourceId);
	countBeforeDeletePromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='" + orderSourceId + "'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
			elementClick("[name='resetButton']");
			navigate.to("Programação", "Pedido");
			var countAfterDeletePromise = filterByOrderCodeAndGetCount(orderSourceId);
			countAfterDeletePromise.then(function (regCount) {
				if (regCount !== 0) {
					throw new Error("Erro! Nenhum pedido era esperado, mas foram encontrados " + regCount);
				}
			});
		}
	});
};

/**
* Cria veículo dependência 1
**/
exports.createDependenceVehicle1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-VEH-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-VEH-DEP01");
			fillText("[name='name']", "CD-VEH-DEP01");
			fillText("[name='description']", "CD-VEH-DEP01");
			elementClick("[name='modals'] .nlgDualListLeft option[label='Rodoviário']");
			elementClick("[name='modals'] [name='moveToRight']");
			elementClick("[name='containers'] a");
			elementClick("[name='containersTable'] [name='add addbutton']");
			fillText("[name='containersTable'] [name='1'] [name='sourceId']", "CD-VEH-DEP01");
			fillNumber("[name='containersTable'] [name='1'] [name='width']", "2,40");
			fillNumber("[name='containersTable'] [name='1'] [name='length']", "12,20");
			fillNumber("[name='containersTable'] [name='1'] [name='height']", "3,00");
			//fillNumber("[name='containersTable'] [name='1'] [name='frontalSupportHeight']", "0,65");
			//fillNumber("[name='containersTable'] [name='1'] [name='rearSupportHeight']", "0,65");
			//fillNumber("[name='containersTable'] [name='1'] [name='sideSupportHeight']", "0,65");
			//fillNumber("[name='containersTable'] [name='1'] [name='neckLength']", "1,75");
			//fillNumber("[name='containersTable'] [name='1'] [name='neckHeight']", "0,85");
			fillNumber("[name='containersTable'] [name='1'] [name='lateralMaxWeightDifference']", "2000,00");
			fillNumber("[name='containersTable'] [name='1'] [name='lateralMaxWeightDifferenceTolerance']", "10,00");
			//fillNumber("[name='containersTable'] [name='1'] [name='minVolume']", "15,00");
			//fillNumber("[name='containersTable'] [name='1'] [name='maxVolume']", "105,00");
			fillNumber("[name='containersTable'] [name='1'] [name='maxWeight']", "50000,00");
			//fillNumber("[name='containersTable'] [name='1'] [name='maxEmbeddedHeight']", "2,00");				
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
			waitLoadingService();
		}
	});
};

/**
* Exclui veículo dependência 1
**/
exports.deleteDependenceVehicle1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-VEH-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-VEH-DEP01'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* Cria veículo dependência 2
**/
exports.createDependenceVehicle2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-VEH-DEP02");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-VEH-DEP02");
			fillText("[name='name']", "CD-VEH-DEP02");
			fillText("[name='description']", "CD-VEH-DEP02");
			elementClick("[name='modals'] .nlgDualListLeft option[label='Rodoviário']");
			elementClick("[name='modals'] [name='moveToRight']");
			elementClick("[name='containers'] a");
			elementClick("[name='containersTable'] [name='add addbutton']");
			fillText("[name='containersTable'] [name='1'] [name='sourceId']", "CD-VEH-DEP02");
			fillNumber("[name='containersTable'] [name='1'] [name='width']", "2,50");
			fillNumber("[name='containersTable'] [name='1'] [name='length']", "13,60");
			fillNumber("[name='containersTable'] [name='1'] [name='height']", "2,80");
			//fillNumber("[name='containersTable'] [name='1'] [name='frontalSupportHeight']", "2,60");
			//fillNumber("[name='containersTable'] [name='1'] [name='rearSupportHeight']", "2,60");
			//fillNumber("[name='containersTable'] [name='1'] [name='sideSupportHeight']", "2,60");
			fillNumber("[name='containersTable'] [name='1'] [name='neckLength']", "1,75");
			fillNumber("[name='containersTable'] [name='1'] [name='neckHeight']", "0,85");
			fillNumber("[name='containersTable'] [name='1'] [name='lateralMaxWeightDifference']", "500,00");
			fillNumber("[name='containersTable'] [name='1'] [name='lateralMaxWeightDifferenceTolerance']", "12,00");
			fillNumber("[name='containersTable'] [name='1'] [name='minVolume']", "15,00");
			fillNumber("[name='containersTable'] [name='1'] [name='maxVolume']", "105,00");
			fillNumber("[name='containersTable'] [name='1'] [name='maxWeight']", "16500,00");
			fillNumber("[name='containersTable'] [name='1'] [name='maxEmbeddedHeight']", "2,00");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
			waitLoadingService();
		}
	});
};

/**
* Exclui veículo dependência 2
**/
exports.deleteDependenceVehicle2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-VEH-DEP02");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-VEH-DEP02'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* Cria veículo dependência 3
**/
exports.createDependenceVehicle3 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-VEH-DEP03");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-VEH-DEP03");
			fillText("[name='name']", "CD-VEH-DEP03");
			fillText("[name='description']", "CD-VEH-DEP03");
			elementClick("[name='modals'] .nlgDualListLeft option[label='Rodoviário']");
			elementClick("[name='modals'] [name='moveToRight']");
			elementClick("[name='containers'] a");
			elementClick("[name='containersTable'] [name='add addbutton']");
			fillText("[name='containersTable'] [name='1'] [name='sourceId']", "CD-VEH-DEP03_1");
			fillNumber("[name='containersTable'] [name='1'] [name='width']", "2,50");
			fillNumber("[name='containersTable'] [name='1'] [name='length']", "13,60");
			fillNumber("[name='containersTable'] [name='1'] [name='height']", "2,80");
			fillNumber("[name='containersTable'] [name='1'] [name='frontalSupportHeight']", "2,60");
			fillNumber("[name='containersTable'] [name='1'] [name='rearSupportHeight']", "2,60");
			fillNumber("[name='containersTable'] [name='1'] [name='sideSupportHeight']", "2,60");
			fillNumber("[name='containersTable'] [name='1'] [name='lateralMaxWeightDifference']", "500,00");
			fillNumber("[name='containersTable'] [name='1'] [name='lateralMaxWeightDifferenceTolerance']", "12,00");
			fillNumber("[name='containersTable'] [name='1'] [name='minVolume']", "15,00");
			fillNumber("[name='containersTable'] [name='1'] [name='maxVolume']", "105,00");
			fillNumber("[name='containersTable'] [name='1'] [name='maxWeight']", "16500,00");
			fillNumber("[name='containersTable'] [name='1'] [name='maxEmbeddedHeight']", "2,00");
			elementClick("[name='containersTable'] [name='add addbutton']");
			fillText("[name='containersTable'] [name='2'] [name='sourceId']", "CD-VEH-DEP03_2");
			fillNumber("[name='containersTable'] [name='2'] [name='width']", "2,80");
			fillNumber("[name='containersTable'] [name='2'] [name='length']", "14,60");
			fillNumber("[name='containersTable'] [name='2'] [name='height']", "3,80");
			fillNumber("[name='containersTable'] [name='2'] [name='frontalSupportHeight']", "2,80");
			fillNumber("[name='containersTable'] [name='2'] [name='rearSupportHeight']", "2,80");
			fillNumber("[name='containersTable'] [name='2'] [name='sideSupportHeight']", "2,80");
			fillNumber("[name='containersTable'] [name='2'] [name='lateralMaxWeightDifference']", "500,00");
			fillNumber("[name='containersTable'] [name='2'] [name='lateralMaxWeightDifferenceTolerance']", "12,00");
			fillNumber("[name='containersTable'] [name='2'] [name='minVolume']", "16,00");
			fillNumber("[name='containersTable'] [name='2'] [name='maxVolume']", "110,00");
			fillNumber("[name='containersTable'] [name='2'] [name='maxWeight']", "18500,00");
			fillNumber("[name='containersTable'] [name='2'] [name='maxEmbeddedHeight']", "2,50");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
			waitLoadingService();
		}
	});
};

/**
* Exclui veículo dependência 3
**/
exports.deleteDependenceVehicle3 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-VEH-DEP03");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-VEH-DEP03'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* Cria veículo dependência GRD 1
**/
exports.createDependenceVehicleGRD1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-VEH-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-VEH-DEP01");
			fillText("[name='name']", "CD-VEH-DEP01");
			fillText("[name='description']", "CD-VEH-DEP01");
			elementClick("[name='modals'] .nlgDualListLeft option[label='Rodoviário']");
			elementClick("[name='modals'] [name='moveToRight']");
			elementClick("[name='containers'] a");
			elementClick("[name='containersTable'] [name='add addbutton']");
			fillText("[name='containersTable'] [name='1'] [name='sourceId']", "CD-VEH-DEP01");
			fillNumber("[name='containersTable'] [name='1'] [name='width']", "2,50");
			fillNumber("[name='containersTable'] [name='1'] [name='length']", "13,60");
			fillNumber("[name='containersTable'] [name='1'] [name='height']", "2,80");
			fillNumber("[name='containersTable'] [name='1'] [name='frontalSupportHeight']", "2,60");
			fillNumber("[name='containersTable'] [name='1'] [name='rearSupportHeight']", "2,60");
			fillNumber("[name='containersTable'] [name='1'] [name='sideSupportHeight']", "2,60");
			fillNumber("[name='containersTable'] [name='1'] [name='neckLength']", "1,75");
			fillNumber("[name='containersTable'] [name='1'] [name='neckHeight']", "0,85");
			fillNumber("[name='containersTable'] [name='1'] [name='lateralMaxWeightDifference']", "500,00");
			fillNumber("[name='containersTable'] [name='1'] [name='lateralMaxWeightDifferenceTolerance']", "12,00");
			fillNumber("[name='containersTable'] [name='1'] [name='minVolume']", "15,00");
			fillNumber("[name='containersTable'] [name='1'] [name='maxVolume']", "105,00");
			fillNumber("[name='containersTable'] [name='1'] [name='maxWeight']", "16500,00");
			fillNumber("[name='containersTable'] [name='1'] [name='maxEmbeddedHeight']", "2,00");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
			waitLoadingService();
		}
	});
};

/**
* Exclui veículo dependência GRD 1
**/
exports.deleteDependenceVehicleGRD1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-VEH-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-VEH-DEP01'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* Cria veículo dependência GRD 2
**/
exports.createDependenceVehicleGRD2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-VEH-DEP02");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-VEH-DEP02");
			fillText("[name='name']", "CD-VEH-DEP02");
			fillText("[name='description']", "CD-VEH-DEP02");
			elementClick("[name='modals'] .nlgDualListLeft option[label='Rodoviário']");
			elementClick("[name='modals'] [name='moveToRight']");
			elementClick("[name='containers'] a");
			elementClick("[name='containersTable'] [name='add addbutton']");
			fillText("[name='containersTable'] [name='1'] [name='sourceId']", "CD-VEH-DEP02");
			fillNumber("[name='containersTable'] [name='1'] [name='width']", "2,50");
			fillNumber("[name='containersTable'] [name='1'] [name='length']", "13,60");
			fillNumber("[name='containersTable'] [name='1'] [name='height']", "2,80");
			fillNumber("[name='containersTable'] [name='1'] [name='frontalSupportHeight']", "2,60");
			fillNumber("[name='containersTable'] [name='1'] [name='rearSupportHeight']", "2,60");
			fillNumber("[name='containersTable'] [name='1'] [name='sideSupportHeight']", "2,60");
			fillNumber("[name='containersTable'] [name='1'] [name='neckLength']", "1,75");
			fillNumber("[name='containersTable'] [name='1'] [name='neckHeight']", "0,85");
			fillNumber("[name='containersTable'] [name='1'] [name='lateralMaxWeightDifference']", "500,00");
			fillNumber("[name='containersTable'] [name='1'] [name='lateralMaxWeightDifferenceTolerance']", "12,00");
			fillNumber("[name='containersTable'] [name='1'] [name='minVolume']", "15,00");
			fillNumber("[name='containersTable'] [name='1'] [name='maxVolume']", "105,00");
			fillNumber("[name='containersTable'] [name='1'] [name='maxWeight']", "16500,00");
			fillNumber("[name='containersTable'] [name='1'] [name='maxEmbeddedHeight']", "2,00");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
			waitLoadingService();
		}
	});
};

/**
* Exclui veículo dependência GRD 2
**/
exports.deleteDependenceVehicleGRD2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-VEH-DEP02");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-VEH-DEP02'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* Cria veículo dependência GRD 3
**/
exports.createDependenceVehicleGRD3 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-VEH-DEP03");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-VEH-DEP03");
			fillText("[name='name']", "CD-VEH-DEP03");
			fillText("[name='description']", "CD-VEH-DEP03");
			elementClick("[name='modals'] .nlgDualListLeft option[label='Rodoviário']");
			elementClick("[name='modals'] [name='moveToRight']");
			elementClick("[name='containers'] a");
			elementClick("[name='containersTable'] [name='add addbutton']");
			fillText("[name='containersTable'] [name='1'] [name='sourceId']", "CD-VEH-DEP03");
			fillNumber("[name='containersTable'] [name='1'] [name='width']", "2,50");
			fillNumber("[name='containersTable'] [name='1'] [name='length']", "13,60");
			fillNumber("[name='containersTable'] [name='1'] [name='height']", "2,80");
			fillNumber("[name='containersTable'] [name='1'] [name='frontalSupportHeight']", "2,60");
			fillNumber("[name='containersTable'] [name='1'] [name='rearSupportHeight']", "2,60");
			fillNumber("[name='containersTable'] [name='1'] [name='sideSupportHeight']", "2,60");
			fillNumber("[name='containersTable'] [name='1'] [name='neckLength']", "1,75");
			fillNumber("[name='containersTable'] [name='1'] [name='neckHeight']", "0,85");
			fillNumber("[name='containersTable'] [name='1'] [name='lateralMaxWeightDifference']", "500,00");
			fillNumber("[name='containersTable'] [name='1'] [name='lateralMaxWeightDifferenceTolerance']", "12,00");
			fillNumber("[name='containersTable'] [name='1'] [name='minVolume']", "15,00");
			fillNumber("[name='containersTable'] [name='1'] [name='maxVolume']", "105,00");
			fillNumber("[name='containersTable'] [name='1'] [name='maxWeight']", "16.500,00");
			fillNumber("[name='containersTable'] [name='1'] [name='maxEmbeddedHeight']", "2,00");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
			waitLoadingService();
		}
	});
};

/**
* Exclui veículo dependência GRD 3
**/
exports.deleteDependenceVehicleGRD3 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-VEH-DEP03");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-VEH-DEP03'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

//FIXME
/**
* Cria caminhões dependência
* Para o teste de edição de viagem no PC
**/
exports.createDependenceTruckGRD1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("DEP-0001");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "DEP-0001");
			fillText("[name='name']", "DEP-0001");
			fillText("[name='description']", "DEP-0001");
			comboSearchAndSelect("[name='plate.country']", "Brasil", "Brasil");
			comboSearchAndSelect("[name='selection.state']", "Rio de Janeiro", "Rio de Janeiro (BR)");
			comboSearchAndSelect("[name='plate.city']", "Cabo Frio", "Cabo Frio (RJ)");
			comboSearchAndSelect("[name='truckStatus']", "Frota", "Frota própria");
			elementClick("[name='carriers'] .nlgDualListLeft option[label='THV-1411']");
			elementClick("[name='carriers'] [name='moveToRight']");
			comboSearchAndSelect("[name='vehicle']", "CARRETA", "CARRETA - BR16");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

exports.createDependenceTruckGRD2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("DEP-0002");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "DEP-0002");
			fillText("[name='name']", "DEP-0002");
			fillText("[name='description']", "DEP-0002");
			comboSearchAndSelect("[name='plate.country']", "Brasil", "Brasil");
			comboSearchAndSelect("[name='selection.state']", "Rio de Janeiro", "Rio de Janeiro (BR)");
			comboSearchAndSelect("[name='plate.city']", "Cabo Frio", "Cabo Frio (RJ)");
			comboSearchAndSelect("[name='truckStatus']", "Frota", "Frota própria");
			elementClick("[name='carriers'] .nlgDualListLeft option[label='ALVORADA-1411']");
			elementClick("[name='carriers'] [name='moveToRight']");
			comboSearchAndSelect("[name='vehicle']", "CARRETA", "CARRETA - BR16");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

exports.createDependenceTruckGRD3 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("DEP-0003");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "DEP-0003");
			fillText("[name='name']", "DEP-0003");
			fillText("[name='description']", "DEP-0003");
			comboSearchAndSelect("[name='plate.country']", "Brasil", "Brasil");
			comboSearchAndSelect("[name='selection.state']", "Rio de Janeiro", "Rio de Janeiro (BR)");
			comboSearchAndSelect("[name='plate.city']", "Cabo Frio", "Cabo Frio (RJ)");
			comboSearchAndSelect("[name='truckStatus']", "Frota", "Frota própria");
			elementClick("[name='carriers'] .nlgDualListLeft option[label='ALVORADA-1411']");
			elementClick("[name='carriers'] [name='moveToRight']");
			comboSearchAndSelect("[name='vehicle']", "CARRETA", "CARRETA - BR16");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

exports.createDependenceTruckGRD4 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("DEP-0004");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "DEP-0004");
			fillText("[name='name']", "DEP-0004");
			fillText("[name='description']", "DEP-0004");
			comboSearchAndSelect("[name='plate.country']", "Brasil", "Brasil");
			comboSearchAndSelect("[name='selection.state']", "Rio de Janeiro", "Rio de Janeiro (BR)");
			comboSearchAndSelect("[name='plate.city']", "Cabo Frio", "Cabo Frio (RJ)");
			comboSearchAndSelect("[name='truckStatus']", "Frota", "Frota própria");
			elementClick("[name='carriers'] .nlgDualListLeft option[label='ALVORADA-1411']");
			elementClick("[name='carriers'] [name='moveToRight']");
			comboSearchAndSelect("[name='vehicle']", "CARRETA", "CARRETA - BR16");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

exports.createDependenceTruckGRD5 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("DEP-0005");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "DEP-0005");
			fillText("[name='name']", "DEP-0005");
			fillText("[name='description']", "DEP-0005");
			comboSearchAndSelect("[name='plate.country']", "Brasil", "Brasil");
			comboSearchAndSelect("[name='selection.state']", "Rio de Janeiro", "Rio de Janeiro (BR)");
			comboSearchAndSelect("[name='plate.city']", "Cabo Frio", "Cabo Frio (RJ)");
			comboSearchAndSelect("[name='truckStatus']", "Frota", "Frota própria");
			elementClick("[name='carriers'] .nlgDualListLeft option[label='ALVORADA-1411']");
			elementClick("[name='carriers'] [name='moveToRight']");
			comboSearchAndSelect("[name='vehicle']", "CARRETA", "CARRETA - BR16");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* Exclui caminhões dependência
* Para o teste de edição de viagem no PC
**/
exports.deleteDependenceTruckGRD1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("DEP-0001");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='DEP-0001'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

exports.deleteDependenceTruckGRD2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("DEP-0002");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='DEP-0002'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

exports.deleteDependenceTruckGRD3 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("DEP-0003");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='DEP-0003'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

exports.deleteDependenceTruckGRD4 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("DEP-0004");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='DEP-0004'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

exports.deleteDependenceTruckGRD5 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("DEP-0005");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='DEP-0005'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* Cria scripts de calculador de janela de tempo para segmentação
**/
exports.createDependenceScriptCalculatorScheduler1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-SCS-01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-SCS-01");
			fillText("[name='name']", "CD-SCS-01");
			fillText("[name='description']", "CD-SCS-01");
			comboSearchAndSelect("[name='scriptType']", "Calculador de janela de tempo", "Otimização - Calculador de janela de tempo para segmentação");
			var validScriptContent = "package br.com.neolog.script.fry.segmentation; import br.com.neolog.routing.DeliveryUnit;import br.com.neolog.routing.DestinationLocality;import br.com.neolog.routing.OriginOrBothLocality;import br.com.neolog.scriptversioning.VersionedScript;import br.com.neolog.system.deliveryunit.SegmentationTimeWindowCalculator;import br.com.neolog.time.TimeWindow;@VersionedScript(    sourceId = FRYSegmentationTimeWindowCalculator.SOURCE_ID,    name = FRYSegmentationTimeWindowCalculator.NAME,    description = FRYSegmentationTimeWindowCalculator.NAME,    type = \"SEGMENTATION_TIME_WINDOW_CALCULATOR\" )final class FRYSegmentationTimeWindowCalculator    implements        SegmentationTimeWindowCalculator{    static final String SOURCE_ID = \"FRYSegmentationTimeWindowCalculator\";    static final String NAME = \"FRYSegmentationTimeWindowCalculator\";    @Override    public TimeWindow getTimeWindowForDestinationHub(        final DeliveryUnit du,        final DestinationLocality hub )    {        return du.getShipmentLegs().getIntersectionOfDeliveryTimeWindows();    }    @Override    public TimeWindow getTimeWindowForPassingHub(        final DeliveryUnit du,        final OriginOrBothLocality hub )    {        throw new UnsupportedOperationException();    }}";
			updateScriptContent(validScriptContent);
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

exports.createDependenceScriptCalculatorScheduler2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-SCS-02");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-SCS-02");
			fillText("[name='name']", "CD-SCS-02");
			fillText("[name='description']", "CD-SCS-02");
			comboSearchAndSelect("[name='scriptType']", "Calculador de janela de tempo", "Otimização - Calculador de janela de tempo para segmentação");
			var validScriptContent = "package br.com.neolog.script.fry.segmentation; import br.com.neolog.routing.DeliveryUnit;import br.com.neolog.routing.DestinationLocality;import br.com.neolog.routing.OriginOrBothLocality;import br.com.neolog.scriptversioning.VersionedScript;import br.com.neolog.system.deliveryunit.SegmentationTimeWindowCalculator;import br.com.neolog.time.TimeWindow;@VersionedScript(    sourceId = FRYSegmentationTimeWindowCalculator.SOURCE_ID,    name = FRYSegmentationTimeWindowCalculator.NAME,    description = FRYSegmentationTimeWindowCalculator.NAME,    type = \"SEGMENTATION_TIME_WINDOW_CALCULATOR\" )final class FRYSegmentationTimeWindowCalculator    implements        SegmentationTimeWindowCalculator{    static final String SOURCE_ID = \"FRYSegmentationTimeWindowCalculator\";    static final String NAME = \"FRYSegmentationTimeWindowCalculator\";    @Override    public TimeWindow getTimeWindowForDestinationHub(        final DeliveryUnit du,        final DestinationLocality hub )    {        return du.getShipmentLegs().getIntersectionOfDeliveryTimeWindows();    }    @Override    public TimeWindow getTimeWindowForPassingHub(        final DeliveryUnit du,        final OriginOrBothLocality hub )    {        throw new UnsupportedOperationException();    }}";
			updateScriptContent(validScriptContent);
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* Cria script de frete-viagem
**/
exports.createDependenceScriptFreteViagem = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-SCR-FV1");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-SCR-FV1");
			fillText("[name='name']", "NM-SCR-FV1");
			fillText("[name='description']", "DSC-SCR-FV1");
			comboSearchAndSelect("[name='scriptType']", "TRIP_SERVICE_LIST_FREIGHT_CALCULATOR", "TRIP_SERVICE_LIST_FREIGHT_CALCULATOR");
			var validScriptContent = "package br.com.neolog.script.fms.freight.trip.calculator; import br.com.neolog.freightcalc.exceptions.NoFreightRulesFoundByLaneException; import br.com.neolog.routing.remote.freight.LoadServiceListFreightCalculator;	import br.com.neolog.routing.remote.freight.TripServiceListFreightCalculator.FreightValue; import br.com.neolog.routing.remote.freight.TripServiceListInternalFreightCalculator; import br.com.neolog.routing.strategy.util.TripServiceListFreightCalculatorParameters; import br.com.neolog.routing.strategy.util.exception.FreightCalculatorException; final class FMSFreightTripCalculator implements TripServiceListInternalFreightCalculator {	@Override public FreightValue getFreight( final TripServiceListFreightCalculatorParameters tripServiceListFreightCalculatorParameters,	final LoadServiceListFreightCalculator loadServiceListFreightCalculator ) throws FreightCalculatorException, NoFreightRulesFoundByLaneException { return BasicTripServiceListFreightCalculator.INSTANCE.getFreight( tripServiceListFreightCalculatorParameters, loadServiceListFreightCalculator ); } } ";
			updateScriptContent(validScriptContent);
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

exports.deleteDependenceScriptFreteViagem = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-SCR-FV1");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-SCR-FV1'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* Cria script de unitização 1
**/
exports.createDependenceScriptUnitization1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-SCR-UNIT1");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-SCR-UNIT1");
			fillText("[name='name']", "NM-SCR-UNIT1");
			fillText("[name='description']", "DSC-SCR-UNIT1");
			comboSearchAndSelect("[name='scriptType']", "Script de unitização", "Script de unitização");
			var validScriptContent = "package br.com.neolog.script.def.unitizer; import br.com.neolog.scriptversioning.VersionedScript;import br.com.neolog.unitizer.engine.commands.UnitizerCommands;import br.com.neolog.unitizer.engine.commands.strategy.UnitizerStrategies;import br.com.neolog.unitizer.engine.optimization.UnitizerScript;@VersionedScript(    sourceId = DefaultUnitizerScript.SOURCE_ID,    name = DefaultUnitizerScript.NAME,    description = DefaultUnitizerScript.NAME,    type = \"UNITIZER_SCRIPT\" )final class DefaultUnitizerScript    implements        UnitizerScript{    static final String SOURCE_ID = \"DefaultUnitizerScript\";    static final String NAME = \"Script padrão de unitização\";    @Override    public void run()    {        UnitizerCommands.split( 1 );        UnitizerCommands.markUnfeasibleShipmentUnits();        UnitizerStrategies.consolidateByArrangement();        UnitizerCommands.updateIncumbentPlan();    }}";
			updateScriptContent(validScriptContent);
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

exports.deleteDependenceScriptUnitization1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-SCR-UNIT1");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-SCR-UNIT1'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* Cria script de unitização 2
**/
exports.createDependenceScriptUnitization2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-SCR-UNIT2");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-SCR-UNIT2");
			fillText("[name='name']", "NM-SCR-UNIT2");
			fillText("[name='description']", "DSC-SCR-UNIT2");
			comboSearchAndSelect("[name='scriptType']", "Script de unitização", "Script de unitização");
			var validScriptContent = "package br.com.neolog.script.def.unitizer; import br.com.neolog.scriptversioning.VersionedScript;import br.com.neolog.unitizer.engine.commands.UnitizerCommands;import br.com.neolog.unitizer.engine.commands.strategy.UnitizerStrategies;import br.com.neolog.unitizer.engine.optimization.UnitizerScript;@VersionedScript(    sourceId = DefaultUnitizerScript.SOURCE_ID,    name = DefaultUnitizerScript.NAME,    description = DefaultUnitizerScript.NAME,    type = \"UNITIZER_SCRIPT\" )final class DefaultUnitizerScript    implements        UnitizerScript{    static final String SOURCE_ID = \"DefaultUnitizerScript\";    static final String NAME = \"Script padrão de unitização\";    @Override    public void run()    {        UnitizerCommands.split( 1 );        UnitizerCommands.markUnfeasibleShipmentUnits();        UnitizerStrategies.consolidateByArrangement();        UnitizerCommands.updateIncumbentPlan();    }}";
			updateScriptContent(validScriptContent);
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

exports.deleteDependenceScriptUnitization2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-SCR-UNIT2");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-SCR-UNIT2'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* Cria script de duração de carregamento e descarregamento na doca
**/
exports.createDependenceScriptLoadUnloadDock = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-SCR-CDD1");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-SCR-CDD1");
			fillText("[name='name']", "CD-SCR-CDD1");
			fillText("[name='description']", "CD-SCR-CDD1");
			comboSearchAndSelect("[name='scriptType']", "Calculador de duração de carregamento e descarregamento", "Doca - Calculador de duração de carregamento e descarregamento");
			var validScriptContent = "package br.com.neolog.script.grd.foundation; import br.com.neolog.model.loadunloadcalculator.LoadUnloadDurationCalculatorDock; import br.com.neolog.routing.core.service.BasicService; import br.com.neolog.routing.remote.adapter.RoutingDockAdapter; import org.joda.time.DateTime; import org.joda.time.Duration; public class NovoCalculador implements LoadUnloadDurationCalculatorDock { @Override public Duration calculateLoadUnloadDuration( RoutingDockAdapter dock, BasicService service,        DateTime startTime )    {        return Duration.standardMinutes( 15 );    }}";
			updateScriptContent(validScriptContent);
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* Exclui script de duração de carregamento e descarregamento na doca
**/
exports.deleteDependenceScriptLoadUnloadDock = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-SCR-CDD1");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-SCR-CDD1'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
		}
	});
};

/**
* Cria script de tipo de serviço
**/
exports.createDependenceScriptServiceType = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-SCR-ST1");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-SCR-ST1");
			fillText("[name='name']", "NM-SCR-ST1");
			fillText("[name='description']", "DSC-SCR-ST1");
			comboSearchAndSelect("[name='scriptType']", "SERVICE_TYPE_CALCULATOR_RULE_VALIDATOR", "SERVICE_TYPE_CALCULATOR_RULE_VALIDATOR");
			var validScriptContent = "package br.com.neolog.util; import br.com.neolog.model.servicetype.ServiceTypeRule; import br.com.neolog.routing.remote.servicetype.ServiceTypeCalculatorRuleValidator; public class ServiceTypeCalculatorRuleValidatorExample implements ServiceTypeCalculatorRuleValidator {@Override public String validate( ServiceTypeRule rule ) { return null; }}";
			updateScriptContent(validScriptContent);
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* Cria script de tipo de serviço 2
**/
exports.createDependenceScriptServiceType2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-SCR-ST2");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-SCR-ST2");
			fillText("[name='name']", "NM-SCR-ST2");
			fillText("[name='description']", "DSC-SCR-ST2");
			comboSearchAndSelect("[name='scriptType']", "SERVICE_TYPE_CALCULATOR_RULE_VALIDATOR", "SERVICE_TYPE_CALCULATOR_RULE_VALIDATOR");
			var validScriptContent = "package br.com.neolog.util; import br.com.neolog.model.servicetype.ServiceTypeRule; import br.com.neolog.routing.remote.servicetype.ServiceTypeCalculatorRuleValidator; public class ServiceTypeCalculatorRuleValidatorExample implements ServiceTypeCalculatorRuleValidator {@Override public String validate( ServiceTypeRule rule ) { return null; }}";
			updateScriptContent(validScriptContent);
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* Cria tipo de pedido 1
**/
exports.createDependenceTipoPedido1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-TP-DEP01");
	countBeforeInsertionPromise
		.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillText("[name='code']", "CD-TP-DEP01");
				fillText("[name='name']", "NM-TP-DEP01");
				fillText("[name='description']", "DSC-TP-DEP01");
				elementClick("[name='buttonSubmit']");
				modalMessage("Sucesso", "A entidade foi salva com sucesso.");
				navigate.to("Administração", "Tipos de pedido");
				var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-TP-DEP01");
				countAfterInsertionPromise.then(function (regCount) {
					if (regCount === 1) {
						elementClick("[name='searchResultTable'] [name='CD-TP-DEP01'] [name='editButton']");
						assertTextFieldContent("[name='code']", "CD-TP-DEP01");
						assertTextFieldContent("[name='name']", "NM-TP-DEP01");
						assertTextFieldContent("[name='description']", "DSC-TP-DEP01");
					} else {
						throw new Error("Erro! Um tipo de pedido era esperado, mas foram encontrados " + regCount);
					}
				});
			}
		});
};

/**
* Cria tipo de pedido 2
**/
exports.createDependenceTipoPedido2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-TP-DEP02");
	countBeforeInsertionPromise
		.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillText("[name='code']", "CD-TP-DEP02");
				fillText("[name='name']", "NM-TP-DEP02");
				fillText("[name='description']", "DSC-TP-DEP02");
				elementClick("[name='buttonSubmit']");
				modalMessage("Sucesso", "A entidade foi salva com sucesso.");
				navigate.to("Administração", "Tipos de pedido");
				var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-TP-DEP02");
				countAfterInsertionPromise.then(function (regCount) {
					if (regCount === 1) {
						elementClick("[name='searchResultTable'] [name='CD-TP-DEP02'] [name='editButton']");
						assertTextFieldContent("[name='code']", "CD-TP-DEP02");
						assertTextFieldContent("[name='name']", "NM-TP-DEP02");
						assertTextFieldContent("[name='description']", "DSC-TP-DEP02");
					} else {
						throw new Error("Erro! Um tipo de pedido era esperado, mas foram encontrados " + regCount);
					}
				});
			}
		});
};

/**
* Cria tipo de item de pedido 1
**/
exports.createDependenceTipoItemPedido1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-TIP-DEP01");
	countBeforeInsertionPromise
		.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillText("[name='code']", "CD-TIP-DEP01");
				fillText("[name='name']", "NM-TIP-DEP01");
				fillText("[name='description']", "DSC-TIP-DEP01");
				elementClick("[name='buttonSubmit']");
				modalMessage("Sucesso", "A entidade foi salva com sucesso.");
				navigate.to("Administração", "Tipos de item de pedido");
				var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-TIP-DEP01");
				countAfterInsertionPromise.then(function (regCount) {
					if (regCount === 1) {
						elementClick("[name='searchResultTable'] [name='CD-TIP-DEP01'] [name='editButton']");
						assertTextFieldContent("[name='code']", "CD-TIP-DEP01");
						assertTextFieldContent("[name='name']", "NM-TIP-DEP01");
						assertTextFieldContent("[name='description']", "DSC-TIP-DEP01");
					} else {
						throw new Error("Erro! Um tipo de item de pedido era esperado, mas foram encontrados " + regCount);
					}
				});
			}
		});
};

/**
* Cria tipo de item de pedido 2
**/
exports.createDependenceTipoItemPedido2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-TIP-DEP02");
	countBeforeInsertionPromise
		.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillText("[name='code']", "CD-TIP-DEP02");
				fillText("[name='name']", "NM-TIP-DEP02");
				fillText("[name='description']", "DSC-TIP-DEP02");
				elementClick("[name='buttonSubmit']");
				modalMessage("Sucesso", "A entidade foi salva com sucesso.");
				navigate.to("Administração", "Tipos de item de pedido");
				var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-TIP-DEP02");
				countAfterInsertionPromise.then(function (regCount) {
					if (regCount === 1) {
						elementClick("[name='searchResultTable'] [name='CD-TIP-DEP02'] [name='editButton']");
						assertTextFieldContent("[name='code']", "CD-TIP-DEP02");
						assertTextFieldContent("[name='name']", "NM-TIP-DEP02");
						assertTextFieldContent("[name='description']", "DSC-TIP-DEP02");
					} else {
						throw new Error("Erro! Um tipo de item de pedido era esperado, mas foram encontrados " + regCount);
					}
				});
			}
		});
};

/**
* Cria agrupador de zona de transporte 1
**/
exports.createDependenceCarrierZoneGrouper1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-AZT-DEP01");
	countBeforeInsertionPromise
		.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillText("[name='code']", "CD-AZT-DEP01");
				fillText("[name='name']", "NM-AZT-DEP01");
				fillText("[name='description']", "DSC-AZT-DEP01");
				elementClick("[name='buttonSubmit']");
				modalMessage("Sucesso", "A entidade foi salva com sucesso.");
				navigate.to("Cadastro", "Agrupadores de zona de transporte");
				var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-AZT-DEP01");
				countAfterInsertionPromise.then(function (regCount) {
					if (regCount === 1) {
						elementClick("[name='searchResultTable'] [name='CD-AZT-DEP01'] [name='editButton']");
						assertTextFieldContent("[name='code']", "CD-AZT-DEP01");
						assertTextFieldContent("[name='name']", "NM-AZT-DEP01");
						assertTextFieldContent("[name='description']", "DSC-AZT-DEP01");
					} else {
						throw new Error("Erro! Um agrupador de zona de transporte era esperado, mas foram encontrados " + regCount);
					}
				});
			}
		});
};

/**
* Cria agrupador de zona de transporte 2
**/
exports.createDependenceCarrierZoneGrouper2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-AZT-DEP02");
	countBeforeInsertionPromise
		.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillText("[name='code']", "CD-AZT-DEP02");
				fillText("[name='name']", "NM-AZT-DEP02");
				fillText("[name='description']", "DSC-AZT-DEP02");
				elementClick("[name='buttonSubmit']");
				modalMessage("Sucesso", "A entidade foi salva com sucesso.");
				navigate.to("Cadastro", "Agrupadores de zona de transporte");
				var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-AZT-DEP02");
				countAfterInsertionPromise.then(function (regCount) {
					if (regCount === 1) {
						elementClick("[name='searchResultTable'] [name='CD-AZT-DEP02'] [name='editButton']");
						assertTextFieldContent("[name='code']", "CD-AZT-DEP02");
						assertTextFieldContent("[name='name']", "NM-AZT-DEP02");
						assertTextFieldContent("[name='description']", "DSC-AZT-DEP02");
					} else {
						throw new Error("Erro! Um agrupador de zona de transporte era esperado, mas foram encontrados " + regCount);
					}
				});
			}
		});
};

/**
* Cria zona de transporte 1
**/
exports.createDependenceCarrierZone1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-ZT-DEP01");
	countBeforeInsertionPromise
		.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillText("[name='code']", "CD-ZT-DEP01");
				fillText("[name='name']", "CD-ZT-DEP01");
				fillText("[name='description']", "CD-ZT-DEP01");
				comboSearchAndSelect("[name='edition.carrierZone.carrierZoneGrouper']", "CD-AZT-DEP01", "NM-AZT-DEP01 - CD-AZT-DEP01");
				fillNumber("[name='edition.carrierZone.priority']", "1");
				comboSearchAndSelect("[name='edition.carrierZone.carrierZoneDetail']", "Cidade", "Cidade");
				comboSearchAndSelect("[name='edition.carrierZone.localityRestriction']", "SJC", "SJC");
				comboSearchAndSelect("[name='edition.carrierZone.availableCity.country']", "Brasil", "Brasil");
				comboSearchAndSelect("[name='edition.carrierZone.availableCity.state']", "Rio de Janeiro", "Rio de Janeiro (BR)");
				elementClick("[name='filterAvailableCity']");
				elementClick("[name='moveAllToRight']");
				elementClick("[name='buttonSubmit']");
				modalMessage("Sucesso", "A entidade foi salva com sucesso.");
				navigate.to("Cadastro", "Zonas de transporte");
				var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-ZT-DEP01");
				countAfterInsertionPromise.then(function (regCount) {
					if (regCount === 1) {
						elementClick("[name='searchResultTable'] [name='CD-ZT-DEP01'] [name='editButton']");
						assertTextFieldContent("[name='code']", "CD-ZT-DEP01");
						assertTextFieldContent("[name='name']", "CD-ZT-DEP01");
						assertTextFieldContent("[name='description']", "CD-ZT-DEP01");
					} else {
						throw new Error("Erro! Uma zona de transporte era esperada, mas foram encontradas " + regCount);
					}
				});
			}
		});
};

/**
* Cria zona de transporte 2
**/
exports.createDependenceCarrierZone2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-ZT-DEP02");
	countBeforeInsertionPromise
		.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillText("[name='code']", "CD-ZT-DEP02");
				fillText("[name='name']", "CD-ZT-DEP02");
				fillText("[name='description']", "CD-ZT-DEP02");
				comboSearchAndSelect("[name='edition.carrierZone.carrierZoneGrouper']", "CD-AZT-DEP01", "NM-AZT-DEP01 - CD-AZT-DEP01");
				fillNumber("[name='edition.carrierZone.priority']", "2");
				comboSearchAndSelect("[name='edition.carrierZone.carrierZoneDetail']", "Cidade", "Cidade");
				comboSearchAndSelect("[name='edition.carrierZone.localityRestriction']", "SJC", "SJC");
				comboSearchAndSelect("[name='edition.carrierZone.availableCity.state']", "Rio de Janeiro", "Rio de Janeiro (BR)");
				elementClick("[name='filterAvailableCity']");
				elementClick("[name='moveAllToRight']");
				elementClick("[name='buttonSubmit']");
				modalMessage("Sucesso", "A entidade foi salva com sucesso.");
				navigate.to("Cadastro", "Zonas de transporte");
				var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-ZT-DEP02");
				countAfterInsertionPromise.then(function (regCount) {
					if (regCount === 1) {
						elementClick("[name='searchResultTable'] [name='CD-ZT-DEP02'] [name='editButton']");
						assertTextFieldContent("[name='code']", "CD-ZT-DEP02");
						assertTextFieldContent("[name='name']", "CD-ZT-DEP02");
						assertTextFieldContent("[name='description']", "CD-ZT-DEP02");
					} else {
						throw new Error("Erro! Uma zona de transporte era esperada, mas foram encontradas " + regCount);
					}
				});
			}
		});
};

/**
* Cria categoria de produto 1
**/
exports.createDependenceProductCategory1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-CATPROD-DEP01");
	countBeforeInsertionPromise
		.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillText("[name='code']", "CD-CATPROD-DEP01");
				fillText("[name='name']", "CD-CATPROD-DEP01");
				fillText("[name='description']", "CD-CATPROD-DEP01");
				elementClick("[name='buttonSubmit']");
				modalMessage("Sucesso", "A entidade foi salva com sucesso.");
				navigate.to("Cadastro", "Categorias de produto");
				var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-CATPROD-DEP01");
				countAfterInsertionPromise.then(function (regCount) {
					if (regCount === 1) {
						elementClick("[name='searchResultTable'] [name='CD-CATPROD-DEP01'] [name='editButton']");
						assertTextFieldContent("[name='code']", "CD-CATPROD-DEP01");
						assertTextFieldContent("[name='name']", "CD-CATPROD-DEP01");
						assertTextFieldContent("[name='description']", "CD-CATPROD-DEP01");
					} else {
						throw new Error("Erro! Uma categoria de produto era esperada, mas foram encontradas " + regCount);
					}
				});
			}
		});
};

/**
* Cria categoria de produto 2
**/
exports.createDependenceProductCategory2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-CATPROD-DEP02");
	countBeforeInsertionPromise
		.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillText("[name='code']", "CD-CATPROD-DEP02");
				fillText("[name='name']", "CD-CATPROD-DEP02");
				fillText("[name='description']", "CD-CATPROD-DEP02");
				elementClick("[name='buttonSubmit']");
				modalMessage("Sucesso", "A entidade foi salva com sucesso.");
				navigate.to("Cadastro", "Categorias de produto");
				var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-CATPROD-DEP02");
				countAfterInsertionPromise.then(function (regCount) {
					if (regCount === 1) {
						elementClick("[name='searchResultTable'] [name='CD-CATPROD-DEP02'] [name='editButton']");
						assertTextFieldContent("[name='code']", "CD-CATPROD-DEP02");
						assertTextFieldContent("[name='name']", "CD-CATPROD-DEP02");
						assertTextFieldContent("[name='description']", "CD-CATPROD-DEP02");
					} else {
						throw new Error("Erro! Uma categoria de produto era esperada, mas foram encontradas " + regCount);
					}
				});
			}
		});
};

/**
* Cria categoria de produto 3
**/
exports.createDependenceProductCategory3 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-CATPROD-DEP03");
	countBeforeInsertionPromise
		.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillText("[name='code']", "CD-CATPROD-DEP03");
				fillText("[name='name']", "CD-CATPROD-DEP03");
				fillText("[name='description']", "CD-CATPROD-DEP03");
				elementClick("[name='buttonSubmit']");
				modalMessage("Sucesso", "A entidade foi salva com sucesso.");
				navigate.to("Cadastro", "Categorias de produto");
				var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-CATPROD-DEP03");
				countAfterInsertionPromise.then(function (regCount) {
					if (regCount === 1) {
						elementClick("[name='searchResultTable'] [name='CD-CATPROD-DEP03'] [name='editButton']");
						assertTextFieldContent("[name='code']", "CD-CATPROD-DEP03");
						assertTextFieldContent("[name='name']", "CD-CATPROD-DEP03");
						assertTextFieldContent("[name='description']", "CD-CATPROD-DEP03");
					} else {
						throw new Error("Erro! Uma categoria de produto era esperada, mas foram encontradas " + regCount);
					}
				});
			}
		});
};

/**
* Cria contexto de otimização
**/
//FIXME
exports.createDependenceOptimization1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-OTIM-DEP01");
	countBeforeInsertionPromise
		.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo("CD-OTIM-DEP01", "CD-OTIM-DEP01", "CD-OTIM-DEP01");
				fillNumber("[name='routingConfig.optimizationTimeoutInSeconds']", "2700");
				comboSearchAndSelect("[name='routingConfig.routingConfigScripts.optimizationScript']", "ScriptDeOtimizacaoPadrao", "ScriptDeOtimizacaoPadrao");
				comboSearchAndSelect("[name='routingConfig.routingConfigGeneral.manualTripServiceListCreatorFactory']", "Minimização de distância", "Minimização de distância");
				comboSearchAndSelect("[name='routingConfig.routingConfigGeneral.orderCriteria']", "Peso", "Peso");
				elementClick("[name='routingConfig.isGeodesic']");

				elementClick("[name='routingConfigs.restrictions'] a");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateAllowedProductCategoriesOnLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateAllowedShipmentUnitsOnLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateCompatibilityBetweenProductCategoriesOnLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateCompatibilityBetweenShipmentUnitsOnLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateMaxVolumeOnLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateMaxWeightOnLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateMinVolumeOnLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateMinWeightOnLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateDSKOnLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateAllowedProductCategoriesDockLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateAllowedShipmentUnitDockLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateAllowedShippersDockLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateSupportedCarriersOnDockOnLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateSupportedVehiclesOnDockOnLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateSupportedServiceTypesOnDockOnLoading']");

				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateAllowedProductCategoriesOnGeneral']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateAllowedShipmentUnitsOnGeneral']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateCompatibilityBetweenProductCategoriesOnGeneral']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateCompatibilityBetweenShipmentUnitsOnGeneral']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateMaxVolumeOnGeneral']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateMaxWeightOnGeneral']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateMinVolumeOnGeneral']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateMinWeightOnGeneral']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateMaxValueOnGeneral']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateMaxValuePerProductCategoryOnGeneral']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateAllowedOrderSplitOnGeneral']");

				elementClick("[name='routingConfigs.objectiveFunction'] a");
				elementClick("[name='routingConfig.routingConfigObjectiveFunction.concentrationRateStrategies'] [name='moveAllToRight']");

				elementClick("[name='routingConfigs.contexts'] a");
				comboSearchAndSelect("[name='routingConfig.contexts.arrangementConfig']", "CD-ARR-DEP01", "CD-ARR-DEP01");

				elementClick("[name='routingConfigs.timeRestrictions'] a");
				comboSearchAndSelect("[name='routingConfig.routingConfigGeneral.timeWindowCriteria']", "Iteração", "Iteração - Fim da janela");
				fillNumber("[name='routingConfig.dotSamplingInterval'] [name='hour']", "1");
				fillNumber("[name='routingConfig.dotSamplingInterval'] [name='minute']", "30");
				comboSearchAndSelect("[name='routingConfig.calculatorType']", "Calculador", "Calculador de tempo simples - SimpleTimeToGoCalculatorFactory");

				elementClick("[name='routingConfigs.exhibitionPolicies'] a");
				elementClick("[name='routingConfig.routingConfigGeneral.allowedFlowTypes'] [name='moveAllToRight']");
				elementClick("[name='routingConfig.routingConfigGeneral.contextAttributes'] [name='moveAllToRight']");
				elementClick("[name='buttonSubmit']");
				modalMessage("Sucesso", "A entidade foi salva com sucesso.");
				navigate.to("Administração", "Otimização");
				var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-OTIM-DEP01");
				countAfterInsertionPromise.then(function (regCount) {
					if (regCount === 1) {
						elementClick("[name='searchResultTable'] [name='CD-OTIM-DEP01'] [name='editButton']");
						assertBasicInfo("CD-OTIM-DEP01", "CD-OTIM-DEP01", "CD-OTIM-DEP01");
					} else {
						throw new Error("Erro! Um contexto de otimização era esperado, mas foram encontrados " + regCount);
					}
				});
			}
		});
};

/**
* Exclui contexto de otimização 1
**/
exports.deleteDependenceOptimization1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-OTIM-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-OTIM-DEP01'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
			elementClick("[name='resetButton']");
			elementClick("[name='headerNeologLogo']");
			navigate.to("Administração", "Otimização");
			var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-OTIM-DEP01");
			countAfterInsertionPromise.then(function (regCount) {
				if (regCount !== 0) {
					throw new Error("Erro! Nenhum contexto de otimização era esperado, mas foram encontrados " + regCount);
				}
			});
		}
	});
};

exports.createDependenceOptimization2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-OTIM-DEP02");
	countBeforeInsertionPromise
		.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillBasicInfo("CD-OTIM-DEP02", "CD-OTIM-DEP02", "CD-OTIM-DEP02");
				fillNumber("[name='routingConfig.optimizationTimeoutInSeconds']", "2700");
				comboSearchAndSelect("[name='routingConfig.routingConfigScripts.optimizationScript']", "ScriptDeOtimizacaoPadrao", "ScriptDeOtimizacaoPadrao");
				comboSearchAndSelect("[name='routingConfig.routingConfigGeneral.manualTripServiceListCreatorFactory']", "Minimização de distância", "Minimização de distância");
				comboSearchAndSelect("[name='routingConfig.routingConfigGeneral.orderCriteria']", "Peso", "Peso");
				elementClick("[name='routingConfig.isGeodesic']");

				elementClick("[name='routingConfigs.restrictions'] a");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateAllowedProductCategoriesOnLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateAllowedShipmentUnitsOnLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateCompatibilityBetweenProductCategoriesOnLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateCompatibilityBetweenShipmentUnitsOnLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateMaxVolumeOnLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateMaxWeightOnLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateMinVolumeOnLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateMinWeightOnLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateDSKOnLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateAllowedProductCategoriesDockLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateAllowedShipmentUnitDockLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateAllowedShippersDockLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateSupportedCarriersOnDockOnLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateSupportedVehiclesOnDockOnLoading']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateSupportedServiceTypesOnDockOnLoading']");

				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateAllowedProductCategoriesOnGeneral']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateAllowedShipmentUnitsOnGeneral']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateCompatibilityBetweenProductCategoriesOnGeneral']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateCompatibilityBetweenShipmentUnitsOnGeneral']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateMaxVolumeOnGeneral']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateMaxWeightOnGeneral']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateMinVolumeOnGeneral']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateMinWeightOnGeneral']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateMaxValueOnGeneral']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateMaxValuePerProductCategoryOnGeneral']");
				elementClick("[name='routingConfig.routingConfigSysParamsRestrictions.validateAllowedOrderSplitOnGeneral']");

				elementClick("[name='routingConfigs.objectiveFunction'] a");
				elementClick("[name='routingConfig.routingConfigObjectiveFunction.concentrationRateStrategies'] [name='moveAllToRight']");

				elementClick("[name='routingConfigs.contexts'] a");
				comboSearchAndSelect("[name='routingConfig.contexts.arrangementConfig']", "CD-ARR-DEP01", "CD-ARR-DEP01");

				elementClick("[name='routingConfigs.timeRestrictions'] a");
				comboSearchAndSelect("[name='routingConfig.routingConfigGeneral.timeWindowCriteria']", "Iteração", "Iteração - Fim da janela");
				fillNumber("[name='routingConfig.dotSamplingInterval'] [name='hour']", "1");
				fillNumber("[name='routingConfig.dotSamplingInterval'] [name='minute']", "30");
				comboSearchAndSelect("[name='routingConfig.calculatorType']", "Calculador", "Calculador de tempo simples - SimpleTimeToGoCalculatorFactory");

				elementClick("[name='routingConfigs.exhibitionPolicies'] a");
				elementClick("[name='routingConfig.routingConfigGeneral.allowedFlowTypes'] [name='moveAllToRight']");
				elementClick("[name='routingConfig.routingConfigGeneral.contextAttributes'] [name='moveAllToRight']");
				elementClick("[name='buttonSubmit']");
				modalMessage("Sucesso", "A entidade foi salva com sucesso.");
				navigate.to("Administração", "Otimização");
				var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-OTIM-DEP02");
				countAfterInsertionPromise.then(function (regCount) {
					if (regCount === 1) {
						elementClick("[name='searchResultTable'] [name='CD-OTIM-DEP02'] [name='editButton']");
						assertBasicInfo("CD-OTIM-DEP02", "CD-OTIM-DEP02", "CD-OTIM-DEP02");
					} else {
						throw new Error("Erro! Um contexto de otimização era esperado, mas foram encontrados " + regCount);
					}
				});
			}
		});
};

/**
* Cria transportadora 1
**/
exports.createDependenceCarrier1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-TRAN-DEP01");
	countBeforeInsertionPromise
		.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillText("[name='code']", "CD-TRAN-DEP01");
				fillText("[name='name']", "CD-TRAN-DEP01");
				fillText("[name='description']", "CD-TRAN-DEP01");
				fillText("[name='emailLoadOffering']", "person2@neolog.com.br");
				comboSearchAndSelect("[name='serviceTypeCalculatorConfig']", "CD-CTS-DEP01", "CD-CTS-DEP01");
				/* Dados definidos na transportadora padrão para usuário regional.1411 (código DEF_TRANSP) */
				elementClick("[name='entity.serviceLevelOn']");
				comboSearchAndSelect("[name='justification']", "Pouco Peso", "Pouco Peso - 3");
				fillNumber("[name='horizonOpening']", "10");
				elementClick("[name='logisticRestrictions'] a");
				comboSearchAndSelect("[name='carrierZone']", "NM-AZT-DEP01", "NM-AZT-DEP01 - CD-AZT-DEP01");
				comboSearchAndSelect("[name='logisticGroup']", "NM-AZT-DEP01", "NM-AZT-DEP01 - CD-AZT-DEP01");
				elementClick("[name='functioning'] a");
				functioningDataHolder.cleanWorkingHour();
				functioningDataHolder.fillDefaultWorking();
				elementClick("[name='freight'] a");
				comboSearchAndSelect("[name='freightTripCalculatorConfig']", "CD-FV-DEP01", "CD-FV-DEP01");
				comboSearchAndSelect("[name='FULL_TRUCK_LOAD'] [name='freightCalculatorConfigs']", "Frete Viagem GT", "Frete Viagem GT");
				comboSearchAndSelect("[name='FOBT'] [name='freightCalculatorConfigs']", "FreteFobt", "FreteFobt");
				comboSearchAndSelect("[name='Venda'] [name='freightCalculatorConfigs']", "Frete Viagem GT", "Frete Viagem GT");
				comboSearchAndSelect("[name='Transferência'] [name='freightCalculatorConfigs']", "Frete Viagem GT", "Frete Viagem GT");
				comboSearchAndSelect("[name='CD-TS-DEP01'] [name='freightCalculatorConfigs']", "Frete Viagem GT", "Frete Viagem GT");
				comboSearchAndSelect("[name='CD-TS-DEP02'] [name='freightCalculatorConfigs']", "Frete Viagem GT", "Frete Viagem GT");
				elementClick("[name='buttonSubmit']");
				modalMessage("Sucesso", "A entidade foi salva com sucesso.");
				navigate.to("Cadastro", "Transportadoras");
				var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-TRAN-DEP01");
				countAfterInsertionPromise.then(function (regCount) {
					if (regCount === 1) {
						elementClick("[name='searchResultTable'] [name='CD-TRAN-DEP01'] [name='editButton']");
						assertTextFieldContent("[name='code']", "CD-TRAN-DEP01");
						assertTextFieldContent("[name='name']", "CD-TRAN-DEP01");
						assertTextFieldContent("[name='description']", "CD-TRAN-DEP01");
					} else {
						throw new Error("Erro! Uma transportadora era esperada, mas foram encontradas " + regCount);
					}
				});
			}
		});
};

/**
* Cria transportadora 2
**/
exports.createDependenceCarrier2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-TRAN-DEP02");
	countBeforeInsertionPromise
		.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillText("[name='code']", "CD-TRAN-DEP02");
				fillText("[name='name']", "CD-TRAN-DEP02");
				fillText("[name='description']", "CD-TRAN-DEP02");
				fillText("[name='emailLoadOffering']", "person2@neolog.com.br");
				comboSearchAndSelect("[name='serviceTypeCalculatorConfig']", "CD-CTS-DEP01", "CD-CTS-DEP01");
				elementClick("[name='entity.serviceLevelOn']");
				comboSearchAndSelect("[name='justification']", "Pouco Peso", "Pouco Peso - 3");
				fillNumber("[name='horizonOpening']", "10");
				elementClick("[name='logisticRestrictions'] a");
				comboSearchAndSelect("[name='carrierZone']", "NM-AZT-DEP01", "NM-AZT-DEP01 - CD-AZT-DEP01");
				comboSearchAndSelect("[name='logisticGroup']", "NM-AZT-DEP01", "NM-AZT-DEP01 - CD-AZT-DEP01");
				elementClick("[name='functioning'] a");
				functioningDataHolder.cleanWorkingHour();
				functioningDataHolder.fillDefaultWorking();
				elementClick("[name='freight'] a");
				comboSearchAndSelect("[name='freightTripCalculatorConfig']", "CD-FV-DEP01", "CD-FV-DEP01");
				comboSearchAndSelect("[name='FULL_TRUCK_LOAD'] [name='freightCalculatorConfigs']", "Frete Viagem GT", "Frete Viagem GT");
				comboSearchAndSelect("[name='FOBT'] [name='freightCalculatorConfigs']", "FreteFobt", "FreteFobt");
				comboSearchAndSelect("[name='Venda'] [name='freightCalculatorConfigs']", "Frete Viagem GT", "Frete Viagem GT");
				comboSearchAndSelect("[name='Transferência'] [name='freightCalculatorConfigs']", "Frete Viagem GT", "Frete Viagem GT");
				comboSearchAndSelect("[name='CD-TS-DEP01'] [name='freightCalculatorConfigs']", "Frete Viagem GT", "Frete Viagem GT");
				comboSearchAndSelect("[name='CD-TS-DEP02'] [name='freightCalculatorConfigs']", "Frete Viagem GT", "Frete Viagem GT");
				elementClick("[name='buttonSubmit']");
				modalMessage("Sucesso", "A entidade foi salva com sucesso.");
				navigate.to("Cadastro", "Transportadoras");
				var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-TRAN-DEP02");
				countAfterInsertionPromise.then(function (regCount) {
					if (regCount === 1) {
						elementClick("[name='searchResultTable'] [name='CD-TRAN-DEP02'] [name='editButton']");
						assertTextFieldContent("[name='code']", "CD-TRAN-DEP02");
						assertTextFieldContent("[name='name']", "CD-TRAN-DEP02");
						assertTextFieldContent("[name='description']", "CD-TRAN-DEP02");
					} else {
						throw new Error("Erro! Uma transportadora era esperada, mas foram encontradas " + regCount);
					}
				});
			}
		});
};

/**
* Cria frete viagem
**/
exports.createDependenceTripFreight = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-FV-DEP01");
	countBeforeInsertionPromise
		.then(function (regCount) {
			if (regCount === 0) {
				elementClick("[name='cadastreButton']");
				fillText("[name='code']", "CD-FV-DEP01");
				fillText("[name='name']", "CD-FV-DEP01");
				fillText("[name='description']", "CD-FV-DEP01");
				elementClick("[name='buttonSubmit']");
				modalMessage("Sucesso", "A entidade foi salva com sucesso.");
				navigate.to("Administração", "Frete-Viagem");
				var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-FV-DEP01");
				countAfterInsertionPromise.then(function (regCount) {
					if (regCount === 1) {
						elementClick("[name='searchResultTable'] [name='CD-FV-DEP01'] [name='editButton']");
						assertTextFieldContent("[name='code']", "CD-FV-DEP01");
						assertTextFieldContent("[name='name']", "CD-FV-DEP01");
						assertTextFieldContent("[name='description']", "CD-FV-DEP01");
					} else {
						throw new Error("Erro! Um calculador de frete viagem era esperado, mas foram encontrados " + regCount);
					}
				});
			}
		});
};

/**
* Cria calculador de tipo de serviço
**/
exports.createDependenceServiceTypeCalculator = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-CTS-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-CTS-DEP01");
			fillText("[name='name']", "CD-CTS-DEP01");
			fillText("[name='description']", "DSC-CTS-01");
			comboSearchAndSelect("[name='originCarrierZoneGrouper']", "CD-AZT-DEP01", "NM-AZT-DEP01 - CD-AZT-DEP01");
			comboSearchAndSelect("[name='destinationCarrierZoneGrouper']", "CD-AZT-DEP01", "NM-AZT-DEP01 - CD-AZT-DEP01");
			elementClick("[name='tabFormulaScript'] a");
			var validScriptContent1 = "serviceType = null";
			updateScriptContent(validScriptContent1);
			elementClick("[name='addVariable addbutton']");
			fillText("[name='variableName0']", "Número de paradas");
			selectDropdownbyOption("[name='variableType0']", "[label='Inteiro']");
			elementClick("[name='addVariable addbutton']");
			fillText("[name='variableName1']", "Peso");
			selectDropdownbyOption("[name='variableType1']", "[label='Decimal']");
			elementClick("[name='addVariable addbutton']");
			fillText("[name='variableName2']", "Hub");
			selectDropdownbyOption("[name='variableType2']", "[label='Booleano']");
			elementClick("[name='addVariable addbutton']");
			fillText("[name='variableName3']", "Texto");
			selectDropdownbyOption("[name='variableType3']", "[label='Texto']");
			elementClick("[name='addVariable addbutton']");
			fillText("[name='variableName4']", "Origem");
			selectDropdownbyOption("[name='variableType4']", "[label='Localidade']");
			selectDropdownbyOption("[name='variableAssociatedType4']", "[label='Primeira origem']");
			elementClick("[name='addVariable addbutton']");
			fillText("[name='variableName5']", "Zona de transporte");
			selectDropdownbyOption("[name='variableType5']", "[label='Zona de transporte']");
			selectDropdownbyOption("[name='variableAssociatedType5']", "[label='Primeira zona de transporte']");
			elementClick("[name='addVariable addbutton']");
			fillText("[name='variableName6']", "Veículo");
			selectDropdownbyOption("[name='variableType6']", "[label='Veículo']");
			selectDropdownbyOption("[name='variableAssociatedType6']", "[label='Veículo']");
			elementClick("[name='addVariable addbutton']");
			fillText("[name='variableName7']", "Tipo de serviço");
			selectDropdownbyOption("[name='variableType7']", "[label='Tipo de serviço']");
			elementClick("[name='addVariable addbutton']");
			fillText("[name='variableName8']", "Transportadora");
			selectDropdownbyOption("[name='variableType8']", "[label='Transportadora']");
			selectDropdownbyOption("[name='variableAssociatedType8']", "[label='Transportadora']");
			elementClick("[name='addVariable addbutton']");
			fillText("[name='variableName9']", "Incoterm");
			selectDropdownbyOption("[name='variableType9']", "[label='Incoterm']");
			selectDropdownbyOption("[name='variableAssociatedType9']", "[label='Incoterm']");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
			navigate.to("Administração", "Calculadores de tipo de serviço");
		}
	});
};

/**
* Cria contextos de unitização
**/
exports.createDependenceUnitization1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-UNIT-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillBasicInfo("CD-UNIT-DEP01", "CD-UNIT-DEP01", "CD-UNIT-DEP01");
			comboSearchAndSelect("[name='arrangementConfig']", "CD-ARR-DEP01", "CD-ARR-DEP01");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

exports.createDependenceUnitization2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-UNIT-DEP02");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillBasicInfo("CD-UNIT-DEP02", "CD-UNIT-DEP02", "CD-UNIT-DEP02");
			comboSearchAndSelect("[name='arrangementConfig']", "CD-ARR-DEP01", "CD-ARR-DEP01");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* Cria contextos de agendamento
**/
exports.createDependenceScheduler1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-AGEN-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillBasicInfo("CD-AGEN-DEP01", "CD-AGEN-DEP01", "CD-AGEN-DEP01");
			comboSearchAndSelect("[name='defaultTaskComparatorFactory']", "Default", "Default");
			comboSearchAndSelect("[name='allocationType']", "Validação completa com alocação de docas", "Validação completa com alocação de docas");
			comboSearchAndSelect("[name='schedulerScript']", "Script de agendamento padrão", "Script de agendamento padrão - SimpleSchedulerScript");
			elementClick("[name='objectiveFunction']");
			fillText("[name='objective.function'] [name='filterLeft']", "Equalizar taxa de concentração");
			elementClick("[name='objective.function'] [name='ListLeft'] option[label='Equalizar taxa de concentração']");
			elementClick("[name='objective.function'] [name='moveToRight']");
			elementClick("[name='selectors']");
			fillText("[name='resourceSelector'] [name='filterLeft']", "Concentrar utilização de recursos");
			elementClick("[name='resourceSelector'] [name='ListLeft'] option[label='Concentrar utilização de recursos']");
			elementClick("[name='resourceSelector'] [name='moveToRight']");
			comboSearchAndSelect("[name='timeselector']", "Primeiro instante possível", "Primeiro instante possível");
			fillText("[name='taskSorter'] [name='filterLeft']", "Ordem de dependências");
			elementClick("[name='taskSorter'] [name='ListLeft'] option[label='Ordem de dependências']");
			elementClick("[name='taskSorter'] [name='moveToRight']");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

exports.createDependenceScheduler2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-AGEN-DEP02");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillBasicInfo("CD-AGEN-DEP02", "CD-AGEN-DEP02", "CD-AGEN-DEP02");
			comboSearchAndSelect("[name='defaultTaskComparatorFactory']", "Default", "Default");
			comboSearchAndSelect("[name='allocationType']", "Validação completa com alocação de docas", "Validação completa com alocação de docas");
			comboSearchAndSelect("[name='schedulerScript']", "Script de agendamento padrão", "Script de agendamento padrão - SimpleSchedulerScript");
			elementClick("[name='objectiveFunction']");
			fillText("[name='objective.function'] [name='filterLeft']", "Equalizar taxa de concentração");
			elementClick("[name='objective.function'] [name='ListLeft'] option[label='Equalizar taxa de concentração']");
			elementClick("[name='objective.function'] [name='moveToRight']");
			elementClick("[name='selectors']");
			fillText("[name='resourceSelector'] [name='filterLeft']", "Concentrar utilização de recursos");
			elementClick("[name='resourceSelector'] [name='ListLeft'] option[label='Concentrar utilização de recursos']");
			elementClick("[name='resourceSelector'] [name='moveToRight']");
			comboSearchAndSelect("[name='timeselector']", "Primeiro instante possível", "Primeiro instante possível");
			fillText("[name='taskSorter'] [name='filterLeft']", "Ordem de dependências");
			elementClick("[name='taskSorter'] [name='ListLeft'] option[label='Ordem de dependências']");
			elementClick("[name='taskSorter'] [name='moveToRight']");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
		}
	});
};

/**
* Cria contexto de arranjo 1
**/
exports.createDependenceArrangement1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-ARR-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-ARR-DEP01");
			fillText("[name='name']", "CD-ARR-DEP01");
			fillText("[name='description']", "CD-ARR-DEP01");
			fillNumber("[name='neckTolerance']", "1,00");
			fillNumber("[name='maxFlexibleWidthToForcePackageOfSpace']", "2,000");
			fillNumber("[name='maxArtificialSupportHeight']", "3,00");
			elementClick("[name='allowSpaceOverDrums']");
			elementClick("[name='allowSpaceOverTubes']");
			fillPercentage("[name='maxUtilRateToEscapeArrange']", "4,00");
			fillPercentage("[name='maxTubeUtilRateToEscapeArrange']", "5,00");
			fillPercentage("[name='maxUtilRateExpected']", "6,00");
			fillPercentage("[name='maxTubeUtilRateExpected']", "7,00");
			fillPercentage("[name='maxUtilRateToEscape3DC']", "8,00");
			fillPercentage("[name='maxTubeHeightToEscapePackArrange']", "9,00");
			fillNumber("[name='maxNumberOfBoxes3DC']", "10");
			fillNumber("[name='maxNumberOfBoxes3DCRouting']", "11");
			fillNumber("[name='millisToTimeOut']", "12");
			fillNumber("[name='numberOfArrangementThreads']", "13");
			fillNumber("[name='numberInvocations']", "14");
			fillPercentage("[name='removalPercent']", "15,00");
			fillNumber("[name='minNumberOfSolvers']", "16");
			fillPercentage("[name='solverRemovalMinimumUtilRate']", "17,00");
			elementClick("[name='restrictions'] a");
			comboSearchAndSelect("[name='arrangementPriorityConfig']", "Por parada", "Por parada");
			elementClick("[name='canPartitionPriority']");
			elementClick("[name='arrangementRestrictions'] .nlgDualListLeft option[label='Apoio sobre face frágil (produto ou categoria de produto)']");
			elementClick("[name='arrangementRestrictions'] [name='moveToRight']");
			fillNumber("[name='fragileFaceTolerance']", "18,00");
			fillNumber("[name='maxEmbeddingLevel']", "19");
			fillPercentage("[name='boxMinimumSupportRate']", "20,00");
			fillPercentage("[name='drumMinimumSupportRate']", "21,00");
			elementClick("[name='entity.arrangementRestrictions.activeRestrictPiled']");
			elementClick("[name='restrictOnCategory']");
			elementClick("[name='restrictOnProduct']");
			elementClick("[name='pileRestrictOnShipmentUnitWrapperCategory']");
			elementClick("[name='pileRestrictOnShipmentUnitWrapper']");
			elementClick("[name='pileRestrictOnShapePiling']");
			elementClick("[name='pileRestrictionOnShipmentUnitWrapperProductCategory']");
			elementClick("[name='restrictOnWeight']");
			fillNumber("[name='maxWeightTolerance']", "22,00");
			clearCombo("[name='axleBalancingEnum']");
			clearCombo("[name='lateralBalancingEnum']");
			comboSearchAndSelect("[name='axleBalancingEnum']", "Balanceamento de carga completa", "Balanceamento de carga completa");
			comboSearchAndSelect("[name='lateralBalancingEnum']", "Balanceamento por perna", "Balanceamento por perna");
			fillNumber("[name='layersPerBlock']", "23");
			elementClick("[name='solvers'] a");
			elementClick("[name='arrangementTypes'] .nlgDualListLeft option[label='Padrão']");
			elementClick("[name='arrangementTypes'] [name='moveToRight']");
			comboSearchAndSelect("[name='defaultArrangementType']", "Padrão", "Padrão");
			elementClick("[name='allowedSolvers'] .nlgDualListLeft option[label='GRV6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,63,63,0,0,0,0,0,0,0,0,100,5,1,0,0,0,0,0,0,0,0,0,0,0,0']");
			elementClick("[name='allowedSolvers'] [name='moveToRight']");
			elementClick("[name='comparators'] a");
			elementClick("[name='comparators'] .nlgDualListLeft option[label='Maior taxa de utilização (Volume)']");
			elementClick("[name='comparators'] [name='moveToRight']");
			elementClick("[name='scripts'] a");
			comboSearchAndSelect("[name='arrangementBoxGroupSelectorScript']", "Default-BoxGroupSelector", "Default-BoxGroupSelector");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
			navigate.to("Administração", "Arranjo");
			var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-ARR-DEP01");
			countAfterInsertionPromise.then(function (regCount) {
				if (regCount !== 1) {
					throw new Error("Erro! Um contexto de arranjo, mas foram encontrados " + regCount);
				}
				elementClick("[name='searchResultTable'] [name='CD-ARR-DEP01'] [name='editButton']");
				assertTextFieldContent("[name='code']", "CD-ARR-DEP01");
				assertTextFieldContent("[name='name']", "CD-ARR-DEP01");
				assertTextFieldContent("[name='description']", "CD-ARR-DEP01");
				assertNumberFieldContent("[name='neckTolerance']", "1,00");
				assertNumberFieldContent("[name='maxFlexibleWidthToForcePackageOfSpace']", "2,000");
				assertNumberFieldContent("[name='maxArtificialSupportHeight']", "3,00");
				assertSelectedCheckbox("[name='allowSpaceOverDrums']");
				assertSelectedCheckbox("[name='allowSpaceOverTubes']");
				assertPercentageFieldContent("[name='maxUtilRateToEscapeArrange']", "4,00");
				assertPercentageFieldContent("[name='maxTubeUtilRateToEscapeArrange']", "5,00");
				assertPercentageFieldContent("[name='maxUtilRateExpected']", "6,00");
				assertPercentageFieldContent("[name='maxTubeUtilRateExpected']", "7,00");
				assertPercentageFieldContent("[name='maxUtilRateToEscape3DC']", "8,00");
				assertPercentageFieldContent("[name='maxTubeHeightToEscapePackArrange']", "9,00");
				assertNumberFieldContent("[name='maxNumberOfBoxes3DC']", "10");
				assertNumberFieldContent("[name='maxNumberOfBoxes3DCRouting']", "11");
				assertNumberFieldContent("[name='millisToTimeOut']", "12");
				assertNumberFieldContent("[name='numberOfArrangementThreads']", "13");
				assertNumberFieldContent("[name='numberInvocations']", "14");
				assertPercentageFieldContent("[name='removalPercent']", "15,00");
				assertNumberFieldContent("[name='minNumberOfSolvers']", "16");
				assertPercentageFieldContent("[name='solverRemovalMinimumUtilRate']", "17,00");
				elementClick("[name='restrictions'] a");
				assertText("[name='arrangementPriorityConfig']", "Por parada");
				assertSelectedCheckbox("[name='canPartitionPriority']");
				assertText("[name='arrangementRestrictions'] .nlgDualListRight option", "Apoio sobre face frágil (produto ou categoria de produto)");
				assertNumberFieldContent("[name='fragileFaceTolerance']", "18,00");
				assertNumberFieldContent("[name='maxEmbeddingLevel']", "19");
				assertPercentageFieldContent("[name='boxMinimumSupportRate']", "20,00");
				assertPercentageFieldContent("[name='drumMinimumSupportRate']", "21,00");
				assertSelectedCheckbox("[name='entity.arrangementRestrictions.activeRestrictPiled']");
				assertSelectedCheckbox("[name='restrictOnCategory']");
				assertSelectedCheckbox("[name='restrictOnProduct']");
				assertSelectedCheckbox("[name='pileRestrictOnShipmentUnitWrapperCategory']");
				assertSelectedCheckbox("[name='pileRestrictOnShipmentUnitWrapper']");
				assertSelectedCheckbox("[name='pileRestrictOnShapePiling']");
				assertSelectedCheckbox("[name='pileRestrictionOnShipmentUnitWrapperProductCategory']");
				assertSelectedCheckbox("[name='restrictOnWeight']");
				assertNumberFieldContent("[name='maxWeightTolerance']", "22,00");
				assertText("[name='axleBalancingEnum']", "Balanceamento de carga completa");
				assertText("[name='lateralBalancingEnum']", "Balanceamento por perna");
				assertNumberFieldContent("[name='layersPerBlock']", "23");
				elementClick("[name='solvers'] a");
				assertText("[name='arrangementTypes'] .nlgDualListRight option", "Padrão");
				assertText("[name='defaultArrangementType']", "Padrão");
				assertText("[name='allowedSolvers'] .nlgDualListRight option", "GRV6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,63,63,0,0,0,0,0,0,0,0,100,5,1,0,0,0,0,0,0,0,0,0,0,0,0");
				elementClick("[name='comparators'] a");
				assertText("[name='comparators'] .nlgDualListRight option", "Maior taxa de utilização (Volume)");
				elementClick("[name='scripts'] a");
				assertText("[name='arrangementBoxGroupSelectorScript']", "Default-BoxGroupSelector");
			});
		}
	});
};

/**
* Exclui conexto de arranjo 1
**/
exports.deleteDependenceArrangement1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-ARR-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-ARR-DEP01'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
			elementClick("[name='resetButton']");
			elementClick("[name='headerNeologLogo']");
			navigate.to("Cadastro", "Veículos");
			var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-ARR-DEP01");
			countAfterInsertionPromise.then(function (regCount) {
				if (regCount !== 0) {
					throw new Error("Erro! Nenhum contexto de arranjo era esperado, mas foram encontrados " + regCount);
				}
			});
		}
	});
};

/**
* Cria contexto de arranjo 2
**/
exports.createDependenceArrangement2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-ARR-DEP02");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-ARR-DEP02");
			fillText("[name='name']", "CD-ARR-DEP02");
			fillText("[name='description']", "CD-ARR-DEP02");
			fillNumber("[name='neckTolerance']", "1,00");
			fillNumber("[name='maxFlexibleWidthToForcePackageOfSpace']", "2,000");
			fillNumber("[name='maxArtificialSupportHeight']", "3,00");
			elementClick("[name='allowSpaceOverDrums']");
			elementClick("[name='allowSpaceOverTubes']");
			fillPercentage("[name='maxUtilRateToEscapeArrange']", "4,00");
			fillPercentage("[name='maxTubeUtilRateToEscapeArrange']", "5,00");
			fillPercentage("[name='maxUtilRateExpected']", "6,00");
			fillPercentage("[name='maxTubeUtilRateExpected']", "7,00");
			fillPercentage("[name='maxUtilRateToEscape3DC']", "8,00");
			fillPercentage("[name='maxTubeHeightToEscapePackArrange']", "9,00");
			fillNumber("[name='maxNumberOfBoxes3DC']", "10");
			fillNumber("[name='maxNumberOfBoxes3DCRouting']", "11");
			fillNumber("[name='millisToTimeOut']", "12");
			fillNumber("[name='numberOfArrangementThreads']", "13");
			fillNumber("[name='numberInvocations']", "14");
			fillPercentage("[name='removalPercent']", "15,00");
			fillNumber("[name='minNumberOfSolvers']", "16");
			fillPercentage("[name='solverRemovalMinimumUtilRate']", "17,00");
			elementClick("[name='restrictions'] a");
			comboSearchAndSelect("[name='arrangementPriorityConfig']", "Por parada", "Por parada");
			elementClick("[name='canPartitionPriority']");
			elementClick("[name='arrangementRestrictions'] .nlgDualListLeft option[label='Apoio sobre face frágil (produto ou categoria de produto)']");
			elementClick("[name='arrangementRestrictions'] [name='moveToRight']");
			fillNumber("[name='fragileFaceTolerance']", "18,00");
			fillNumber("[name='maxEmbeddingLevel']", "19");
			fillPercentage("[name='boxMinimumSupportRate']", "20,00");
			fillPercentage("[name='drumMinimumSupportRate']", "21,00");
			elementClick("[name='entity.arrangementRestrictions.activeRestrictPiled']");
			elementClick("[name='restrictOnCategory']");
			elementClick("[name='restrictOnProduct']");
			elementClick("[name='pileRestrictOnShipmentUnitWrapperCategory']");
			elementClick("[name='pileRestrictOnShipmentUnitWrapper']");
			elementClick("[name='pileRestrictOnShapePiling']");
			elementClick("[name='pileRestrictionOnShipmentUnitWrapperProductCategory']");
			elementClick("[name='restrictOnWeight']");
			fillNumber("[name='maxWeightTolerance']", "22,00");
			clearCombo("[name='axleBalancingEnum']");
			clearCombo("[name='lateralBalancingEnum']");
			comboSearchAndSelect("[name='axleBalancingEnum']", "Balanceamento de carga completa", "Balanceamento de carga completa");
			comboSearchAndSelect("[name='lateralBalancingEnum']", "Balanceamento por perna", "Balanceamento por perna");
			fillNumber("[name='layersPerBlock']", "23");
			elementClick("[name='solvers'] a");
			elementClick("[name='arrangementTypes'] .nlgDualListLeft option[label='Padrão']");
			elementClick("[name='arrangementTypes'] [name='moveToRight']");
			comboSearchAndSelect("[name='defaultArrangementType']", "Padrão", "Padrão");
			elementClick("[name='allowedSolvers'] .nlgDualListLeft option[label='GRV6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,63,63,0,0,0,0,0,0,0,0,100,5,1,0,0,0,0,0,0,0,0,0,0,0,0']");
			elementClick("[name='allowedSolvers'] [name='moveToRight']");
			elementClick("[name='comparators'] a");
			elementClick("[name='comparators'] .nlgDualListLeft option[label='Maior taxa de utilização (Volume)']");
			elementClick("[name='comparators'] [name='moveToRight']");
			elementClick("[name='scripts'] a");
			comboSearchAndSelect("[name='arrangementBoxGroupSelectorScript']", "Default-BoxGroupSelector", "Default-BoxGroupSelector");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
			navigate.to("Administração", "Arranjo");
			var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-ARR-DEP02");
			countAfterInsertionPromise.then(function (regCount) {
				if (regCount !== 1) {
					throw new Error("Erro! Um contexto de arranjo, mas foram encontrados " + regCount);
				}
				elementClick("[name='searchResultTable'] [name='CD-ARR-DEP02'] [name='editButton']");
				assertTextFieldContent("[name='code']", "CD-ARR-DEP02");
				assertTextFieldContent("[name='name']", "CD-ARR-DEP02");
				assertTextFieldContent("[name='description']", "CD-ARR-DEP02");
				assertNumberFieldContent("[name='neckTolerance']", "1,00");
				assertNumberFieldContent("[name='maxFlexibleWidthToForcePackageOfSpace']", "2,000");
				assertNumberFieldContent("[name='maxArtificialSupportHeight']", "3,00");
				assertSelectedCheckbox("[name='allowSpaceOverDrums']");
				assertSelectedCheckbox("[name='allowSpaceOverTubes']");
				assertPercentageFieldContent("[name='maxUtilRateToEscapeArrange']", "4,00");
				assertPercentageFieldContent("[name='maxTubeUtilRateToEscapeArrange']", "5,00");
				assertPercentageFieldContent("[name='maxUtilRateExpected']", "6,00");
				assertPercentageFieldContent("[name='maxTubeUtilRateExpected']", "7,00");
				assertPercentageFieldContent("[name='maxUtilRateToEscape3DC']", "8,00");
				assertPercentageFieldContent("[name='maxTubeHeightToEscapePackArrange']", "9,00");
				assertNumberFieldContent("[name='maxNumberOfBoxes3DC']", "10");
				assertNumberFieldContent("[name='maxNumberOfBoxes3DCRouting']", "11");
				assertNumberFieldContent("[name='millisToTimeOut']", "12");
				assertNumberFieldContent("[name='numberOfArrangementThreads']", "13");
				assertNumberFieldContent("[name='numberInvocations']", "14");
				assertPercentageFieldContent("[name='removalPercent']", "15,00");
				assertNumberFieldContent("[name='minNumberOfSolvers']", "16");
				assertPercentageFieldContent("[name='solverRemovalMinimumUtilRate']", "17,00");
				elementClick("[name='restrictions'] a");
				assertText("[name='arrangementPriorityConfig']", "Por parada");
				assertSelectedCheckbox("[name='canPartitionPriority']");
				assertText("[name='arrangementRestrictions'] .nlgDualListRight option", "Apoio sobre face frágil (produto ou categoria de produto)");
				assertNumberFieldContent("[name='fragileFaceTolerance']", "18,00");
				assertNumberFieldContent("[name='maxEmbeddingLevel']", "19");
				assertPercentageFieldContent("[name='boxMinimumSupportRate']", "20,00");
				assertPercentageFieldContent("[name='drumMinimumSupportRate']", "21,00");
				assertSelectedCheckbox("[name='entity.arrangementRestrictions.activeRestrictPiled']");
				assertSelectedCheckbox("[name='restrictOnCategory']");
				assertSelectedCheckbox("[name='restrictOnProduct']");
				assertSelectedCheckbox("[name='pileRestrictOnShipmentUnitWrapperCategory']");
				assertSelectedCheckbox("[name='pileRestrictOnShipmentUnitWrapper']");
				assertSelectedCheckbox("[name='pileRestrictOnShapePiling']");
				assertSelectedCheckbox("[name='pileRestrictionOnShipmentUnitWrapperProductCategory']");
				assertSelectedCheckbox("[name='restrictOnWeight']");
				assertNumberFieldContent("[name='maxWeightTolerance']", "22,00");
				assertText("[name='axleBalancingEnum']", "Balanceamento de carga completa");
				assertText("[name='lateralBalancingEnum']", "Balanceamento por perna");
				assertNumberFieldContent("[name='layersPerBlock']", "23");
				elementClick("[name='solvers'] a");
				assertText("[name='arrangementTypes'] .nlgDualListRight option", "Padrão");
				assertText("[name='defaultArrangementType']", "Padrão");
				assertText("[name='allowedSolvers'] .nlgDualListRight option", "GRV6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,63,63,0,0,0,0,0,0,0,0,100,5,1,0,0,0,0,0,0,0,0,0,0,0,0");
				elementClick("[name='comparators'] a");
				assertText("[name='comparators'] .nlgDualListRight option", "Maior taxa de utilização (Volume)");
				elementClick("[name='scripts'] a");
				assertText("[name='arrangementBoxGroupSelectorScript']", "Default-BoxGroupSelector");
			});
		}
	});
};

/**
* Exclui contexto de arranjo 2
**/
exports.deleteDependenceArrangement2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-ARR-DEP02");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-ARR-DEP02'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
			elementClick("[name='resetButton']");
			elementClick("[name='headerNeologLogo']");
			navigate.to("Cadastro", "Veículos");
			var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-ARR-DEP02");
			countAfterInsertionPromise.then(function (regCount) {
				if (regCount !== 0) {
					throw new Error("Erro! Nenhum contexto de arranjo era esperado, mas foram encontrados " + regCount);
				}
			});
		}
	});
};

/**
* 
* Cria restrição de localidade 1
* 
**/
//FIXME
exports.createDependenceLocalityRestriction1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-RESLOC-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-RESLOC-DEP01");
			fillText("[name='name']", "CD-RESLOC-DEP01");
			fillText("[name='description']", "CD-RESLOC-DEP01");
			elementClick("[name='functioning'] a");
			comboSearchAndSelect("[name='entity.loadUnloadTimeCalculatorScript']", "Calculador de duração de serviço linear (Localidade)", "Calculador de duração de serviço linear (Localidade)");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
			navigate.to("Cadastro", "Restrições de localidade");
			var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-RESLOC-DEP01");
			countAfterInsertionPromise.then(function (regCount) {
				if (regCount !== 1) {
					throw new Error("Erro! Uma restrição de localidade era esperada, mas foram encontradas " + regCount);
				}
			});
		}
	});
};

/**
* Cria restrição de localidade 2
**/
exports.createDependenceLocalityRestriction2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-RESLOC-DEP02");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-RESLOC-DEP02");
			fillText("[name='name']", "CD-RESLOC-DEP02");
			fillText("[name='description']", "CD-RESLOC-DEP02");
			elementClick("[name='functioning'] a");
			comboSearchAndSelect("[name='entity.loadUnloadTimeCalculatorScript']", "Calculador de duração de serviço linear (Localidade)", "Calculador de duração de serviço linear (Localidade)");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
			navigate.to("Cadastro", "Restrições de localidade");
			var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-RESLOC-DEP02");
			countAfterInsertionPromise.then(function (regCount) {
				if (regCount !== 1) {
					throw new Error("Erro! Uma restrição de localidade era esperada, mas foram encontradas " + regCount);
				}
			});
		}
	});
};

/**
* Cria de tipo de serviço
*/
exports.createDependenceServiceType1 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-TS-DEP01");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-TS-DEP01");
			fillText("[name='name']", "CD-TS-DEP01");
			fillText("[name='description']", "CD-TS-DEP01");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
			navigate.to("Administração", "Tipos de serviço");
			var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-TS-DEP01");
			countAfterInsertionPromise.then(function (regCount) {
				if (regCount !== 1) {
					throw new Error("Erro! Um tipo de serviço era esperado, mas foram encontrados " + regCount);
				}
				elementClick("[name='searchResultTable'] [name='CD-TS-DEP01'] [name='editButton']");
				assertTextFieldContent("[name='code']", "CD-TS-DEP01");
				assertTextFieldContent("[name='name']", "CD-TS-DEP01");
				assertTextFieldContent("[name='description']", "CD-TS-DEP01");
			});
		}
	});
};

exports.createDependenceServiceType2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-TS-DEP02");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='cadastreButton']");
			fillText("[name='code']", "CD-TS-DEP02");
			fillText("[name='name']", "CD-TS-DEP02");
			fillText("[name='description']", "CD-TS-DEP02");
			elementClick("[name='buttonSubmit']");
			modalMessage("Sucesso", "A entidade foi salva com sucesso.");
			navigate.to("Administração", "Tipos de serviço");
			var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-TS-DEP02");
			countAfterInsertionPromise.then(function (regCount) {
				if (regCount !== 1) {
					throw new Error("Erro! Um tipo de serviço era esperado, mas foram encontrados " + regCount);
				}
				elementClick("[name='searchResultTable'] [name='CD-TS-DEP02'] [name='editButton']");
				assertTextFieldContent("[name='code']", "CD-TS-DEP02");
				assertTextFieldContent("[name='name']", "CD-TS-DEP02");
				assertTextFieldContent("[name='description']", "CD-TS-DEP02");
			});
		}
	});
};

exports.deleteDependenceServiceType2 = function () {
	var countBeforeInsertionPromise = filterBySourceIdAndGetCount("CD-TS-DEP02");
	countBeforeInsertionPromise.then(function (regCount) {
		if (regCount === 1) {
			elementClick("[name='searchResultTable'] [name='CD-TS-DEP02'] [name='deleteButton']");
			confirmModalMessage("Atenção", "Tem certeza que deseja excluir esta entidade?");
			modalMessage("Sucesso", "Entidade removida com sucesso.");
			elementClick("[name='resetButton']");
			elementClick("[name='headerNeologLogo']");
			navigate.to("Cadastro", "Restrições de localidade");
			var countAfterInsertionPromise = filterBySourceIdAndGetCount("CD-TS-DEP02");
			countAfterInsertionPromise.then(function (regCount) {
				if (regCount !== 0) {
					throw new Error("Erro! Nenhum tipo de serviço era esperado, mas foram encontrados " + regCount);
				}
			});
		}
	});
};

exports.createDefaultEntity = function () {
	navigate.to("Administração", "Entidades padrão");
	comboSearchAndSelect("[name='entityTemplatePossibilities']", "Zona de transporte", "Zona de transporte");
	comboSearchAndSelect("[name='defaultEntity.floor']", "CD-ZTC-01", "NM-ZTC-01EDT - CD-ZTC-01");
	comboSearchAndSelect("[name='defaultEntity.def']", "CD-ZTC-01", "NM-ZTC-01EDT - CD-ZTC-01");
	comboSearchAndSelect("[name='defaultEntity.ceil']", "CD-ZTC-01", "NM-ZTC-01EDT - CD-ZTC-01");
	elementClick("[name='buttonSave']");
	modalMessage("Sucesso", "As regras foram salvas com sucesso");
};

exports.deleteDefaultEntity = function () {
	navigate.to("Administração", "Entidades padrão");
	comboSearchAndSelect("[name='entityTemplatePossibilities']", "Zona de transporte", "Zona de transporte");
	elementClick("[name='remove']");
	elementClick("[name='buttonSave']");
	modalMessage("Sucesso", "As regras foram salvas com sucesso");
};

exports.upgradeScritDefaultOptimizationScript = function () {
	return "package br.com.neolog.script.def.optimization;\
	\
	import static br.com.neolog.routing.engine.script.commands.RoutingCommands.getCurrentPlan;\
	import static br.com.neolog.routing.engine.script.commands.RoutingCommands.markDeliveryUnitGroups;\
	import static br.com.neolog.routing.engine.script.commands.RoutingCommands.markUnfeasibleDeliveryUnits;\
	import static br.com.neolog.routing.engine.script.commands.RoutingCommands.setDependenciesFinder;\
	import static br.com.neolog.routing.engine.script.commands.RoutingCommands.setDestinationLegToInsertSelectorType;\
	import static br.com.neolog.routing.engine.script.commands.RoutingCommands.setOriginDestinationLegsToInsertSelectorType;\
	import static br.com.neolog.routing.engine.script.commands.RoutingCommands.updateIncumbentPlan;\
	import static br.com.neolog.routing.engine.script.commands.RoutingCommands.updateTimeConfigurationsWithScheduler;\
	import static br.com.neolog.routing.engine.script.commands.strategy.RoutingStrategies.consolidateByMovingGroup;\
	import static br.com.neolog.routing.engine.script.commands.strategy.RoutingStrategies.intensiveSwap;\
	import static br.com.neolog.routing.engine.script.commands.strategy.RoutingStrategies.intensiveSwapIntra;\
	import static br.com.neolog.routing.engine.script.commands.strategy.RoutingStrategies.pushForwardInsertionHeuristic;\
	\
	import br.com.neolog.routing.core.spi.TimeConfigurationSupplier;\
	import br.com.neolog.routing.engine.commands.mark.StandardGroupStrategies;\
	import br.com.neolog.routing.engine.script.commands.RoutingCommands;\
	import br.com.neolog.routing.handlers.ContextHandler;\
	import br.com.neolog.routing.handlers.IncumbentPlanComparatorHandler;\
	import br.com.neolog.routing.hub.StandardDestinationHubSelectors;\
	import br.com.neolog.routing.leg.DestinationLegSelector.DestinationLegSelectorType;\
	import br.com.neolog.routing.leg.MinimizeDistanceDestinationLegSelector.FeasibleStrategy;\
	import br.com.neolog.routing.leg.MinimizeDistanceDestinationLegSelector.UnfeasibleStrategy;\
	import br.com.neolog.routing.leg.OriginDestinationLegsSelector.OriginDestinationLegsSelectorType;\
	import br.com.neolog.routing.remote.validation.ModeAwareTimeConfigurationSupplier;\
	import br.com.neolog.routing.script.OptimizationScript;\
	import br.com.neolog.routing.strategy.insertion.heuristic.StandardDeliveryUnitGroupSelectionStrategy;\
	import br.com.neolog.scriptversioning.VersionedScript;\
	\
	@VersionedScript(\
		sourceId = DefaultOptimizationScript.SOURCE_ID,\
		name = DefaultOptimizationScript.NAME,\
		description = DefaultOptimizationScript.NAME,\
		type = \"OPTIMIZATION_SCRIPT\" )\
	final class DefaultOptimizationScript\
		implements\
			OptimizationScript\
	{\
		static final String SOURCE_ID = \"DefaultOptimizationScript\";\
		static final String NAME = \"Script padrão de otimização\";\
	\
		@Override\
		public void run()\
		{\
			setDependenciesFinder();\
			setOriginDestinationLegsToInsertSelectorType( OriginDestinationLegsSelectorType.FIRST );\
			setDestinationLegToInsertSelectorType( DestinationLegSelectorType.MINIMIZE_DISTANCE, 4, FeasibleStrategy.TAKE_FIRST,\
				UnfeasibleStrategy.QUIT );\
			final TimeConfigurationSupplier timeConfigurationSupplier = ContextHandler.getCurrentContext().getTimeConfigurationSupplier();\
			if( timeConfigurationSupplier instanceof ModeAwareTimeConfigurationSupplier ) {\
				( (ModeAwareTimeConfigurationSupplier) timeConfigurationSupplier ).setMode( ModeAwareTimeConfigurationSupplier.SIMPLE );\
			}\
	\
		   // RoutingCommands.splitAndUnitize();\
			markDeliveryUnitGroups( getCurrentPlan().getUnroutedDeliveryUnits(), StandardGroupStrategies.ORDER );\
			markUnfeasibleDeliveryUnits( false );\
			consolidateByMovingGroup();\
	\
			// Fase de melhoria, incumbentPlan deve ser utilizado\
			updateIncumbentPlan();\
	\
			pushForwardInsertionHeuristic( 0.7, 0.1, 0.2, StandardDeliveryUnitGroupSelectionStrategy.TAKE_FIRST,\
				StandardDestinationHubSelectors.MINIMIZE_DISTANCE );\
			IncumbentPlanComparatorHandler.getIncumbentPlanComparator().updateIncumbentOrCurrentPlan();\
	\
			for( int i = 0; i < 100; i++ ) {\
				intensiveSwap( 2, 1000, \"derived\", 30 );\
				IncumbentPlanComparatorHandler.getIncumbentPlanComparator().updateIncumbentOrCurrentPlan();\
				intensiveSwap( 3, 100, \"derived\", 5 );\
				IncumbentPlanComparatorHandler.getIncumbentPlanComparator().updateIncumbentOrCurrentPlan();\
			}\
			intensiveSwapIntra( 3, 100, \"derived\", 5 );\
			IncumbentPlanComparatorHandler.getIncumbentPlanComparator().updateIncumbentOrCurrentPlan();\
	\
			if( timeConfigurationSupplier instanceof ModeAwareTimeConfigurationSupplier ) {\
				( (ModeAwareTimeConfigurationSupplier) timeConfigurationSupplier ).setMode( ModeAwareTimeConfigurationSupplier.SCHEDULER_FULL );\
				updateTimeConfigurationsWithScheduler();\
				updateIncumbentPlan();\
			}\
		}\
	\
	}";
}

function setOrderClassification(classification) {
	if (CLIENT_NAME === "mcb") {
		scroll.toElement(element(by.xpath("//a[1 and text()='" + "Classificações" + "']"))).click();
		const el = "[name='classification']";
		return addTextTags(el, classification);
	}
}

function cadastradoItemDePedido(OriginLocality, product, orderItemType, Wrapper) {
	//aba itens de pedido
	scroll.toElement(element(by.xpath("//a[1 and text()='" + "Itens de pedidos" + "']"))).click();
	//item de pedido
	var countItensBeforeMove = element.all(by.css("[name='orderItemTable'] tbody tr")).count();
	countItensBeforeMove.then(function (regCount) {
		if (regCount === 0) {
			elementClick("[name='addOrderItemButton']");
			elementClick("[name='editOrderItem']");
		} else {
			elementClick("[name='addOrderItemButton']");
			elementClick("[name='1'] [name='editOrderItem']");
		}
	});
	return fillOrderItem(OriginLocality, product, orderItemType, Wrapper);
}

function addOrderItem(OriginLocality, product, orderItemType, Wrapper, quantityOfOrdemItem) {
	var quantityOfOrdemItem = quantityOfOrdemItem || 1
	for (var quantity = 0; quantity < quantityOfOrdemItem; quantity++) {
		elementClick("[name='addOrderItemButton']");
		elementClick("[name='" + quantity + "'] [name='editOrderItem']");
		fillOrderItem(OriginLocality, product, orderItemType, Wrapper);
	}
};

function fillOrderItem(OriginLocality, product, orderItemType, Wrapper) {
	//localidade de Origem
	utils.fillTextxpath("//*[@name='orderItem.origin']/*[@name='tagInputTextField']", OriginLocality);
	// comboSearchAndSelect("[name='orderItem.origin']", OriginLocality, OriginLocality);
	//Produto
	utils.elementClickXpath("//*[@name='orderItem.product']/*[@name='tagInputTextField']").sendKeys(protractor.Key.BACK_SPACE);
	// browser.actions().sendKeys(protractor.Key.BACK_SPACE);
	utils.fillTextxpath("//*[@name='orderItem.product']/*[@name='tagInputTextField']", product);
	//Tipo de pedido
	utils.fillTextxpath("//*[@name='orderItem.orderItemType']/*[@name='tagInputTextField']", orderItemType);
	// comboSearchAndSelect("[name='orderItem.orderItemType']", orderItemType, orderItemType);
	//Involucro
	utils.fillTextxpath("//*[@name='orderItem.shipmentUnitWrapper']/*[@name='tagInputTextField']", Wrapper);
	// comboSearchAndSelect("[name='orderItem.shipmentUnitWrapper']", Wrapper, Wrapper);
	//Orientações
	elementClick("[name='orderItem.lwhAllow']");
	elementClick("[name='orderItem.lhwAllow']");
	elementClick("[name='orderItem.hlwAllow']");
	elementClick("[name='orderItem.hwlAllow']");
	elementClick("[name='orderItem.wlhAllow']");
	elementClick("[name='orderItem.whlAllow']");
	//total de produtos 
	fillNumber("[name='orderItem.quantity']", "10");
	//Quantidade de UEs
	fillNumber("[name='orderItem.quantityInShipmentUnits']", "10");
	//UE completa
	fillNumber("[name='orderItem.quantityOfProductsInShipmentUnits']", "1");
	elementClick("[name='buttonApply']");
};