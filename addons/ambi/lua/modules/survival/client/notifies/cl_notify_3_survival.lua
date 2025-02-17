local C, GUI, UT = AMB.Ambition.Global.Colors, AMB.UI.GUI, AMB.Ambition.Utility

local w = ScrW()
local h = ScrH()

local now = {}
for i = 1, 24 do now[ i ] = false end
local chars = {
    [ 0 ] = '❖',
    [ 1 ] = '☓',
    [ 2 ] = '✓',
    [ 3 ] = '✪',
    [ 4 ] = 'ⓘ',
    [ 5 ] = '➜',
    [ 6 ] = '➞',
    [ 7 ] = '➤',
    [ 8 ] = '☠',
    [ 9 ] = '☢',
    [ 10 ] = '☣',
    [ 11 ] = '☯',
    [ 12 ] = '✞',
    [ 13 ] = '✠',
    [ 14 ] = '✭',
    [ 15 ] = '✧',
    [ 16 ] = '$',
    [ 17 ] = '•',
    [ 18 ] = '♦'
}
