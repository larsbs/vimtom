" Normal mode
let s:N1 = [ '#abb2bf' , '#4b5262' , 15 , 55  ]
let s:N2 = [ '#abb2bf' , '#56b6c2' , 15 , 98  ]
let s:N3 = [ '#abb2bf' , '#14161A' , 15 , 233 ]

" Insert mode
let s:I1 = [ '#282c34' , '#61afef' , 15 , 33  ]
let s:I2 = [ '#abb2bf' , '#56b6c2' , 15 , 39  ]
let s:I3 = [ '#abb2bf' , '#14161A' , 15 , 233 ]

" Visual mode
let s:V1 = [ '#282c34' , '#98c379' , 233 , 202 ]
let s:V2 = [ '#abb2bf' , '#56b6c2' , 233 , 214 ]
let s:V3 = [ '#abb2bf' , '#14161A' , 15  , 233 ]

" Replace mode
let s:R1 = [ '#282c34' , '#e06c75' , 15 , 196 ]
let s:R2 = [ '#abb2bf' , '#56b6c2' , 15 , 203 ]
let s:R3 = [ '#abb2bf' , '#14161A' , 15 , 233 ]

let g:airline#themes#vimtom#palette = {}
let g:airline#themes#vimtom#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#vimtom#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#vimtom#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#vimtom#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

" Inactive mode
let s:IN1 = [ '#9e9e9e' , '#626262' , 247 , 241 ]
let s:IN2 = [ '#abb2bf' , '#14161A' , 15  , 233 ]

let s:IA = [ s:IN1[1] , s:IN2[1] , s:IN1[3] , s:IN2[3] , '' ]
let g:airline#themes#vimtom#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 =  [ '#abb2bf' , '#4b5262' , 15 , 55 ]
let s:CP2 =  [ '#abb2bf' , '#56b6c2' , 15 , 98 ]
let s:CP3 =  [ '#4b5262' , '#abb2bf' , 55 , 15 ]

let g:airline#themes#vimtom#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)

" Tabline
let g:airline#themes#vimtom#palette.tabline = {
      \ 'airline_tab':     [ '#abb2bf' , '#4b5262' ,  15 , 55  , '' ],
      \ 'airline_tabsel':  [ '#abb2bf' , '#56b6c2' ,  15 , 98  , '' ],
      \ 'airline_tabtype': [ '#abb2bf' , '#56b6c2' ,  15 , 98  , '' ],
      \ 'airline_tabfill': [ '#abb2bf' , '#14161A' ,  15 , 233 , '' ],
      \ 'airline_tabmod':  [ '#282c34' , '#e06c75' ,  15 , 33  , '' ]
      \ }
