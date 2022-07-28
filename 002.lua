mytable = '\x1BLua'
local loadfile = loadfile

gg["alert"]("©    🐮   [掛狗] の [BᴜΙ͠ᴛᴇʀ]   🐮    ©\n\n🌸  [啟動劇本]  🌷  [Enter Script]  🌸")

lqdm = load("return os.time{ year = 2022 , month = 8, day = 14, hour = 00, min = 00, sec = 00 }")()

Password = "my friend"
lqv = gg["prompt"]({"  請輸入密碼:\nPlease Enter your Password:"}, nil, {"text"})
if lqv == nil then os.exit() end
if lqv[1] == Password then
         aaaa = 30
		 gg.alert(' 密碼正確 👍🏻\n Password Correct 💯')
     else
if lqv[1] ~= Password then gg.alert('密碼錯誤\nWrong Password') os.exit()
end 
end

Yzf = os.time()
  Password = (lqdm-aaaa)
  YZZ = Password
  YZA = (Password - Yzf)/3600/24
  YZB = YZA*24*3600
  YZC = (Password - Yzf -YZB)/60/60
  YZD = YZC*3600
  YZE = (Password - Yzf -YZB - YZD)/60
  YZF = YZE*60
  YZG = Password - Yzf -YZB - YZD -YZF
  if Password > Yzf then gg.alert('到期日:\nExpire Time:\n '.. YZA ..' day日- ' .. YZC .. ' hour小時- ' .. YZE .. ' min分- ' .. YZG .. ' s秒')
end


gg["setVisible"](false)
gg.toast("║▓░░░░░░░░░░░░░░║") gg.sleep(100) gg.toast("║▓▓▓░░░░░░░░░░░░║") gg.sleep(100) gg.toast("║▓▓▓▓▓░░░░░░░░░░║") gg.sleep(100) gg.toast("║▓▓▓▓▓▓░░░░░░░░░║") gg.sleep(100) gg.toast("║▓▓▓▓▓▓▓░░░░░░░░║") gg.sleep(100) gg.toast("║▓▓▓▓▓▓▓▓▓░░░░░░║") gg.sleep(100) gg.toast("║▓▓▓▓▓▓▓▓▓▓▓▓░░░║") gg.sleep(100) gg.toast("║▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓║") gg.sleep(100)

function setvalue(address, flags, value) local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end local HexPatches = {} function HexPatches.MemoryPatch(Lib, Offset, Edit, Type) local Ranges = gg.getRangesList(Lib) local v = {} v[1] = {} v[1].address = Ranges[1].start + Offset v[1].flags = Type v[1].value = Edit.."r" v[1].freeze = true gg.setValues(v) end local Hex = {} function patch(lib, offset, edit, type) local ranges = gg.getRangesList(lib) local xy = {} xy[1] = {} xy[1].address = ranges[1].start + offset xy[1].flags = type xy[1].value = edit gg.setValues(xy) end CA=gg.REGION_C_ALLOC VI=gg.REGION_VIDEO XA=gg.REGION_CODE_APP AN=gg.REGION_ANONYMOUS CD=gg.REGION_C_DATA BSS=gg.REGION_C_BSS EA=gg.editAll RL=gg.getRangesList SN=gg.searchNumber CLR=gg.clearResults GR=gg.getResults SET=gg.setVisible REFINE=gg.refineNumber COUNT=gg.getResultCount RANGE=gg.setRanges XOR=gg.TYPE_XOR BYTE=gg.TYPE_BYTE FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD DWORD=gg.TYPE_DWORD DOUBLE=gg.TYPE_DOUBLE QWORD=gg.TYPE_QWORD EQUAL=gg.SIGN_EQUAL function AxM(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🐮 ʀᴇsᴜʟᴛs ( "..#data.." ) ᴄʜᴀɴɢᴇ 🐮") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("🐮 ʀᴇsᴜʟᴛs ( "..#t.." ) ᴄʜᴀɴɢᴇ 🐮") gg.addListItems(t) else gg.toast("🐮 ᴅᴀᴛᴀ ɴᴏᴛ ғᴏᴜɴᴅ 🐮", false) return false end else gg.toast("🐮 ᴅᴀᴛᴀ ɴᴏᴛ ғᴏᴜɴᴅ 🐮") return false end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🐮 ʀᴇsᴜʟᴛs ( "..#data.." ) ᴄʜᴀɴɢᴇ 🐮") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("🐮 ᴅᴀᴛᴀ ɴᴏᴛ ғᴏᴜɴᴅ 🐮", false) return false end else gg.toast("🐮 ᴅᴀᴛᴀ ɴᴏᴛ ғᴏᴜɴᴅ 🐮") return false end end  

ON="🟢-" OFF="⚫-" KFC="🟡-" BBQ="♑-" turn0=OFF turn1=OFF turn2=OFF turn3=OFF turn4=OFF turn5=OFF turn6=OFF turn7=OFF turn8=OFF turn9=OFF turn10=OFF turn11=OFF turn12=OFF turn13=OFF turn14=OFF turn15=OFF turn16=OFF turn17=OFF turn18=OFF turn19=BBQ turn20=BBQ turn21=BBQ turn22=BBQ turn23=BBQ

gg["setVisible"](true)
COW = 1
function Main() --body
menu = gg["multiChoice"]({
""..turn0.."[ᴛɪᴍɪ(ʟᴏɢᴏ)ʙʏᴘᴀss][ʟᴏɢᴏ 防封]", --a
""..turn1.."[Bʏᴘᴀss ɪɴ (Lᴏʙʙʏ)][大廳防封]", --b
""..turn20.."[ ʀᴇᴘᴏʀᴛ ᴄʜᴇᴄᴋᴇʀ ]\n • Between.Game •", --c
""..turn21.."[ʙʟᴜᴇ ᴀɴᴛʜᴇɴᴀ][藍色天線]\n  • In.Every.Game •", --d
""..turn22.."[ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ][魔術彈]\n  • In.Every.Game •", --e
""..turn23.."[sᴘᴇᴇᴅʜᴀᴄᴋ][自調加速]\n  • In.Every.Game •", --f
""..turn2.."[ᴇsᴘ ɴᴀᴍᴇ][顯示人名]", --g
""..turn3.."[ᴡᴀʟʟʜᴀᴄᴋ][透視敵人]", --h
""..turn4.."[ᴀɪᴍʙᴏᴛ][瞄準輔助]", --i
""..turn5.."[ᴀɪᴍʟᴏᴄᴋ][開火鎖定]", --j
""..turn6.."[ғᴀsᴛsᴄᴏᴘᴇ][秒開鏡]", --k
""..turn7.."[ᴍɪɴɪ ᴄʀᴏssʜᴀɪʀ][縮小準星]", --l
""..turn8.."[ɴᴏ ʀᴇᴄᴏɪʟ][減後座力]", --m
""..turn9.."[ғᴀsᴛ ʀᴇʟᴏᴀᴅ][快速上彈]", --n
""..turn10.."[ɴᴏ sᴘʀᴇᴀᴅ][無散發]", --o
""..turn11.."[ɴᴏ ᴘᴀʀᴀᴄʜᴜᴛᴇ][秒落地]", --p
""..turn12.."[ғᴀsᴛsʜᴏᴏᴛ][增強射速]", --q
""..turn13.."[ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ][大範圍子彈]", --r
""..turn14.."[ʙʀ ᴍᴀᴘ ʜᴀᴄᴋ][生存地圖]️", --s
""..turn15.."[ᴍᴘ ʀᴀᴅᴀʀ ʜᴀᴄᴋ][多人雷達]", --t
""..turn16.."[sᴘᴇᴇᴅ ʀᴜɴ x4][加速x4<演>]", --u
""..turn17.."[ғʟᴀsʜ ʀᴜɴ x5][加速x5]️", --v
""..turn19.."[ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ80%][魔術彈80%]", --w
""..turn18.."[Gᴜɴs]", --x
"🧱 [EXIT]🧱[離開] 🧱", --exit
}, nil, os["date"]("\n📅 Date : %d-%B-%Y\n⏰ Time : %H:%M<%p>\n ʜᴀᴄᴋ ʙʏ 🐮BᴜΙ͠ᴛᴇʀ"))
    if menu == nil then
      else
    if menu[1] == true then a1()
      end
    if menu[2] == true then b1()
      end
    if menu[3] == true then c1()
      end
    if menu[4] == true then d1()
      end
    if menu[5] == true then e1()
      end
    if menu[6] == true then f1()
      end
    if menu[7] == true then g1()
      end
    if menu[8] == true then h1()
      end
    if menu[9] == true then i1()
      end
    if menu[10] == true then j1()
      end
    if menu[11] == true then k1()
      end
    if menu[12] == true then l1()
      end
    if menu[13] == true then m1()
      end
    if menu[14] == true then n1()
      end
    if menu[15] == true then o1()
      end
    if menu[16] == true then p1()
      end
    if menu[17] == true then q1()
      end
    if menu[18] == true then r1()
      end
    if menu[19] == true then s1()
      end
    if menu[20] == true then t1()
      end
    if menu[21] == true then u1()
      end
    if menu[22] == true then v1()
      end
    if menu[23] == true then w1()
      end
    if menu[24] == true then x1()
      end
    if menu[25] == true then exit()
      end
    end
  COW = -1
end

function a1() --logo
  if turn0 == OFF then
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
    gg.searchNumber("-2067906082;-1731059524;1658658271;1591671054;953729732:16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
    local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
    for i, v in ipairs(t) do
      if v.flags == gg.TYPE_DWORD then
        v.value = "0"
        v.freeze = true
      end
    end
    gg.addListItems(t)
    t = nil
    gg.clearResults()
    gg.clearList()
    gg.sleep(300)

    a = "24008\nVar #B1FAB030|b1fab030|4|6234b402|0|0|0|0|rw-p|data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so|30"
    fileData = gg.EXT_STORAGE .. "/[#timi#].dat"
    io.output(fileData):write(a):close()
    gg.loadList(fileData, gg.LOAD_APPEND)
    gg.sleep(50)
    r = gg.getListItems()
    gg.loadResults(r)
    revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
    local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
    for i, v in ipairs(t) do
      if v.flags == gg.TYPE_DWORD then
        v.value = "0"
        v.freeze = true
      end
    end
    gg.addListItems(t)
    t = nil
    gg.clearResults()
    gg.clearResults()

    b = "2324\nVar #BC34A9CC|bc34a9cc|4|4000|0|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|9cc\nVar #BC34A9D4|bc34a9d4|4|4000|0|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|9d4\nVar #BC34A9DC|bc34a9dc|4|4000|0|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|9dc\nVar #BC34A9E8|bc34a9e8|4|4000|0|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|9e8\nVar #BC34A9F0|bc34a9f0|4|4000|0|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|9f0\nVar #BC34A9F8|bc34a9f8|4|4000|0|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|9f8\nVar #BC34AA00|bc34aa00|4|4000|0|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|a00\nVar #BC34AA08|bc34aa08|4|4000|0|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|a08\nVar #BC34AA10|bc34aa10|4|4000|0|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|a10\nVar #BC34AA18|bc34aa18|4|4000|0|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|a18\nVar #BC34AA20|bc34aa20|4|4000|0|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|a20\nVar #BC34AA30|bc34aa30|4|4000|0|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|a30\nVar #BC34AA38|bc34aa38|4|4000|0|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|a38\nVar #BC34AA58|bc34aa58|4|4000|0|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|a58\nVar #BC34AA60|bc34aa60|4|4000|0|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|a60"
    fileData = gg.EXT_STORAGE .. "/[#tencent#].dat"
    io.output(fileData):write(b):close()
    gg.loadList(fileData, gg.LOAD_APPEND)
    gg.sleep(50)
    r = gg.getListItems()
    gg.loadResults(r)
    revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
    local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
    for i, v in ipairs(t) do
      if v.flags == gg.TYPE_DWORD then
        v.value = "67,109,633"
        v.freeze = true
      end
    end
    gg.addListItems(t)
    t = nil
    gg.clearResults()
    gg.clearResults()

    c = "19170\nVar #BDDDFEE8|bdddfee8|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so|20ee8\nVar #BDDDFEEC|bdddfeec|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so|20eec\nVar #BDDDFEF0|bdddfef0|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so|20ef0\nVar #BDDDFEF4|bdddfef4|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so|20ef4\nVar #BDDDFEF8|bdddfef8|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so|20ef8\nVar #BDDDFEFC|bdddfefc|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so|20efc\nVar #BDDE0144|bdde0144|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|144\nVar #BDDE015C|bdde015c|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|15c\nVar #BDDE0160|bdde0160|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|160\nVar #BDDE0164|bdde0164|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|164\nVar #BDDE0168|bdde0168|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|168\nVar #BDDE016C|bdde016c|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|16c\nVar #BDDE0170|bdde0170|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|170\nVar #BDDE0174|bdde0174|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|174\nVar #BDDE0178|bdde0178|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|178\nVar #BDDE017C|bdde017c|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|17c\nVar #BDDE0180|bdde0180|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|180\nVar #BDDE0184|bdde0184|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|184\nVar #BDDE0188|bdde0188|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|188\nVar #BDDE01A4|bdde01a4|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|1a4\nVar #BDDE01A8|bdde01a8|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|1a8\nVar #BDDE0248|bdde0248|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|248\nVar #BDDE024C|bdde024c|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|24c\nVar #BDDE0250|bdde0250|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|250\nVar #BDDE0254|bdde0254|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|254\nVar #BDDE0260|bdde0260|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|260\nVar #BDDE0264|bdde0264|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|264\nVar #BDDE02A4|bdde02a4|4|0|1|0|0|0|rw-p|/data/app/com.garena.game.codm-awDI-3XXH8JoohoTgyw17w==/lib/arm/libanogs.so:bss|2a4"
    fileData = gg.EXT_STORAGE .. "/[##].dat"
    io.output(fileData):write(c):close()
    gg.loadList(fileData, gg.LOAD_APPEND)
    gg.sleep(50)
    r = gg.getListItems()
    gg.loadResults(r)
    revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
    local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
    for i, v in ipairs(t) do
      if v.flags == gg.TYPE_DWORD then
        v.value = "0"
        v.freeze = true
      end
    end
    gg.addListItems(t)
    t = nil
    gg.clearResults()
    turn0 = ON
    gg.alert("⭕ ʟᴏɢᴏ ʙʏᴘᴀss ᴀᴄᴛɪᴠᴇ✔")
  end
end

function b1() --lobby
if turn1 == OFF then
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.setVisible(false)
gg.searchNumber("1,849,753,710;1,262,769,007;1~2147483648;1,718,644,084;6,646,889::2048", gg.TYPE_DWORD)
gg.getResults(5000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,399,811,649;1,850,690,372;1~1,999,999,999::2048", gg.TYPE_DWORD)
gg.getResults(5000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("196,867", gg.TYPE_DWORD)
gg.refineNumber("196,867", gg.TYPE_DWORD)
gg.getResults(5000)
gg.editAll("84,018,177", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131,330", gg.TYPE_DWORD)
gg.refineNumber("131,330", gg.TYPE_DWORD)
gg.getResults(5000)
gg.editAll("84,018,177", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("144,387", gg.TYPE_DWORD)
gg.refineNumber("144,387", gg.TYPE_DWORD)
gg.getResults(5000)
gg.editAll("84,018,177", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134,402;133,378", gg.TYPE_DWORD)
gg.refineNumber("134,402", gg.TYPE_DWORD)
gg.getResults(5000)
gg.editAll("84,018,177", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134,914;262,403", gg.TYPE_DWORD)
gg.refineNumber("134,914", gg.TYPE_DWORD)
gg.getResults(5000)
gg.editAll("84,018,177", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134,658;134,402", gg.TYPE_DWORD)
gg.refineNumber("134,658", gg.TYPE_DWORD)
gg.getResults(5000)
gg.editAll("84,018,177", gg.TYPE_DWORD)
gg.clearResults()
gg.alert("🔐 ʙʏᴘᴀss ʟᴏʙʙʏ ᴀᴄᴛɪᴠᴇ✔")
    turn1 = ON
  end
end

function c1() --report
    RANGE(CA)
      SN("67,109,633", DWORD)
        if COUNT() == 0 then
          gg.alert("ᴀɴᴛɪᴄʜᴇᴀᴛ ʀᴇsᴜʟᴛs = 0\nʀᴇʟᴏɢ: ɴᴏ\nsᴛᴀᴛᴜs: sᴀғᴇ 👌🏻")
        CLR()
      else
    RANGE(CA)
      SN("67,109,633", DWORD)
        if COUNT() == 1 then
          gg.alert("ᴀɴᴛɪᴄʜᴇᴀᴛ ʀᴇsᴜʟᴛs = 1\nʀᴇʟᴏɢ: ɴᴏ\nsᴛᴀᴛᴜs: sᴀғᴇ 👌🏻")
        CLR()
      else
    RANGE(CA)
      SN("67,109,633", DWORD)
        if COUNT() == 2 then
          gg.alert("ᴀɴᴛɪᴄʜᴇᴀᴛ ʀᴇsᴜʟᴛs = 2\nʀᴇʟᴏɢ: ɴᴏ\nsᴛᴀᴛᴜs: sᴀғᴇ 👌🏻")
        CLR()
      else
    RANGE(CA)
      SN("67,109,633", DWORD)
        if COUNT() == 3 then
          gg.alert("ᴀɴᴛɪᴄʜᴇᴀᴛ ʀᴇsᴜʟᴛs = 3\nʀᴇʟᴏɢ: ɴᴏ\nsᴛᴀᴛᴜs: sᴀғᴇ 👌🏻")
        CLR()
      else
    RANGE(CA)
      SN("67,109,633", DWORD)
        if COUNT() == 4 then
          gg.alert("ᴀɴᴛɪᴄʜᴇᴀᴛ ʀᴇsᴜʟᴛs = 4\nʀᴇʟᴏɢ: ɴᴏ\nsᴛᴀᴛᴜs: sᴀғᴇ 👌🏻")
        CLR()
      else
    RANGE(CA)
      SN("67,109,633", DWORD)
        if COUNT() == 5 then
          gg.alert("ᴀɴᴛɪᴄʜᴇᴀᴛ ʀᴇsᴜʟᴛs = 5\nʀᴇʟᴏɢ: ɴᴇᴇᴅ\nsᴛᴀᴛᴜs:⚠️ sᴀғᴇ ʜɪɢʜ ʀɪsᴋ!!!")
        CLR()
      else
    RANGE(CA)
      SN("67,109,633", DWORD)
        if COUNT() == 6 then
          gg.alert("ᴀɴᴛɪᴄʜᴇᴀᴛ ʀᴇsᴜʟᴛs = 6\nʀᴇʟᴏɢ: ɴᴇᴇᴅ\nsᴛᴀᴛᴜs:🈲️ ʜɪɢʜ ʀɪsᴋ")
        CLR()
      else
    RANGE(CA)
      SN("67,109,633", DWORD)
        if COUNT() == 7 then
          gg.alert("ᴀɴᴛɪᴄʜᴇᴀᴛ ʀᴇsᴜʟᴛs = 7\nʀᴇʟᴏɢ: ɴᴇᴇᴅ\nsᴛᴀᴛᴜs:🈲️ ʜɪɢʜ ʀɪsᴋ")
        CLR()
      else
    RANGE(CA)
      SN("67,109,633", DWORD)
        if COUNT() == 8 then
          gg.alert("ᴀɴᴛɪᴄʜᴇᴀᴛ ʀᴇsᴜʟᴛs = 8\nʀᴇʟᴏɢ: ɴᴇᴇᴅ\nsᴛᴀᴛᴜs:🈲️ ᴠᴇʀʏ ʜɪɢʜ ʀɪsᴋ")
        CLR()
      else
    RANGE(CA)
      SN("67,109,633", DWORD)
        if COUNT() == 9 then
          gg.alert("ᴀɴᴛɪᴄʜᴇᴀᴛ ʀᴇsᴜʟᴛs = 9\nʀᴇʟᴏɢ: ɴᴇᴇᴅ\nsᴛᴀᴛᴜs:🈲 ᴠᴇʀʏ ᴠᴇʀʏ ʜɪɢʜ ʀɪsᴋ")
        CLR()
      else
    RANGE(CA)
      SN("67,109,633", DWORD)
        if COUNT() == 10 then
            gg["alert"]("ᴀɴᴛɪᴄʜᴇᴀᴛ ʀᴇsᴜʟᴛs = 10\nʀᴇʟᴏɢ: ɴᴇᴇᴅ\nsᴛᴀᴛᴜs:🈲️ ᴠᴇʀʏ ᴠᴇʀʏ ᴠᴇʀʏ ᴠᴇʀʏ ʜɪɢʜ ʀɪsᴋ 😅")
              gg["clearResults"]()
               gg["sleep"](2000)
              gg["processKill"]()
            os["exit"]()
           end
          end
         end
        end
       end
      end
     end
    end
   end
  end
 end
end

function d1() --blue
  RANGE(AN)
    local S = {{1082130432, 0}, {1065353216, 4}, {1065353216, 8}, {0, 16}, {1077936128, 20},}
    local W = {{1073741824, 0}, {1086324736, 4}, {1203982336, 8}, {0, 16}, {1077936128, 20},}
    local T = DWORD
    AxM(S, W, T)
    gg.clearResults()
    RANGE(AN)
    local S = {{1077936128, 0}, {1028443341, 4}, {1061997773, 8}, {1065353216, 16}, {1065353216, 20},}
    local W = {{1077936128, 0}, {1028443341, 4}, {-1007026176, 8}, {1065353216, 16}, {1065353216, 20},}
    local T = DWORD
    AxM(S, W, T)
    gg.clearResults()
    RANGE(AN)
    local S = {{1077936128, 0}, {0, 4}, {1053609165, 8}, {1065353216, 16}, {1065353216, 20},}
    local W = {{1077936128, 0}, {0, 4}, {-1007026176, 8}, {1065353216, 16}, {1065353216, 20},}
    local T = DWORD
    AxM(S, W, T)
    gg.clearResults()
    gg.toast("🔵 ʙʟᴜᴇ ᴀɴᴛʜᴇɴᴀ ғʀᴀᴍᴇ ᴀᴄᴛɪᴠᴇ✔\n♡ Turn on [in] EveryMatch\n♡ 請在每場遊戲內打開")
end

function e1() --mb
  mb = gg.prompt({
  " [0.5; 3.0]\n  ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ . 魔術彈\n 普通.Normal: 0.8 ~ 1.2\n 建議.Suggest: 1.2 ~ 1.8\n 偏強.Strong: 1.8 ~ 2.4"
}, {
[1] = data, 
[1] = 1.1439999938
}, {
[1] = "number"
})
  if mb == nil then else
    data = mb[1]
      RANGE(AN)
        SN("0.1439999938", FLOAT, false, EQUAL, 0, -1)
          GR(1000)
        gg.editAll(tostring(mb[1]), FLOAT)
      gg.clearResults()
    gg.toast("ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ x["..mb[1].."] ᴀᴄᴛɪᴠᴇ✔\n♡ Turn on [in] EveryMatch\n♡ 請在每場遊戲內打開")
  end
end

function f1() --speed
  spd = gg.prompt({
  "選擇速度 . sᴘᴇᴇᴅʜᴀᴄᴋ: [3; 25]"
}, {
[1] = data, 
[1] = 15
}, {
[1] = "number"
})
    if spd == nil then else
      data = spd[1]
        SH = tostring(spd[1])
          gg.setRanges(32)
        local dataType = 16
      local Name = "SPEEDHACK"
    local tb1 = {{36.0, 0}, {0.5, 20}, {2.0, 24}, {90.0, 28}, }
    local tb2 = {{SH, -56}, {0.30000001192092896, -16}, {SH, 4}, {SH, 8}, {SH, 12}, {SH, 16}, {SH, 32}, {SH, 480}, }
SearchWrite(tb1, tb2, dataType)
  gg.setRanges(gg.REGION_ANONYMOUS)
    local dataType = 16
      local Name = "SPEEDHACK"
        local tb1 = {{36.0, 0}, {0.30000001192092896, -16}, {0.5, 20}, }
          local tb2 = {{SH, -56}, {SH, 4}, {SH, 8}, {SH, 12}, {SH, 16}, {SH, 32}, {SH, 480}, }
        SearchWrite(tb1, tb2, dataType)
      gg.clearResults()
    gg.alert("sᴘᴇᴇᴅ x["..spd[1].."] ᴀᴄᴛɪᴠᴇ✔\n♡ Turn on [in] EveryMatch\n♡ 請在每場遊戲內打開")
  end
end

function g1() --name
  if turn2 == OFF then
    HexPatches.MemoryPatch('libil2cpp.so', 0x1B53EA4, '0170A0E3', 4)
    HexPatches.MemoryPatch('libil2cpp.so', 0x1131978, '000051E3', 4)
    HexPatches.MemoryPatch('libil2cpp.so', 0x2028ACC, '000050E3', 4)
    HexPatches.MemoryPatch('libil2cpp.so', 0x11320A0, '000050E3', 4)
    gg.clearResults()
    turn2 = ON
    gg.toast("☮️ ᴇsᴘ ɴᴀᴍᴇ ᴀᴄᴛɪᴠᴇ✔")
  end
end

function h1() --wall
  if turn3 == OFF then
    HexPatches.MemoryPatch('libil2cpp.so', 0x1A74904, '00F020E3', 4)
    gg.clearResults()
    turn3 = ON
    gg.toast("👀 ᴡᴀʟʟʜᴀᴄᴋ ᴀᴄᴛɪᴠᴇ✔")
  end
end

function i1() --aim
  if turn4 == OFF then
    HexPatches.MemoryPatch('libil2cpp.so', 0x6661A48, '220244E3', 4)
    gg.clearResults()
    turn4 = ON
    gg.toast("🔫 ᴀɪᴍʙᴏᴛ ᴀᴄᴛɪᴠᴇ✔")
  end
end

function j1() --lock
  if turn5 == OFF then
    so = RL('libil2cpp.so')[1].start
    local py = 0x1bce4d4
    setvalue(so + py, 16, '0.5')
    gg.clearResults()
    turn5 = ON
    gg.toast("📍 ᴀɪᴍʟᴏᴄᴋ ᴀᴄᴛɪᴠᴇ✔")
  else
    so = RL('libil2cpp.so')[1].start
    local py = 0x1bce4d4
    setvalue(so + py, 16, '-1.05255315e28')
    turn5 = OFF
    gg.alert("🛑 ᴀɪᴍʟᴏᴄᴋ ᴏғғ 🛑")
  end
end

function k1() --scope
  if turn6 == OFF then
    so = RL('libil2cpp.so')[1].start
    local py = 0x1ba96a8
    setvalue(so + py, 10, '0x0')
    gg.clearResults()
    turn6 = ON
    gg.toast("👁️ ғᴀsᴛ sᴄᴏᴘᴇ ᴀᴄᴛɪᴠᴇ✔")
  end
end

function l1() --hair
  if turn7 == OFF then
    so = RL('libil2cpp.so')[1].start
    local py = 0x4ebd034
    setvalue(so + py, 10, '0x0')
    gg.clearResults()
    turn7 = ON
    gg.toast("📍ᴍɪɴɪ ᴄʀᴏssʜᴀɪʀ ᴀᴄᴛɪᴠᴇ✔")
  end
end

function m1() --recoil
  if turn8 == OFF then
    HexPatches.MemoryPatch('libil2cpp.so', 0x33EA0B4, '9900A0E31EFF2FE1', 32)
    gg.clearResults()
    turn8 = ON
    gg.toast("🕳️ ɴᴏ ʀᴇᴄᴏɪʟ ᴀᴄᴛɪᴠᴇ✔")
  end
end

function n1() --reload
  if turn9 == OFF then
    HexPatches.MemoryPatch('libil2cpp.so', 0x1C0C48C, '0', 4)
    HexPatches.MemoryPatch('libil2cpp.so', 0x262671C, '0', 4)
    gg.clearResults()
    turn9 = ON
    gg.toast("🤹 ғᴀsᴛ ʀᴇʟᴏᴀᴅ ᴀᴄᴛɪᴠᴇ✔")
  else
    HexPatches.MemoryPatch('libil2cpp.so', 0x1C0C48C, '-3.74440972e28', 4)
    HexPatches.MemoryPatch('libil2cpp.so', 0x262671C, '-3.74440972e28', 4)
    gg.clearResults()
    turn9 = OFF
    gg.toast("🛑 ғᴀsᴛ ʀᴇʟᴏᴀᴅ ᴏғғ 🛑")
  end
end

function o1() --spread
  if turn10 == OFF then
    so = RL('libil2cpp.so')[1].start
    local py = 0x33e901c
    setvalue(so + py, 16, 1)
    gg.clearResults()
    so = RL('libil2cpp.so')[1].start
    local py = 0x33fd654
    setvalue(so + py, 16, 1)
    gg.clearResults()
    turn10 = ON
    gg.toast("ɴᴏ sᴘʀᴇᴀᴅ ᴀᴄᴛɪᴠᴇ✔")
  end
end

function p1() --ground
  if turn11 == OFF then
    so = RL('libil2cpp.so')[1].start
    local py = 0x20B49F8
    setvalue(so + py, 16, '-5.90295867e21')
    gg.clearResults()
    so = RL('libil2cpp.so')[1].start
    local py = 0x20B49FC
    setvalue(so + py, 16, '-2.02910209e20')
    gg.clearResults()
    turn11 = ON
    gg.toast("ɴᴏ ᴘᴀʀᴀᴄʜᴜᴛᴇ ᴀᴄᴛɪᴠᴇ✔")
  end
end

function q1() --shot
  if turn12 == OFF then
    so = RL('libil2cpp.so')[1].start
    local py = 0x262456c
    setvalue(so + py, 16, 0)
    gg.clearResults()
    so = RL('libil2cpp.so')[1].start
    local py = 0x2626168
    setvalue(so + py, 16, 0)
    gg.clearResults()
    turn12 = ON
    gg.toast("🌡️ ғᴀsᴛsʜᴏᴏᴛ ᴀᴄᴛɪᴠᴇ✔")
  end
end

function r1() --track
  if turn13 == OFF then
    so = RL('libunity.so')[1].start
    local py = 0xB68E04
    setvalue(so + py, 16, 23)
    gg.clearResults()
    so = RL('libunity.so')[1].start
    local py = 0xB68E08
    setvalue(so + py, 16, 23)
    gg.clearResults()
    so = RL('libunity.so')[1].start
    local py = 0xB68F10
    setvalue(so + py, 16, 23)
    gg.clearResults()
    so = RL('libunity.so')[1].start
    local py = 0x515338
    setvalue(so + py, 16, 9.5)
    gg.clearResults()
    so = RL('libunity.so')[1].start
    local py = 0xB68E0C
    setvalue(so + py, 16, 0)
    gg.clearResults()
    turn13 = ON
    gg.toast("🚫 ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ ᴀᴄᴛɪᴠᴇ✔")
  end
end

function s1() --map
  if turn14 == OFF then
    so = RL('libil2cpp.so')[1].start
    local py = 0x1B3069C
    setvalue(so + py, 4, '-476053503')
    so = RL('libil2cpp.so')[1].start
    local py = 0x1B306A0
    setvalue(so + py, 4, '-516948194')
    so = RL('libil2cpp.so')[1].start
    local py = 0x1B307C4
    setvalue(so + py, 4, '-476053503')
    so = RL('libil2cpp.so')[1].start
    local py = 0x1B307C8
    setvalue(so + py, 4, '-516948194')
    gg.clearResults()
    turn14 = ON
    gg.toast("[ʙʀ] ᴍᴀᴘ ʜᴀᴄᴋ ᴀᴄᴛɪᴠᴇ✔")
  end
end

function t1() --radar
  if turn15 == OFF then
    HexPatches.MemoryPatch('libil2cpp.so', 0x5EE8B8C, '0100A0E31EFF2FE1', 32)
    gg.clearResults()
    turn15 = ON
    gg.toast("[ᴍᴘ] ʀᴀᴅᴀʀ ʜᴀᴄᴋ ᴀᴄᴛɪᴠᴇ✔")
  end
end

function u1() --speed
  if turn16 == OFF then
    RANGE(AN)
    SN("4.28000020981", FLOAT, false, EQUAL, 0, -1)
    GR(550)
    EA("5.14546798999", FLOAT)
    gg.clearResults()
    turn16 = KFC
    gg.toast("🏅sᴘᴇᴇᴅ ʀᴜɴ x4 ᴀᴄᴛɪᴠᴇ✔\n♡ Turn on [in] EveryMatch\n♡ 請在每場遊戲內打開")
  else
    RANGE(AN)
    SN("5.14546798999", FLOAT, false, EQUAL, 0, -1)
    GR(550)
    EA("4.28000020981", FLOAT)
    gg.clearResults()
    turn16 = OFF
    gg.alert("❌ sᴘᴇᴇᴅ ʀᴜɴ x4 ᴏғғ ❌")
  end
end

function v1() --run
  if turn17 == OFF then
    RANGE(AN)
    SN("4.28000020981", FLOAT, false, EQUAL, 0, -1)
    GR(2000)
    EA("9.54546798999", FLOAT)
    gg.clearResults()
    turn17 = KFC
    gg.toast("♡ ғʟᴀsʜ ʀᴜɴ x5 ᴀᴄᴛɪᴠᴇ✔\n♡ Turn on [in] EveryMatch\n♡ 請在每場遊戲內打開")
  else
    RANGE(AN)
    SN("9.54546798999", FLOAT, false, EQUAL, 0, -1)
    GR(2000)
    EA("4.28000020981", FLOAT)
    gg.clearResults()
    turn17 = OFF
    gg.alert("❌ ғʟᴀsʜ ʀᴜɴ x5 ᴏғғ ❌")
  end
end

function w1() --magic
  RANGE(AN)
    SN("0.1439999938", FLOAT, false, EQUAL, 0, -1)
    GR(1000)
    EA("1.9", FLOAT)
    CLR()
    gg.toast("🎯 ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ ᴀᴄᴛɪᴠᴇ✔\n♡ 請在每場遊戲內打開")
end

function x1() --gun
  if turn18 == OFF then
RANGE(AN)
  SN("710001102", DWORD)
    GR(10000)
      EA("710001705", DWORD)
        CLR()
      RANGE(AN)
    SN("0;710000042;710001101::13", DWORD)
  GR(10000)
EA("289,900,085;710000042;710001706", DWORD)
  CLR()
    RANGE(AN)
      SN("0;710001103;0;0::13", DWORD)
        REFINE("710001103", DWORD)
      GR(10000)
    EA("710001707", DWORD)
  CLR()
gg.toast("😍 𝒖𝐫𝒃𝐚𝒏 𝒑𝒊𝒏𝒌 😍")
  gg.sleep(200)

    RANGE(AN)
      SN("2;22;200000126;200000671;200002203::21", DWORD)
        GR(10000)
      EA("100477;100016;2463;1486;2446", DWORD)
    CLR()
  RANGE(AN)
    SN("200,002,203;10106001;1,057,803,469::31", DWORD)
      REFINE("200,002,203", DWORD)
        GR(10000)
          EA("2446", DWORD)
        CLR()
      gg.toast("AK117 摄魂魔界 ᴀᴄᴛɪᴠᴇ✔")
    gg.sleep(200)
  
  RANGE(AN)
     SN("2;100,149;9,187::21", DWORD)
         GR(10000)
            REFINE("9187", DWORD)
          GR(10000)
        EA("9470", DWORD)
      CLR()
    RANGE(AN)
  SN("2;100,149;9,205", DWORD)
GR(10000)
  REFINE("9205", DWORD)
    GR(10000)
      EA("9488", DWORD)
        CLR()
          RANGE(AN)
            SN("9,196;10,124,001;1,057,803,469", DWORD)
          GR(10000)
        REFINE("9196", DWORD)
      GR(10000)
    EA("9479", DWORD)
  CLR()
gg.toast("ᴋɪʟᴏ141 ᴅᴇᴍᴏɴsᴏɴɢ ᴀᴄᴛɪᴠᴇ✔")
   gg.sleep(200)

      RANGE(AN)
        SN("2;30;200000029;200000233;200002161::21", DWORD)
          GR(10000)
            EA("100524;100233;66734;66740;66737", DWORD)
              CLR()
            RANGE(AN)
          SN("200,002,161;10107001;1,057,803,469::31", DWORD)
        REFINE("200002161", DWORD)
      GR(10000)
    EA("66737", DWORD)
  CLR()
gg.toast("ᴀᴋ-47 ʀᴀᴅɪᴀɴᴄᴇ ᴀᴄᴛɪᴠᴇ✔")
    gg.sleep(200)

      RANGE(AN)
        SN("10;81;200,000,652;200,000,653;200,010,069::21", DWORD)
          GR(10000)
        EA("100,412;10,634;602,000,042;602,000,043;200,010,129", DWORD)
      CLR()
    RANGE(AN)
      SN("200,010,069;10,207,001;1,057,803,469::31", DWORD)
        REFINE("200,010,069", DWORD)
          GR(10000)
        EA("200,010,129", DWORD)
      CLR()
   gg.toast("ᴅʟǫ33 ᴢᴇᴀʟᴏᴛ ᴀᴄᴛɪᴠᴇ✔")
gg.sleep(200)
    
RANGE(AN)
  SN("2;100,012;1,393;1,347;1,338::21", DWORD)
    GR(1000)
      REFINE("1393", DWORD, false, EQUAL, 0, -1)
        GR(10000)
          EA("1159", DWORD)
            CLR()
          RANGE(AN)
        SN("1,347;2;100,012;1,347;1,338", DWORD)
      GR(10000)
    REFINE("1347", DWORD, false, EQUAL, 0, -1)
  GR(1000)
EA("1168", DWORD)
  CLR()
    RANGE(AN)
      SN("1,338;10,122,001;1,057,803,469::31", DWORD)
        GR(10000)
            REFINE("1338", DWORD, false, EQUAL, 0, -1)
          GR(10000)
        EA("1175", DWORD)
      CLR()
    turn18 = ON
  gg.alert("♡😍 Pink Pink 😍 \n♡ ᴀᴋ-117  \n♡ ᴀᴋ-47 ʀᴀᴅɪᴀɴᴄᴇ\n♡ ᴍ13 ᴍᴏʀɴɪɴɢ sᴛᴀʀ\n♡ ᴋɪʟᴏ141 ᴅᴇᴍᴏɴsᴏɴɢ\n♡ ᴅʟǫ33 ᴢᴇᴀʟᴏᴛ\n\n 💫 ᴀᴄᴛɪᴠᴇ ✔")
 end
end

function exit() --exit
  ex = gg["alert"]("EXIT • 離開", "💡 Yes 💡", " ↩️ Back ↩️", nil)
    if ex == nil then else
    if ex == 1 then
      gg["toast"]("💘 Love You All 💘")
      gg["skipRestoreState"]()
      gg["setVisible"](true)
      gg["clearResults"]()
      gg["clearList"]()
      os["exit"]()
      end
    if ex == 2 then
      end
      end
      end

  while true do
    if gg["isVisible"](true) then COW = 1
      gg["setVisible"](false) end
      gg["clearResults"]()
    if COW == 1 then Main()
      gg["clearResults"]()
      end
      end




