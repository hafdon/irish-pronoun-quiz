import Foundation

// Dialect Enum
enum Dialect: String, CaseIterable, Identifiable {
    case connacht = "Connacht"
    case munster = "Munster"
    case ulster = "Ulster"
    
    var id: String { self.rawValue }
}

// Prepositional Pronoun Enum
enum PrepositionalPronoun: String, CaseIterable, Identifiable {
    case ag_ = "ag"
    case as_ = "as"
    case ar = "ar"
    case do_ = "do"
    case de = "de"
    case le = "le"
    case faoi = "faoi"
    case i = "i"
    case ó = "ó"
    case idir = "idir"
    
    var id: String { self.rawValue }
}

enum AudioFile: String {
    case faoiFum = "faoi_fúm"
    case faoiFut = "faoi_fút"
    case faoiFaoi = "faoi_faoi"
    case faoiFuithi = "faoi_fúithi"
    case faoiFuinn = "faoi_fúinn"
    case faoiFuibh = "faoi_fúibh"
    case faoiFuthu = "faoi_fúthu"
    case agAcu = "ag_acu"
    case agAgaibh = "ag_agaibh"
    case agAgainn = "ag_againn"
    case agAgam = "ag_agam"
    case agAgat = "ag_agat"
    case agAici = "ag_aici"
    case agAige = "ag_aige"
    case arAir = "ar_air"
    case arOraibh = "ar_oraibh"
    case arOrainn = "ar_orainn"
    case arOrm = "ar_orm"
    case arOrt = "ar_ort"
    case arOrthu = "ar_orthu"
    case arUirthi = "ar_uirthi"
    case asAisti = "as_aisti"
    case asAs = "as_as"
    case asAsaibh = "as_asaibh"
    case asAsainn = "as_asainn"
    case asAsam = "as_asam"
    case asAsat = "as_asat"
    case asAstu = "as_astu"
    case deDe = "de_de"
    case deDi = "de_di"
    case deDibh = "de_díbh"
    case deDinn = "de_dínn"
    case deDiobh = "de_díobh"
    case deDiom = "de_díom"
    case deDiot = "de_díot"
    case doDaoibh = "do_daoibh"
    case doDi = "do_di"
    case doDo = "do_dó"
    case doDoibh = "do_dóibh"
    case doDom = "do_dom"
    case doDuinn = "do_dúinn"
    case doDuit = "do_duit"
    case iAnn = "i_ann"
    case iInti = "i_inti"
    case iIonaibh = "i_ionaibh"
    case iIonainn = "i_ionainn"
    case iIonam = "i_ionam"
    case iIonat = "i_ionat"
    case iIontu = "i_iontu"
    case idirEadraibh = "idir_eadraibh"
    case idirEadrainn = "idir_eadrainn"
    case idirEatarthu = "idir_eatarthu"
    case leLeat = "le_leat"
    case leLei = "le_léi"
    case leLeis = "le_leis"
    case leLeo = "le_leo"
    case leLibh = "le_libh"
    case leLinn = "le_linn"
    case leLiom = "le_liom"
    case oUaibh = "ó_uaibh"
    case oUaidh = "ó_uaidh"
    case oUaim = "ó_uaim"
    case oUainn = "ó_uainn"
    case oUait = "ó_uait"
    case oUaithi = "ó_uaithi"
    case oUathu = "ó_uathu"
    // Add more cases as needed
}

// Pronoun Form Struct
struct PronounForm: Identifiable, Hashable {
    let id = UUID()
    let meaning: String
    let form: String
    let audioFileName: AudioFile
}

// Sample Data
struct DataProvider {
    static func getPronounForms(dialect: Dialect, preposition: PrepositionalPronoun) -> [PronounForm] {
        // Sample data for Connacht dialect and 'faoi' preposition
        if dialect == .connacht && preposition == .faoi {
            return [
                PronounForm(
                    meaning: "under me",
                    form: "fúm",
                    audioFileName: .faoiFum // Corresponds to faoi_fum.mp3
                ),
                PronounForm(
                    meaning: "under you",
                    form: "fút",
                    audioFileName: .faoiFut // Corresponds to faoi_fut.mp3
                ),
                PronounForm(
                    meaning: "under him",
                    form: "faoi",
                    audioFileName: .faoiFut // Corresponds to faoi_faoi.mp3
                ),
                PronounForm(
                    meaning: "under her",
                    form: "fúithi",
                    audioFileName: .faoiFuithi // Corresponds to faoi_fum.mp3
                ),
                PronounForm(
                    meaning: "under us",
                    form: "fúinn",
                    audioFileName: .faoiFuinn // Corresponds to faoi_fut.mp3
                ),
                PronounForm(
                    meaning: "under you all",
                    form: "fúibh",
                    audioFileName: .faoiFuibh // Corresponds to faoi_faoi.mp3
                ),
                PronounForm(
                    meaning: "under them",
                    form: "fúthu",
                    audioFileName: .faoiFuthu // Corresponds to faoi_faoi.mp3
                )
                ]
            }
        else if dialect == .connacht && preposition == .ag_ {
            return [
                PronounForm(
                    meaning: "at them",
                    form: "acu",
                    audioFileName: .agAcu // Corresponds to ag_acu.mp3
                ),
                PronounForm(
                    meaning: "at you all",
                    form: "agaibh",
                    audioFileName: .agAgaibh // Corresponds to ag_agaibh.mp3
                ),
                PronounForm(
                    meaning: "at us",
                    form: "againn",
                    audioFileName: .agAgainn // Corresponds to ag_againn.mp3
                ),
                PronounForm(
                    meaning: "at me",
                    form: "agam",
                    audioFileName: .agAgam // Corresponds to ag_agam.mp3
                ),
                PronounForm(
                    meaning: "at you",
                    form: "agat",
                    audioFileName: .agAgat // Corresponds to ag_agat.mp3
                ),
                PronounForm(
                    meaning: "at her",
                    form: "aici",
                    audioFileName: .agAici // Corresponds to ag_aici.mp3
                ),
                PronounForm(
                    meaning: "at him",
                    form: "aige",
                    audioFileName: .agAige // Corresponds to ag_aige.mp3
                )
            ]
        }
        else if dialect == .connacht && preposition == .ar {
            return [
                PronounForm(
                    meaning: "on him",
                    form: "air",
                    audioFileName: .arAir // Corresponds to ar_air.mp3
                ),
                PronounForm(
                    meaning: "on you all",
                    form: "oraibh",
                    audioFileName: .arOraibh // Corresponds to ar_oraibh.mp3
                ),
                PronounForm(
                    meaning: "on us",
                    form: "orainn",
                    audioFileName: .arOrainn // Corresponds to ar_orainn.mp3
                ),
                PronounForm(
                    meaning: "on me",
                    form: "orm",
                    audioFileName: .arOrm // Corresponds to ar_orm.mp3
                ),
                PronounForm(
                    meaning: "on you",
                    form: "ort",
                    audioFileName: .arOrt // Corresponds to ar_ort.mp3
                ),
                PronounForm(
                    meaning: "on them",
                    form: "orthu",
                    audioFileName: .arOrthu // Corresponds to ar_orthu.mp3
                ),
                PronounForm(
                    meaning: "on her",
                    form: "uirthi",
                    audioFileName: .arUirthi // Corresponds to ar_uirthi.mp3
                )
            ]}
        else if dialect == .connacht && preposition == .as_ {
            return [
                PronounForm(
                    meaning: "out of her",
                    form: "aisti",
                    audioFileName: .asAisti // Corresponds to as_aisti.mp3
                ),
                PronounForm(
                    meaning: "out of him",
                    form: "as",
                    audioFileName: .asAs // Corresponds to as_as.mp3
                ),
                PronounForm(
                    meaning: "out of you all",
                    form: "asaibh",
                    audioFileName: .asAsaibh // Corresponds to as_asaibh.mp3
                ),
                PronounForm(
                    meaning: "out of us",
                    form: "asainn",
                    audioFileName: .asAsainn // Corresponds to as_asainn.mp3
                ),
                PronounForm(
                    meaning: "out of me",
                    form: "asam",
                    audioFileName: .asAsam // Corresponds to as_asam.mp3
                ),
                PronounForm(
                    meaning: "out of you",
                    form: "asat",
                    audioFileName: .asAsat // Corresponds to as_asat.mp3
                ),
                PronounForm(
                    meaning: "out of them",
                    form: "astu",
                    audioFileName: .asAstu // Corresponds to as_astu.mp3,
                    
                )
            ]}
        else if dialect == .connacht && preposition == .de {
            return [
                PronounForm(
                    meaning: "from him",
                    form: "de",
                    audioFileName: .deDe // Corresponds to de_de.mp3
                ),
                PronounForm(
                    meaning: "from her",
                    form: "di",
                    audioFileName: .deDi // Corresponds to de_di.mp3
                ),
                PronounForm(
                    meaning: "from you all",
                    form: "díbh",
                    audioFileName: .deDibh // Corresponds to de_díbh.mp3
                ),
                PronounForm(
                    meaning: "from us",
                    form: "dínn",
                    audioFileName: .deDinn // Corresponds to de_dínn.mp3
                ),
                PronounForm(
                    meaning: "from them",
                    form: "díobh",
                    audioFileName: .deDiobh // Corresponds to de_díobh.mp3
                ),
                PronounForm(
                    meaning: "from me",
                    form: "díom",
                    audioFileName: .deDiom // Corresponds to de_díom.mp3
                ),
                PronounForm(
                    meaning: "from you",
                    form: "díot",
                    audioFileName: .deDiot // Corresponds to de_díot.mp3
                )
            ]
        }
        else if dialect == .connacht && preposition == .do_ {
            return [
                PronounForm(
                    meaning: "to you all",
                    form: "daoibh",
                    audioFileName: .doDaoibh // Corresponds to do_daoibh.mp3
                ),
                PronounForm(
                    meaning: "to her",
                    form: "di",
                    audioFileName: .doDi // Corresponds to do_di.mp3
                ),
                PronounForm(
                    meaning: "to him",
                    form: "dó",
                    audioFileName: .doDo // Corresponds to do_dó.mp3
                ),
                PronounForm(
                    meaning: "to them",
                    form: "dóibh",
                    audioFileName: .doDoibh // Corresponds to do_dóibh.mp3
                ),
                PronounForm(
                    meaning: "to me",
                    form: "dom",
                    audioFileName: .doDom // Corresponds to do_dom.mp3
                ),
                PronounForm(
                    meaning: "to us",
                    form: "dúinn",
                    audioFileName: .doDuinn // Corresponds to do_dúinn.mp3
                ),
                PronounForm(
                    meaning: "to you",
                    form: "duit",
                    audioFileName: .doDuit // Corresponds to do_duit.mp3
                )
            ]}
        else if dialect == .connacht && preposition == .i {
            return [
                PronounForm(
                    meaning: "in him",
                    form: "ann",
                    audioFileName: .iAnn // Corresponds to i_ann.mp3
                ),
                PronounForm(
                    meaning: "in her",
                    form: "inti",
                    audioFileName: .iInti // Corresponds to i_inti.mp3
                ),
                PronounForm(
                    meaning: "in you all",
                    form: "ionaibh",
                    audioFileName: .iIonaibh // Corresponds to i_ionaibh.mp3
                ),
                PronounForm(
                    meaning: "in us",
                    form: "ionainn",
                    audioFileName: .iIonainn // Corresponds to i_ionainn.mp3
                ),
                PronounForm(
                    meaning: "in me",
                    form: "ionam",
                    audioFileName: .iIonam // Corresponds to i_ionam.mp3
                ),
                PronounForm(
                    meaning: "in you",
                    form: "ionat",
                    audioFileName: .iIonat // Corresponds to i_ionat.mp3
                ),
                PronounForm(
                    meaning: "in them",
                    form: "iontu",
                    audioFileName: .iIontu // Corresponds to i_iontu.mp3
                )
            ]
        }
        else if dialect == .connacht && preposition == .idir {
            return [
                PronounForm(
                    meaning: "between you all",
                    form: "eadraibh",
                    audioFileName: .idirEadraibh // Corresponds to idir_eadraibh.mp3
                ),
                PronounForm(
                    meaning: "between us",
                    form: "eadrainn",
                    audioFileName: .idirEadrainn // Corresponds to idir_eadrainn.mp3
                ),
                PronounForm(
                    meaning: "between them",
                    form: "eatarthu",
                    audioFileName: .idirEatarthu // Corresponds to idir_eatarthu.mp3
                )
            ]
        }
        else if dialect == .connacht && preposition == .le {
            return [
                PronounForm(
                    meaning: "with you",
                    form: "leat",
                    audioFileName: .leLeat // Corresponds to le_leat.mp3
                ),
                PronounForm(
                    meaning: "with her",
                    form: "léi",
                    audioFileName: .leLei // Corresponds to le_léi.mp3
                ),
                PronounForm(
                    meaning: "with him",
                    form: "leis",
                    audioFileName: .leLeis // Corresponds to le_leis.mp3
                ),
                PronounForm(
                    meaning: "with them",
                    form: "leo",
                    audioFileName: .leLeo // Corresponds to le_leo.mp3
                ),
                PronounForm(
                    meaning: "with you all",
                    form: "libh",
                    audioFileName: .leLibh // Corresponds to le_libh.mp3
                ),
                PronounForm(
                    meaning: "with us",
                    form: "linn",
                    audioFileName: .leLinn // Corresponds to le_linn.mp3
                ),
                PronounForm(
                    meaning: "with me",
                    form: "liom",
                    audioFileName: .leLiom // Corresponds to le_liom.mp3
                )
            ]}
        else if dialect == .connacht && preposition == .ó {
            return [
                PronounForm(
                    meaning: "from you all",
                    form: "uaibh",
                    audioFileName: .oUaibh // Corresponds to ó_uaibh.mp3
                ),
                PronounForm(
                    meaning: "from him",
                    form: "uaidh",
                    audioFileName: .oUaidh // Corresponds to ó_uaidh.mp3
                ),
                PronounForm(
                    meaning: "from me",
                    form: "uaim",
                    audioFileName: .oUaim // Corresponds to ó_uaim.mp3
                ),
                PronounForm(
                    meaning: "from us",
                    form: "uainn",
                    audioFileName: .oUainn // Corresponds to ó_uainn.mp3
                ),
                PronounForm(
                    meaning: "from you",
                    form: "uait",
                    audioFileName: .oUait // Corresponds to ó_uait.mp3
                ),
                PronounForm(
                    meaning: "from her",
                    form: "uaithi",
                    audioFileName: .oUaithi // Corresponds to ó_uaithi.mp3
                ),
                PronounForm(
                    meaning: "from them",
                    form: "uathu",
                    audioFileName: .oUathu // Corresponds to ó_uathu.mp3
                ),

            ]
        }
        // Add more dialects and prepositions as needed
        return []
    }
}
