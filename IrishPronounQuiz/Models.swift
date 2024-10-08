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
    let dialect: Dialect
    let preposition: PrepositionalPronoun
    let meaning: String
    let form: String
    let audioFileName: AudioFile
}
