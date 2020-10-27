"use strict";

const utils = require('../scripts/utils'),
    fillCombo = utils.fillCombo,
    elementClick = utils.elementClick,
    fillText = utils.fillText,
    present = require("../scripts/wait").present,
    dblClick = require("../scripts/events").dblClick,
    fillBasicInfo = require("../scripts/fillBasicEntity").fillBasicEntityInfo,
    scroll = require("../scripts/scroll"),
    taginput = require("../scripts/taginput"),
    filter = require("../scripts/filter"),
    validaMensagem = require("../scripts/messages").validaMensagem;
    
const { moveLeftToRigth, moveRigthToLeft } = require('../scripts/transferPanel');