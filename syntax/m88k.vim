" Vim syntax file
" Language: 88110 assembly
" Maintainer: Borja Martinena
" Last Change: 17-11-2020
" Version: 0.1
" Description: A project for an emulator used at ETSIINF UPM for the subject:
" Estructura de Computadores.
"

if !exists("main_syntax")
    if exists("b:main_syntax")
        finish
    endif
    let main_syntax = '88110assembly'
endif
syn case ignore

" OpCodes
syn keyword eekOpCode and xor or mask
syn keyword eekOpCode add addu sub subu
syn keyword eekOpCode muls mulu divs divu
syn keyword eekOpCode clr set ext extu mak rot 
syn keyword eekOpCode fadd fsub fmul fdiv fcvt flt int  
syn keyword eekOpCode bb0 bb1 br bsr jmp jsr 
syn keyword eekOpCode ld st ldcr stcr xmem 
syn keyword eekOpCode cmp fcmp

" PseudoInstructions
syn keyword eekPsInst org data res

" 32 Registers
syn match eekRegister "\vr(3[012]|[012][0-9]|[0-9](\d)@!)"

" Immediate numbers.
syn match eekIMMn "\d"

" Comments
syn match eekComment "\v;.*$"

" Labels
syn match eekLabel /\v.*:/

" Link to defaults
hi def link eekRegister Identifier
hi def link eekOpCode Keyword
hi def link eekPsInst Keyword
hi def link eekIMMn Constant
hi def link eekLabel Label
hi def link eekComment Comment

let b:current_syntax = "88110assembly"
if main_syntax == '88110assembly'
    unlet main_syntax
endif