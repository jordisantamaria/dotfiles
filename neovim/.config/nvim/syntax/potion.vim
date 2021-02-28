if exists("b:current_syntax")
    finish
endif

syntax keyword potionKeyword loop times to while
syntax keyword potionKeyword if elsif else
syntax keyword potionKeyword class return

syntax keyword potionFunction print join string

highlight link potionKeyword Keyword
highlight link potionFunction Function


syntax match potionOperator "\v\="
syntax match potionOperator "\v\*"
syntax match potionOperator "\v/"
syntax match potionOperator "\v\+"
syntax match potionOperator "\v-"
syntax match potionOperator "\v\?"
syntax match potionOperator "\v\*\="
syntax match potionOperator "\v/\="
syntax match potionOperator "\v\+\="
syntax match potionOperator "\v-\="
highlight link potionOperator Operatora

syntax match potionNumber "\v[0-9]*"
highlight link potionNumber Number

syntax region potionString start=/\v["'`]/ skip=/\v\\./ end=/\v["'`]/
highlight link potionString String

syntax match potionComment "\v#.*$"
highlight link potionComment Comment

let b:current_syntax = "potion"
