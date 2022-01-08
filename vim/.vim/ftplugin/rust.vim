" Rust Mapping.
map <buffer> <leader>b :make build<cr>
map <buffer> <leader>r :make run<cr>
map <buffer> <leader>t :make test<cr>
map <buffer> <leader>C :make check<cr>

compiler cargo

let g:rustfmt_autosave = 1
let g:rustfmt_fail_silently = 1
