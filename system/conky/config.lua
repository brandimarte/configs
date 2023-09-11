conky.config = {

-- general
    background = yes, -- fork in the background
    double_buffer = true, -- double buffering to reduce flicker
    xftalpha = 0.8,
    no_buffers = true, -- subtract file system buffers from used memory?
    out_to_console = false,
    out_to_stderr = false,
    show_graph_scale = false,
    show_graph_range = false,
    override_utf8_locale = yes,

-- update times (in seconds)
    update_interval = 5,
    update_interval_on_battery = 5,
    cpu_avg_samples = 2, -- # of samples to average (1 = disabled)
    net_avg_samples = 2, -- # of samples to average (1 = disabled)
    total_run_times = 0, -- # of times Conky will update before quitting (0 = forever)

-- pos&size
    alignment = 'top_right',
    gap_x = 3, -- gap between borders of screen and text
    gap_y = 0, -- gap between borders of screen and text
    minimum_height = 1142,
    maximum_width = 240,
    extra_newline = false,
    use_spacer = 'none', -- add spaces to keep things from moving?

-- font
    use_xft = true,
    font = 'DejaVu Sans:size=8',
    uppercase = false,
    use_spacer = 'none',

-- window
    own_window = true, -- create own window instead of using desktop
    own_window_class = 'Conky',
    own_window_transparent = false,
    own_window_type = 'normal',
    own_window_argb_visual = true,
    own_window_argb_value = 210,
    own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
    draw_borders = false, -- draw borders around text
    draw_graph_borders = true,
    draw_outline = false, -- draw outlines
    draw_shades = false,
    stippled_borders = 8,
    border_width = 1,

-- colors
    default_color = 'gray',
    default_outline_color = 'white',
    default_shade_color = 'black',
    color1 = '669900',
    color2 = 'Tan2',
    color3 = 'DarkSlateGray',
    color4 = 'slate grey',
    color5 = 'lightgrey',
    color6 = 'light slate blue',
    color7 = 'white',
    color8 = 'cornflower blue',
    color9 = 'b58900'

}

conky.text = [[
${voffset 6}${color8} ${font :Condensed:size=14}$alignc${time %H:%M}
${voffset -4}${font :bold:size=8}$alignc${time %A %d %b, %Y}${font}
\
${voffset 2}${color2}System ${color3}${hr 1}
${voffset 2}${color7}${font :Condensed:size=10}${alignc}Dell Inc. 0839Y6 vA00${font}
${voffset 4}${alignc}${nodename} - ${kernel} on ${machine}
${voffset 4}${alignc}Intel Core i7-1260P @ ${freq_g} GHz
${voffset 4}${offset 8}${color5}Load: $loadavg ${alignr}Uptime: $uptime
${voffset 2}${offset 8}Power: ${battery_short} / ${battery_time BAT0} ${alignr}${color1}+${acpitemp}°C
${color5}${voffset -1}${offset 8}${battery_bar 6,230 BAT0}
\
${voffset 4}${color2}Processor ${color3}${hr 1}
${voffset 2}${offset 8}${color5}Total Usage: ${cpu cpu0}% ${cpubar}
${voffset 4}${offset 8}${color5}core 1: ${cpu cpu1}% / ${freq 1} MHz ${alignr}${color1}${texeci 8 sensors | grep 'Core 0' | cut -c17-23 | sed '/^$/d'}C
${color5}${voffset -3}${offset 8}${cpugraph cpu1 14,230 999999 CC0000 -t}
${voffset -6}${offset 8}${color5}core 2: ${cpu cpu2}% / ${freq 2} MHz ${alignr}${color1}${texeci 8 sensors | grep 'Core 4' | cut -c17-23 | sed '/^$/d'}C
${color5}${voffset -3}${offset 8}${cpugraph cpu2 14,230 999999 CC0000 -t}
${voffset -6}${offset 8}${color5}core 3: ${cpu cpu3}% / ${freq 3} MHz ${alignr}${color1}${texeci 8 sensors | grep 'Core 8' | cut -c17-23 | sed '/^$/d'}C
${color5}${voffset -3}${offset 8}${cpugraph cpu3 14,230 999999 CC0000 -t}
${voffset -6}${offset 8}${color5}core 4: ${cpu cpu4}% / ${freq 4} MHz ${alignr}${color1}${texeci 8 sensors | grep 'Core 12' | cut -c17-23 | sed '/^$/d'}C
${color5}${voffset -3}${offset 8}${cpugraph cpu4 14,230 999999 CC0000 -t}
${voffset -6}${offset 8}${color5}core 5: ${cpu cpu5}% / ${freq 5} MHz ${alignr}${color1}${texeci 8 sensors | grep 'Core 16' | cut -c17-23 | sed '/^$/d'}C
${color5}${voffset -3}${offset 8}${cpugraph cpu5 14,230 999999 CC0000 -t}
${voffset -6}${offset 8}${color5}core 6: ${cpu cpu6}% / ${freq 6} MHz ${alignr}${color1}${texeci 8 sensors | grep 'Core 17' | cut -c17-23 | sed '/^$/d'}C
${color5}${voffset -3}${offset 8}${cpugraph cpu6 14,230 999999 CC0000 -t}
${voffset -6}${offset 8}${color5}core 7: ${cpu cpu7}% / ${freq 7} MHz ${alignr}${color1}${texeci 8 sensors | grep 'Core 18' | cut -c17-23 | sed '/^$/d'}C
${color5}${voffset -3}${offset 8}${cpugraph cpu7 14,230 999999 CC0000 -t}
${voffset -6}${offset 8}${color5}core 8: ${cpu cpu8}% / ${freq 8} MHz ${alignr}${color1}${texeci 8 sensors | grep 'Core 19' | cut -c17-23 | sed '/^$/d'}C
${color5}${voffset -3}${offset 8}${cpugraph cpu8 14,230 999999 CC0000 -t}
${voffset -6}${offset 8}${color5}core 9: ${cpu cpu9}% / ${freq 9} MHz ${alignr}${color1}${texeci 8 sensors | grep 'Core 20' | cut -c17-23 | sed '/^$/d'}C
${color5}${voffset -3}${offset 8}${cpugraph cpu9 14,230 999999 CC0000 -t}
${voffset -6}${offset 8}${color5}core 10: ${cpu cpu10}% / ${freq 10} MHz ${alignr}${color1}${texeci 8 sensors | grep 'Core 21' | cut -c17-23 | sed '/^$/d'}C
${color5}${voffset -3}${offset 8}${cpugraph cpu10 14,230 999999 CC0000 -t}
${voffset -6}${offset 8}${color5}core 11: ${cpu cpu11}% / ${freq 11} MHz ${alignr}${color1}${texeci 8 sensors | grep 'Core 22' | cut -c17-23 | sed '/^$/d'}C
${color5}${voffset -3}${offset 8}${cpugraph cpu11 14,230 999999 CC0000 -t}
${voffset -6}${offset 8}${color5}core 12: ${cpu cpu12}% / ${freq 12} MHz ${alignr}${color1}${texeci 8 sensors | grep 'Core 23' | cut -c17-23 | sed '/^$/d'}C
${color5}${voffset -3}${offset 8}${cpugraph cpu12 14,230 999999 CC0000 -t}
${voffset -2}${offset 8}${color5}Total: $processes  Running: $running_processes
${voffset 2}${offset 8}Highest CPU:${alignr}PID    CPU%
${offset 10}${color6} ${top name 1}${alignr}${top pid 1}  ${top cpu 1}
${offset 10}${color4} ${top name 2}${alignr}${top pid 2}  ${top cpu 2}
${offset 10}${color4} ${top name 3}${alignr}${top pid 3}  ${top cpu 3}
${offset 10}${color4} ${top name 4}${alignr}${top pid 4}  ${top cpu 4}
\
${voffset 6}${color2}Memory ${color3}${hr 1}
${voffset 2}${offset 8}${color5}RAM: $memperc% ${alignr}$mem / $memmax
${voffset -1}${offset 6}${membar 6,230}
${offset 6}Swap: $swapperc% ${alignr}$swap / $swapmax
${voffset -1}${offset 6}${swapbar 6,230}
${voffset 2}${offset 8}Buffers: ${buffers} ${alignr}Cached: ${cached}
${voffset 2}${offset 8}Highest MEM:${alignr}PID    MEM%
${offset 10}${color6} ${top_mem name 1}${alignr}${top_mem pid 1}  ${top_mem mem 1}
${offset 10}${color4} ${top_mem name 2}${alignr}${top_mem pid 2}  ${top_mem mem 2}
${offset 10}${color4} ${top_mem name 3}${alignr}${top_mem pid 3}  ${top_mem mem 3}
${offset 10}${color4} ${top_mem name 4}${alignr}${top_mem pid 4}  ${top_mem mem 4}
\
${voffset 6}${color2}Disk ${color3}${hr 1}
${voffset 2}${offset 8}${color5}Storage: ${fs_used_perc /}%  ${fs_used /} / ${fs_size /} ${fs_bar 6 /}
${voffset 4}${offset 12}${color4}documents${tab 10,0}${execi 120 cat ~/.storage/docnum}${tab 10,0}${execibar 120 cat ~/.storage/docval}
${offset 12}local${tab 42,0}${execi 120 cat ~/.storage/srcnum}${tab 10,0}${execibar 120 cat ~/.storage/srcval}
${offset 12}pictures${tab 41,0}${execi 120 cat ~/.storage/picnum}${tab 10,0}${execibar 120 cat ~/.storage/picval}
${offset 12}music${tab 41,0}${execi 120 cat ~/.storage/musnum}${tab 10,0}${execibar 120 cat ~/.storage/musval}
${voffset 2}${offset 8}${color5}read: ${diskio_read}
${color5}${voffset -3}${offset 8}${diskiograph_read /dev/nvme0n1p2 14,230 999999 CC0000 -t}
${voffset -6}${offset 8}${color5}write: ${diskio_write} 
${color5}${voffset -3}${offset 8}${diskiograph_write /dev/nvme0n1p2 14,230 999999 CC0000 -t}
\
${voffset 2}${color2}Network ${color3}${hr 1}
${voffset 2}${offset 8}${color5}Interface: ${gw_iface}
${offset 8}TOR Status ${alignr}${if_running tor} active${else}disabled${endif}
${offset 8}Packets ${alignr}in: ${tcp_portmon 1 32767 count} / out: ${tcp_portmon 32768 61000 count}
\
${if_up enp0s20f0u1}\
${voffset 6}${offset 8}${color5}Wired (enp0s20f0u1)
${offset 12}${color4}Gateway IP:${tab 60,0}${addr enp0s20f0u1}
${offset 12}DNS:${tab 60,0}${nameserver enp0s20f0u1}
${voffset 2}${offset 12}${color5}down: ${alignr}${downspeed enp0s20f0u1}
${color5}${voffset -3}${offset 8}${downspeedgraph enp0s20f0u1 14,230 999999 CC0000 -t}
${voffset -6}${offset 8}${color5}up: ${alignr}${upspeed enp0s20f0u1}
${color5}${voffset -3}${offset 8}${upspeedgraph enp0s20f0u1 14,230 999999 CC0000 -t}
${endif}\
\
${if_up wlp0s20f3}\
${voffset 2}${offset 8}${color5}Wifi (wlp0s20f3)
${offset 12}${color4}Gateway IP:${tab 60,0}${addr wlp0s20f3}
${offset 12}DNS:${tab 60,0}${nameserver wlp0s20f3}
${offset 12}SSID:${tab 60,0}${wireless_essid wlp0s20f3}
${offset 12}Signal:${tab 60,0}${wireless_link_qual_perc wlp0s20f3}%
${voffset 2}${offset 8}${color5}down: ${alignr}${downspeed wlp0s20f3}
${color5}${voffset -3}${offset 8}${downspeedgraph wlp0s20f3 14,230 999999 CC0000 -t}
${voffset -6}${offset 8}${color5}up: ${alignr}${upspeed wlp0s20f3}
${color5}${voffset -3}${offset 8}${upspeedgraph wlp0s20f3 14,230 999999 CC0000 -t}
${endif}\

]]
