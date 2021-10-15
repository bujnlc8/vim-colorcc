scriptencoding utf-8

if !exists('g:color_width_split_num')
    let g:color_width_split_num = 6
endif

if !exists('g:color_height_split_num')
    let g:color_height_split_num = 4
endif

if !exists('g:color_show_hex')
    let g:color_show_hex = 1
endif

if !exists('g:color_show_name')
    let g:color_show_name = 1
endif

let s:has_popup = has('patch-8.2.0286')

let s:size = {
            \0:{'width': 12, 'height': 4},
            \1:{'width': 16, 'height': 6},
            \2:{'width': 22, 'height': 8},
            \3:{'width': 10, 'height': 3},
            \}

function! s:popup_filter(winid, key)
    if a:key == 'z'
        call popup_close(a:winid)
    elseif a:key == 'q'
        call popup_clear()
    endif
endfunction

function! s:show_color(color)
    call s:_show_color(a:color, -1, -1, s:size[1]['width'], s:size[1]['height'], 0)
endfunction

function! s:random_color(...)
    let color = ''
    let num = -1
    if len(a:000) == 1
        let color = a:000[0]
    elseif len(a:000) >= 2
        let color = a:000[0]
        let num = a:000[1] + 0
        if num == 0 || num < -1
            let num = -1
        endif
    endif
    call popup_clear()
    if len(color) == 0
        let color = g:color#colors[float2nr(color#random() * 1115)]
        call s:_show_color(color, -1, -1, s:size[1]['width'], s:size[1]['height'], 0)
    else
        let res = []
        for x in g:color#names
            if match(x, color) != -1
                call add(res, x)
            endif
        endfor
        if len(res) == 0
            echo '未找到相关颜色'
            return
        endif
        let colors = []
        if num == -1 || num > len(res)
            let num = len(res)
        endif
        let i = 0
        while i < num
            let color = g:name_color#name_map[res[float2nr(color#random() * len(res))]]
            if index(colors, color) == -1
                call add(colors, color)
                let i = i + 1
            endif
        endwhile
        call s:_tile_specified_color(1, 1, &columns, &lines, s:size['1']['width'], s:size['1']['height'], 0, colors)
    endif
endfunction

function! s:_tile_specified_color(start_x, start_y, max_x, max_y, width, height, disappear, colors)
    let start_x = a:start_x
    let start_y = a:start_y
    let i = 0
    while start_y < a:max_y
        while start_x < a:max_x
            if i >= len(a:colors)
                let start_y = a:max_y
                break
            endif
            call s:_show_color(a:colors[i], start_y, start_x, min([a:width, a:max_x-start_x]), min([a:height, a:max_y-start_y]), a:disappear)
            let start_x = start_x + a:width
            let i = i + 1
        endwhile
        let start_x = a:start_x
        let start_y = start_y + a:height
    endwhile
    if i < len(a:colors)
        echo '颜色过多，未显示完全:('
    endif
endfunction

function! s:_tile_color(start_x, start_y, max_x, max_y, width, height, disappear)
    let start_x = a:start_x
    let start_y = a:start_y
    while start_y < a:max_y
        while start_x < a:max_x
            let color = g:color#colors[float2nr(color#random() * 1115)]
            call s:_show_color(color, start_y, start_x, min([a:width, a:max_x-start_x]), min([a:height, a:max_y-start_y]), a:disappear)
            let start_x = start_x + a:width
        endwhile
        let start_x = a:start_x
        let start_y = start_y + a:height
    endwhile
endfunction

function! s:get_start_list(total, num)
    let res = []
    let per = a:total / a:num
    for x in range(1, a:num)
        if x == 1
            call add(res, [1, per])
        elseif x == a:num
            call add(res, [(x-1) * per, a:total])
        else
            call add(res, [(x-1)*per, x * per])
        endif
    endfor
    return res
endfunction

function! s:tile_color_not_regular(...)
    let disappear = 0
    if len(a:000) == 1
        let disappear = a:000[0] + 0
    endif
    let total_columns = &columns
    let total_lines = &lines
    let x_list = s:get_start_list(total_columns, g:color_width_split_num)
    let y_list = s:get_start_list(total_lines, g:color_height_split_num)
    let sub = {}
    call popup_clear()
    for y in range(g:color_height_split_num)
        let y_border = y_list[y]
        for x in range(g:color_width_split_num)
            let x_border = x_list[x]
            let start_x = x_border[0]
            let start_y = y_border[0]
            let size = s:size[float2nr(color#random() * 4)]
            let height = size['height']
            let width = size['width']
            while start_y < y_border[1]
                while start_x < x_border[1]
                    let color = g:color#colors[float2nr(color#random() * 1115)]
                    if x_border[1] - start_x < size['width'] && x < (g:color_width_split_num -1)
                        if !has_key(sub, x.y)
                            let x_list[x+1][0] = x_list[x+1][0] - (x_border[1]-start_x)
                            let sub[x.y] = 0
                        endif
                    else
                        let sub_x = x_border[1] - start_x
                        let width = min([size['width'], sub_x])
                        if x == (g:color_width_split_num -1) && sub_x > size['width'] && sub_x < 10 + size['width']
                            let width = sub_x
                        endif
                        let sub_y = y_border[1]-start_y
                        let height = min([size['height'], sub_y])
                        if y == (g:color_height_split_num -1) && sub_y > size['height'] && sub_y < 2 + size['height']
                            let height = sub_y
                        endif
                        call s:_show_color(color, start_y, start_x, width, height, disappear)
                    endif
                    let start_x = start_x + width
                endwhile
                let start_x = x_border[0]
                let start_y = start_y + height
            endwhile
        endfor
        let x_list = s:get_start_list(total_columns, g:color_width_split_num)
    endfor
endfunction

function! s:tile_color(...)
    let disappear = 0
    let size = 1
    let times = 1
    let _color = ''
    if len(a:000) == 1
        let times = a:000[0] + 1
    elseif len(a:000) == 2
        let times = a:000[0] + 0
        let disappear = a:000[1] + 0
    elseif len(a:000) == 3
        let times = a:000[0] + 0
        let disappear = a:000[1] + 0
        let size = a:000[2]
    elseif len(a:000) >=4
        let times = a:000[0] + 0
        let disappear = a:000[1] + 0
        let size = a:000[2]
        let _color = a:000[3]
    endif
    if !has_key(s:size, size)
        echoerr 'third argument is error, valid number is 0-2'
        return
    endif
    let width = s:size[size]['width']
    let height = s:size[size]['height']
    let total_columns = &columns
    let total_lines = &lines
    let i = 0
    call popup_clear()
    while i < times
        let start_x = 1
        let start_y = 1
        let _width = width
        let _height = height
        while start_y < total_lines
            while start_x < total_columns
                if len(_color) == 0
                    let color = g:color#colors[float2nr(color#random() * 1115)]
                else
                    let color = _color
                endif
                let tmp = disappear
                if !disappear && i < times - 1
                    let tmp = 1
                endif
                let _width = min([width, total_columns-start_x])
                let _height = min([height, total_lines - start_y])
                let sub_x = total_columns-start_x
                if sub_x > width && sub_x < width + 10
                    let _width = sub_x
                endif
                let sub_y = total_lines - start_y
                if sub_y > height && sub_y < height + 2
                    let _height = sub_y
                endif
                call s:_show_color(color, start_y, start_x, _width, _height, tmp)
                let start_x = start_x + _width
            endwhile
            let start_x = 1
            let start_y = start_y + _height
        endwhile
        let i = i + 1
    endwhile
endfunction

function! s:get_blank(ss, width)
    let occupied_width = strdisplaywidth(a:ss)
    let blank = ''
    if (a:width - occupied_width) / 2 > 0
        for x in range((a:width - occupied_width) / 2)
            let blank = blank.' '
        endfor
    endif
    return blank
endfunction

function! s:_show_color(color, line, column, width, height, disappear)
    if !s:has_popup
        echoerr "don't support popup"
        return
    endif
    let color = a:color
    if (color-1) >= 0 && len(color) == 6 && match(color, '#') == -1
        let color = '#'.color
    endif
    let options = {'highlight': 'ColorHi'.substitute(a:color, '#', '', ''), 'filter': function('s:popup_filter'), 'minwidth': a:width, 'minheight': a:height}
    if a:line != -1
        let options['line'] = a:line
        let options['col'] = a:column
        if a:disappear
            let options['time'] = float2nr(color#random() * 2222)
        endif
    else
        call popup_clear()
    endif
    let winid = popup_create('', options)
    let winbuf = winbufnr(winid)
    if a:height / 2 > 1
        for l in range(1, a:height / 2 - 1)
            call setbufline(winbuf, l, '')
        endfor
    endif
    if strdisplaywidth(color) <= a:width
        if g:color_show_hex
            call setbufline(winbuf, a:height / 2, s:get_blank(color, a:width).color)
        else
            call setbufline(winbuf, a:height / 2, '')
        endif
    endif
    if has_key(g:color_name#hex_map, color) && strdisplaywidth(g:color_name#hex_map[color]) <= a:width && g:color_show_name
        call setbufline(winbuf, a:height / 2 + 1, s:get_blank(g:color_name#hex_map[color], a:width).g:color_name#hex_map[color])
    endif
    try
        call setbufvar(winid, '&termguicolors', 1)
        call setbufvar(winid, '&t_Co', 256)
        let guifg='#d8e3e7'
        if match(color, '#') != -1
            if eval(substitute(color, '#', '0x', '')) > (0xffffff / 2)
                let guifg = '#161823'
            endif
        endif
        silent execute 'highlight ColorHi'.substitute(a:color, '#', '', '').'  guifg='.guifg.' guibg='.color
    catch
        call popup_close(winid)
        if has_key(g:color#pinyin_map, a:color)
            call s:_show_color(g:color#pinyin_map[a:color]['hex'], a:line, a:column, a:width, a:height, a:disappear)
        elseif has_key(g:name_color#name_map, a:color)
            call s:_show_color(g:name_color#name_map[a:color], a:line, a:column, a:width, a:height, a:disappear)
        else
            echo '[ColorCC] Not a valid color: '.a:color
        endif
    endtry
endfunction

command! -nargs=1 Cs call <SID>show_color(<q-args>)
command! -nargs=* Ct call <SID>tile_color(<f-args>)
command! -nargs=* Cg call <SID>tile_color_not_regular(<f-args>)
command! -nargs=* Cr call <SID>random_color(<f-args>)
