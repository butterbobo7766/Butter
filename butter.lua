
password = gg["alert"](" \n         🐮 [牛哥外掛組] の [BᴜΙ͠ᴛᴇʀ] 🐮 \n\n ", "🌸 [開始][Enter] 🌸", "", "💀 [退出][Exit] 💀", nil)
if password == nil then end
if password == 1 then else
  if password == 3 then os["exit"]()
    return end end

gg["setVisible"](false)
ProgressBar = "║░░░░░░░░░░░░░░░║";for x = 1,15,1 do gg.sleep(200) ProgressBar = ProgressBar:gsub("░","▓",1);gg.toast(ProgressBar) end

function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
local hex = {} function patch(lib, offset, value, flags) local ranges = gg.getRangesList(lib) if #ranges == 0 then gg.toast("Error: ".. lib .." not found") else local xy = {} xy[1] = {} xy[1].address = ranges[1].start + offset xy[1].flags = flags xy[1].value = value gg.setValues(xy) end end
local HexPatches = {} function HexPatches.MemoryPatch(Lib, Offset, Edit, Type) local Ranges = gg.getRangesList(Lib) if #Ranges == 0 then gg.toast("Error: ".. Lib .." not found") else local v = {} v[1] = {} v[1].address = Ranges[1].start + Offset v[1].flags = Type v[1].value = Edit.."r" v[1].freeze = true gg.setValues(v) end end
CA=gg.REGION_C_ALLOC VI=gg.REGION_VIDEO XA=gg.REGION_CODE_APP AN=gg.REGION_ANONYMOUS CD=gg.REGION_C_DATA BSS=gg.REGION_C_BSS EA=gg.editAll RL=gg.getRangesList SNR=gg.searchNumber CLEAR=gg.clearResults GET=gg.getResults SET=gg.setVisible REFINE=gg.refineNumber COUNT=gg.getResultCount RANGE=gg.setRanges XOR=gg.TYPE_XOR BYTE=gg.TYPE_BYTE FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD DWORD=gg.TYPE_DWORD DOUBLE=gg.TYPE_DOUBLE QWORD=gg.TYPE_QWORD EQUAL=gg.SIGN_EQUAL
function AxM(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🐮 ʀᴇsᴜʟᴛs ( "..#data.." ) ᴄʜᴀɴɢᴇ 🐮") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("🐮 ʀᴇsᴜʟᴛs ( "..#t.." ) ᴄʜᴀɴɢᴇ 🐮") gg.addListItems(t) else gg.toast("🐮 ᴅᴀᴛᴀ ɴᴏᴛ ғᴏᴜɴᴅ 🐮", false) return false end else gg.toast("🐮 ᴅᴀᴛᴀ ɴᴏᴛ ғᴏᴜɴᴅ 🐮") return false end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🐮 ʀᴇsᴜʟᴛs ( "..#data.." ) ᴄʜᴀɴɢᴇ 🐮") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) end end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setVisible(false) gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " Failed") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) xxx=gg.getResultCount() if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " Failed") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. " Found: "..xxx.." Edited: " .. xgsl .. "") else gg.toast(qmnb[2]["name"] .. " Failed") end end end gg.clearResults() end

EYT="💫 " ON="🟢 " OFF="⚫ " KFC="🟡 " BBQ="🔶 " MNO="❌ " turn0=OFF turn1=OFF turn2=OFF turn3=BBQ turn4=BBQ turn5=BBQ turn6=OFF turn7=OFF turn8=OFF turn9=OFF turn10=OFF turn11=OFF turn12=OFF turn13=OFF turn14=OFF turn15=OFF turn16=OFF turn17=OFF turn18=OFF turn19=OFF turn20=OFF turn21=OFF turn22=OFF turn23=OFF turn24=OFF turn25=OFF turn26=BBQ turn27=OFF turn28=OFF turn29=OFF turn30=OFF

COW = 1
function Main()
  MOMO = gg.choice({
    "≿•━━━ ༺❀༻ ━━━•≾\n "..turn0.."[ (Tɪᴍɪ) ʟᴏɢᴏ Bʏᴘᴀss ] "..turn0.." \n.••[ ᴛɪᴍɪ ʟᴏɢᴏ ]•• .\n ",
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
    ""..turn8.."[ᴇsᴘ ɴᴀᴍᴇ ʙʀ][ʙʀ 顯示人名]", --i
    ""..turn9.."[ᴇsᴘ ɴᴀᴍᴇ ᴍᴘ][ᴍᴘ 顯示人名]", --j
    ""..turn10.."[ᴡᴀʟʟʜᴀᴄᴋ][透視]", --k
    ""..turn11.."[ᴀɪᴍʙᴏᴛ][自瞄]", --l
    ""..turn25.."[ᴀɪᴍʙᴏᴛ sᴛʀᴏɴɢ][自瞄+]", --m
    ""..turn13.."[ғᴀsᴛsᴄᴏᴘᴇ][快開鏡]️", --n
    ""..turn14.."[ᴍɪɴɪ ᴄʀᴏssʜᴀɪʀ][縮小準星]️", --o
    ""..turn15.."[ɴᴏ ʀᴇᴄᴏɪʟ][減後座力]", --p
    ""..turn16.."[ғᴀsᴛ ʀᴇʟᴏᴀᴅ][快速上彈]️", --q
    ""..turn17.."[ɴᴏ sᴘʀᴇᴀᴅ][無散發]", --r
    ""..turn18.."[ʟᴏɴɢ sʟɪᴅᴇ][長程滑剷]", --s
    ""..turn19.."[ʙᴜʟʟᴇᴛ ᴍᴀx][無限子彈]", --t
    ""..turn27.."[ғᴀsᴛ sʜᴏᴏᴛ][高射速]", --v
    ""..turn23.."[ᴍᴘ ɴɪɢʜᴛ ᴍᴏᴅᴇ][多人暗黑模式]️", --y
    ""..turn22.."[ᴍᴘ ᴜᴀᴠ ʀᴀᴅᴀʀ][多人雷達長顯]", --uav
    ""..turn30.."[ʜɪɢʜ ᴊᴜᴍᴘ][跳高++]", --jump
    ""..turn28.."[ SHOW FPS ]", --fps
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
    ""..turn29.."[ʟᴏᴡ ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ] ️\n.• [ 低^大範圍追蹤彈^低 ] •.", --bt
    ""..turn20.."[ʜɪɢʜ ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ] ️\n.• [ 高^大範圍追蹤彈^高 ] •.", --u
    ""..turn3.."[  ʙʟᴜᴇ ᴀɴᴛʜᴇɴᴀ  ] \n 『sɴᴀᴘᴅʀᴀɢᴏɴ ᴏɴʟʏ 』 \n        [  藍色天線  ]   ", --d
    ""..turn4.."[ ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ x? ] \n       [ 可調節魔術彈 ]    \n. • In.Every.Game • .", --e
    ""..turn5.."[ ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ ] \n       [ 魔術彈 ]    \n. • In.Every.Game • .", --f
    ""..turn6.."[ sᴘᴇᴇᴅ x3 ][ 加速 x3 ]", --g
    ""..turn7.."[ sᴘᴇᴇᴅ x? ][ 加速 x? ]", --h
    ""..turn26.."🚦𝐑𝐄𝐃 𝐋𝐈𝐍𝐄 Menu🚦", --red
    ""..turn30.." ʜɪɢʜ ᴊᴜᴍᴘ ", --jump
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
  so = gg.getRangesList('libanogs.so')[1].start
  py = 0x308c4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList('libanogs.so')[1].start
  py = 0x308c8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList('libanogs.so')[1].start
  py = 0x308cc
  setvalue(so + py, 4, 0)
  gg.clearResults()
  gg.sleep(200)

  a = [[12616
Var #B87C78C4|b87c78c4|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|308c4
Var #B87C78C8|b87c78c8|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|308c8
Var #B87C78CC|b87c78cc|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|308cc
Var #B87CF6AC|b87cf6ac|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|386ac
Var #B87D12A8|b87d12a8|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|3a2a8
Var #B87D5794|b87d5794|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|3e794
Var #B87DAE8C|b87dae8c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|43e8c
Var #B87DC6B4|b87dc6b4|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|456b4
Var #B87DC6C0|b87dc6c0|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|456c0
Var #B87EFBC8|b87efbc8|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|58bc8
Var #B87EFC7C|b87efc7c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|58c7c
Var #B87EFD04|b87efd04|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|58d04
Var #B87F1D70|b87f1d70|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|5ad70
Var #B87F4290|b87f4290|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|5d290
Var #B87F7D24|b87f7d24|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|60d24
Var #B87FF5C0|b87ff5c0|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|685c0
Var #B87FF67C|b87ff67c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|6867c
Var #B87FF688|b87ff688|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|68688
Var #B880AD70|b880ad70|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|73d70
Var #B880B800|b880b800|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|74800
Var #B880BEA4|b880bea4|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|74ea4
Var #B880D3D0|b880d3d0|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|763d0
Var #B8811144|b8811144|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|7a144
Var #B8815B30|b8815b30|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|7eb30
Var #B8944224|b8944224|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|1ad224
Var #B894BF98|b894bf98|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|1b4f98
Var #B8952DC4|b8952dc4|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|1bbdc4
Var #B8956E20|b8956e20|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|1bfe20
Var #B8956F0C|b8956f0c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|1bff0c
Var #B8956FF4|b8956ff4|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|1bfff4
Var #B8956FFC|b8956ffc|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|1bfffc
Var #B8957008|b8957008|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|1c0008
Var #B8957028|b8957028|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|1c0028
Var #B8957030|b8957030|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|1c0030
Var #B897530C|b897530c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|1de30c
Var #B89C3D6C|b89c3d6c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|22cd6c
Var #B89C55A0|b89c55a0|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|22e5a0
Var #B89E2DE0|b89e2de0|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|24bde0
Var #B89E2E58|b89e2e58|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|24be58
Var #B89E2EB8|b89e2eb8|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|24beb8
Var #B89E2EFC|b89e2efc|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|24befc
Var #B89E2F08|b89e2f08|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|24bf08
Var #B89E2F1C|b89e2f1c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|24bf1c
Var #B89E2F8C|b89e2f8c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|24bf8c
Var #B89E3008|b89e3008|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|24c008
Var #B89E303C|b89e303c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|24c03c
Var #B89E3054|b89e3054|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|24c054
Var #B89E322C|b89e322c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|24c22c
Var #B89E32A0|b89e32a0|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|24c2a0
Var #B89E4B74|b89e4b74|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|24db74
Var #B89E4C5C|b89e4c5c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|24dc5c
Var #B89E59EC|b89e59ec|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|24e9ec
Var #B89E5E24|b89e5e24|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|24ee24
Var #B89F66E0|b89f66e0|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|25f6e0
Var #B89F7618|b89f7618|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|260618
Var #B89FB1D4|b89fb1d4|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2641d4
Var #B89FB2C0|b89fb2c0|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2642c0
Var #B89FB2DC|b89fb2dc|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2642dc
Var #B89FB2EC|b89fb2ec|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2642ec
Var #B89FB38C|b89fb38c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|26438c
Var #B89FB41C|b89fb41c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|26441c
Var #B89FB424|b89fb424|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|264424
Var #B89FB42C|b89fb42c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|26442c
Var #B89FB43C|b89fb43c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|26443c
Var #B89FB478|b89fb478|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|264478
Var #B89FB480|b89fb480|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|264480
Var #B89FB490|b89fb490|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|264490
Var #B89FB4CC|b89fb4cc|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2644cc
Var #B89FB508|b89fb508|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|264508
Var #B89FB588|b89fb588|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|264588
Var #B89FB5A4|b89fb5a4|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2645a4
Var #B89FB5F4|b89fb5f4|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2645f4
Var #B89FB67C|b89fb67c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|26467c
Var #B89FBAA4|b89fbaa4|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|264aa4
Var #B89FBF08|b89fbf08|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|264f08
Var #B89FBF58|b89fbf58|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|264f58
Var #B89FC158|b89fc158|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|265158
Var #B89FC5E4|b89fc5e4|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2655e4
Var #B89FC7DC|b89fc7dc|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2657dc
Var #B89FC89C|b89fc89c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|26589c
Var #B89FC8C8|b89fc8c8|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2658c8
Var #B89FC8E4|b89fc8e4|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2658e4
Var #B89FC928|b89fc928|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|265928
Var #B89FCA90|b89fca90|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|265a90
Var #B89FCAD0|b89fcad0|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|265ad0
Var #B89FCBFC|b89fcbfc|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|265bfc
Var #B89FCC8C|b89fcc8c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|265c8c
Var #B89FCCE4|b89fcce4|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|265ce4
Var #B89FCD1C|b89fcd1c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|265d1c
Var #B89FCDF8|b89fcdf8|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|265df8
Var #B89FCF38|b89fcf38|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|265f38
Var #B89FD034|b89fd034|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|266034
Var #B89FD1B8|b89fd1b8|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2661b8
Var #B89FD368|b89fd368|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|266368
Var #B89FD8D0|b89fd8d0|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2668d0
Var #B89FDA78|b89fda78|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|266a78
Var #B89FDE48|b89fde48|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|266e48
Var #B89FDEFC|b89fdefc|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|266efc
Var #B89FE6E0|b89fe6e0|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2676e0
Var #B89FE72C|b89fe72c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|26772c
Var #B89FE794|b89fe794|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|267794
Var #B89FE7E4|b89fe7e4|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2677e4
Var #B89FEB9C|b89feb9c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|267b9c
Var #B89FEC0C|b89fec0c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|267c0c
Var #B89FEC9C|b89fec9c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|267c9c
Var #B89FECC0|b89fecc0|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|267cc0
Var #B89FEDD0|b89fedd0|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|267dd0
Var #B89FEEAC|b89feeac|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|267eac
Var #B89FF274|b89ff274|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|268274
Var #B8A0A9AC|b8a0a9ac|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2739ac
Var #B8A0ACA0|b8a0aca0|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|273ca0
Var #B8A0AE2C|b8a0ae2c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|273e2c
Var #B8A0AF50|b8a0af50|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|273f50
Var #B8A0B240|b8a0b240|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|274240
Var #B8A0B430|b8a0b430|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|274430
Var #B8A0C424|b8a0c424|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|275424
Var #B8A0C434|b8a0c434|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|275434
Var #B8A0C480|b8a0c480|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|275480
Var #B8A0E3C8|b8a0e3c8|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2773c8
Var #B8A0E40C|b8a0e40c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27740c
Var #B8A0E9B8|b8a0e9b8|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2779b8
Var #B8A0ED64|b8a0ed64|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|277d64
Var #B8A0F038|b8a0f038|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|278038
Var #B8A11C18|b8a11c18|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27ac18
Var #B8A139AC|b8a139ac|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27c9ac
Var #B8A13A1C|b8a13a1c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27ca1c
Var #B8A13BC4|b8a13bc4|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27cbc4
Var #B8A15E0C|b8a15e0c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27ee0c
Var #B8A15E18|b8a15e18|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27ee18
Var #B8A15E74|b8a15e74|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27ee74
Var #B8A15E80|b8a15e80|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27ee80
Var #B8A16328|b8a16328|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27f328
Var #B8A16574|b8a16574|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27f574
Var #B8A1658C|b8a1658c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27f58c
Var #B8A168DC|b8a168dc|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27f8dc
Var #B8A212BC|b8a212bc|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28a2bc
Var #B8A21440|b8a21440|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28a440
Var #B8A215A8|b8a215a8|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28a5a8
Var #B8A2160C|b8a2160c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28a60c
Var #B8A218EC|b8a218ec|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28a8ec
Var #B8A22434|b8a22434|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28b434
Var #B8A22594|b8a22594|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28b594
Var #B8A228F4|b8a228f4|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28b8f4
Var #B8A229E0|b8a229e0|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28b9e0
Var #B8A22A28|b8a22a28|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28ba28
Var #B8A22ADC|b8a22adc|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28badc
Var #B8A22B34|b8a22b34|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28bb34
Var #B8A22E5C|b8a22e5c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28be5c
Var #B8A22E94|b8a22e94|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28be94
Var #B8A22EC4|b8a22ec4|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28bec4
Var #B8A22EF8|b8a22ef8|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28bef8
Var #B8A22FC4|b8a22fc4|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28bfc4
Var #B8A35114|b8a35114|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|29e114
Var #B8A35DF8|b8a35df8|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|29edf8
Var #B8A35EF0|b8a35ef0|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|29eef0
Var #B8A35F1C|b8a35f1c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|29ef1c
Var #B8A36430|b8a36430|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|29f430
Var #B8A3644C|b8a3644c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|29f44c
Var #B8A36528|b8a36528|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|29f528
Var #B8A36564|b8a36564|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|29f564
Var #B8A36EAC|b8a36eac|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|29feac
Var #B8A37034|b8a37034|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a0034
Var #B8A37094|b8a37094|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a0094
Var #B8A383C0|b8a383c0|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a13c0
Var #B8A38B14|b8a38b14|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a1b14
Var #B8A38B58|b8a38b58|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a1b58
Var #B8A38FEC|b8a38fec|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a1fec
Var #B8A3F52C|b8a3f52c|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a852c
Var #B8A3FBFC|b8a3fbfc|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a8bfc
Var #B8A3FC08|b8a3fc08|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a8c08
Var #B8A3FC54|b8a3fc54|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a8c54
Var #B8A3FC60|b8a3fc60|10|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a8c60
]]
  fileData = gg.EXT_STORAGE .. "/[#logo#].dat"
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
  os.remove("/storage/emulated/0/[#logo#].dat")
  gg.sleep(200)

  b = [[1946
Var #BEDAA708|bedaa708|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35708
Var #BEDAA70C|bedaa70c|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|3570c
Var #BEDAA710|bedaa710|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35710
Var #BEDAA714|bedaa714|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35714
Var #BEDAA718|bedaa718|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35718
Var #BEDAA71C|bedaa71c|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|3571c
Var #BEDAA720|bedaa720|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35720
Var #BEDAA724|bedaa724|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35724
Var #BEDAA728|bedaa728|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35728
Var #BEDAA72C|bedaa72c|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|3572c
Var #BEDAA730|bedaa730|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35730
Var #BEDAA734|bedaa734|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35734
Var #BEDAA738|bedaa738|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35738
Var #BEDAA73C|bedaa73c|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|3573c
Var #BEDAA740|bedaa740|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35740
Var #BEDAA744|bedaa744|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35744
Var #BEDAA748|bedaa748|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35748
Var #BEDAA74C|bedaa74c|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|3574c
Var #BEDAA7DC|bedaa7dc|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|357dc
Var #BEDAA80C|bedaa80c|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|3580c
Var #BEDAA814|bedaa814|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35814
Var #BEDAA818|bedaa818|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35818
Var #BEDAA81C|bedaa81c|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|3581c
Var #BEDAA820|bedaa820|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35820
Var #BEDAA828|bedaa828|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35828
Var #BEDAA82C|bedaa82c|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|3582c
Var #BEDAA830|bedaa830|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35830
Var #BEDAAA8C|bedaaa8c|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35a8c
Var #BEDAAA90|bedaaa90|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35a90
Var #BEDAAA94|bedaaa94|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35a94
Var #BEDAAA98|bedaaa98|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35a98
Var #BEDAAA9C|bedaaa9c|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35a9c
Var #BEDAAAA0|bedaaaa0|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35aa0
Var #BEDAAAA4|bedaaaa4|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35aa4
Var #BEDAAAA8|bedaaaa8|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35aa8
Var #BEDAAAAC|bedaaaac|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35aac
Var #BEDAAAB0|bedaaab0|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35ab0
Var #BEDAAAB4|bedaaab4|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35ab4
Var #BEDAAAB8|bedaaab8|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35ab8
Var #BEDAAAD0|bedaaad0|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35ad0
Var #BEDAAAD4|bedaaad4|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35ad4
Var #BEDAAAD8|bedaaad8|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35ad8
Var #BEDAAADC|bedaaadc|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35adc
Var #BEDAAAE0|bedaaae0|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35ae0
Var #BEDAAAE4|bedaaae4|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35ae4
Var #BEDAAAE8|bedaaae8|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35ae8
Var #BEDAAAEC|bedaaaec|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35aec
Var #BEDAAAF0|bedaaaf0|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35af0
Var #BEDAAAF4|bedaaaf4|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35af4
Var #BEDAAAF8|bedaaaf8|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35af8
Var #BEDAAAFC|bedaaafc|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|35afc

]]
  fileData = gg.EXT_STORAGE .. "/[##logo##].dat"
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
  os.remove("/storage/emulated/0/[##logo##].dat")
  gg.sleep(200)

  c = [[30676
Var #BBBC8658|bbbc8658|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|3658
Var #BBBC8660|bbbc8660|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|3660
Var #BBBC90D8|bbbc90d8|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|40d8
Var #BBBC90DC|bbbc90dc|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|40dc
Var #BBBC961C|bbbc961c|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|461c
Var #BBBC9620|bbbc9620|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4620
Var #BBBC9654|bbbc9654|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4654
Var #BBBC9658|bbbc9658|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4658
Var #BBBC965C|bbbc965c|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|465c
Var #BBBC9660|bbbc9660|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4660
Var #BBBC9664|bbbc9664|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4664
Var #BBBC9668|bbbc9668|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4668
Var #BBBC966C|bbbc966c|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|466c
Var #BBBC9670|bbbc9670|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4670
Var #BBBC9674|bbbc9674|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4674
Var #BBBC9678|bbbc9678|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4678
Var #BBBC967C|bbbc967c|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|467c
Var #BBBC9680|bbbc9680|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4680
Var #BBBC9684|bbbc9684|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4684
Var #BBBC9688|bbbc9688|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4688
Var #BBBC968C|bbbc968c|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|468c
Var #BBBC9690|bbbc9690|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4690
Var #BBBC9694|bbbc9694|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4694
Var #BBBC9698|bbbc9698|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4698
Var #BBBC969C|bbbc969c|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|469c
Var #BBBC96A0|bbbc96a0|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|46a0
Var #BBBC96A4|bbbc96a4|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|46a4
Var #BBBC96A8|bbbc96a8|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|46a8
Var #BBBC96AC|bbbc96ac|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|46ac
Var #BBBC9754|bbbc9754|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4754
Var #BBBC9758|bbbc9758|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4758
Var #BBBC9764|bbbc9764|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4764
Var #BBBC9768|bbbc9768|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4768
Var #BBBC976C|bbbc976c|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|476c
Var #BBBC9770|bbbc9770|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4770
Var #BBBC9774|bbbc9774|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4774
Var #BBBC9780|bbbc9780|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4780
Var #BBBC9784|bbbc9784|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4784
Var #BBBC9788|bbbc9788|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4788
Var #BBBC978C|bbbc978c|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|478c
Var #BBBC9790|bbbc9790|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4790
Var #BBBC9794|bbbc9794|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4794
Var #BBBC9798|bbbc9798|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|4798
Var #BBBC979C|bbbc979c|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|479c
Var #BBBC97A0|bbbc97a0|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|47a0
Var #BBBC97A4|bbbc97a4|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|47a4
Var #BBBC97A8|bbbc97a8|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|47a8
Var #BBBC97AC|bbbc97ac|4|0|0|0|0|0|rw-p|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libCrashSight.so:bss|47ac
]]
  fileData = gg.EXT_STORAGE .. "/[#logo].dat"
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
  os.remove("/storage/emulated/0/[#logo].dat")
  turn0 = EYT
  gg.alert(" 💫 ᴛɪᴍɪ ʟᴏɢᴏ ʙʏᴘᴀss ᴀᴄᴛɪᴠᴇ✔ 💫 ")
end

function b1()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1,849,753,701;1,262,769,007;1,953,066,569;1,869,496,576;1,145,783,379;1,699,900,517;1,953,656,688;1,635,017,028;1,752,461,312;1,684,104,562;2,036,689,759;1,818,584,159;6,648,933;1,399,811,649;1,699,171,140;1,885,688,436;100000~1999999999::16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("0", gg.TYPE_DWORD)
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
  patch('libil2cpp.so', 0x1209E20, "-481230848", 4)
  patch('libil2cpp.so', 0x17BD3F4, "-476028927", 4)
  turn8 = ON
  gg.toast("🟢️ ᴇsᴘ ɴᴀᴍᴇ ʙʀ ᴀᴄᴛɪᴠᴇ✔")
end

function j1()
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x179748c
  setvalue(so + py, 4, -476053503)
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x1797490
  setvalue(so + py, 4, -516948194)
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
  py = 0X6CBF6C0
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
  gg.toast("🟢 ʙᴜʟʟᴇᴛ ᴍᴀx ᴀᴄᴛɪᴠᴇ✔")
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
  gg.toast("🟢 ʟᴏᴡ ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ ᴀᴄᴛɪᴠᴇ✔")
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
  local py = 0x2368D4C
  setvalue(so + py, 16, -3.78023548e28)
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
	  print([[
╔══════════════════╗
	⠀⠀⠀⣴⣾⣿⣿⣶⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
	⠀⠀⢸⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   
	⠀⠀⠈⢿⣿⣿⣿⣿⠏⠀ʜᴀᴄᴋ ʙʏ 🐮BᴜΙ͠ᴛᴇʀ  
	⠀⠀⠀⠀⠈⣉⣩⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
	⠀⠀⠀⠀⣼⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
	⠀⠀⢀⣼⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
	⠀⢀⣾⣿⣿⣿⣿⣿⣿⣷⠀   ⠀⠀⠀⠀⠀⠀⠀⠀      
	⢠⣾⣿⣿⠉⣿⣿⣿⣿⣿⡄⠀⢀⣠⣤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀
	⠀⠙⣿⣿⣧⣿⣿⣿⣿⣿⡇⢠⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀
	⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣷⠸⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀
	⠀⠀⠀⠀⠘⠿⢿⣿⣿⣿⣿⡄⠙⠻⠿⠿⠛⠁⠀⠀⠀⠀⠀⠀⠀
	⠀⠀⠀⠀⠀⠀⠀⡟⣩⣝⢿⠀⠀⣠⣶⣶⣦⡀⠀⠀⠀⠀⠀⠀⠀
	⠀⠀⠀⠀⠀⠀⠀⣷⡝⣿⣦⣠⣾⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀
	⠀⠀⠀⠀⠀⠀⠀⣿⣿⣮⢻⣿⠟⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀
	⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⡇⠀⠀⠻⠿⠻⣿⣿⣿⣿⣦⡀⠀⠀⠀
	⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⠇⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⡆⠀⠀
	⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⠇⠀⠀
	⠀⠀⠀⠀⠀⠀⢸⣿⣿⡿⠀⠀⠀⢀⣴⣿⣿⣿⣿⣟⣋⣁⣀⣀⠀
	⠀⠀⠀⠀⠀⠀⠹⣿⣿⠇⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ 
╚══════════════════╝
]])
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



