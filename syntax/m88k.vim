" Vim syntax file
" Language: m88k assembly
" Maintainer: Borja Martinena
" Last Change: 18-11-2020
" Version: 0.11
" Description: A project for an emulator used at ETSIINF UPM for the subject:
" Estructura de Computadores.
"

if !exists("main_syntax")
    if exists("b:main_syntax")
        finish
    endif
    let main_syntax = 'm88k'
endif
syn case ignore

" Labels
syn match eekLabel "\v.*:" 

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
syn match eekExCode "\v(\s)@!\.(.*)(\s)@="

" PseudoInstructions
syn keyword eekPsInst org data res

" 32 Registers
syn match eekRegister "\vr(3[012]|[012][0-9]|[0-9](\d)@!)"

" Immediate numbers.
syn match eekIMMn "\d"
syn match eekIMMn "0x\d"

" Strings
syn region eekString start="\"" end="\""

" Comments
syn match eekComment "\v;.*$"

" Link to defaults
hi def link eekRegister Identifier
hi def link eekOpCode Keyword
hi def link eekPsInst Keyword
hi def link eekExCode PreProc
hi def link eekIMMn Constant
hi def link eekLabel Label
hi def link eekString String
hi def link eekComment Comment

let b:current_syntax = "m88k"
if main_syntax == 'm88k'
    unlet main_syntax
endif
