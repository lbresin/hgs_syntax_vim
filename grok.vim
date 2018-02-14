" Vim syntax file
" Language:          HydroGeoSphere grok.x Syntax File
" Maintainer:        Lysander Bresinsky <lbresin@gwdg.de>
" Latest Revision:   2017-11-10
syntax case ignore
"----------------------------------------------------------------------------/
""  Comments
"----------------------------------------------------------------------------/
syn     match   GrokComment     "!.*"
syn     region  GrokComment     start="skip on" end="skip off"  
syn     region  GrokComment     start="\%1l"    end="end title"

"----------------------------------------------------------------------------/
""  Keywords
"----------------------------------------------------------------------------/
syn     match   GrokKeyword     "new"  
syn     match   GrokKeyword     "use"
syn     match   GrokKeyword     "clear" 
syn     match   GrokKeyword     "choose" 
syn     match   GrokKeyword     "create" 
syn     match   GrokKeyword     "read" 
syn     match   GrokKeyword     "end"
syn     match   GrokKeyword     "generate"
syn     match   GrokKeyword     "write"
syn     match   GrokKeyword     "echo"
syn     match   GrokKeyword     "allow"
syn     match   GrokKeyword     "drop"
syn     match   GrokKeyword     "make"
syn     match   GrokKeyword     "include"
"syn    match   GrokKeyword     "skip"

"----------------------------------------------------------------------------/
""  Variable
"----------------------------------------------------------------------------/
syn     match   GrokVariable    "units"
syn     match   GrokVariable    "porous media"
syn     match   GrokVariable    "surface"
syn     match   GrokVariable    "dual"
syn     match   GrokVariable    "channel"
syn     match   GrokVariable    "et"
"----------------------------------------------------------------------------/
""  Numbers
"----------------------------------------------------------------------------/
syn     match   GrokNumber      "\<[0-9]\+[ij]\=\>"
syn     match   GrokNumber      "\<[0-9]\+\.[0-9]*\([edED][-+]\=[0-9]\+\)\=[ij]\=\>"
syn     match   GrokNumber      "\.[0-9]\+\([edED][-+]\=[0-9]\+\)\=[ij]\=\>"
syn     match   GrokNumber      "\<[0-9]\+[edED][-+]\=[0-9]\+[ij]\=\>"

"----------------------------------------------------------------------------/
"  Setup syntax highlighting
"----------------------------------------------------------------------------/
let b:current_syntax = "grok"

hi def link     GrokComment             Comment
hi def link     GrokKeyword             Keyword
hi def link     GrokVariable            Special
hi def link     GrokNumber              Constant  
