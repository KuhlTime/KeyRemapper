//
//  Key.swift
//  KeyRemapper
//
//  Created by André Kuhlmann on 01.10.17.
//  Copyright © 2017 André Kuhlmann. All rights reserved.
//

import Foundation

public enum Key {
    case a
    case b
    case c
    case d
    case e
    case f
    case g
    case h
    case i
    case j
    case k
    case l
    case m
    case n
    case o
    case p
    case q
    case r
    case s
    case t
    case u
    case v
    case w
    case x
    case y
    case z
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case zero
    case enter
    case esc
    case delete
    case tap
    case spacebar
    case spacer
    case equal
    case leftBracket
    case rightBracket
    case backSlash
    case tilde
    case semicolon
    case quotes
    case comma
    case dot
    case slash
    case capsLock
    case f1
    case f2
    case f3
    case f4
    case f5
    case f6
    case f7
    case f8
    case f9
    case f10
    case f11
    case f12
    case printScreen
    case scrollLock
    case pause
    case insert
    case home
    case pageUp
    case deleteForward
    case end
    case padeDown
    case rightArrow
    case leftArrow
    case downArrow
    case upArrow
    case numLock
    case keypadSlash
    case keypadMultiply
    case keypadMinus
    case keypadPlus
    case keypadEnter
    case keypadOne
    case keypadTwo
    case keypadThree
    case keypadFour
    case keypadFive
    case keypadSix
    case keypadSeven
    case keypadEight
    case keypadNine
    case keypadZero
    case keypadDot
    case application
    case power
    case keypadEqual
    case f13
    case f14
    case f15
    case f16
    case f17
    case f18
    case f19
    case f20
    case f21
    case f22
    case f23
    case f24
    case leftControl
    case leftShift
    case leftOption
    case leftCommand
    case rightControl
    case rightShift
    case rightOption
    case rightCommand
    
    public init?(string: String) {
        switch string.lowercased() {
        case "a": self = .a
        case "b": self = .b
        case "c": self = .c
        case "d": self = .d
        case "e": self = .e
        case "f": self = .f
        case "g": self = .g
        case "h": self = .h
        case "i": self = .i
        case "j": self = .j
        case "k": self = .k
        case "l": self = .l
        case "m": self = .m
        case "n": self = .n
        case "o": self = .o
        case "p": self = .p
        case "q": self = .q
        case "r": self = .r
        case "s": self = .s
        case "t": self = .t
        case "u": self = .u
        case "v": self = .v
        case "w": self = .w
        case "x": self = .x
        case "y": self = .y
        case "z": self = .z
        case "one": self = .one
        case "two": self = .two
        case "three": self = .three
        case "four": self = .four
        case "five": self = .five
        case "six": self = .six
        case "seven": self = .seven
        case "eight": self = .eight
        case "nine": self = .nine
        case "zero": self = .zero
        case "enter": self = .enter
        case "esc": self = .esc
        case "delete": self = .delete
        case "tap": self = .tap
        case "spacebar": self = .spacebar
        case "spacer": self = .spacer
        case "equal": self = .equal
        case "leftBracket": self = .leftBracket
        case "rightBracket": self = .rightBracket
        case "backSlash": self = .backSlash
        case "tilde": self = .tilde
        case "semicolon": self = .semicolon
        case "quotes": self = .quotes
        case "comma": self = .comma
        case "dot": self = .dot
        case "slash": self = .slash
        case "capsLock": self = .capsLock
        case "f1": self = .f1
        case "f2": self = .f2
        case "f3": self = .f3
        case "f4": self = .f4
        case "f5": self = .f5
        case "f6": self = .f6
        case "f7": self = .f7
        case "f8": self = .f8
        case "f9": self = .f9
        case "f10": self = .f10
        case "f11": self = .f11
        case "f12": self = .f12
        case "printScreen": self = .printScreen
        case "scrollLock": self = .scrollLock
        case "pause": self = .pause
        case "insert": self = .insert
        case "home": self = .home
        case "pageUp": self = .pageUp
        case "deleteForward": self = .deleteForward
        case "end": self = .end
        case "padeDown": self = .padeDown
        case "rightArrow": self = .rightArrow
        case "leftArrow": self = .leftArrow
        case "downArrow": self = .downArrow
        case "upArrow": self = .upArrow
        case "numLock": self = .numLock
        case "keypadSlash": self = .keypadSlash
        case "keypadMultiply": self = .keypadMultiply
        case "keypadMinus": self = .keypadMinus
        case "keypadPlus": self = .keypadPlus
        case "keypadEnter": self = .keypadEnter
        case "keypadOne": self = .keypadOne
        case "keypadTwo": self = .keypadTwo
        case "keypadThree": self = .keypadThree
        case "keypadFour": self = .keypadFour
        case "keypadFive": self = .keypadFive
        case "keypadSix": self = .keypadSix
        case "keypadSeven": self = .keypadSeven
        case "keypadEight": self = .keypadEight
        case "keypadNine": self = .keypadNine
        case "keypadZero": self = .keypadZero
        case "keypadDot": self = .keypadDot
        case "application": self = .application
        case "power": self = .power
        case "keypadEqual": self = .keypadEqual
        case "f13": self = .f13
        case "f14": self = .f14
        case "f15": self = .f15
        case "f16": self = .f16
        case "f17": self = .f17
        case "f18": self = .f18
        case "f19": self = .f19
        case "f20": self = .f20
        case "f21": self = .f21
        case "f22": self = .f22
        case "f23": self = .f23
        case "f24": self = .f24
        case "leftControl": self = .leftControl
        case "leftShift": self = .leftShift
        case "leftOption": self = .leftOption
        case "leftCommand": self = .leftCommand
        case "rightControl": self = .rightControl
        case "rightShift": self = .rightShift
        case "rightOption": self = .rightOption
        case "rightCommand": self = .rightCommand
        default: return nil
        }
    }
    
    public var keyCode: UInt64 {
        switch self {
        case .a: return 0x700000004
        case .b: return 0x700000005
        case .c: return 0x700000006
        case .d: return 0x700000007
        case .e: return 0x700000008
        case .f: return 0x700000009
        case .g: return 0x70000000A
        case .h: return 0x70000000B
        case .i: return 0x70000000C
        case .j: return 0x70000000D
        case .k: return 0x70000000E
        case .l: return 0x70000000F
        case .m: return 0x700000010
        case .n: return 0x700000011
        case .o: return 0x700000012
        case .p: return 0x700000013
        case .q: return 0x700000014
        case .r: return 0x700000015
        case .s: return 0x700000016
        case .t: return 0x700000017
        case .u: return 0x700000018
        case .v: return 0x700000019
        case .w: return 0x70000001A
        case .x: return 0x70000001B
        case .y: return 0x70000001C
        case .z: return 0x70000001D
        case .one: return 0x70000001E
        case .two: return 0x70000001F
        case .three: return 0x700000020
        case .four: return 0x700000021
        case .five: return 0x700000022
        case .six: return 0x700000023
        case .seven: return 0x700000024
        case .eight: return 0x700000025
        case .nine: return 0x700000026
        case .zero: return 0x700000027
        case .enter: return 0x700000028
        case .esc: return 0x700000029
        case .delete: return 0x70000002A
        case .tap: return 0x70000002B
        case .spacebar: return 0x70000002C
        case .spacer: return 0x70000002D
        case .equal: return 0x70000002E
        case .leftBracket: return 0x70000002F
        case .rightBracket: return 0x700000030
        case .backSlash: return 0x700000031
        case .tilde: return 0x700000032
        case .semicolon: return 0x700000033
        case .quotes: return 0x700000034
        case .comma: return 0x700000036
        case .dot: return 0x700000037
        case .slash: return 0x700000038
        case .capsLock: return 0x700000039
        case .f1: return 0x70000003A
        case .f2: return 0x70000003B
        case .f3: return 0x70000003C
        case .f4: return 0x70000003D
        case .f5: return 0x70000003E
        case .f6: return 0x70000003F
        case .f7: return 0x700000040
        case .f8: return 0x700000041
        case .f9: return 0x700000042
        case .f10: return 0x700000043
        case .f11: return 0x700000044
        case .f12: return 0x700000045
        case .printScreen: return 0x700000046
        case .scrollLock: return 0x700000047
        case .pause: return 0x700000048
        case .insert: return 0x700000049
        case .home: return 0x70000004A
        case .pageUp: return 0x70000004B
        case .deleteForward: return 0x70000004C
        case .end: return 0x70000004D
        case .padeDown: return 0x70000004E
        case .rightArrow: return 0x70000004F
        case .leftArrow: return 0x700000050
        case .downArrow: return 0x700000051
        case .upArrow: return 0x700000052
        case .numLock: return 0x700000053
        case .keypadSlash: return 0x700000054
        case .keypadMultiply: return 0x700000055
        case .keypadMinus: return 0x700000056
        case .keypadPlus: return 0x700000057
        case .keypadEnter: return 0x700000058
        case .keypadOne: return 0x700000059
        case .keypadTwo: return 0x70000005A
        case .keypadThree: return 0x70000005B
        case .keypadFour: return 0x70000005C
        case .keypadFive: return 0x70000005D
        case .keypadSix: return 0x70000005E
        case .keypadSeven: return 0x70000005F
        case .keypadEight: return 0x700000060
        case .keypadNine: return 0x700000061
        case .keypadZero: return 0x700000062
        case .keypadDot: return 0x700000063
        case .application: return 0x700000065
        case .power: return 0x700000066
        case .keypadEqual: return 0x700000067
        case .f13: return 0x700000068
        case .f14: return 0x700000069
        case .f15: return 0x70000006A
        case .f16: return 0x70000006B
        case .f17: return 0x70000006C
        case .f18: return 0x70000006D
        case .f19: return 0x70000006E
        case .f20: return 0x70000006F
        case .f21: return 0x700000070
        case .f22: return 0x700000071
        case .f23: return 0x700000072
        case .f24: return 0x700000073
        case .leftControl: return 0x7000000E0
        case .leftShift: return 0x7000000E1
        case .leftOption: return 0x7000000E2
        case .leftCommand: return 0x7000000E3
        case .rightControl: return 0x7000000E4
        case .rightShift: return 0x7000000E5
        case .rightOption: return 0x7000000E6
        case .rightCommand: return 0x7000000E7
        }
    }
    
    public var describingString: String {
        switch self {
        case .a: return "Keyboard a and A"
        case .b: return "Keyboard b and B"
        case .c: return "Keyboard c and C"
        case .d: return "Keyboard d and D"
        case .e: return "Keyboard e and E"
        case .f: return "Keyboard f and F"
        case .g: return "Keyboard g and G"
        case .h: return "Keyboard h and H"
        case .i: return "Keyboard i and I"
        case .j: return "Keyboard j and J"
        case .k: return "Keyboard k and K"
        case .l: return "Keyboard l and L"
        case .m: return "Keyboard m and M"
        case .n: return "Keyboard n and N"
        case .o: return "Keyboard o and O"
        case .p: return "Keyboard p and P"
        case .q: return "Keyboard q and Q"
        case .r: return "Keyboard r and R"
        case .s: return "Keyboard s and S"
        case .t: return "Keyboard t and T"
        case .u: return "Keyboard u and U"
        case .v: return "Keyboard v and V"
        case .w: return "Keyboard w and W"
        case .x: return "Keyboard x and X"
        case .y: return "Keyboard y and Y"
        case .z: return "Keyboard z and Z"
        case .one: return "Keyboard 1 and !"
        case .two: return "Keyboard 2 and @"
        case .three: return "Keyboard 3 and #"
        case .four: return "Keyboard 4 and $"
        case .five: return "Keyboard 5 and %"
        case .six: return "Keyboard 6 and ^"
        case .seven: return "Keyboard 7 and &"
        case .eight: return "Keyboard 8 and *"
        case .nine: return "Keyboard 9 and ("
        case .zero: return "Keyboard 0 and )"
        case .enter: return "Keyboard Return (Enter)"
        case .esc: return "Keyboard Escape"
        case .delete: return "Keyboard Delete (Backspace)"
        case .tap: return "Keyboard Tab"
        case .spacebar: return "Keyboard Spacebar"
        case .spacer: return "Keyboard - and _"
        case .equal: return "Keyboard = and +"
        case .leftBracket: return "Keyboard [ and {"
        case .rightBracket: return "Keyboard ] and }"
        case .backSlash: return "Keyboard \\ and |"
        case .tilde: return "Keyboard Non-US # and ~"
        case .semicolon: return "Keyboard ; and :"
        case .quotes: return "Keyboard ' and \""
        case .comma: return "Keyboard , and <"
        case .dot: return "Keyboard . and >"
        case .slash: return "Keyboard / and ?"
        case .capsLock: return "Keyboard Caps Lock"
        case .f1: return "Keyboard F1"
        case .f2: return "Keyboard F2"
        case .f3: return "Keyboard F3"
        case .f4: return "Keyboard F4"
        case .f5: return "Keyboard F5"
        case .f6: return "Keyboard F6"
        case .f7: return "Keyboard F7"
        case .f8: return "Keyboard F8"
        case .f9: return "Keyboard F9"
        case .f10: return "Keyboard F10"
        case .f11: return "Keyboard F11"
        case .f12: return "Keyboard F12"
        case .printScreen: return "Keyboard Print Screen"
        case .scrollLock: return "Keyboard Scroll Lock"
        case .pause: return "Keyboard Pause"
        case .insert: return "Keyboard Insert"
        case .home: return "Keyboard Home"
        case .pageUp: return "Keyboard Page Up"
        case .deleteForward: return "Keyboard Delete Forward"
        case .end: return "Keyboard End"
        case .padeDown: return "Keyboard Page Down"
        case .rightArrow: return "Keyboard Right Arrow"
        case .leftArrow: return "Keyboard Left Arrow"
        case .downArrow: return "Keyboard Down Arrow"
        case .upArrow: return "Keyboard Up Arrow"
        case .numLock: return "Keypad Num Lock and Clear"
        case .keypadSlash: return "Keypad /"
        case .keypadMultiply: return "Keypad *"
        case .keypadMinus: return "Keypad -"
        case .keypadPlus: return "Keypad +"
        case .keypadEnter: return "Keypad Enter"
        case .keypadOne: return "Keypad 1 and End"
        case .keypadTwo: return "Keypad 2 and Down Arrow"
        case .keypadThree: return "Keypad 3 and Page Down"
        case .keypadFour: return "Keypad 4 and Left Arrow"
        case .keypadFive: return "Keypad 5"
        case .keypadSix: return "Keypad 6 and Right Arrow"
        case .keypadSeven: return "Keypad 7 and Home"
        case .keypadEight: return "Keypad 8 and Up Arrow"
        case .keypadNine: return "Keypad 9 and Page Up"
        case .keypadZero: return "Keypad 0 and Insert"
        case .keypadDot: return "Keypad . and Delete"
        case .application: return "Keyboard Application"
        case .power: return "Keyboard Power"
        case .keypadEqual: return "Keypad ="
        case .f13: return "Keyboard F13"
        case .f14: return "Keyboard F14"
        case .f15: return "Keyboard F15"
        case .f16: return "Keyboard F16"
        case .f17: return "Keyboard F17"
        case .f18: return "Keyboard F18"
        case .f19: return "Keyboard F19"
        case .f20: return "Keyboard F20"
        case .f21: return "Keyboard F21"
        case .f22: return "Keyboard F22"
        case .f23: return "Keyboard F23"
        case .f24: return "Keyboard F24"
        case .leftControl: return "Keyboard Left Control"
        case .leftShift: return "Keyboard Left Shift"
        case .leftOption: return "Keyboard Left Alt"
        case .leftCommand: return "Keyboard Left GUI"
        case .rightControl: return "Keyboard Right Control"
        case .rightShift: return "Keyboard Right Shift"
        case .rightOption: return "Keyboard Right Alt"
        case .rightCommand: return "Keyboard Right GUI"
        }
    }

    static let allValues = [a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, one, two, three, four, five, six, seven, eight, nine, zero, enter, esc, delete, tap, spacebar, spacer, equal, leftBracket, rightBracket, backSlash, tilde, semicolon, quotes, comma, dot, slash, capsLock, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, printScreen, scrollLock, pause, insert, home, pageUp, deleteForward, end, padeDown, rightArrow, leftArrow, downArrow, upArrow, numLock, keypadSlash, keypadMultiply, keypadMinus, keypadPlus, keypadEnter, keypadOne, keypadTwo, keypadThree, keypadFour, keypadFive, keypadSix, keypadSeven, keypadEight, keypadNine, keypadZero, keypadDot, application, power, keypadEqual, f13, f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, leftControl, leftShift, leftOption, leftCommand, rightControl, rightShift, rightOption, rightCommand]
}
