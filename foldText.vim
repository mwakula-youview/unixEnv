set foldtext=MyFoldText()
function! MyFoldText()
    " Compute indent
    let ofs=v:foldstart   " offset of the line text
	let text=getline(ofs)
    while getline(ofs) =~ '^\s*$' && ofs<v:foldend
        let ofs = nextnonblank(v:foldstart + 1)
    endwhile
    if ofs == v:foldend
        return "FoldText Error"
    endif

    let tabText='┼'.repeat('─',&tabstop-1)
    let text = substitute(getline(ofs), '\t',tabText, 'g')

    let lineWidth = winwidth(0) - &foldcolumn - (&number ? &numberwidth : 0)

    let fRange = " " . v:foldstart.'↔ '.v:foldend
    let fLvl=' ▏'.v:foldlevel.repeat('▙',v:foldlevel)
    let filler = repeat("…", lineWidth - strwidth(text.fRange.fLvl))
    return text . filler . fRange . fLvl
endfunction
