
" This is an automatically generated syntax file created on Sat, 02 Sep 2017 06:29:58 GMT
" Origin: https://github.com/NLKNguyen/cloudformation-syntax.vim
echom "cloudformation syntax"
if exists("b:current_syntax")
    finish
endif

set ft=yaml
syn match CfmYamlResourceName "AWS::.*::[a-zA-Z0-9]*" contained containedin=yamlFlowString,yamlPlainScalar
syn match CfmYamlMainType "Resources" contained containedin=yamlBlockMappingKey
syn match CfmYamlMainType "Parameters" contained containedin=yamlBlockMappingKey
syn match CfmYamlMainType "Mappings" contained containedin=yamlBlockMappingKey
syn match CfmYamlMainType "Outputs" contained containedin=yamlBlockMappingKey
syn match CfmYamlFunction "FindInMap" contained containedin=yamlPlainScalar,yamlNodeTag
syn match CfmYamlFunction "Ref" contained containedin=yamlPlainScalar,yamlNodeTag
hi link CfmYamlResourceName Constant
hi link CfmYamlMainType Include
hi link CfmYamlFunction Conditionall


let b:current_syntax = "cloudformation"


