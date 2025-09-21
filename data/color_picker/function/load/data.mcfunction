data modify storage color_picker:data dec2hex set value {0:0,1:1,2:2,3:3,4:4,5:5,6:6,7:7,8:8,9:9,10:a,11:b,12:c,13:d,14:e,15:f}
data modify storage color_picker:data hex2dec set value {0:0,1:1,2:2,3:3,4:4,5:5,6:6,7:7,8:8,9:9,a:10,b:11,c:12,d:13,e:14,f:15,A:10,B:11,C:12,D:13,E:14,F:15}

execute unless data storage color_picker:data callbacks[63] run \
    data modify storage color_picker:data callbacks set value [{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}]
