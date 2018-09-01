function! emmet#lang#stylus#findTokens(str) abort
  return emmet#lang#sass#findTokens(a:str)
endfunction

function! emmet#lang#stylus#parseIntoTree(abbr, type) abort
  return emmet#lang#sass#parseIntoTree(a:abbr, a:type)
endfunction

function! emmet#lang#stylus#toString(settings, current, type, inline, filters, itemno, indent) abort
  let current = a:current
  let value = current.value[1:-2]
  let tmp = substitute(value, '\${cursor}', '', 'g')

  if tmp !~ '.*{[ \t\r\n]*}$'
    let value = substitute(value, '\([^:]\+\):\([^;]*\)', '\1 \2', 'g')

    if current.important
      let value = substitute(value, ';', ' !important;', '')
    endif

    let value = substitute(value, ';', '', 'g')
  endif

  return value
endfunction

function! emmet#lang#stylus#imageSize() abort
  return emmet#lang#sass#imageSize()
endfunction

function! emmet#lang#stylus#encodeImage() abort
  return emmet#lang#sass#encodeImage()
endfunction

function! emmet#lang#stylus#parseTag(tag) abort
  return emmet#lang#sass#parseTag(a:tag)
endfunction

function! emmet#lang#stylus#toggleComment() abort
  return emmet#lang#sass#toggleComment()
endfunction

function! emmet#lang#stylus#balanceTag(flag) range abort
  return emmet#lang#sass#balanceTag(a:flag)
endfunction

function! emmet#lang#stylus#moveNextPrevItem(flag) abort
  return emmet#lang#sass#moveNextPrevItem(a:flag)
endfunction

function! emmet#lang#stylus#moveNextPrev(flag) abort
  return emmet#lang#sass#moveNextPrev(a:flag)
endfunction

function! emmet#lang#stylus#splitJoinTag() abort
  return emmet#lang#sass#splitJoinTag()
endfunction

function! emmet#lang#stylus#removeTag() abort
  return emmet#lang#sass#removeTag()
endfunction
