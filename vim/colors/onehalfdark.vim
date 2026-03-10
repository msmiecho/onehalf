" ==============================================================================
"   Name:        One Half Dark
"   Author:      Son A. Pham <sp@sonpham.me>
"   Url:         https://github.com/sonph/onehalf
"   License:     The MIT License (MIT)
"
"   A dark vim-airline theme based on Atom's One, best used with the onehalf
"   vim colorschemes. See github.com/sonph/onehalf for installation
"   instructions, a light theme and colorschemes for other editors/terminals.
"
"   For documentation, see :h airline-themes or vim-airline's dark.vim theme at
"   https://github.com/vim-airline/vim-airline/blob/master/autoload/airline/themes/dark.vim
"
" ==============================================================================


" _g: gui, _c: cterm
let s:light_g = '#dcdfe4'
let s:light_c = 255
let s:med_hi_g = '#5d677a'
let s:med_hi_c = 243
let s:med_lo_g = '#313640'
let s:med_lo_c = 238
let s:dark_g = '#282c34'
let s:dark_c = 236

let s:green_g = '#98c379'
let s:green_c = 114
let s:blue_g = '#61afef'
let s:blue_c = 75
let s:yellow_g = '#e5c07b'
let s:yellow_c = 180
let s:red_g = '#e06c75'
let s:red_c = 168
let s:cyan_g = '#56b6c2'
let s:cyan_c = 73
let s:purple_g = '#c678dd'
let s:purple_c = 176


let g:airline#themes#onehalfdark#palette = {}


" Normal mode
" Array format: [guifg, guibg, ctermfg, ctermbg, opts]
let s:normal_outer = [s:dark_g, s:green_g, s:dark_c, s:green_c]
let s:normal_middle = [s:light_g, s:med_hi_g, s:light_c, s:med_hi_c]
let s:normal_inner = [s:green_g, s:med_lo_g, s:green_c, s:med_lo_c]
let s:normal_inner_modified = [s:yellow_g, s:med_lo_g, s:yellow_c, s:med_lo_c]
let g:airline#themes#onehalfdark#palette.normal = {
    \ 'airline_a': s:normal_outer,
    \ 'airline_b': s:normal_middle,
    \ 'airline_c': s:normal_inner,
    \ 'airline_x': s:normal_inner,
    \ 'airline_y': s:normal_middle,
    \ 'airline_z': s:normal_outer }
let g:airline#themes#onehalfdark#palette.normal_modified = {
    \ 'airline_a': s:normal_outer,
    \ 'airline_b': s:normal_middle,
    \ 'airline_c': s:normal_inner_modified,
    \ 'airline_x': s:normal_inner,
    \ 'airline_y': s:normal_middle,
    \ 'airline_z': s:normal_outer }


" Insert mode
let s:insert_outer = [s:med_lo_g, s:blue_g, s:med_lo_c, s:blue_c]
let g:airline#themes#onehalfdark#palette.insert = {
    \ 'airline_a': s:insert_outer,
    \ 'airline_b': s:normal_middle,
    \ 'airline_c': s:normal_inner,
    \ 'airline_x': s:normal_inner,
    \ 'airline_y': s:normal_middle,
    \ 'airline_z': s:normal_outer }
let g:airline#themes#onehalfdark#palette.insert_modified = {
    \ 'airline_a': s:insert_outer,
    \ 'airline_b': s:normal_middle,
    \ 'airline_c': s:normal_inner_modified,
    \ 'airline_x': s:normal_inner,
    \ 'airline_y': s:normal_middle,
    \ 'airline_z': s:normal_outer }


" Replace mode
let s:replace_outer = [s:med_lo_g, s:red_g, s:med_lo_c, s:red_c]
let g:airline#themes#onehalfdark#palette.replace = {
    \ 'airline_a': s:replace_outer,
    \ 'airline_b': s:normal_middle,
    \ 'airline_c': s:normal_inner,
    \ 'airline_x': s:normal_inner,
    \ 'airline_y': s:normal_middle,
    \ 'airline_z': s:normal_outer }
let g:airline#themes#onehalfdark#palette.replace_modified = {
    \ 'airline_a': s:replace_outer,
    \ 'airline_b': s:normal_middle,
    \ 'airline_c': s:normal_inner_modified,
    \ 'airline_x': s:normal_inner,
    \ 'airline_y': s:normal_middle,
    \ 'airline_z': s:normal_outer }


" Visual mode
let s:visual_outer = [s:dark_g, s:yellow_g, s:dark_c, s:yellow_c]
let s:visual_middle = s:normal_middle
let s:visual_inner = [s:yellow_g, s:med_lo_g, s:yellow_c, s:med_lo_c]
let g:airline#themes#onehalfdark#palette.visual = {
    \ 'airline_a': s:visual_outer,
    \ 'airline_b': s:normal_middle,
    \ 'airline_c': s:normal_inner,
    \ 'airline_x': s:normal_inner,
    \ 'airline_y': s:normal_middle,
    \ 'airline_z': s:normal_outer }
let g:airline#themes#onehalfdark#palette.visual_modified = {
    \ 'airline_a': s:visual_outer,
    \ 'airline_b': s:normal_middle,
    \ 'airline_c': s:normal_inner_modified,
    \ 'airline_x': s:normal_inner,
    \ 'airline_y': s:normal_middle,
    \ 'airline_z': s:normal_outer }


" Inactive window
let s:inactive = [s:light_g, s:med_lo_g, s:light_c, s:med_lo_c]
let s:inactive_modified = [s:yellow_g, '', s:yellow_c, '']
let g:airline#themes#onehalfdark#palette.inactive =
    \ airline#themes#generate_color_map(s:inactive, s:inactive, s:inactive)
let g:airline#themes#onehalfdark#palette.inactive_modified = {
    \ 'airline_a': s:inactive,
    \ 'airline_b': s:inactive,
    \ 'airline_c': s:inactive_modified,
    \ 'airline_x': s:inactive,
    \ 'airline_y': s:inactive,
    \ 'airline_z': s:inactive }


" Warning section
let g:airline#themes#onehalfdark#palette.normal.airline_warning =
    \ [s:med_lo_g, s:cyan_g, s:med_lo_c, s:cyan_c]
let g:airline#themes#onehalfdark#palette.normal_modified.airline_warning =
    \ g:airline#themes#onehalfdark#palette.normal.airline_warning
let g:airline#themes#onehalfdark#palette.insert.airline_warning =
    \ g:airline#themes#onehalfdark#palette.normal.airline_warning
let g:airline#themes#onehalfdark#palette.insert_modified.airline_warning =
    \ g:airline#themes#onehalfdark#palette.normal.airline_warning
let g:airline#themes#onehalfdark#palette.visual.airline_warning =
    \ g:airline#themes#onehalfdark#palette.normal.airline_warning
let g:airline#themes#onehalfdark#palette.visual_modified.airline_warning =
    \ g:airline#themes#onehalfdark#palette.normal.airline_warning
let g:airline#themes#onehalfdark#palette.replace.airline_warning =
    \ g:airline#themes#onehalfdark#palette.normal.airline_warning
let g:airline#themes#onehalfdark#palette.replace_modified.airline_warning =
    \ g:airline#themes#onehalfdark#palette.normal.airline_warning
let g:airline#themes#onehalfdark#palette.inactive.airline_warning =
    \ g:airline#themes#onehalfdark#palette.normal.airline_warning
let g:airline#themes#onehalfdark#palette.inactive_modified.airline_warning =
    \ g:airline#themes#onehalfdark#palette.normal.airline_warning


" Terminal window
let g:airline_section_z_term = ''
let g:airline#themes#onehalfdark#palette.normal.airline_term =
    \ [s:cyan_g, s:med_lo_g, s:cyan_c, s:med_lo_c]
let g:airline#themes#onehalfdark#palette.normal_modified.airline_term =
    \ g:airline#themes#onehalfdark#palette.normal.airline_term
let g:airline#themes#onehalfdark#palette.insert.airline_term =
    \ g:airline#themes#onehalfdark#palette.normal.airline_term
let g:airline#themes#onehalfdark#palette.insert_modified.airline_term =
    \ g:airline#themes#onehalfdark#palette.normal.airline_term
let g:airline#themes#onehalfdark#palette.visual.airline_term =
    \ g:airline#themes#onehalfdark#palette.normal.airline_term
let g:airline#themes#onehalfdark#palette.visual_modified.airline_term =
    \ g:airline#themes#onehalfdark#palette.normal.airline_term
let g:airline#themes#onehalfdark#palette.replace.airline_term =
    \ g:airline#themes#onehalfdark#palette.normal.airline_term
let g:airline#themes#onehalfdark#palette.replace_modified.airline_term =
    \ g:airline#themes#onehalfdark#palette.normal.airline_term
let g:airline#themes#onehalfdark#palette.inactive.airline_term =
    \ s:inactive
let g:airline#themes#onehalfdark#palette.inactive_modified.airline_term =
    \ g:airline#themes#onehalfdark#palette.inactive.airline_term


" Tabline for modified files = use inverted modified file name in status line
let g:airline#themes#onehalfdark#palette.normal.airline_tabmod =
    \ s:visual_outer


" Accents
let g:airline#themes#onehalfdark#palette.accents = {
    \ 'orange':   [s:cyan_g, '', s:cyan_c, ''],
    \ 'bold':     ['', '', '', '', 'bold'],
    \ 'blue':     [s:blue_g, '', s:blue_c, ''],
    \ 'green':    [s:green_g, '', s:green_c, ''],
    \ 'purple':   [s:purple_g, '', s:purple_c, ''],
    \ 'none':     ['', '', '', '', ''],
    \ 'italic':   ['', '', '', '', 'italic'],
    \ 'yellow':   [s:yellow_g, '', s:yellow_c, ''],
    \ 'red':      [s:red_g, '', s:red_c, ''] }


" Errors
let g:airline#themes#onehalfdark#palette.normal.airline_error =
   \ [s:med_lo_g, s:red_g, s:med_lo_c, s:red_c]
let g:airline#themes#onehalfdark#palette.normal_modified.airline_error =
    \ g:airline#themes#onehalfdark#palette.normal.airline_error
let g:airline#themes#onehalfdark#palette.insert.airline_error =
    \ g:airline#themes#onehalfdark#palette.normal.airline_error
let g:airline#themes#onehalfdark#palette.insert_modified.airline_error =
    \ g:airline#themes#onehalfdark#palette.normal.airline_error
let g:airline#themes#onehalfdark#palette.visual.airline_error =
    \ g:airline#themes#onehalfdark#palette.normal.airline_error
let g:airline#themes#onehalfdark#palette.visual_modified.airline_error =
    \ g:airline#themes#onehalfdark#palette.normal.airline_error
let g:airline#themes#onehalfdark#palette.replace.airline_error =
    \ g:airline#themes#onehalfdark#palette.normal.airline_error
let g:airline#themes#onehalfdark#palette.replace_modified.airline_error =
    \ g:airline#themes#onehalfdark#palette.normal.airline_error
let g:airline#themes#onehalfdark#palette.inactive.airline_error =
    \ s:inactive
let g:airline#themes#onehalfdark#palette.inactive_modified.airline_error =
    \ g:airline#themes#onehalfdark#palette.inactive.airline_error

