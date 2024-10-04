// DataProvider.swift

import Foundation

struct PronounFormRepository {
    static let allPronounForms: [PronounForm] = [
        // Preposition: faoi
        PronounForm(
            dialect: .connacht,
            preposition: .faoi,
            meaning: "under me",
            form: "fúm",
            audioFileName: .faoiFum
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .faoi,
            meaning: "under you",
            form: "fút",
            audioFileName: .faoiFut
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .faoi,
            meaning: "under him",
            form: "faoi",
            audioFileName: .faoiFaoi
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .faoi,
            meaning: "under her",
            form: "fúithi",
            audioFileName: .faoiFuithi
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .faoi,
            meaning: "under us",
            form: "fúinn",
            audioFileName: .faoiFuinn
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .faoi,
            meaning: "under you all",
            form: "fúibh",
            audioFileName: .faoiFuibh
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .faoi,
            meaning: "under them",
            form: "fúthu",
            audioFileName: .faoiFuthu
        ),
        
        // Preposition: ag_
        PronounForm(
            dialect: .connacht,
            preposition: .ag_,
            meaning: "at them",
            form: "acu",
            audioFileName: .agAcu
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .ag_,
            meaning: "at you all",
            form: "agaibh",
            audioFileName: .agAgaibh
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .ag_,
            meaning: "at us",
            form: "againn",
            audioFileName: .agAgainn
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .ag_,
            meaning: "at me",
            form: "agam",
            audioFileName: .agAgam
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .ag_,
            meaning: "at you",
            form: "agat",
            audioFileName: .agAgat
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .ag_,
            meaning: "at her",
            form: "aici",
            audioFileName: .agAici
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .ag_,
            meaning: "at him",
            form: "aige",
            audioFileName: .agAige
        ),
        
        // Preposition: ar
        PronounForm(
            dialect: .connacht,
            preposition: .ar,
            meaning: "on him",
            form: "air",
            audioFileName: .arAir
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .ar,
            meaning: "on you all",
            form: "oraibh",
            audioFileName: .arOraibh
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .ar,
            meaning: "on us",
            form: "orainn",
            audioFileName: .arOrainn
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .ar,
            meaning: "on me",
            form: "orm",
            audioFileName: .arOrm
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .ar,
            meaning: "on you",
            form: "ort",
            audioFileName: .arOrt
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .ar,
            meaning: "on them",
            form: "orthu",
            audioFileName: .arOrthu
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .ar,
            meaning: "on her",
            form: "uirthi",
            audioFileName: .arUirthi
        ),
        
        // Preposition: as_
        PronounForm(
            dialect: .connacht,
            preposition: .as_,
            meaning: "out of her",
            form: "aisti",
            audioFileName: .asAisti
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .as_,
            meaning: "out of him",
            form: "as",
            audioFileName: .asAs
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .as_,
            meaning: "out of you all",
            form: "asaibh",
            audioFileName: .asAsaibh
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .as_,
            meaning: "out of us",
            form: "asainn",
            audioFileName: .asAsainn
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .as_,
            meaning: "out of me",
            form: "asam",
            audioFileName: .asAsam
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .as_,
            meaning: "out of you",
            form: "asat",
            audioFileName: .asAsat
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .as_,
            meaning: "out of them",
            form: "astu",
            audioFileName: .asAstu
        ),
        
        // Preposition: de
        PronounForm(
            dialect: .connacht,
            preposition: .de,
            meaning: "from him",
            form: "de",
            audioFileName: .deDe
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .de,
            meaning: "from her",
            form: "di",
            audioFileName: .deDi
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .de,
            meaning: "from you all",
            form: "díbh",
            audioFileName: .deDibh
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .de,
            meaning: "from us",
            form: "dínn",
            audioFileName: .deDinn
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .de,
            meaning: "from them",
            form: "díobh",
            audioFileName: .deDiobh
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .de,
            meaning: "from me",
            form: "díom",
            audioFileName: .deDiom
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .de,
            meaning: "from you",
            form: "díot",
            audioFileName: .deDiot
        ),
        
        // Preposition: do_
        PronounForm(
            dialect: .connacht,
            preposition: .do_,
            meaning: "to you all",
            form: "daoibh",
            audioFileName: .doDaoibh
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .do_,
            meaning: "to her",
            form: "di",
            audioFileName: .doDi
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .do_,
            meaning: "to him",
            form: "dó",
            audioFileName: .doDo
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .do_,
            meaning: "to them",
            form: "dóibh",
            audioFileName: .doDoibh
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .do_,
            meaning: "to me",
            form: "dom",
            audioFileName: .doDom
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .do_,
            meaning: "to us",
            form: "dúinn",
            audioFileName: .doDuinn
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .do_,
            meaning: "to you",
            form: "duit",
            audioFileName: .doDuit
        ),
        
        // Preposition: i
        PronounForm(
            dialect: .connacht,
            preposition: .i,
            meaning: "in him",
            form: "ann",
            audioFileName: .iAnn
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .i,
            meaning: "in her",
            form: "inti",
            audioFileName: .iInti
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .i,
            meaning: "in you all",
            form: "ionaibh",
            audioFileName: .iIonaibh
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .i,
            meaning: "in us",
            form: "ionainn",
            audioFileName: .iIonainn
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .i,
            meaning: "in me",
            form: "ionam",
            audioFileName: .iIonam
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .i,
            meaning: "in you",
            form: "ionat",
            audioFileName: .iIonat
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .i,
            meaning: "in them",
            form: "iontu",
            audioFileName: .iIontu
        ),
        
        // Preposition: idir
        PronounForm(
            dialect: .connacht,
            preposition: .idir,
            meaning: "between you all",
            form: "eadraibh",
            audioFileName: .idirEadraibh
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .idir,
            meaning: "between us",
            form: "eadrainn",
            audioFileName: .idirEadrainn
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .idir,
            meaning: "between them",
            form: "eatarthu",
            audioFileName: .idirEatarthu
        ),
        
        // Preposition: le
        PronounForm(
            dialect: .connacht,
            preposition: .le,
            meaning: "with you",
            form: "leat",
            audioFileName: .leLeat
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .le,
            meaning: "with her",
            form: "léi",
            audioFileName: .leLei
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .le,
            meaning: "with him",
            form: "leis",
            audioFileName: .leLeis
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .le,
            meaning: "with them",
            form: "leo",
            audioFileName: .leLeo
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .le,
            meaning: "with you all",
            form: "libh",
            audioFileName: .leLibh
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .le,
            meaning: "with us",
            form: "linn",
            audioFileName: .leLinn
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .le,
            meaning: "with me",
            form: "liom",
            audioFileName: .leLiom
        ),
        
        // Preposition: ó
        PronounForm(
            dialect: .connacht,
            preposition: .ó,
            meaning: "from you all",
            form: "uaibh",
            audioFileName: .oUaibh
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .ó,
            meaning: "from him",
            form: "uaidh",
            audioFileName: .oUaidh
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .ó,
            meaning: "from me",
            form: "uaim",
            audioFileName: .oUaim
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .ó,
            meaning: "from us",
            form: "uainn",
            audioFileName: .oUainn
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .ó,
            meaning: "from you",
            form: "uait",
            audioFileName: .oUait
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .ó,
            meaning: "from her",
            form: "uaithi",
            audioFileName: .oUaithi
        ),
        PronounForm(
            dialect: .connacht,
            preposition: .ó,
            meaning: "from them",
            form: "uathu",
            audioFileName: .oUathu
        ),
        
        // Add more PronounForms for other dialects and prepositions as needed
        // Preposition: faoi
               PronounForm(
                   dialect: .ulster,
                   preposition: .faoi,
                   meaning: "under me",
                   form: "fúm",
                   audioFileName: .faoiFum
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .faoi,
                   meaning: "under you",
                   form: "fút",
                   audioFileName: .faoiFut
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .faoi,
                   meaning: "under him",
                   form: "faoi",
                   audioFileName: .faoiFaoi
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .faoi,
                   meaning: "under her",
                   form: "fúithi",
                   audioFileName: .faoiFuithi
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .faoi,
                   meaning: "under us",
                   form: "fúinn",
                   audioFileName: .faoiFuinn
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .faoi,
                   meaning: "under you all",
                   form: "fúibh",
                   audioFileName: .faoiFuibh
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .faoi,
                   meaning: "under them",
                   form: "fúthu",
                   audioFileName: .faoiFuthu
               ),
               
               // Preposition: ag_
               PronounForm(
                   dialect: .ulster,
                   preposition: .ag_,
                   meaning: "at them",
                   form: "acu",
                   audioFileName: .agAcu
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .ag_,
                   meaning: "at you all",
                   form: "agaibh",
                   audioFileName: .agAgaibh
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .ag_,
                   meaning: "at us",
                   form: "againn",
                   audioFileName: .agAgainn
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .ag_,
                   meaning: "at me",
                   form: "agam",
                   audioFileName: .agAgam
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .ag_,
                   meaning: "at you",
                   form: "agat",
                   audioFileName: .agAgat
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .ag_,
                   meaning: "at her",
                   form: "aici",
                   audioFileName: .agAici
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .ag_,
                   meaning: "at him",
                   form: "aige",
                   audioFileName: .agAige
               ),
               
               // Preposition: ar
               PronounForm(
                   dialect: .ulster,
                   preposition: .ar,
                   meaning: "on him",
                   form: "air",
                   audioFileName: .arAir
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .ar,
                   meaning: "on you all",
                   form: "oraibh",
                   audioFileName: .arOraibh
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .ar,
                   meaning: "on us",
                   form: "orainn",
                   audioFileName: .arOrainn
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .ar,
                   meaning: "on me",
                   form: "orm",
                   audioFileName: .arOrm
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .ar,
                   meaning: "on you",
                   form: "ort",
                   audioFileName: .arOrt
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .ar,
                   meaning: "on them",
                   form: "orthu",
                   audioFileName: .arOrthu
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .ar,
                   meaning: "on her",
                   form: "uirthi",
                   audioFileName: .arUirthi
               ),
               
               // Preposition: as_
               PronounForm(
                   dialect: .ulster,
                   preposition: .as_,
                   meaning: "out of her",
                   form: "aisti",
                   audioFileName: .asAisti
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .as_,
                   meaning: "out of him",
                   form: "as",
                   audioFileName: .asAs
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .as_,
                   meaning: "out of you all",
                   form: "asaibh",
                   audioFileName: .asAsaibh
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .as_,
                   meaning: "out of us",
                   form: "asainn",
                   audioFileName: .asAsainn
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .as_,
                   meaning: "out of me",
                   form: "asam",
                   audioFileName: .asAsam
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .as_,
                   meaning: "out of you",
                   form: "asat",
                   audioFileName: .asAsat
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .as_,
                   meaning: "out of them",
                   form: "astu",
                   audioFileName: .asAstu
               ),
               
               // Preposition: de
               PronounForm(
                   dialect: .ulster,
                   preposition: .de,
                   meaning: "from him",
                   form: "de",
                   audioFileName: .deDe
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .de,
                   meaning: "from her",
                   form: "di",
                   audioFileName: .deDi
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .de,
                   meaning: "from you all",
                   form: "díbh",
                   audioFileName: .deDibh
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .de,
                   meaning: "from us",
                   form: "dínn",
                   audioFileName: .deDinn
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .de,
                   meaning: "from them",
                   form: "díobh",
                   audioFileName: .deDiobh
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .de,
                   meaning: "from me",
                   form: "díom",
                   audioFileName: .deDiom
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .de,
                   meaning: "from you",
                   form: "díot",
                   audioFileName: .deDiot
               ),
               
               // Preposition: do_
               PronounForm(
                   dialect: .ulster,
                   preposition: .do_,
                   meaning: "to you all",
                   form: "daoibh",
                   audioFileName: .doDaoibh
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .do_,
                   meaning: "to her",
                   form: "di",
                   audioFileName: .doDi
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .do_,
                   meaning: "to him",
                   form: "dó",
                   audioFileName: .doDo
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .do_,
                   meaning: "to them",
                   form: "dóibh",
                   audioFileName: .doDoibh
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .do_,
                   meaning: "to me",
                   form: "dom",
                   audioFileName: .doDom
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .do_,
                   meaning: "to us",
                   form: "dúinn",
                   audioFileName: .doDuinn
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .do_,
                   meaning: "to you",
                   form: "duit",
                   audioFileName: .doDuit
               ),
               
               // Preposition: i
               PronounForm(
                   dialect: .ulster,
                   preposition: .i,
                   meaning: "in him",
                   form: "ann",
                   audioFileName: .iAnn
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .i,
                   meaning: "in her",
                   form: "inti",
                   audioFileName: .iInti
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .i,
                   meaning: "in you all",
                   form: "ionaibh",
                   audioFileName: .iIonaibh
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .i,
                   meaning: "in us",
                   form: "ionainn",
                   audioFileName: .iIonainn
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .i,
                   meaning: "in me",
                   form: "ionam",
                   audioFileName: .iIonam
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .i,
                   meaning: "in you",
                   form: "ionat",
                   audioFileName: .iIonat
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .i,
                   meaning: "in them",
                   form: "iontu",
                   audioFileName: .iIontu
               ),
               
               // Preposition: idir
               PronounForm(
                   dialect: .ulster,
                   preposition: .idir,
                   meaning: "between you all",
                   form: "eadraibh",
                   audioFileName: .idirEadraibh
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .idir,
                   meaning: "between us",
                   form: "eadrainn",
                   audioFileName: .idirEadrainn
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .idir,
                   meaning: "between them",
                   form: "eatarthu",
                   audioFileName: .idirEatarthu
               ),
               
               // Preposition: le
               PronounForm(
                   dialect: .ulster,
                   preposition: .le,
                   meaning: "with you",
                   form: "leat",
                   audioFileName: .leLeat
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .le,
                   meaning: "with her",
                   form: "léi",
                   audioFileName: .leLei
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .le,
                   meaning: "with him",
                   form: "leis",
                   audioFileName: .leLeis
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .le,
                   meaning: "with them",
                   form: "leo",
                   audioFileName: .leLeo
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .le,
                   meaning: "with you all",
                   form: "libh",
                   audioFileName: .leLibh
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .le,
                   meaning: "with us",
                   form: "linn",
                   audioFileName: .leLinn
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .le,
                   meaning: "with me",
                   form: "liom",
                   audioFileName: .leLiom
               ),
               
               // Preposition: ó
               PronounForm(
                   dialect: .ulster,
                   preposition: .ó,
                   meaning: "from you all",
                   form: "uaibh",
                   audioFileName: .oUaibh
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .ó,
                   meaning: "from him",
                   form: "uaidh",
                   audioFileName: .oUaidh
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .ó,
                   meaning: "from me",
                   form: "uaim",
                   audioFileName: .oUaim
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .ó,
                   meaning: "from us",
                   form: "uainn",
                   audioFileName: .oUainn
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .ó,
                   meaning: "from you",
                   form: "uait",
                   audioFileName: .oUait
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .ó,
                   meaning: "from her",
                   form: "uaithi",
                   audioFileName: .oUaithi
               ),
               PronounForm(
                   dialect: .ulster,
                   preposition: .ó,
                   meaning: "from them",
                   form: "uathu",
                   audioFileName: .oUathu
               ),
        
        /// MUNSTER
        ///
        ///
           
        // Preposition: faoi
        PronounForm(
            dialect: .munster,
            preposition: .faoi,
            meaning: "under me",
            form: "fúm",
            audioFileName: .faoiFum
        ),
        PronounForm(
            dialect: .munster,
            preposition: .faoi,
            meaning: "under you",
            form: "fút",
            audioFileName: .faoiFut
        ),
        PronounForm(
            dialect: .munster,
            preposition: .faoi,
            meaning: "under him",
            form: "faoi",
            audioFileName: .faoiFaoi
        ),
        PronounForm(
            dialect: .munster,
            preposition: .faoi,
            meaning: "under her",
            form: "fúithi",
            audioFileName: .faoiFuithi
        ),
        PronounForm(
            dialect: .munster,
            preposition: .faoi,
            meaning: "under us",
            form: "fúinn",
            audioFileName: .faoiFuinn
        ),
        PronounForm(
            dialect: .munster,
            preposition: .faoi,
            meaning: "under you all",
            form: "fúibh",
            audioFileName: .faoiFuibh
        ),
        PronounForm(
            dialect: .munster,
            preposition: .faoi,
            meaning: "under them",
            form: "fúthu",
            audioFileName: .faoiFuthu
        ),
        
        // Preposition: ag_
        PronounForm(
            dialect: .munster,
            preposition: .ag_,
            meaning: "at them",
            form: "acu",
            audioFileName: .agAcu
        ),
        PronounForm(
            dialect: .munster,
            preposition: .ag_,
            meaning: "at you all",
            form: "agaibh",
            audioFileName: .agAgaibh
        ),
        PronounForm(
            dialect: .munster,
            preposition: .ag_,
            meaning: "at us",
            form: "againn",
            audioFileName: .agAgainn
        ),
        PronounForm(
            dialect: .munster,
            preposition: .ag_,
            meaning: "at me",
            form: "agam",
            audioFileName: .agAgam
        ),
        PronounForm(
            dialect: .munster,
            preposition: .ag_,
            meaning: "at you",
            form: "agat",
            audioFileName: .agAgat
        ),
        PronounForm(
            dialect: .munster,
            preposition: .ag_,
            meaning: "at her",
            form: "aici",
            audioFileName: .agAici
        ),
        PronounForm(
            dialect: .munster,
            preposition: .ag_,
            meaning: "at him",
            form: "aige",
            audioFileName: .agAige
        ),
        
        // Preposition: ar
        PronounForm(
            dialect: .munster,
            preposition: .ar,
            meaning: "on him",
            form: "air",
            audioFileName: .arAir
        ),
        PronounForm(
            dialect: .munster,
            preposition: .ar,
            meaning: "on you all",
            form: "oraibh",
            audioFileName: .arOraibh
        ),
        PronounForm(
            dialect: .munster,
            preposition: .ar,
            meaning: "on us",
            form: "orainn",
            audioFileName: .arOrainn
        ),
        PronounForm(
            dialect: .munster,
            preposition: .ar,
            meaning: "on me",
            form: "orm",
            audioFileName: .arOrm
        ),
        PronounForm(
            dialect: .munster,
            preposition: .ar,
            meaning: "on you",
            form: "ort",
            audioFileName: .arOrt
        ),
        PronounForm(
            dialect: .munster,
            preposition: .ar,
            meaning: "on them",
            form: "orthu",
            audioFileName: .arOrthu
        ),
        PronounForm(
            dialect: .munster,
            preposition: .ar,
            meaning: "on her",
            form: "uirthi",
            audioFileName: .arUirthi
        ),
        
        // Preposition: as_
        PronounForm(
            dialect: .munster,
            preposition: .as_,
            meaning: "out of her",
            form: "aisti",
            audioFileName: .asAisti
        ),
        PronounForm(
            dialect: .munster,
            preposition: .as_,
            meaning: "out of him",
            form: "as",
            audioFileName: .asAs
        ),
        PronounForm(
            dialect: .munster,
            preposition: .as_,
            meaning: "out of you all",
            form: "asaibh",
            audioFileName: .asAsaibh
        ),
        PronounForm(
            dialect: .munster,
            preposition: .as_,
            meaning: "out of us",
            form: "asainn",
            audioFileName: .asAsainn
        ),
        PronounForm(
            dialect: .munster,
            preposition: .as_,
            meaning: "out of me",
            form: "asam",
            audioFileName: .asAsam
        ),
        PronounForm(
            dialect: .munster,
            preposition: .as_,
            meaning: "out of you",
            form: "asat",
            audioFileName: .asAsat
        ),
        PronounForm(
            dialect: .munster,
            preposition: .as_,
            meaning: "out of them",
            form: "astu",
            audioFileName: .asAstu
        ),
        
        // Preposition: de
        PronounForm(
            dialect: .munster,
            preposition: .de,
            meaning: "from him",
            form: "de",
            audioFileName: .deDe
        ),
        PronounForm(
            dialect: .munster,
            preposition: .de,
            meaning: "from her",
            form: "di",
            audioFileName: .deDi
        ),
        PronounForm(
            dialect: .munster,
            preposition: .de,
            meaning: "from you all",
            form: "díbh",
            audioFileName: .deDibh
        ),
        PronounForm(
            dialect: .munster,
            preposition: .de,
            meaning: "from us",
            form: "dínn",
            audioFileName: .deDinn
        ),
        PronounForm(
            dialect: .munster,
            preposition: .de,
            meaning: "from them",
            form: "díobh",
            audioFileName: .deDiobh
        ),
        PronounForm(
            dialect: .munster,
            preposition: .de,
            meaning: "from me",
            form: "díom",
            audioFileName: .deDiom
        ),
        PronounForm(
            dialect: .munster,
            preposition: .de,
            meaning: "from you",
            form: "díot",
            audioFileName: .deDiot
        ),
        
        // Preposition: do_
        PronounForm(
            dialect: .munster,
            preposition: .do_,
            meaning: "to you all",
            form: "daoibh",
            audioFileName: .doDaoibh
        ),
        PronounForm(
            dialect: .munster,
            preposition: .do_,
            meaning: "to her",
            form: "di",
            audioFileName: .doDi
        ),
        PronounForm(
            dialect: .munster,
            preposition: .do_,
            meaning: "to him",
            form: "dó",
            audioFileName: .doDo
        ),
        PronounForm(
            dialect: .munster,
            preposition: .do_,
            meaning: "to them",
            form: "dóibh",
            audioFileName: .doDoibh
        ),
        PronounForm(
            dialect: .munster,
            preposition: .do_,
            meaning: "to me",
            form: "dom",
            audioFileName: .doDom
        ),
        PronounForm(
            dialect: .munster,
            preposition: .do_,
            meaning: "to us",
            form: "dúinn",
            audioFileName: .doDuinn
        ),
        PronounForm(
            dialect: .munster,
            preposition: .do_,
            meaning: "to you",
            form: "duit",
            audioFileName: .doDuit
        ),
        
        // Preposition: i
        PronounForm(
            dialect: .munster,
            preposition: .i,
            meaning: "in him",
            form: "ann",
            audioFileName: .iAnn
        ),
        PronounForm(
            dialect: .munster,
            preposition: .i,
            meaning: "in her",
            form: "inti",
            audioFileName: .iInti
        ),
        PronounForm(
            dialect: .munster,
            preposition: .i,
            meaning: "in you all",
            form: "ionaibh",
            audioFileName: .iIonaibh
        ),
        PronounForm(
            dialect: .munster,
            preposition: .i,
            meaning: "in us",
            form: "ionainn",
            audioFileName: .iIonainn
        ),
        PronounForm(
            dialect: .munster,
            preposition: .i,
            meaning: "in me",
            form: "ionam",
            audioFileName: .iIonam
        ),
        PronounForm(
            dialect: .munster,
            preposition: .i,
            meaning: "in you",
            form: "ionat",
            audioFileName: .iIonat
        ),
        PronounForm(
            dialect: .munster,
            preposition: .i,
            meaning: "in them",
            form: "iontu",
            audioFileName: .iIontu
        ),
        
        // Preposition: idir
        PronounForm(
            dialect: .munster,
            preposition: .idir,
            meaning: "between you all",
            form: "eadraibh",
            audioFileName: .idirEadraibh
        ),
        PronounForm(
            dialect: .munster,
            preposition: .idir,
            meaning: "between us",
            form: "eadrainn",
            audioFileName: .idirEadrainn
        ),
        PronounForm(
            dialect: .munster,
            preposition: .idir,
            meaning: "between them",
            form: "eatarthu",
            audioFileName: .idirEatarthu
        ),
        
        // Preposition: le
        PronounForm(
            dialect: .munster,
            preposition: .le,
            meaning: "with you",
            form: "leat",
            audioFileName: .leLeat
        ),
        PronounForm(
            dialect: .munster,
            preposition: .le,
            meaning: "with her",
            form: "léi",
            audioFileName: .leLei
        ),
        PronounForm(
            dialect: .munster,
            preposition: .le,
            meaning: "with him",
            form: "leis",
            audioFileName: .leLeis
        ),
        PronounForm(
            dialect: .munster,
            preposition: .le,
            meaning: "with them",
            form: "leo",
            audioFileName: .leLeo
        ),
        PronounForm(
            dialect: .munster,
            preposition: .le,
            meaning: "with you all",
            form: "libh",
            audioFileName: .leLibh
        ),
        PronounForm(
            dialect: .munster,
            preposition: .le,
            meaning: "with us",
            form: "linn",
            audioFileName: .leLinn
        ),
        PronounForm(
            dialect: .munster,
            preposition: .le,
            meaning: "with me",
            form: "liom",
            audioFileName: .leLiom
        ),
        
        // Preposition: ó
        PronounForm(
            dialect: .munster,
            preposition: .ó,
            meaning: "from you all",
            form: "uaibh",
            audioFileName: .oUaibh
        ),
        PronounForm(
            dialect: .munster,
            preposition: .ó,
            meaning: "from him",
            form: "uaidh",
            audioFileName: .oUaidh
        ),
        PronounForm(
            dialect: .munster,
            preposition: .ó,
            meaning: "from me",
            form: "uaim",
            audioFileName: .oUaim
        ),
        PronounForm(
            dialect: .munster,
            preposition: .ó,
            meaning: "from us",
            form: "uainn",
            audioFileName: .oUainn
        ),
        PronounForm(
            dialect: .munster,
            preposition: .ó,
            meaning: "from you",
            form: "uait",
            audioFileName: .oUait
        ),
        PronounForm(
            dialect: .munster,
            preposition: .ó,
            meaning: "from her",
            form: "uaithi",
            audioFileName: .oUaithi
        ),
        PronounForm(
            dialect: .munster,
            preposition: .ó,
            meaning: "from them",
            form: "uathu",
            audioFileName: .oUathu
        )
    ]
}

// Sample Data
struct DataProvider {
    
    static func getAllPronounForms(dialect: Dialect) -> [PronounForm] {
        return getPronounForms(dialect: dialect)
    }
    
    static func getPronounForms(dialect: Dialect, preposition: PrepositionalPronoun? = nil) -> [PronounForm] {
        return PronounFormRepository.allPronounForms.filter { pronounForm in
            let dialectMatches = pronounForm.dialect == dialect
            let prepositionMatches = preposition == nil || pronounForm.preposition == preposition
            return dialectMatches && prepositionMatches
        }
    }

}
