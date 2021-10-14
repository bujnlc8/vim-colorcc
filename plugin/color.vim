scriptencoding utf-8

let s:has_popup = has('patch-8.2.0286')

function! s:popup_filter(winid, key)
    if a:key == 'z'
        call popup_close(a:winid)
    elseif a:key == 'q'
        call popup_clear()
    endif
endfunction

function! s:show_color(color)
    call s:_show_color(a:color, -1, -1, 0)
endfunction

function! s:random_color(color)
    if len(a:color) > 0
        let res = []
        for x in g:color#names
            if match(x, a:color) != -1
                call add(res, x)
            endif
        endfor
        for x in g:color#pinyin
            if match(x, a:color) != -1
                call add(res, g:color#pinyin_map[x]['name'])
            endif
        endfor
        if len(res) == 0
            echo '未找到相关颜色'
            return
        endif
        let color = g:color#name_map[res[float2nr(color#random() * len(res))]]['hex']
    else
        let color = g:color#colors[float2nr(color#random() * 525)]
    endif
    call s:_show_color(color, -1, -1, 0)
endfunction


let s:width = 16
let s:height = 6

function! s:tile_color(...)
    if len(a:000) == 0
        let times = 1
        let disappear = 1
    elseif len(a:000) == 1
        let times = a:000[0] + 1
        let disappear = 1
    else
        let times = a:000[0] + 0
        let disappear = a:000[1] + 0
    endif
    let total_columns = &columns
    let total_lines = &lines
    let i = 0
    while i < times
        let start_x = 1
        let start_y = 1
        while start_y < total_lines
            while start_x < total_columns
                let l:color = g:color#colors[float2nr(color#random() * 525)]
                let tmp = disappear
                if !disappear && i < times - 1
                    let tmp = 1
                endif
                call s:_show_color(l:color, start_y, start_x, tmp)
                let start_x = start_x + s:width
            endwhile
            let start_x = 1
            let start_y = start_y + s:height
        endwhile
        let i = i + 1
    endwhile
endfunction

function! s:get_blank(ss, width)
    let occupied_width = strdisplaywidth(a:ss)
    let blank = ''
    for x in range((a:width - occupied_width) / 2)
        let blank = blank.' '
    endfor
    return blank
endfunction

function! s:_show_color(color, line, column, disappear)
    if !s:has_popup
        echoerr "don't support popup"
        return
    endif
    let color = a:color
    if (color-1) >= 0 && len(color) == 6 && match(color, '#') == -1
        let color = '#'.color
    endif
    let options = {'highlight': 'ColorHi'.substitute(a:color, '#', '', ''), 'filter': function('s:popup_filter'), 'minwidth': s:width, 'minheight': s:height}
    if a:line != -1
        let options['line'] = a:line
        let options['col'] = a:column
        if a:disappear
            let options['time'] = float2nr(color#random() * 2222)
        endif
    else
        call popup_clear()
    endif
    let winid = popup_create(['',''], options)
    let winbuf = winbufnr(winid)
    call setbufline(winbuf, 3, s:get_blank(color, s:width).color)
    if has_key(g:color#hex_map, color)
        call setbufline(winbuf, 4, s:get_blank(g:color#hex_map[color]['name'], s:width).g:color#hex_map[color]['name'])
    endif
    try
        call setbufvar(winid, '&termguicolors', 1)
        let guifg='white'
        if match(color, '#') != -1
            if eval(substitute(color, '#', '0x', '')) > (0xffffff / 2)
                let guifg = 'black'
            endif
        endif
        silent execute 'highlight ColorHi'.substitute(a:color, '#', '', '').'  guifg='.guifg.' guibg='.color
    catch
        call popup_close(winid)
        if has_key(g:color#pinyin_map, a:color)
            let color = g:color#pinyin_map[a:color]['hex']
            call s:_show_color(color, a:line, a:column, a:disappear)
        elseif has_key(g:color#name_map, a:color)
            let color = g:color#name_map[a:color]['hex']
            call s:_show_color(color, a:line, a:column, a:disappear)
        else
            echo '[ColorCC] Not a valid color: '.a:color
        endif
    endtry
endfunction

command! -nargs=1 Cs call <SID>show_color(<q-args>)
command! -nargs=* Ct call <SID>tile_color(<f-args>)
command! -nargs=? Cr call <SID>random_color(<q-args>)
