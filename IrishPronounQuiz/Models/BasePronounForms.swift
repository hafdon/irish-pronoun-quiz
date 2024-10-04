// BasePronounForms.swift

import Foundation

let basePronounForms: [BasePronounForm] = [
    // Preposition: faoi
    BasePronounForm(preposition: .faoi, meaning: "under me", form: "fúm", audioFileName: .faoiFum),
    BasePronounForm(preposition: .faoi, meaning: "under you", form: "fút", audioFileName: .faoiFut),
    BasePronounForm(preposition: .faoi, meaning: "under him", form: "faoi", audioFileName: .faoiFaoi),
    BasePronounForm(preposition: .faoi, meaning: "under her", form: "fúithi", audioFileName: .faoiFuithi),
    BasePronounForm(preposition: .faoi, meaning: "under us", form: "fúinn", audioFileName: .faoiFuinn),
    BasePronounForm(preposition: .faoi, meaning: "under you all", form: "fúibh", audioFileName: .faoiFuibh),
    BasePronounForm(preposition: .faoi, meaning: "under them", form: "fúthu", audioFileName: .faoiFuthu),
    
    // Preposition: ag_
    BasePronounForm(preposition: .ag_, meaning: "at them", form: "acu", audioFileName: .agAcu),
    BasePronounForm(preposition: .ag_, meaning: "at you all", form: "agaibh", audioFileName: .agAgaibh),
    BasePronounForm(preposition: .ag_, meaning: "at us", form: "againn", audioFileName: .agAgainn),
    BasePronounForm(preposition: .ag_, meaning: "at me", form: "agam", audioFileName: .agAgam),
    BasePronounForm(preposition: .ag_, meaning: "at you", form: "agat", audioFileName: .agAgat),
    BasePronounForm(preposition: .ag_, meaning: "at her", form: "aici", audioFileName: .agAici),
    BasePronounForm(preposition: .ag_, meaning: "at him", form: "aige", audioFileName: .agAige),
    
    // Preposition: ar
    BasePronounForm(preposition: .ar, meaning: "on him", form: "air", audioFileName: .arAir),
    BasePronounForm(preposition: .ar, meaning: "on you all", form: "oraibh", audioFileName: .arOraibh),
    BasePronounForm(preposition: .ar, meaning: "on us", form: "orainn", audioFileName: .arOrainn),
    BasePronounForm(preposition: .ar, meaning: "on me", form: "orm", audioFileName: .arOrm),
    BasePronounForm(preposition: .ar, meaning: "on you", form: "ort", audioFileName: .arOrt),
    BasePronounForm(preposition: .ar, meaning: "on them", form: "orthu", audioFileName: .arOrthu),
    BasePronounForm(preposition: .ar, meaning: "on her", form: "uirthi", audioFileName: .arUirthi),
    
    // Preposition: as_
    BasePronounForm(preposition: .as_, meaning: "out of her", form: "aisti", audioFileName: .asAisti),
    BasePronounForm(preposition: .as_, meaning: "out of him", form: "as", audioFileName: .asAs),
    BasePronounForm(preposition: .as_, meaning: "out of you all", form: "asaibh", audioFileName: .asAsaibh),
    BasePronounForm(preposition: .as_, meaning: "out of us", form: "asainn", audioFileName: .asAsainn),
    BasePronounForm(preposition: .as_, meaning: "out of me", form: "asam", audioFileName: .asAsam),
    BasePronounForm(preposition: .as_, meaning: "out of you", form: "asat", audioFileName: .asAsat),
    BasePronounForm(preposition: .as_, meaning: "out of them", form: "astu", audioFileName: .asAstu),
    
    // Preposition: de
    BasePronounForm(preposition: .de, meaning: "from him", form: "de", audioFileName: .deDe),
    BasePronounForm(preposition: .de, meaning: "from her", form: "di", audioFileName: .deDi),
    BasePronounForm(preposition: .de, meaning: "from you all", form: "díbh", audioFileName: .deDibh),
    BasePronounForm(preposition: .de, meaning: "from us", form: "dínn", audioFileName: .deDinn),
    BasePronounForm(preposition: .de, meaning: "from them", form: "díobh", audioFileName: .deDiobh),
    BasePronounForm(preposition: .de, meaning: "from me", form: "díom", audioFileName: .deDiom),
    BasePronounForm(preposition: .de, meaning: "from you", form: "díot", audioFileName: .deDiot),
    
    // Preposition: do_
    BasePronounForm(preposition: .do_, meaning: "to you all", form: "daoibh", audioFileName: .doDaoibh),
    BasePronounForm(preposition: .do_, meaning: "to her", form: "di", audioFileName: .doDi),
    BasePronounForm(preposition: .do_, meaning: "to him", form: "dó", audioFileName: .doDo),
    BasePronounForm(preposition: .do_, meaning: "to them", form: "dóibh", audioFileName: .doDoibh),
    BasePronounForm(preposition: .do_, meaning: "to me", form: "dom", audioFileName: .doDom),
    BasePronounForm(preposition: .do_, meaning: "to us", form: "dúinn", audioFileName: .doDuinn),
    BasePronounForm(preposition: .do_, meaning: "to you", form: "duit", audioFileName: .doDuit),
    
    // Preposition: i
    BasePronounForm(preposition: .i, meaning: "in him", form: "ann", audioFileName: .iAnn),
    BasePronounForm(preposition: .i, meaning: "in her", form: "inti", audioFileName: .iInti),
    BasePronounForm(preposition: .i, meaning: "in you all", form: "ionaibh", audioFileName: .iIonaibh),
    BasePronounForm(preposition: .i, meaning: "in us", form: "ionainn", audioFileName: .iIonainn),
    BasePronounForm(preposition: .i, meaning: "in me", form: "ionam", audioFileName: .iIonam),
    BasePronounForm(preposition: .i, meaning: "in you", form: "ionat", audioFileName: .iIonat),
    BasePronounForm(preposition: .i, meaning: "in them", form: "iontu", audioFileName: .iIontu),
    
    // Preposition: idir
    BasePronounForm(preposition: .idir, meaning: "between you all", form: "eadraibh", audioFileName: .idirEadraibh),
    BasePronounForm(preposition: .idir, meaning: "between us", form: "eadrainn", audioFileName: .idirEadrainn),
    BasePronounForm(preposition: .idir, meaning: "between them", form: "eatarthu", audioFileName: .idirEatarthu),
    
    // Preposition: le
    BasePronounForm(preposition: .le, meaning: "with you", form: "leat", audioFileName: .leLeat),
    BasePronounForm(preposition: .le, meaning: "with her", form: "léi", audioFileName: .leLei),
    BasePronounForm(preposition: .le, meaning: "with him", form: "leis", audioFileName: .leLeis),
    BasePronounForm(preposition: .le, meaning: "with them", form: "leo", audioFileName: .leLeo),
    BasePronounForm(preposition: .le, meaning: "with you all", form: "libh", audioFileName: .leLibh),
    BasePronounForm(preposition: .le, meaning: "with us", form: "linn", audioFileName: .leLinn),
    BasePronounForm(preposition: .le, meaning: "with me", form: "liom", audioFileName: .leLiom),
    
    // Preposition: ó
    BasePronounForm(preposition: .ó, meaning: "from you all", form: "uaibh", audioFileName: .oUaibh),
    BasePronounForm(preposition: .ó, meaning: "from him", form: "uaidh", audioFileName: .oUaidh),
    BasePronounForm(preposition: .ó, meaning: "from me", form: "uaim", audioFileName: .oUaim),
    BasePronounForm(preposition: .ó, meaning: "from us", form: "uainn", audioFileName: .oUainn),
    BasePronounForm(preposition: .ó, meaning: "from you", form: "uait", audioFileName: .oUait),
    BasePronounForm(preposition: .ó, meaning: "from her", form: "uaithi", audioFileName: .oUaithi),
    BasePronounForm(preposition: .ó, meaning: "from them", form: "uathu", audioFileName: .oUathu)
    
    // Add more base forms as needed
]
