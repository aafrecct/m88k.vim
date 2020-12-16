" Vim syntax file
" Language: m88k assembly
" Maintainer: Borja Martinena
" Last Change: 1-12-2020
" Version: 0.12
" Description: A project for an emulator used at ETSIINF UPM for the subject:
" Estructura de Computadores. 'eek' stands for Eighty-Eight Thousand (88k).
"

if !exists("main_syntax")
    if exists("b:main_syntax")
        finish
    endif
    let main_syntax = 'm88k'
endif
syn case ignore

" Labels
syn match eekLabel "\v^(\S)*:" 

" OpCodes
syn keyword eekOpCode and xor or mask
syn keyword eekOpCode add addu sub subu
syn keyword eekOpCode muls mulu divs divu
syn keyword eekOpCode clr set ext extu mak rot 
syn keyword eekOpCode fadd fsub fmul fdiv fcvt flt int  
syn keyword eekOpCode bb0 bb1 br bsr jmp jsr 
syn keyword eekOpCode ld st ldcr stcr xmem 
syn keyword eekOpCode cmp fcmp

" Extension codes
"syn keyword eekExCodC contained b c d h n s u y
"syn keyword eekExCodC contained bu ci co cio hu wt
syn match eekExCode "\v\.[A-z]+" contains=eekExCodC

" PseudoInstructions
syn keyword eekPsInst org data res
syn keyword eekMacros MACRO ENDMACRO 

" 32 Registers
syn match eekRegister "\vr(3[012]|[012][0-9]|[0-9](\d)@!)"

" Comparison bits
syn keyword eekCmpBit nh he nb be
syn keyword eekCmpBit hs lo ls hi
syn keyword eekCmpBit ge lt le gt
syn keyword eekCmpBit ne eq

" Immediate numbers.
syn match eekIMMn "\v( |,)@<=([+-]( |)|)(\d+)(\.(\d)+|)"
syn match eekIMMn "\v( |,)@<=([+-]( |)|)0x(\d|[a-f]|[A-F])+"
 999
 9
 2.35
" Strings
syn region eekString start=/"/ end=/"/

" Comments
syn match eekComment "\v;.*$"

" Link to defaults
hi def link eekRegister Identifier
hi def link eekCmpBit Identifier
hi def link eekOpCode Keyword
hi def link eekPsInst Keyword
hi def link eekExCode PreProc
hi def link eekMacros Define
hi def link eekIMMn Constant
hi def link eekLabel Label
hi def link eekString String
hi def link eekComment Comment

let b:current_syntax = "m88k"
if main_syntax == 'm88k'
    unlet main_syntax
endif
