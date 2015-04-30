if exists("b:current_syntax")
  finish
endif

syntax keyword jaiUsing using
syntax keyword jaiNew new
syntax keyword jaiDelete delete
syntax keyword jaiCast cast
syntax keyword jaiAutoCast xx

syntax keyword jaiStruct struct
syntax keyword jaiEnum enum

syntax keyword jaiIf if
syntax keyword jaiFor for
syntax keyword jaiWhile while

syntax keyword jaiDataType void string int float float32 float64 u8 u16 u32 u64 s8 s16 s32 s64
syntax keyword jaiBool true false

syn match jaiVariable '@[a-z]\w*'

syntax keyword jaiReturn return
syntax keyword jaiDefer defer

syntax match jaiQuestionMark "?"

syntax region jaiString start=/\v"/ skip=/\v\\./ end=/\v"/

syn match jaiInteger "\<\d\+\>"

syntax match jaiFunction "\v<\w*>(\s*::\s*)@="
syntax match jaiDynamicFunction "\v<\w*(\s*:\=\s*\(.*\))@="

syntax match jaiTagNote "\v\@\S+"

syntax match jaiClass "\v<[A-Z]\w+>"
syntax match jaiConstant "\v<[A-Z,_]+>"

syntax match jaiMacro "\v#\w*"

syntax match jaiLineComment "\v//.*"
syntax region jaiBlockComment start=/\v\/\*/ end=/\\*\// contains=jaiBlockComment

highlight link jaiUsing Keyword
highlight link jaiNew Keyword
highlight link jaiCast Keyword
highlight link jaiAutoCast Keyword
highlight link jaiDelete Keyword
highlight link jaiReturn Keyword
highlight link jaiDefer Operator

highlight link jaiQuestionMark Operator

highlight link jaiString String

highlight link jaiStruct Structure
highlight link jaiEnum Structure

highlight link jaiFunction Function
highlight link jaiDynamicFunction Function

highlight link jaiMacro Macro
highlight link jaiIf Conditional
highlight link jaiFor Repeat
highlight link jaiWhile Repeat

highlight link jaiLineComment Comment
highlight link jaiBlockComment Comment

highlight link jaiClass Type

highlight link jaiTagNote Keyword
highlight link jaiInteger Number
highlight link jaiDataType Type
highlight link jaiBool Boolean
highlight link jaiConstant Constant

highlight link jaiVariable Identifier

let b:current_syntax = "jai"
