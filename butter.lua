
password = gg["alert"](" \n         🐮 [牛哥外掛組] の [BᴜΙ͠ᴛᴇʀ] 🐮 \n\n ", "🌸 [開始][Enter] 🌸", "", "💀 [退出][Exit] 💀", nil)
if password == nil then end
if password == 1 then else
  if password == 3 then os["exit"]()
    return end end

gg["setVisible"](false)
ProgressBar = "║░░░░░░░░░░░░░░░║";for x = 1,15,1 do gg.sleep(200) ProgressBar = ProgressBar:gsub("░","▓",1);gg.toast(ProgressBar) end

if gg.getTargetPackage() ~= "com.garena.game.codm" then gg.alert(' Please Open Your Game First \n 請先打開遊戲 ') gg.clearList() return os.exit() end 
for i in ipairs({}) do local xxx = {nil, nil} xxx.TYPE_FLOAT = {nil,nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end
function setvalue(address, flags, value) local tt = {} tt[1] = {} tt[1].address = address tt[1].flags = flags tt[1].value = value gg.setValues(tt) end
local HexPatches = {} function HexPatches.MemoryPatch(Lib, Offset, Edit, Type) local Ranges = gg.getRangesList(Lib) local v = {} v[1] = {} v[1].address = Ranges[1].start + Offset v[1].flags = Type v[1].value = Edit.."r" v[1].freeze = true gg.setValues(v) end
local Hex = {} function patch(lib, offset, edit, type) local ranges = gg.getRangesList(lib) local xy = {} xy[1] = {} xy[1].address = ranges[1].start + offset xy[1].flags = type xy[1].value = edit gg.setValues(xy) end
CA=gg.REGION_C_ALLOC VI=gg.REGION_VIDEO XA=gg.REGION_CODE_APP AN=gg.REGION_ANONYMOUS CD=gg.REGION_C_DATA BSS=gg.REGION_C_BSS EA=gg.editAll RL=gg.getRangesList SNR=gg.searchNumber CLEAR=gg.clearResults GET=gg.getResults SET=gg.setVisible REFINE=gg.refineNumber COUNT=gg.getResultCount RANGE=gg.setRanges XOR=gg.TYPE_XOR BYTE=gg.TYPE_BYTE FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD DWORD=gg.TYPE_DWORD DOUBLE=gg.TYPE_DOUBLE QWORD=gg.TYPE_QWORD EQUAL=gg.SIGN_EQUAL
function AxM(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🐮 ʀᴇsᴜʟᴛs ( "..#data.." ) ᴄʜᴀɴɢᴇ 🐮") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("🐮 ʀᴇsᴜʟᴛs ( "..#t.." ) ᴄʜᴀɴɢᴇ 🐮") gg.addListItems(t) else gg.toast("🐮 ᴅᴀᴛᴀ ɴᴏᴛ ғᴏᴜɴᴅ 🐮", false) return false end else gg.toast("🐮 ᴅᴀᴛᴀ ɴᴏᴛ ғᴏᴜɴᴅ 🐮") return false end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🐮 ʀᴇsᴜʟᴛs ( "..#data.." ) ᴄʜᴀɴɢᴇ 🐮") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) end end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end
function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end
function xqmnb(qmnb) gg.clearResults() gg.setVisible(false) gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " Failed") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) xxx=gg.getResultCount() if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " Failed") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. " Found: "..xxx.." Edited: " .. xgsl .. "") else gg.toast(qmnb[2]["name"] .. " Failed") end end end gg.clearResults() end

EYT="💫 " ON="🟢 " OFF="⚫ " KFC="🟡 " BBQ="🔶 " MNO="❌ " turn0=OFF turn1=OFF turn2=OFF turn3=BBQ turn4=BBQ turn5=BBQ turn6=OFF turn7=OFF turn8=OFF turn9=OFF turn10=OFF turn11=OFF turn12=OFF turn13=OFF turn14=OFF turn15=OFF turn16=OFF turn17=OFF turn18=OFF turn19=OFF turn20=OFF turn21=OFF turn22=OFF turn23=OFF turn24=OFF turn25=OFF turn26=BBQ turn27=OFF turn28=OFF turn29=OFF turn30=OFF

COW = 1
function Main()
  MOMO = gg.choice({
    "≿•━━━ ༺❀༻ ━━━•≾\n "..turn0.."[ (Tɪᴍɪ) ʟᴏɢᴏ Bʏᴘᴀss ] "..turn0.." \n.••[ ᴛɪᴍɪ ʟᴏɢᴏ 防閃 ]•• .\n ",
    ""..turn1.."[ Bʏᴘᴀss ɪɴ (Lᴏʙʙʏ) ] "..turn1.." \n.  • • [ 大廳防封 ]• • .\n≿•━━━ ༺❀༻ ━━━•≾ ",
    "\n🌸 [Lobby Menu]  🌸 \n🌸    [大廳功能]      🌸",
    "\n❄  ️[InGame Menu] ❄ ️\n❄   ️ [進場後功能]    ❄",
    "\n🛑️ [Exit] 🛑 ️[離開] 🛑️",
  }, nil, os["date"](" ʜᴀᴄᴋ ʙʏ 🐮BᴜΙ͠ᴛᴇʀ \n Date : %A,%d-%B-%Y \n Time : %H:%M "))
  if MOMO == nil then
  end
  if MOMO == 1 then a1()
  end
  if MOMO == 2 then b1()
  end
  if MOMO == 3 then lobby()
  end
  if MOMO == 4 then game()
  end
  if MOMO == 5 then exit()
  end
 COW = -1
end

function lobby()
  menu = gg["multiChoice"]({
    ""..turn8.."[ᴇsᴘ ɴᴀᴍᴇ ʙʀ][ʙʀ 顯示人名]",
    ""..turn9.."[ᴇsᴘ ɴᴀᴍᴇ ᴍᴘ][ᴍᴘ 顯示人名]",
    ""..turn10.."[ᴡᴀʟʟʜᴀᴄᴋ][透視]",
    ""..turn11.."[ᴀɪᴍʙᴏᴛ][自瞄]",
    ""..turn25.."[ᴀɪᴍʙᴏᴛ sᴛʀᴏɴɢ][強自瞄++]",
    ""..turn13.."[ғᴀsᴛsᴄᴏᴘᴇ][快開鏡]️",
    ""..turn14.."[ᴍɪɴɪ ᴄʀᴏssʜᴀɪʀ][縮小準星]️",
    ""..turn15.."[ɴᴏ ʀᴇᴄᴏɪʟ][減後座力]",
    ""..turn16.."[ғᴀsᴛ ʀᴇʟᴏᴀᴅ][快速上彈]️",
    ""..turn17.."[ɴᴏ sᴘʀᴇᴀᴅ][無散發]",
    ""..turn18.."[ʟᴏɴɢ sʟɪᴅᴇ][長程滑剷]",
    ""..turn19.."[ʙᴜʟʟᴇᴛ++][無限子彈]",
    ""..turn27.."[ғᴀsᴛ sʜᴏᴏᴛ][高射速]",
    ""..turn23.."[ᴍᴘ ɴɪɢʜᴛ ᴍᴏᴅᴇ][多人暗黑模式]️",
    ""..turn22.."[ᴍᴘ ᴜᴀᴠ ʀᴀᴅᴀʀ][多人雷達長顯]",
    ""..turn30.."[ʜɪɢʜ ᴊᴜᴍᴘ][跳高++]",
    ""..turn28.."[ SHOW FPS ]",
    "   ↩️  Back  ↩️   ",
  }, nil, os["date"](" ʜᴀᴄᴋ ʙʏ 🐮BᴜΙ͠ᴛᴇʀ "))
  if menu == nil then Main()
   else
    if menu[1] == true then i1()
    end
    if menu[2] == true then j1()
    end
    if menu[3] == true then k1()
    end
    if menu[4] == true then l1()
    end
    if menu[5] == true then m1()
    end
    if menu[6] == true then n1()
    end
    if menu[7] == true then o1()
    end
    if menu[8] == true then p1()
    end
    if menu[9] == true then q1()
    end
    if menu[10] == true then r1()
    end
    if menu[11] == true then s1()
    end
    if menu[12] == true then t1()
    end
    if menu[13] == true then v1()
    end
    if menu[14] == true then y1()
    end
    if menu[15] == true then uav()
    end
    if menu[16] == true then jump()
    end
    if menu[17] == true then fps()
    end
    if menu[18] == true then Main()
    end
  end
 COW = -1
end

function game()
  BO = gg["multiChoice"]({
    ""..turn29.."[ʙʀ ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ] ️\n.• [ ^大範圍追蹤彈^ ] •.",
    ""..turn20.."[ʜɪɢʜ ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ] ️\n.• [ 高^大範圍追蹤彈^高 ] •.",
    ""..turn3.."[  ʙʟᴜᴇ ᴀɴᴛʜᴇɴᴀ  ] \n 『sɴᴀᴘᴅʀᴀɢᴏɴ ᴏɴʟʏ 』 \n        [  藍色天線  ]   ",
    ""..turn4.."[ ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ x? ] \n       [ 可調節魔術彈 ]    \n. • In.Every.Game • .",
    ""..turn5.."[ ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ ] \n       [ 魔術彈 ]    \n. • In.Every.Game • .",
    ""..turn6.."[ sᴘᴇᴇᴅ x3 ][ 加速 x3 ]",
    ""..turn7.."[ sᴘᴇᴇᴅ x? ][ 加速 x? ]",
    ""..turn26.."🚦𝐑𝐄𝐃 𝐋𝐈𝐍𝐄 Menu🚦",
    ""..turn30.." ʜɪɢʜ ᴊᴜᴍᴘ ",
    "   ↩️  Back  ↩️   ",
  }, nil, os["date"](" ʜᴀᴄᴋ ʙʏ 🐮BᴜΙ͠ᴛᴇʀ "))
  if BO == nil then Main()
   else
    if BO[1] == true then bt()
    end
    if BO[2] == true then u1()
    end
    if BO[3] == true then d1()
    end
    if BO[4] == true then e1()
    end
    if BO[5] == true then f1()
    end
    if BO[6] == true then g1()
    end
    if BO[7] == true then h1()
    end
    if BO[8] == true then RED()
    end
    if BO[9] == true then jump()
    end
    if BO[10] == true then Main()
    end
  end
 COW = -1
end


function a1()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.setVisible(false)
  gg.searchNumber("-236,007,436,958,385,942", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, v in ipairs(t) do
    if v.flags == gg.TYPE_QWORD then
      v.value = "0"
      v.freeze = true
    end
  end
  gg.addListItems(t)
  t = nil
  gg.clearList()
  gg.clearResults()
  gg.sleep(200)

  a = [[29184
Var #B60078CC|b60078cc|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|308cc
Var #B600F6AC|b600f6ac|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|386ac
Var #B60112A8|b60112a8|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|3a2a8
Var #B6015794|b6015794|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|3e794
Var #B601AE8C|b601ae8c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|43e8c
Var #B601C6B4|b601c6b4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|456b4
Var #B601C6C0|b601c6c0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|456c0
Var #B602FBC8|b602fbc8|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|58bc8
Var #B602FC7C|b602fc7c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|58c7c
Var #B602FD04|b602fd04|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|58d04
Var #B6031D70|b6031d70|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|5ad70
Var #B6034290|b6034290|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|5d290
Var #B6037D24|b6037d24|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|60d24
Var #B603F5C0|b603f5c0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|685c0
Var #B603F67C|b603f67c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|6867c
Var #B603F688|b603f688|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|68688
Var #B604AD70|b604ad70|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|73d70
Var #B604B800|b604b800|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|74800
Var #B604BEA4|b604bea4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|74ea4
Var #B604D3D0|b604d3d0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|763d0
Var #B6051144|b6051144|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|7a144
Var #B6055B30|b6055b30|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|7eb30
Var #B6184224|b6184224|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|1ad224
Var #B618BF98|b618bf98|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|1b4f98
Var #B6192DC4|b6192dc4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|1bbdc4
Var #B6196E20|b6196e20|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|1bfe20
Var #B6196F0C|b6196f0c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|1bff0c
Var #B6196FF4|b6196ff4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|1bfff4
Var #B6196FFC|b6196ffc|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|1bfffc
Var #B6197008|b6197008|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|1c0008
Var #B6197028|b6197028|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|1c0028
Var #B6197030|b6197030|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|1c0030
Var #B61B530C|b61b530c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|1de30c
Var #B6203D6C|b6203d6c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|22cd6c
Var #B62055A0|b62055a0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|22e5a0
Var #B6222DE0|b6222de0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|24bde0
Var #B6222E58|b6222e58|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|24be58
Var #B6222EB8|b6222eb8|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|24beb8
Var #B6222EFC|b6222efc|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|24befc
Var #B6222F08|b6222f08|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|24bf08
Var #B6222F1C|b6222f1c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|24bf1c
Var #B6222F8C|b6222f8c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|24bf8c
Var #B6223008|b6223008|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|24c008
Var #B622303C|b622303c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|24c03c
Var #B6223054|b6223054|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|24c054
Var #B622322C|b622322c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|24c22c
Var #B62232A0|b62232a0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|24c2a0
Var #B6224B74|b6224b74|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|24db74
Var #B6224C5C|b6224c5c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|24dc5c
Var #B62259EC|b62259ec|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|24e9ec
Var #B6225E24|b6225e24|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|24ee24
Var #B62366E0|b62366e0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|25f6e0
Var #B6237618|b6237618|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|260618
Var #B623B1D4|b623b1d4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2641d4
Var #B623B2C0|b623b2c0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2642c0
Var #B623B2DC|b623b2dc|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2642dc
Var #B623B2EC|b623b2ec|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2642ec
Var #B623B38C|b623b38c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|26438c
Var #B623B41C|b623b41c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|26441c
Var #B623B424|b623b424|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|264424
Var #B623B42C|b623b42c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|26442c
Var #B623B43C|b623b43c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|26443c
Var #B623B478|b623b478|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|264478
Var #B623B480|b623b480|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|264480
Var #B623B490|b623b490|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|264490
Var #B623B4CC|b623b4cc|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2644cc
Var #B623B508|b623b508|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|264508
Var #B623B588|b623b588|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|264588
Var #B623B5A4|b623b5a4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2645a4
Var #B623B5F4|b623b5f4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2645f4
Var #B623B67C|b623b67c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|26467c
Var #B623BAA4|b623baa4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|264aa4
Var #B623BF08|b623bf08|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|264f08
Var #B623BF58|b623bf58|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|264f58
Var #B623C158|b623c158|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|265158
Var #B623C5E4|b623c5e4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2655e4
Var #B623C7DC|b623c7dc|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2657dc
Var #B623C89C|b623c89c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|26589c
Var #B623C8C8|b623c8c8|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2658c8
Var #B623C8E4|b623c8e4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2658e4
Var #B623C928|b623c928|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|265928
Var #B623CA90|b623ca90|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|265a90
Var #B623CAD0|b623cad0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|265ad0
Var #B623CBFC|b623cbfc|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|265bfc
Var #B623CC8C|b623cc8c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|265c8c
Var #B623CCE4|b623cce4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|265ce4
Var #B623CD1C|b623cd1c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|265d1c
Var #B623CDF8|b623cdf8|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|265df8
Var #B623CF38|b623cf38|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|265f38
Var #B623D034|b623d034|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|266034
Var #B623D1B8|b623d1b8|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2661b8
Var #B623D368|b623d368|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|266368
Var #B623D8D0|b623d8d0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2668d0
Var #B623DA78|b623da78|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|266a78
Var #B623DE48|b623de48|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|266e48
Var #B623DEFC|b623defc|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|266efc
Var #B623E6E0|b623e6e0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2676e0
Var #B623E72C|b623e72c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|26772c
Var #B623E794|b623e794|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|267794
Var #B623E7E4|b623e7e4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2677e4
Var #B623EB9C|b623eb9c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|267b9c
Var #B623EC0C|b623ec0c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|267c0c
Var #B623EC9C|b623ec9c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|267c9c
Var #B623ECC0|b623ecc0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|267cc0
Var #B623EDD0|b623edd0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|267dd0
Var #B623EEAC|b623eeac|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|267eac
Var #B623F274|b623f274|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|268274
Var #B624A9AC|b624a9ac|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2739ac
Var #B624ACA0|b624aca0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|273ca0
Var #B624AE2C|b624ae2c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|273e2c
Var #B624AF50|b624af50|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|273f50
Var #B624B240|b624b240|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|274240
Var #B624B430|b624b430|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|274430
Var #B624C424|b624c424|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|275424
Var #B624C434|b624c434|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|275434
Var #B624C480|b624c480|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|275480
Var #B624E3C8|b624e3c8|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2773c8
Var #B624E40C|b624e40c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|27740c
Var #B624E9B8|b624e9b8|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2779b8
Var #B624ED64|b624ed64|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|277d64
Var #B624F038|b624f038|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|278038
Var #B6251C18|b6251c18|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|27ac18
Var #B62539AC|b62539ac|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|27c9ac
Var #B6253A1C|b6253a1c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|27ca1c
Var #B6253BC4|b6253bc4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|27cbc4
Var #B6255E0C|b6255e0c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|27ee0c
Var #B6255E18|b6255e18|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|27ee18
Var #B6255E74|b6255e74|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|27ee74
Var #B6255E80|b6255e80|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|27ee80
Var #B6256328|b6256328|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|27f328
Var #B6256574|b6256574|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|27f574
Var #B625658C|b625658c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|27f58c
Var #B62568DC|b62568dc|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|27f8dc
Var #B62612BC|b62612bc|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|28a2bc
Var #B6261440|b6261440|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|28a440
Var #B62615A8|b62615a8|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|28a5a8
Var #B626160C|b626160c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|28a60c
Var #B62618EC|b62618ec|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|28a8ec
Var #B6262434|b6262434|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|28b434
Var #B6262594|b6262594|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|28b594
Var #B62628F4|b62628f4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|28b8f4
Var #B62629E0|b62629e0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|28b9e0
Var #B6262A28|b6262a28|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|28ba28
Var #B6262ADC|b6262adc|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|28badc
Var #B6262B34|b6262b34|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|28bb34
Var #B6262E5C|b6262e5c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|28be5c
Var #B6262E94|b6262e94|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|28be94
Var #B6262EC4|b6262ec4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|28bec4
Var #B6262EF8|b6262ef8|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|28bef8
Var #B6262FC4|b6262fc4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|28bfc4
Var #B6275114|b6275114|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|29e114
Var #B6275DF8|b6275df8|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|29edf8
Var #B6275EF0|b6275ef0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|29eef0
Var #B6275F1C|b6275f1c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|29ef1c
Var #B6276430|b6276430|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|29f430
Var #B627644C|b627644c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|29f44c
Var #B6276528|b6276528|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|29f528
Var #B6276564|b6276564|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|29f564
Var #B6276EAC|b6276eac|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|29feac
Var #B6277034|b6277034|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2a0034
Var #B6277094|b6277094|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2a0094
Var #B62783C0|b62783c0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2a13c0
Var #B6278B14|b6278b14|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2a1b14
Var #B6278B58|b6278b58|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2a1b58
Var #B6278FEC|b6278fec|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2a1fec
Var #B627F52C|b627f52c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2a852c
Var #B627FBFC|b627fbfc|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2a8bfc
Var #B627FC08|b627fc08|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2a8c08
Var #B627FC54|b627fc54|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2a8c54
Var #B627FC60|b627fc60|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2a8c60
Var #A90C206C|a90c206c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|6c 
Var #A90C42B4|a90c42b4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|22b4 
Var #A92E8004|a92e8004|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|226004 
Var #A92E8010|a92e8010|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|226010 
Var #A92E8018|a92e8018|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|226018 
Var #A92E8040|a92e8040|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|226040 
Var #A92E8048|a92e8048|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|226048 
Var #A92E8058|a92e8058|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|226058 
Var #A92E8064|a92e8064|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|226064 
Var #A92E8068|a92e8068|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|226068 
Var #A92E806C|a92e806c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|22606c 
Var #A92E8074|a92e8074|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|226074 
Var #A92E8078|a92e8078|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|226078 
Var #A92E807C|a92e807c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|22607c 
Var #A92E8080|a92e8080|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|226080 
Var #A92E8088|a92e8088|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|226088 
Var #A92E808C|a92e808c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|22608c 
Var #A92E80B0|a92e80b0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2260b0 
Var #A92E80B4|a92e80b4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2260b4 
Var #A92E80BC|a92e80bc|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2260bc 
Var #A92E80C8|a92e80c8|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2260c8 
Var #A92E80CC|a92e80cc|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2260cc 
Var #A92E80D0|a92e80d0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2260d0 
Var #A92E80D8|a92e80d8|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2260d8 
Var #A92E80E4|a92e80e4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2260e4 
Var #A92E80F0|a92e80f0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2260f0
Var #A92E80F4|a92e80f4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2260f4 
Var #A92E80FC|a92e80fc|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2260fc 
Var #A92E8100|a92e8100|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|226100 
Var #A92E8104|a92e8104|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|226104 
Var #A92E810C|a92e810c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|22610c 
Var #A92E8118|a92e8118|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|226118 
Var #A92E8124|a92e8124|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|226124 
Var #A92E812C|a92e812c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|22612c 
Var #A92E8138|a92e8138|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|226138 
Var #A92E813C|a92e813c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|22613c 
Var #A92E8148|a92e8148|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|226148 
Var #A92E814C|a92e814c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|22614c 
Var #A92E8150|a92e8150|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|226150 
Var #A92E8158|a92e8158|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|226158 
Var #A92E8194|a92e8194|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|226194 
Var #A92E81A4|a92e81a4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2261a4 
Var #A92E81B0|a92e81b0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2261b0 
Var #A92E81C0|a92e81c0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2261c0 
Var #A9314054|a9314054|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|252054 
Var #A9314334|a9314334|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|252334 
Var #A93287B4|a93287b4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2667b4 
Var #A93439AC|a93439ac|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|2819ac 
Var #A942C6C0|a942c6c0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36a6c0 
Var #A942C6D8|a942c6d8|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36a6d8 
Var #A942CA30|a942ca30|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36aa30 
Var #A942CA90|a942ca90|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36aa90
Var #A942CB64|a942cb64|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36ab64 
Var #A942CB68|a942cb68|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36ab68 
Var #A942CB6C|a942cb6c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36ab6c 
Var #A942CB70|a942cb70|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36ab70 
Var #A942CB90|a942cb90|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36ab90 
Var #A942CC28|a942cc28|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36ac28 
Var #A942CC2C|a942cc2c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36ac2c 
Var #A942D374|a942d374|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36b374 
Var #A942D5D4|a942d5d4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36b5d4 
Var #A942D774|a942d774|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36b774 
Var #A942DB74|a942db74|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36bb74 
Var #A942DDD4|a942ddd4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36bdd4 
Var #A942DF74|a942df74|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36bf74 
Var #A942E094|a942e094|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36c094 
Var #A942E9E8|a942e9e8|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36c9e8 
Var #A942E9FC|a942e9fc|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36c9fc 
Var #A942EA24|a942ea24|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36ca24 
Var #A942EAAC|a942eaac|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36caac 
Var #A942F080|a942f080|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36d080 
Var #A942F0B0|a942f0b0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36d0b0 
Var #A942F184|a942f184|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36d184 
Var #A942F188|a942f188|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36d188 
Var #A942F18C|a942f18c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36d18c 
Var #A942F190|a942f190|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36d190 
Var #A942F1B0|a942f1b0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36d1b0 
Var #A942F248|a942f248|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36d248
Var #A942F24C|a942f24c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36d24c 
Var #A942F994|a942f994|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36d994 
Var #A942FBF4|a942fbf4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36dbf4 
Var #A942FD94|a942fd94|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36dd94 
Var #A9430194|a9430194|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36e194 
Var #A94303F4|a94303f4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36e3f4 
Var #A9430594|a9430594|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36e594 
Var #A94306B4|a94306b4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36e6b4 
Var #A94307F0|a94307f0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36e7f0 
Var #A94307F4|a94307f4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36e7f4 
Var #A94307F8|a94307f8|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36e7f8 
Var #A94307FC|a94307fc|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36e7fc 
Var #A9430834|a9430834|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36e834 
Var #A9430838|a9430838|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36e838 
Var #A9431290|a9431290|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36f290 
Var #A9431754|a9431754|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|36f754 
Var #A9434CD4|a9434cd4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|372cd4 
Var #A9434CFC|a9434cfc|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|372cfc 
Var #A9435380|a9435380|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|373380 
Var #A94354C0|a94354c0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|3734c0 
Var #A94355C4|a94355c4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|3735c4 
Var #A944B5A8|a944b5a8|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|3895a8 
Var #A944B5E8|a944b5e8|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|3895e8 
Var #A944B638|a944b638|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|389638 
Var #A944B658|a944b658|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|389658 
Var #A94551C0|a94551c0|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|3931c0
Var #A94563D4|a94563d4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|3943d4 
Var #A9456CE4|a9456ce4|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|394ce4 
Var #A9456D70|a9456d70|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|394d70 
Var #A9456D8C|a9456d8c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|394d8c 
Var #A9457E1C|a9457e1c|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|395e1c 
Var #A94582EC|a94582ec|4|0|0|0|0|0|r-xp|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|3962ec
]]
  fileData = gg.EXT_STORAGE .. "/Android/[#logo#].dat"
  io.output(fileData):write(a):close()
  gg.loadList(fileData, gg.LOAD_APPEND)
  gg.sleep(200)
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
  gg.clearList()
  gg.clearResults()
  os.remove("/storage/self/primary/Android/[#logo#].dat")
  os.remove("/storage/emulated/0/Android/[#logo#].dat")
  gg.sleep(200)

  b = [[1946
Var #BEDAA708|bedaa708|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35708
Var #BEDAA70C|bedaa70c|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|3570c
Var #BEDAA710|bedaa710|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35710
Var #BEDAA714|bedaa714|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35714
Var #BEDAA718|bedaa718|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35718
Var #BEDAA71C|bedaa71c|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|3571c
Var #BEDAA720|bedaa720|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35720
Var #BEDAA724|bedaa724|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35724
Var #BEDAA728|bedaa728|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35728
Var #BEDAA72C|bedaa72c|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|3572c
Var #BEDAA730|bedaa730|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35730
Var #BEDAA734|bedaa734|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35734
Var #BEDAA738|bedaa738|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35738
Var #BEDAA73C|bedaa73c|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|3573c
Var #BEDAA740|bedaa740|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35740
Var #BEDAA744|bedaa744|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35744
Var #BEDAA748|bedaa748|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35748
Var #BEDAA74C|bedaa74c|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|3574c
Var #BEDAA7DC|bedaa7dc|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|357dc
Var #BEDAA80C|bedaa80c|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|3580c
Var #BEDAA814|bedaa814|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35814
Var #BEDAA818|bedaa818|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35818
Var #BEDAA81C|bedaa81c|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|3581c
Var #BEDAA820|bedaa820|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35820
Var #BEDAA828|bedaa828|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35828
Var #BEDAA82C|bedaa82c|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|3582c
Var #BEDAA830|bedaa830|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35830
Var #BEDAAA8C|bedaaa8c|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35a8c
Var #BEDAAA90|bedaaa90|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35a90
Var #BEDAAA94|bedaaa94|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35a94
Var #BEDAAA98|bedaaa98|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35a98
Var #BEDAAA9C|bedaaa9c|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35a9c
Var #BEDAAAA0|bedaaaa0|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35aa0
Var #BEDAAAA4|bedaaaa4|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35aa4
Var #BEDAAAA8|bedaaaa8|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35aa8
Var #BEDAAAAC|bedaaaac|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35aac
Var #BEDAAAB0|bedaaab0|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35ab0
Var #BEDAAAB4|bedaaab4|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35ab4
Var #BEDAAAB8|bedaaab8|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35ab8
Var #BEDAAAD0|bedaaad0|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35ad0
Var #BEDAAAD4|bedaaad4|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35ad4
Var #BEDAAAD8|bedaaad8|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35ad8
Var #BEDAAADC|bedaaadc|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35adc
Var #BEDAAAE0|bedaaae0|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35ae0
Var #BEDAAAE4|bedaaae4|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35ae4
Var #BEDAAAE8|bedaaae8|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35ae8
Var #BEDAAAEC|bedaaaec|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35aec
Var #BEDAAAF0|bedaaaf0|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35af0
Var #BEDAAAF4|bedaaaf4|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35af4
Var #BEDAAAF8|bedaaaf8|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35af8
Var #BEDAAAFC|bedaaafc|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libanogs.so|35afc

]]
  fileData = gg.EXT_STORAGE .. "/Android/[##logo##].dat"
  io.output(fileData):write(b):close()
  gg.loadList(fileData, gg.LOAD_APPEND)
  gg.sleep(200)
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
  gg.clearList()
  gg.clearResults()
  os.remove("/storage/self/primary/Android/[##logo##].dat")
  os.remove("/storage/emulated/0/Android/[##logo##].dat")
  gg.sleep(200)

  c = [[30676
Var #BBBC8658|bbbc8658|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|3658
Var #BBBC8660|bbbc8660|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|3660
Var #BBBC90D8|bbbc90d8|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|40d8
Var #BBBC90DC|bbbc90dc|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|40dc
Var #BBBC961C|bbbc961c|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|461c
Var #BBBC9620|bbbc9620|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4620
Var #BBBC9654|bbbc9654|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4654
Var #BBBC9658|bbbc9658|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4658
Var #BBBC965C|bbbc965c|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|465c
Var #BBBC9660|bbbc9660|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4660
Var #BBBC9664|bbbc9664|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4664
Var #BBBC9668|bbbc9668|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4668
Var #BBBC966C|bbbc966c|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|466c
Var #BBBC9670|bbbc9670|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4670
Var #BBBC9674|bbbc9674|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4674
Var #BBBC9678|bbbc9678|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4678
Var #BBBC967C|bbbc967c|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|467c
Var #BBBC9680|bbbc9680|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4680
Var #BBBC9684|bbbc9684|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4684
Var #BBBC9688|bbbc9688|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4688
Var #BBBC968C|bbbc968c|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|468c
Var #BBBC9690|bbbc9690|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4690
Var #BBBC9694|bbbc9694|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4694
Var #BBBC9698|bbbc9698|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4698
Var #BBBC969C|bbbc969c|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|469c
Var #BBBC96A0|bbbc96a0|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|46a0
Var #BBBC96A4|bbbc96a4|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|46a4
Var #BBBC96A8|bbbc96a8|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|46a8
Var #BBBC96AC|bbbc96ac|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|46ac
Var #BBBC9754|bbbc9754|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4754
Var #BBBC9758|bbbc9758|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4758
Var #BBBC9764|bbbc9764|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4764
Var #BBBC9768|bbbc9768|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4768
Var #BBBC976C|bbbc976c|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|476c
Var #BBBC9770|bbbc9770|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4770
Var #BBBC9774|bbbc9774|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4774
Var #BBBC9780|bbbc9780|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4780
Var #BBBC9784|bbbc9784|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4784
Var #BBBC9788|bbbc9788|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4788
Var #BBBC978C|bbbc978c|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|478c
Var #BBBC9790|bbbc9790|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4790
Var #BBBC9794|bbbc9794|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4794
Var #BBBC9798|bbbc9798|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|4798
Var #BBBC979C|bbbc979c|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|479c
Var #BBBC97A0|bbbc97a0|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|47a0
Var #BBBC97A4|bbbc97a4|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|47a4
Var #BBBC97A8|bbbc97a8|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|47a8
Var #BBBC97AC|bbbc97ac|4|0|0|0|0|0|rw-p|/data/app/com.garena.game.codm-GQQgsaLgroqOoSLuO6A-Gw==/lib/arm/libCrashSight.so:bss|47ac
]]
  fileData = gg.EXT_STORAGE .. "/Android/[#logo].dat"
  io.output(fileData):write(c):close()
  gg.loadList(fileData, gg.LOAD_APPEND)
  gg.sleep(200)
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
  gg.clearList()
  gg.clearResults()
  os.remove("/storage/self/primary/Android/[#logo].dat")
  os.remove("/storage/emulated/0/Android/[#logo].dat")
  gg.sleep(200)
  so = gg.getRangesList('libanogs.so')[1].start
  py = 0x308c4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList('libanogs.so')[1].start
  py = 0x308cc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList('libanogs.so')[1].start
  py = 0x308c8
  setvalue(so + py, 4, 0)
  turn0 = EYT
  gg.alert(" 💫 ᴛɪᴍɪ ʟᴏɢᴏ ʙʏᴘᴀss ᴀᴄᴛɪᴠᴇ✔ 💫 ")
end

function b1()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.setVisible(false)
  gg.searchNumber("1,849,753,701;1,262,769,007;1,953,066,569;1,869,496,576;1,145,783,379;1,699,900,517;1,953,656,688;1,635,017,028;1,752,461,312;1,684,104,562;2,036,689,759;1,818,584,159;6,648,933;1,399,811,649;1,699,171,140;1,885,688,436;100000~1999999999::16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP | gg.REGION_C_ALLOC)
  gg.searchNumber(":AnoSDKDelReportData3", gg.TYPE_BYTE)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_BYTE)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP | gg.REGION_C_ALLOC)
  gg.searchNumber(":AnoSDKGetReportData3", gg.TYPE_BYTE)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_BYTE)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP | gg.REGION_C_ALLOC)
  gg.searchNumber(":AnoSDKDelReportData", gg.TYPE_BYTE)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_BYTE)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP | gg.REGION_C_ALLOC)
  gg.searchNumber(":AnoSDKGetReportData", gg.TYPE_BYTE)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_BYTE)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP | gg.REGION_C_ALLOC)
  gg.searchNumber(":AnoSDKGetReportData2", gg.TYPE_BYTE)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_BYTE)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP | gg.REGION_C_ALLOC)
  gg.searchNumber(":TDM_Report_Binary", gg.TYPE_BYTE)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_BYTE)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP | gg.REGION_C_ALLOC)
  gg.searchNumber(":TDM_Enable_Report", gg.TYPE_BYTE)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_BYTE)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP | gg.REGION_C_ALLOC)
  gg.searchNumber(":tdm_subort_login", gg.TYPE_BYTE)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_BYTE)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP | gg.REGION_C_ALLOC)
  gg.searchNumber(":tdm_subort_event", gg.TYPE_BYTE)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_BYTE)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP | gg.REGION_C_ALLOC)
  gg.searchNumber(":tdm_enable_subort", gg.TYPE_BYTE)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_BYTE)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(":shellsubort", gg.TYPE_BYTE)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_BYTE)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(":FooGameClientIPC", gg.TYPE_BYTE)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_BYTE)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(":TDMEnableReport", gg.TYPE_BYTE)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_BYTE)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(":tdmenablesubort", gg.TYPE_BYTE)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_BYTE)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(":tdmsubortevent", gg.TYPE_BYTE)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_BYTE)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(":Reportmode", gg.TYPE_BYTE)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_BYTE)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(":tssenablegetsubortdata", gg.TYPE_BYTE)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_BYTE)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(":clientip", gg.TYPE_BYTE)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_BYTE)
  gg.clearResults()
  so = gg.getRangesList('libanogs.so')[1].start
  py = 0x30a34
  setvalue(so + py, 4, -476053504)
  so = gg.getRangesList('libanogs.so')[1].start
  py = 0x30a38
  setvalue(so + py, 4, -516948194)
  turn1 = EYT
  gg.alert(" 💫 Lᴏʙʙʏ ʙʏᴘᴀss ᴀᴄᴛɪᴠᴇ✔ 💫 ")
end

function d1()
  RANGE(AN)
  local S = {{1082130432, 0}, {1065353216, 4}, {1065353216, 8}, {0, 16}, {1077936128, 20}}
  local W = {{1073741824, 0}, {1086324736, 4}, {1203982336, 8}, {0, 16}, {1077936128, 20}}
  local T = DWORD
  AxM(S, W, T)
  CLEAR()
  RANGE(AN)
  local S = {{1077936128, 0}, {1028443341, 4}, {1061997773, 8}, {1065353216, 16}, {1065353216, 20}}
  local W = {{1077936128, 0}, {1028443341, 4}, {-1007026176, 8}, {1065353216, 16}, {1065353216, 20}}
  local T = DWORD
  AxM(S, W, T)
  CLEAR()
  RANGE(AN)
  local S = {{1077936128, 0}, {0, 4}, {1053609165, 8}, {1065353216, 16}, {1065353216, 20}}
  local W = {{1077936128, 0}, {0, 4}, {-1007026176, 8}, {1065353216, 16}, {1065353216, 20}}
  local T = DWORD
  AxM(S, W, T)
  gg.toast(" ʙʟᴜᴇ ᴀɴᴛʜᴇɴᴀ ғʀᴀᴍᴇ ᴀᴄᴛɪᴠᴇ✔")
end

function e1()
  mbj = gg.prompt({"[0.5; 4.0]\n [ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ . 魔術彈]\n 普通.Normal: 0.8 ~ 1.2\n 建議.Suggest: 1.4 ~ 2.0\n 偏強.Strong: 2.4 ~ 4.0"}, {[1] = data, [1] = 2.5}, {[1] = "number"})
  if mbj == nil then else
    data = mbj[1]
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("0.1439999938", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1000)
    gg.editAll(tostring(mbj[1]), gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast(" ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ x ["..mbj[1].."] ᴀᴄᴛɪᴠᴇ✔ ")
  end
end

function f1()
  mbs = gg["choice"]({
    " [ʜᴇᴀᴅ] [追頭] ",
    " [ʙᴏᴅʏ] [追身體] ",
    " [ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ ʙʀ] [生存用] ",
  }, nil, os["date"]("💫 ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ ᴍᴇɴᴜ 💫\n "))
  if mbs == nil then else
    if mbs == 1 then
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("0.1439999938", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1000)
      gg.editAll("1.1439999938", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(" ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ ʜᴇᴀᴅ ᴀᴄᴛɪᴠᴇ✔")
    end
    if mbs == 2 then
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("0.18500000238", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1000)
      gg.editAll("0.6", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(" ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ ʙᴏᴅʏ ᴀᴄᴛɪᴠᴇ✔")
    end
    if mbs == 3 then
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("0.1439999938", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1000)
      gg.editAll("2.4", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(" ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ ʙʀ ᴀᴄᴛɪᴠᴇ✔")
    end
  end
end

function g1()
  if turn6 == OFF then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("4.28000020981;3.20000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(750)
    gg.editAll("5.14546798999", gg.TYPE_FLOAT)
    gg.clearResults()
    turn6 = ON
    gg.alert("🟢 sᴘᴇᴇᴅ ʀᴜɴ x3 ᴀᴄᴛɪᴠᴇ✔")
   else
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("5.14546798999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(750)
    gg.editAll("4.28000020981", gg.TYPE_FLOAT)
    gg.clearResults()
    turn6 = OFF
    gg.toast("⚫ sᴘᴇᴇᴅ ʀᴜɴ x3 ᴏғғ ")
  end
end

function h1()
  spd = gg.prompt({"選擇速度 . sᴘᴇᴇᴅʜᴀᴄᴋ: [5;9]"}, {[1] = data, [1] = 6}, {[1] = "number"})
  if spd == nil then else
    data = spd[1]
    SH = tostring(spd[1])
    qmnb = {
      {["memory"] = 32},
      {["name"] = "Speed"},
      {["value"] = 36.0, ["type"] = 16},
      {["lv"] = 0.5, ["offset"] = 20, ["type"] = 16},
    }
    qmxg = {
      {["value"] = SH, ["offset"] = 4, ["type"] = 16},
      {["value"] = SH, ["offset"] = 8, ["type"] = 16},
      {["value"] = SH, ["offset"] = 12, ["type"] = 16},
      {["value"] = SH, ["offset"] = 16, ["type"] = 16},
    }
    xqmnb(qmnb)
    qmnb = {
      {["memory"] = 32},
      {["name"] = "Speed"},
      {["value"] = 0.30000001192092896, ["type"] = 16},
      {["lv"] = 1.0, ["offset"] = -8, ["type"] = 16},
      {["lv"] = 1.2599999904632568, ["offset"] = -4, ["type"] = 16},
    }
    qmxg = {
      {["value"] = SH, ["offset"] = 0, ["type"] = 16},
    }
    xqmnb(qmnb)

    gg.alert(" sᴘᴇᴇᴅ x ["..spd[1].."] ᴀᴄᴛɪᴠᴇ✔ ")
    turn7 = KFC
  end
end

function i1()
  patch('libil2cpp.so', 0x1209E20 , "-481230848", 4)
  patch('libil2cpp.so', 0x17BD3F4 , "-476028927", 4)
  turn8 = ON
  gg.toast("🟢️ ᴇsᴘ ɴᴀᴍᴇ ʙʀ ᴀᴄᴛɪᴠᴇ✔")
end

function j1()
  HexPatches.MemoryPatch('libil2cpp.so', 0x17BD3F4, "0160A0E3", 4)
  HexPatches.MemoryPatch('libil2cpp.so', 0x1209E20, "000051E3", 4)
  turn9 = ON
  gg.toast("🟢️ ᴇsᴘ ɴᴀᴍᴇ ᴍᴘ ᴀᴄᴛɪᴠᴇ✔")
end

function k1()
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x1938954
  setvalue(so + py, 4, 0)
  turn10 = ON
  gg.toast("🟢 ᴡᴀʟʟʜᴀᴄᴋ ᴀᴄᴛɪᴠᴇ✔")
end

function l1()
  so = gg.getRangesList('libil2cpp.so')[1].start
  local py = 0X6CBF6C0
  setvalue(so + py, 16, 0)
  turn11 = ON
  gg.toast("🟢 ᴀɪᴍʙᴏᴛ ᴀᴄᴛɪᴠᴇ✔")
end

function m1()
  so = gg.getRangesList('libil2cpp.so')[1].start
  local py = 0X6CBF80C
  setvalue(so + py, 16, 0)
  turn25 = ON
  gg.toast("🟢 ᴀɪᴍʙᴏᴛ sᴛʀᴏɴɢ ᴀᴄᴛɪᴠᴇ✔")
end

function n1()
  so = gg.getRangesList("libil2cpp.so")[1].start
  local py = 0X1BE5BBC
  setvalue(so + py, 16, 0)
  turn13 = ON
  gg.toast("🟢️ ғᴀsᴛ sᴄᴏᴘᴇ ᴀᴄᴛɪᴠᴇ✔")
end

function o1()
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x576A7C8
  setvalue(so + py, 16, 0)
  turn14 = ON
  gg.toast("🟢 ᴍɪɴɪ ᴄʀᴏssʜᴀɪʀ ᴀᴄᴛɪᴠᴇ✔")
end

function p1()
  HexPatches.MemoryPatch('libil2cpp.so', 0x2B6FAA0, "9900A0E31EFF2FE1", 32)
  turn15 = ON
  gg.toast("🟢 ɴᴏ ʀᴇᴄᴏɪʟ ᴀʟʟ ɢᴜɴs ᴀᴄᴛɪᴠᴇ✔")
end

function q1()
  so = gg.getRangesList('libil2cpp.so')[1].start
  local py = 0x2B19B84
  setvalue(so + py, 16, 0)
  so = gg.getRangesList('libil2cpp.so')[1].start
  local py = 0x2B19C1C
  setvalue(so + py, 16, 0)
  so = gg.getRangesList('libil2cpp.so')[1].start
  local py = 0x4751410
  setvalue(so + py, 16, 0)
  turn16 = ON
  gg.toast("🟢 ғᴀsᴛ ʀᴇʟᴏᴀᴅ ᴀᴄᴛɪᴠᴇ✔")
end

function r1()
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x2B6EA0C
  setvalue(so + py, 16, 1)
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x2B82CA8
  setvalue(so + py, 16, 1)
  turn17 = ON
  gg.toast("🟢 ɴᴏ sᴘʀᴇᴀᴅ ᴀᴄᴛɪᴠᴇ✔")
end

function s1()
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0X2155E94
  setvalue(so + py, 16, -3.61576225e21)
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0X2155E98
  setvalue(so + py, 16, -2.02910209e20)
  gg.toast("🟢 ʟᴏɴɢ sʟɪᴅᴇ ᴀᴄᴛɪᴠᴇ✔")
  turn18 = ON
end

function t1()
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0X1BE7DDC
  setvalue(so + py, 16, -5.9029581e21)
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0X1BE7DE0
  setvalue(so + py, 16, -2.02910209e20)
  turn19 = ON
  gg.toast("🟢 ʙᴜʟʟᴇᴛ ᴀᴄᴛɪᴠᴇ✔")
end

function u1()
  so = gg.getRangesList('libunity.so')[1].start
  py = 0XB2F898
  setvalue(so + py, 16, 23)
  so = gg.getRangesList('libunity.so')[1].start
  py = 0XB2F89C
  setvalue(so + py, 16, 23)
  so = gg.getRangesList('libunity.so')[1].start
  py = 0X513868
  setvalue(so + py, 16, 8)
  so = gg.getRangesList('libunity.so')[1].start
  py = 0XB2FC5C
  setvalue(so + py, 16, 0)
  turn20 = ON
  gg.toast("🟢 ʜɪɢʜ ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ ᴀᴄᴛɪᴠᴇ✔")
end

function bt()
  so = gg.getRangesList('libunity.so')[1].start
  py = 0x22AFA00
  setvalue(so + py, 16, 0)
  turn29 = ON
  gg.toast("🟢 ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ ᴀᴄᴛɪᴠᴇ✔")
end

function v1()
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x2B235BC
  setvalue(so + py, 4, 0)
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x2B25608
  setvalue(so + py, 4, -309032406)
  turn27 = ON
  gg.toast("🟢 ғᴀsᴛ sʜᴏᴏᴛ ᴏɴ")
end

function y1()
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x15EBB4
  setvalue(so + py, 16, 0)
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x1567C4
  setvalue(so + py, 16, 1.40129846e-44)
  turn23 = ON
  gg.toast("🟢 Dᴀʀᴋᴍᴏᴅᴇ ᴀᴄᴛɪᴠᴇ✔")
end

function uav()
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0X33D5424
  setvalue(so + py, 16, -5.90295867e21)
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0X33D5428
  setvalue(so + py, 16, -2.02910209e20)
  turn22 = ON
  gg.toast(" 🟢 ᴜᴀᴠ ʀᴀᴅᴀʀ ᴀᴄᴛɪᴠᴇ✔ ")
end

function fps()
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x2368D4C
  setvalue(so + py, 4, 0)
  turn28 = ON
  gg.toast(" 🟢 FPS ᴀᴄᴛɪᴠᴇ✔ ")
end

function RED()
  RL = gg.alert("RED LINE Menu", "MP [多人]", "BR [生存]")
  if RL == nil then else
    if RL == 1 then
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("256;4", gg.TYPE_FLOAT)
      gg.refineNumber("4", gg.TYPE_FLOAT)
      gg.getResults(10000)
      gg.editAll("90", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.alert(" ʀᴇᴅ ʟɪɢʜᴛ ᴀᴄᴛɪᴠᴇ✔ ")
    end
    if RL == 2 then
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("1.0;1.0;1.0;1.0;3.0;1.0;5.0;10.0:57", gg.TYPE_FLOAT)
      gg.getResults(10000)
      gg.editAll("4;999", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.alert("RED ᴀɴᴛʜᴇɴᴀ ʙʀ ᴀᴄᴛɪᴠᴇ✔")
    end
  end
end

function jump()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("7.5;0.8", gg.TYPE_FLOAT)
  gg.refineNumber("0.8", gg.TYPE_FLOAT)
  gg.getResults(9999)
  gg.editAll("4", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1,065,353,216;1,069,547,520;1,050,253,722::9", gg.TYPE_DWORD)
  gg.refineNumber("1,065,353,216", gg.TYPE_DWORD)
  gg.getResults(9999)
  gg.editAll("1,082,130,432", gg.TYPE_DWORD)
  gg.clearResults()
  turn30 = ON
  gg.alert(" 🟢 ʜɪɢʜ ᴊᴜᴍᴘ ᴀᴄᴛɪᴠᴇ✔ ")
end


function exit()
  exx = gg["alert"](" \n  EXIT SCRIPT • 離開 ", "💡 Yes 💡", " ↩️ Back ↩️", nil)
  if exx == nil then Main() else
    if exx == 1 then
      print("╭════••✧๑♡๑✧••════╮")
      print("                 ʜᴀᴄᴋ ʙʏ 🐮BᴜΙ͠ᴛᴇʀ                       ")
      print("╰════••✧๑♡๑✧••════╯")
      gg["skipRestoreState"]()
      gg["clearResults"]()
      gg["clearList"]()
      gg["setVisible"](true)
      os["exit"]()
    end
    if exx == 2 then Main()
    end
  end
end

while true do
  if gg["isVisible"](true) then COW = 1
    gg["setVisible"](false)
    gg["clearResults"]()
  end
  if COW == 1 then Main()
    gg["clearResults"]()
  end
end



