//
//  Devnagiri.swift
//  Mumbai Type
//
//  Created by Ashish on 21/12/22.
//

import Foundation

func toDevnagiri(alphabetic: String) -> String {
    var i = alphabetic.startIndex
    var out: [String] = []
    
    while i < alphabetic.endIndex {
        let (devnagiri, end) = mapToDevnagiri(alphabetic, start: i)
        out.append(devnagiri)
        i = end
    }
    return out.joined(separator: "")
}

func mapToDevnagiri(_ alphas: String, start: String.Index) -> (String, String.Index) {
    let safeEnd = alphas.index(before: alphas.endIndex)
    var end = alphas.index(start, offsetBy: 2, limitedBy: safeEnd) ?? safeEnd
    var out: String? = nil
    while end >= start {
        let key = String(alphas[start...end])
        out = alphabetsToDevnagiriMapping[key]
        if out != nil { return (out!, alphas.index(after: end)) }
        end = alphas.index(before: end)
    }
    return (String(alphas[start]), alphas.index(after: start))
}

var alphabetsToDevnagiriMapping: [String: String] = [
    "a": "ा",
    "A": "ा",
    "aq":"अ",
    "Aq":"आ",
    "AQ":"आ",
    
    "ae":"ॅ",
    "aeq":"ॲ",
    
    "Ao":"ॉ",
    "AO":"ॉ",
    "AOQ":"ऑ",
    "Aoq":"ऑ",
    "AOq":"ऑ",
    
    "b":"ब",
    "bh":"भ",
    "c":"च",
    "ch":"छ",
    "d":"ड",
    "dh": "ढ",
    "D":"द",
    "DH":"ध",
    "Dh":"ध",
    "e":"े",
    "E":"ै",
    "eq":"ए",
    "EQ":"ऐ",
    "Eq":"ऐ",
    "f":"फ",
    "g":"ग",
    "gh":"घ",
    "h":"ह",
    "H":"ः",
    "Hq":"अः",
    "HQ":"अः",
    "i":"ि",
    "I":"ी",
    "iq":"इ",
    "IQ":"ई",
    "Iq":"ई",
    "j":"ज",
    "jh":"झ",
    "k":"क",
    "kh":"ख",
    "l":"ल",
    "L":"ळ",
    "m":"म",
    "M":"ं",
    "Mq":"अं",
    "MQ":"अं",
    "n":"ण",
    "N":"न",
    "o":"ो",
    "O":"ौ",
    "oq":"ओ",
    "Oq":"औ",
    "OQ":"औ",
    "p":"प",
    "ph":"फ",
    "q":"्",
    "r":"र",
    "R":"ृ",
    "rh":"ऱ्",
    "Rh":"ऱ्",
    "Rq":"ऋ",
    "RQ":"ऋ",
    "s":"स",
    "sh": "श",
    "SH":"ष",
    "Sh":"ष",
    "t":"ट",
    "th":"ठ",
    "T":"त",
    "TH":"थ",
    "Th":"थ",
    "u":"ु",
    "U":"ू",
    "uq":"उ",
    "Uq":"ऊ",
    "UQ":"ऊ",
    "v":"व",
    "w":"व",
    "x":"क्ष",
    "y":"य",
    "z":"झ"
]


