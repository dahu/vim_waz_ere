" Usual replacements.
%s/\<vi\>/vim/gce
%s/\<visual\>\ze.mode/normal/gce
%s/\<visual\>/normal/gce
%s/\<line\>\ze.mode/ex/gce
%s/\<line\>/ex/gce
$put ='// vim:set ft=asciidoc tw=78:'
" Place the cursor on the first line of the block of code and make me run. Two
" consecutive non-empty lines mark the end of the code block.
let @a = "O[source,vim]\<CR>----\<Esc>:/^.\\+\\n./-2put='----'\<CR>\<C-L>"
" Select block of code (from top to bottom) and let me it do the magic.
let @b = "\<Esc>j4i-\<Esc>o\<Esc>gvo\<Esc>O[source,vim]\<CR>----\<Esc>/----\<CR>\<C-L>"
" Just type the kind of header you want the current line to be.
let @c = "\<Esc>yypVr"
0
let @/ = '^\n\zs.\+\n$'
