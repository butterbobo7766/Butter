
password = gg["alert"](" \n         🐮 [牛哥外掛組] の [BᴜΙ͠ᴛᴇʀ] 🐮 \n\n ", "🌸 [開始][Enter] 🌸", "", "💀 [退出][Exit] 💀", nil)
if password == nil then end
if password == 1 then else
  if password == 3 then os["exit"]()
    return end end

gg["setVisible"](false)
ProgressBar = "║░░░░░░░░░░░░░░░║";for x = 1,15,1 do gg.sleep(200) ProgressBar = ProgressBar:gsub("░","▓",1);gg.toast(ProgressBar) end

function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function patch(lib, offset, value, flags) local ranges = gg.getRangesList(lib) if #ranges == 0 then gg.toast("Error: ".. lib .." not found") else local a = {}
a[1] = {} a[1].address = ranges[1].start + offset a[1].flags = flags a[1].value = value gg.setValues(a) end end
local HexPatches = {} function HexPatches.MemoryPatch(Lib, Offset, Edit, Type) local Ranges = gg.getRangesList(Lib) if #Ranges == 0 then gg.toast("Error: ".. Lib .." not found") else local v = {} v[1] = {} v[1].address = Ranges[1].start + Offset v[1].flags = Type v[1].value = Edit.."r" v[1].freeze = true gg.setValues(v) end end
CA=gg.REGION_C_ALLOC VI=gg.REGION_VIDEO XA=gg.REGION_CODE_APP AN=gg.REGION_ANONYMOUS CD=gg.REGION_C_DATA BSS=gg.REGION_C_BSS EA=gg.editAll RL=gg.getRangesList SNR=gg.searchNumber CLEAR=gg.clearResults GET=gg.getResults SET=gg.setVisible REFINE=gg.refineNumber COUNT=gg.getResultCount RANGE=gg.setRanges XOR=gg.TYPE_XOR BYTE=gg.TYPE_BYTE FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD DWORD=gg.TYPE_DWORD DOUBLE=gg.TYPE_DOUBLE QWORD=gg.TYPE_QWORD EQUAL=gg.SIGN_EQUAL
function AxM(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🐮 ʀᴇsᴜʟᴛs ( "..#data.." ) ᴄʜᴀɴɢᴇ 🐮") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("🐮 ʀᴇsᴜʟᴛs ( "..#t.." ) ᴄʜᴀɴɢᴇ 🐮") gg.addListItems(t) else gg.toast("🐮 ᴅᴀᴛᴀ ɴᴏᴛ ғᴏᴜɴᴅ 🐮", false) return false end else gg.toast("🐮 ᴅᴀᴛᴀ ɴᴏᴛ ғᴏᴜɴᴅ 🐮") return false end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🐮 ʀᴇsᴜʟᴛs ( "..#data.." ) ᴄʜᴀɴɢᴇ 🐮") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) end end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end
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
    ""..turn8.."[ᴇsᴘ ɴᴀᴍᴇ ʙʀ][ʙʀ 顯示人名]",--i
    ""..turn9.."[ᴇsᴘ ɴᴀᴍᴇ ᴍᴘ][ᴍᴘ 顯示人名]",--j
    ""..turn10.."[ᴡᴀʟʟʜᴀᴄᴋ][透視]",--k
    ""..turn11.."[ᴀɪᴍʙᴏᴛ][自瞄]",--l
    ""..turn25.."[ᴀɪᴍʙᴏᴛ sᴛʀᴏɴɢ][強自瞄++]",--m
    ""..turn13.."[ғᴀsᴛsᴄᴏᴘᴇ][快開鏡]️",--n
    ""..turn14.."[ᴍɪɴɪ ᴄʀᴏssʜᴀɪʀ][縮小準星]️",--o
    ""..turn15.."[ɴᴏ ʀᴇᴄᴏɪʟ][減後座力]",--p
    ""..turn16.."[ғᴀsᴛ ʀᴇʟᴏᴀᴅ][快速上彈]️",--q
    ""..turn17.."[ɴᴏ sᴘʀᴇᴀᴅ][無散發]",--r
    ""..turn18.."[ʟᴏɴɢ sʟɪᴅᴇ][長程滑剷]",--s
    ""..turn19.."[ʙᴜʟʟᴇᴛ++][無限子彈]",--t
    ""..turn27.."[ғᴀsᴛ sʜᴏᴏᴛ][高射速]",--v
    ""..turn23.."[ᴍᴘ ɴɪɢʜᴛ ᴍᴏᴅᴇ][多人暗黑模式]️",--y
    ""..turn22.."[ᴍᴘ ᴜᴀᴠ ʀᴀᴅᴀʀ][多人雷達長顯]",--uav
    ""..turn30.."[ʜɪɢʜ ᴊᴜᴍᴘ][跳高++]",--jump
    ""..turn28.."[ SHOW FPS ]",--fps
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
    ""..turn29.."[ʙʀ ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ] ️\n.• [ 低^大範圍追蹤彈^低 ] •.",--bt
    ""..turn20.."[ʜɪɢʜ ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ] ️\n.• [ 高^大範圍追蹤彈^高 ] •.",--u
    ""..turn3.."[  ʙʟᴜᴇ ᴀɴᴛʜᴇɴᴀ  ] \n 『sɴᴀᴘᴅʀᴀɢᴏɴ ᴏɴʟʏ 』 \n        [  藍色天線  ]   ",--d
    ""..turn4.."[ ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ x? ] \n       [ 可調節魔術彈 ]    \n. • In.Every.Game • .",--e
    ""..turn5.."[ ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ ] \n       [ 魔術彈 ]    \n. • In.Every.Game • .",--f
    ""..turn6.."[ sᴘᴇᴇᴅ x3 ][ 加速 x3 ]",--g
    ""..turn7.."[ sᴘᴇᴇᴅ x? ][ 加速 x? ]",--h
    ""..turn26.."🚦𝐑𝐄𝐃 𝐋𝐈𝐍𝐄 Menu🚦",--red
    ""..turn30.." ʜɪɢʜ ᴊᴜᴍᴘ ",--jump
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
  py = 0x30a34
  setvalue(so + py, 4, -476053504)
  so = gg.getRangesList('libanogs.so')[1].start
  py = 0x30a38
  setvalue(so + py, 4, -516948194)
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
  os.remove("/storage/self/primary/[#logo#].dat")
  os.remove("/storage/emulated/0/[#logo#].dat")
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
  os.remove("/storage/self/primary/[##logo##].dat")
  os.remove("/storage/emulated/0/[##logo##].dat")
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
  os.remove("/storage/self/primary/[#logo].dat")
  os.remove("/storage/emulated/0/[#logo].dat")
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
  turn0 = EYT
  gg.alert(" 💫 ᴛɪᴍɪ ʟᴏɢᴏ ʙʏᴘᴀss ᴀᴄᴛɪᴠᴇ✔ 💫 ")
end

function b1()
  d = [[18297
Var #A7D84010|a7d84010|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libil2cpp.so|10
Var #A7D84028|a7d84028|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libil2cpp.so|28
Var #A7D8402C|a7d8402c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libil2cpp.so|2c
Var #A7D84030|a7d84030|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libil2cpp.so|30
Var #A7D84044|a7d84044|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libil2cpp.so|44
Var #A7D84048|a7d84048|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libil2cpp.so|48
Var #BBFCF010|bbfcf010|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|10
Var #BBFCF028|bbfcf028|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28
Var #BBFCF02C|bbfcf02c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2c
Var #BBFCF030|bbfcf030|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|30
Var #BBFCF064|bbfcf064|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|64
Var #BBFCF068|bbfcf068|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|68
Var #BBFCF06C|bbfcf06c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|6c
Var #BBFCF078|bbfcf078|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|78
Var #BBFCF07C|bbfcf07c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|7c
Var #BBFCF080|bbfcf080|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|80
Var #BBFCF098|bbfcf098|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|98
Var #BBFCF09C|bbfcf09c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|9c
Var #BBFCF0A0|bbfcf0a0|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|a0
Var #BBFCF0F8|bbfcf0f8|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|f8
Var #BBFCF0FC|bbfcf0fc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|fc
Var #BBFCF100|bbfcf100|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|100
Var #BBFCF118|bbfcf118|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|118
Var #BBFCF11C|bbfcf11c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|11c
Var #BBFCF120|bbfcf120|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|120
Var #BBFCF190|bbfcf190|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|190
Var #BBFD0184|bbfd0184|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|1184
Var #BBFD0408|bbfd0408|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|1408
Var #BBFD0524|bbfd0524|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|1524
Var #BBFD05BC|bbfd05bc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|15bc
Var #BBFD12B4|bbfd12b4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|22b4
Var #BBFD172C|bbfd172c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|272c
Var #BBFD1734|bbfd1734|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2734
Var #BBFD173C|bbfd173c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|273c
Var #BBFD1744|bbfd1744|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2744
Var #BBFD174C|bbfd174c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|274c
Var #BBFD1754|bbfd1754|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2754
Var #BBFD175C|bbfd175c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|275c
Var #BBFD1764|bbfd1764|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2764
Var #BBFD176C|bbfd176c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|276c
Var #BBFD1774|bbfd1774|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2774
Var #BBFD177C|bbfd177c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|277c
Var #BBFD1784|bbfd1784|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2784
Var #BBFD178C|bbfd178c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|278c
Var #BBFD1794|bbfd1794|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2794
Var #BBFD179C|bbfd179c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|279c
Var #BBFD17A4|bbfd17a4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27a4
Var #BBFD17AC|bbfd17ac|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27ac
Var #BBFD17B4|bbfd17b4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27b4
Var #BBFD17BC|bbfd17bc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27bc
Var #BBFD17C4|bbfd17c4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27c4
Var #BBFD17CC|bbfd17cc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27cc
Var #BBFD17D4|bbfd17d4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27d4
Var #BBFD17DC|bbfd17dc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27dc
Var #BBFD17E4|bbfd17e4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27e4
Var #BBFD17EC|bbfd17ec|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27ec
Var #BBFD17F4|bbfd17f4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27f4
Var #BBFD17FC|bbfd17fc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|27fc
Var #BBFD1804|bbfd1804|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2804
Var #BBFD180C|bbfd180c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|280c
Var #BBFD1814|bbfd1814|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2814
Var #BBFD181C|bbfd181c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|281c
Var #BBFD1824|bbfd1824|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2824
Var #BBFD182C|bbfd182c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|282c
Var #BBFD1834|bbfd1834|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2834
Var #BBFD183C|bbfd183c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|283c
Var #BBFD1844|bbfd1844|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2844
Var #BBFD184C|bbfd184c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|284c
Var #BBFD1854|bbfd1854|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2854
Var #BBFD185C|bbfd185c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|285c
Var #BBFD1864|bbfd1864|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2864
Var #BBFD186C|bbfd186c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|286c
Var #BBFD1874|bbfd1874|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2874
Var #BBFD187C|bbfd187c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|287c
Var #BBFD1884|bbfd1884|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2884
Var #BBFD188C|bbfd188c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|288c
Var #BBFD1894|bbfd1894|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2894
Var #BBFD189C|bbfd189c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|289c
Var #BBFD18A4|bbfd18a4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28a4
Var #BBFD18AC|bbfd18ac|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28ac
Var #BBFD18B4|bbfd18b4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28b4
Var #BBFD18BC|bbfd18bc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28bc
Var #BBFD18C4|bbfd18c4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28c4
Var #BBFD18CC|bbfd18cc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28cc
Var #BBFD18D4|bbfd18d4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28d4
Var #BBFD18DC|bbfd18dc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28dc
Var #BBFD18E4|bbfd18e4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28e4
Var #BBFD18EC|bbfd18ec|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28ec
Var #BBFD18F4|bbfd18f4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28f4
Var #BBFD18FC|bbfd18fc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|28fc
Var #BBFD1904|bbfd1904|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2904
Var #BBFD190C|bbfd190c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|290c
Var #BBFD1914|bbfd1914|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2914
Var #BBFD191C|bbfd191c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|291c
Var #BBFD1924|bbfd1924|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2924
Var #BBFD192C|bbfd192c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|292c
Var #BBFD1934|bbfd1934|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2934
Var #BBFD193C|bbfd193c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|293c
Var #BBFD1944|bbfd1944|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2944
Var #BBFD194C|bbfd194c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|294c
Var #BBFD1954|bbfd1954|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2954
Var #BBFD195C|bbfd195c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|295c
Var #BBFD1964|bbfd1964|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2964
Var #BBFD196C|bbfd196c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|296c
Var #BBFD1974|bbfd1974|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2974
Var #BBFD197C|bbfd197c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|297c
Var #BBFD1984|bbfd1984|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2984
Var #BBFD198C|bbfd198c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|298c
Var #BBFD1994|bbfd1994|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2994
Var #BBFD199C|bbfd199c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|299c
Var #BBFD19A4|bbfd19a4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|29a4
Var #BBFD19AC|bbfd19ac|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|29ac
Var #BBFD19B4|bbfd19b4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|29b4
Var #BBFD19BC|bbfd19bc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|29bc
Var #BBFD19C4|bbfd19c4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|29c4
Var #BBFD19CC|bbfd19cc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|29cc
Var #BBFD19D4|bbfd19d4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|29d4
Var #BBFD19DC|bbfd19dc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|29dc
Var #BBFD19E4|bbfd19e4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|29e4
Var #BBFD19EC|bbfd19ec|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|29ec
Var #BBFD19F4|bbfd19f4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|29f4
Var #BBFD19FC|bbfd19fc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|29fc
Var #BBFD1A04|bbfd1a04|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a04
Var #BBFD1A0C|bbfd1a0c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a0c
Var #BBFD1A14|bbfd1a14|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a14
Var #BBFD1A1C|bbfd1a1c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a1c
Var #BBFD1A24|bbfd1a24|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a24
Var #BBFD1A2C|bbfd1a2c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a2c
Var #BBFD1A34|bbfd1a34|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a34
Var #BBFD1A3C|bbfd1a3c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a3c
Var #BBFD1A44|bbfd1a44|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a44
Var #BBFD1A4C|bbfd1a4c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a4c
Var #BBFD1A54|bbfd1a54|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a54
Var #BBFD1A5C|bbfd1a5c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a5c
Var #BBFD1A64|bbfd1a64|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a64
Var #BBFD1A6C|bbfd1a6c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a6c
Var #BBFD1A74|bbfd1a74|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a74
Var #BBFD1A7C|bbfd1a7c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a7c
Var #BBFD1A84|bbfd1a84|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a84
Var #BBFD1A8C|bbfd1a8c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a8c
Var #BBFD1A94|bbfd1a94|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a94
Var #BBFD1A9C|bbfd1a9c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2a9c
Var #BBFD1AA4|bbfd1aa4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2aa4
Var #BBFD1AAC|bbfd1aac|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2aac
Var #BBFD1AB4|bbfd1ab4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2ab4
Var #BBFD1ABC|bbfd1abc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2abc
Var #BBFD1AC4|bbfd1ac4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2ac4
Var #BBFD1ACC|bbfd1acc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2acc
Var #BBFD1AD4|bbfd1ad4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2ad4
Var #BBFD1ADC|bbfd1adc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2adc
Var #BBFD1AE4|bbfd1ae4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2ae4
Var #BBFD1AEC|bbfd1aec|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2aec
Var #BBFD1AF4|bbfd1af4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2af4
Var #BBFD1AFC|bbfd1afc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2afc
Var #BBFD1B04|bbfd1b04|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2b04
Var #BBFD1B0C|bbfd1b0c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2b0c
Var #BBFD1B14|bbfd1b14|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2b14
Var #BBFD1B1C|bbfd1b1c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2b1c
Var #BBFD1B24|bbfd1b24|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2b24
Var #BBFD1B2C|bbfd1b2c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2b2c
Var #BBFD1B34|bbfd1b34|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2b34
Var #BBFD1B3C|bbfd1b3c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2b3c
Var #BBFD1B44|bbfd1b44|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2b44
Var #BBFD1B4C|bbfd1b4c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2b4c
Var #BBFD1B54|bbfd1b54|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2b54
Var #BBFD1B5C|bbfd1b5c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2b5c
Var #BBFD1B64|bbfd1b64|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2b64
Var #BBFD1B6C|bbfd1b6c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2b6c
Var #BBFD1B74|bbfd1b74|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2b74
Var #BBFD1B7C|bbfd1b7c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2b7c
Var #BBFD1B84|bbfd1b84|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2b84
Var #BBFD1B8C|bbfd1b8c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2b8c
Var #BBFD1B94|bbfd1b94|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2b94
Var #BBFD1B9C|bbfd1b9c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2b9c
Var #BBFD1BA4|bbfd1ba4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2ba4
Var #BBFD1BAC|bbfd1bac|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2bac
Var #BBFD1BB4|bbfd1bb4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2bb4
Var #BBFD1BBC|bbfd1bbc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2bbc
Var #BBFD1BC4|bbfd1bc4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2bc4
Var #BBFD1BCC|bbfd1bcc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2bcc
Var #BBFD1BD4|bbfd1bd4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2bd4
Var #BBFD1BDC|bbfd1bdc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2bdc
Var #BBFD1BE4|bbfd1be4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2be4
Var #BBFD1BEC|bbfd1bec|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2bec
Var #BBFD1BF4|bbfd1bf4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2bf4
Var #BBFD1BFC|bbfd1bfc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2bfc
Var #BBFD1C04|bbfd1c04|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2c04
Var #BBFD1C0C|bbfd1c0c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2c0c
Var #BBFD1C14|bbfd1c14|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2c14
Var #BBFD1C1C|bbfd1c1c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2c1c
Var #BBFD1C24|bbfd1c24|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2c24
Var #BBFD1C2C|bbfd1c2c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2c2c
Var #BBFD1C34|bbfd1c34|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2c34
Var #BBFD1C3C|bbfd1c3c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2c3c
Var #BBFD1C44|bbfd1c44|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2c44
Var #BBFD1C4C|bbfd1c4c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2c4c
Var #BBFD1C54|bbfd1c54|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2c54
Var #BBFD1C5C|bbfd1c5c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2c5c
Var #BBFD1C64|bbfd1c64|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2c64
Var #BBFD1C6C|bbfd1c6c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2c6c
Var #BBFD1C74|bbfd1c74|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2c74
Var #BBFD1C7C|bbfd1c7c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2c7c
Var #BBFD1C84|bbfd1c84|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2c84
Var #BBFD1C8C|bbfd1c8c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2c8c
Var #BBFD1C94|bbfd1c94|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2c94
Var #BBFD1C9C|bbfd1c9c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2c9c
Var #BBFD1CA4|bbfd1ca4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2ca4
Var #BBFD1CAC|bbfd1cac|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2cac
Var #BBFD1CB4|bbfd1cb4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2cb4
Var #BBFD1CBC|bbfd1cbc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2cbc
Var #BBFD1CC4|bbfd1cc4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2cc4
Var #BBFD1CCC|bbfd1ccc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2ccc
Var #BBFD1CD4|bbfd1cd4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2cd4
Var #BBFD1CDC|bbfd1cdc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2cdc
Var #BBFD1CE4|bbfd1ce4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2ce4
Var #BBFD1CEC|bbfd1cec|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2cec
Var #BBFD1CF4|bbfd1cf4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2cf4
Var #BBFD1CFC|bbfd1cfc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2cfc
Var #BBFD1D04|bbfd1d04|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2d04
Var #BBFD1D0C|bbfd1d0c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2d0c
Var #BBFD1D14|bbfd1d14|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2d14
Var #BBFD1D1C|bbfd1d1c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2d1c
Var #BBFD1D24|bbfd1d24|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2d24
Var #BBFD1D2C|bbfd1d2c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2d2c
Var #BBFD1D34|bbfd1d34|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2d34
Var #BBFD1D3C|bbfd1d3c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2d3c
Var #BBFD1D44|bbfd1d44|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2d44
Var #BBFD1D4C|bbfd1d4c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2d4c
Var #BBFD1D54|bbfd1d54|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2d54
Var #BBFD1D5C|bbfd1d5c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2d5c
Var #BBFD1D64|bbfd1d64|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2d64
Var #BBFD1D6C|bbfd1d6c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2d6c
Var #BBFD1D74|bbfd1d74|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2d74
Var #BBFD1D7C|bbfd1d7c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2d7c
Var #BBFD1D84|bbfd1d84|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2d84
Var #BBFD1D8C|bbfd1d8c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2d8c
Var #BBFD1D94|bbfd1d94|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2d94
Var #BBFD1D9C|bbfd1d9c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2d9c
Var #BBFD1DA4|bbfd1da4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2da4
Var #BBFD1DAC|bbfd1dac|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2dac
Var #BBFD1DB4|bbfd1db4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2db4
Var #BBFD1DBC|bbfd1dbc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2dbc
Var #BBFD1DC4|bbfd1dc4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2dc4
Var #BBFD1DCC|bbfd1dcc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2dcc
Var #BBFD1DD4|bbfd1dd4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2dd4
Var #BBFD1DDC|bbfd1ddc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2ddc
Var #BBFD1DE4|bbfd1de4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2de4
Var #BBFD1DEC|bbfd1dec|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2dec
Var #BBFD1DF4|bbfd1df4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2df4
Var #BBFD1DFC|bbfd1dfc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2dfc
Var #BBFD1E04|bbfd1e04|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2e04
Var #BBFD1E0C|bbfd1e0c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2e0c
Var #BBFD1E14|bbfd1e14|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2e14
Var #BBFD1E1C|bbfd1e1c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2e1c
Var #BBFD1E24|bbfd1e24|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2e24
Var #BBFD1E2C|bbfd1e2c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2e2c
Var #BBFD1E34|bbfd1e34|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2e34
Var #BBFD1E3C|bbfd1e3c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2e3c
Var #BBFD1E44|bbfd1e44|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2e44
Var #BBFD1E4C|bbfd1e4c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2e4c
Var #BBFD1E54|bbfd1e54|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2e54
Var #BBFD1E5C|bbfd1e5c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2e5c
Var #BBFD1E64|bbfd1e64|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2e64
Var #BBFD1E6C|bbfd1e6c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2e6c
Var #BBFD1E74|bbfd1e74|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2e74
Var #BBFD1E7C|bbfd1e7c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2e7c
Var #BBFD1E84|bbfd1e84|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2e84
Var #BBFD1E8C|bbfd1e8c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2e8c
Var #BBFD1E94|bbfd1e94|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2e94
Var #BBFD1E9C|bbfd1e9c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2e9c
Var #BBFD1EA4|bbfd1ea4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2ea4
Var #BBFD1EAC|bbfd1eac|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2eac
Var #BBFD1EB4|bbfd1eb4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2eb4
Var #BBFD1EBC|bbfd1ebc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2ebc
Var #BBFD1EC4|bbfd1ec4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2ec4
Var #BBFD1ECC|bbfd1ecc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2ecc
Var #BBFD1ED4|bbfd1ed4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2ed4
Var #BBFD1EDC|bbfd1edc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2edc
Var #BBFD1EE4|bbfd1ee4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2ee4
Var #BBFD1EEC|bbfd1eec|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2eec
Var #BBFD1EF4|bbfd1ef4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2ef4
Var #BBFD1EFC|bbfd1efc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2efc
Var #BBFD1F04|bbfd1f04|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2f04
Var #BBFD1F0C|bbfd1f0c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2f0c
Var #BBFD1F14|bbfd1f14|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2f14
Var #BBFD1F1C|bbfd1f1c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2f1c
Var #BBFD1F24|bbfd1f24|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2f24
Var #BBFD1F2C|bbfd1f2c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2f2c
Var #BBFD1F34|bbfd1f34|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2f34
Var #BBFD1F3C|bbfd1f3c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2f3c
Var #BBFD1F44|bbfd1f44|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2f44
Var #BBFD1F4C|bbfd1f4c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2f4c
Var #BBFD1F54|bbfd1f54|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2f54
Var #BBFD1F5C|bbfd1f5c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2f5c
Var #BBFD1F64|bbfd1f64|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2f64
Var #BBFD1F6C|bbfd1f6c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2f6c
Var #BBFD1F74|bbfd1f74|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2f74
Var #BBFD1F7C|bbfd1f7c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2f7c
Var #BBFD1F84|bbfd1f84|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2f84
Var #BBFD1F8C|bbfd1f8c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2f8c
Var #BBFD1F94|bbfd1f94|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2f94
Var #BBFD1F9C|bbfd1f9c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2f9c
Var #BBFD1FA4|bbfd1fa4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2fa4
Var #BBFD1FAC|bbfd1fac|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2fac
Var #BBFD1FB4|bbfd1fb4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2fb4
Var #BBFD1FBC|bbfd1fbc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2fbc
Var #BBFD1FC4|bbfd1fc4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2fc4
Var #BBFD1FCC|bbfd1fcc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2fcc
Var #BBFD1FD4|bbfd1fd4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2fd4
Var #BBFD1FDC|bbfd1fdc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2fdc
Var #BBFD1FE4|bbfd1fe4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2fe4
Var #BBFD1FEC|bbfd1fec|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2fec
Var #BBFD1FF4|bbfd1ff4|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2ff4
Var #BBFD1FFC|bbfd1ffc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libanogs.so|2ffc
Var #BD15F010|bd15f010|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|10
Var #BD15F028|bd15f028|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|28
Var #BD15F02C|bd15f02c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|2c
Var #BD15F030|bd15f030|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|30
Var #BD15F17C|bd15f17c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|17c
Var #BD15F18C|bd15f18c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|18c
Var #BD15F19C|bd15f19c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|19c
Var #BD15F31C|bd15f31c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|31c
Var #BD15F36C|bd15f36c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|36c
Var #BD15F37C|bd15f37c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|37c
Var #BD15F38C|bd15f38c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|38c
Var #BD15F42C|bd15f42c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|42c
Var #BD15F43C|bd15f43c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|43c
Var #BD15F4CC|bd15f4cc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|4cc
Var #BD15F4DC|bd15f4dc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|4dc
Var #BD15F4EC|bd15f4ec|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|4ec
Var #BD15F52C|bd15f52c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|52c
Var #BD15F5AC|bd15f5ac|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|5ac
Var #BD15F5DC|bd15f5dc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|5dc
Var #BD15F9AC|bd15f9ac|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|9ac
Var #BD15F9BC|bd15f9bc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|9bc
Var #BD15F9CC|bd15f9cc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|9cc
Var #BD15F9DC|bd15f9dc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|9dc
Var #BD15F9FC|bd15f9fc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|9fc
Var #BD15FBAC|bd15fbac|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|bac
Var #BD15FBBC|bd15fbbc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|bbc
Var #BD15FBCC|bd15fbcc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|bcc
Var #BD15FBDC|bd15fbdc|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|bdc
Var #BD15FDAC|bd15fdac|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|dac
Var #BD15FE3C|bd15fe3c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloud.so|e3c
Var #BD900010|bd900010|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|10
Var #BD900028|bd900028|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|28
Var #BD90002C|bd90002c|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|2c
Var #BD900030|bd900030|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|30
Var #BD900498|bd900498|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|498
Var #BD9004B8|bd9004b8|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|4b8
Var #BD900598|bd900598|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|598
Var #BD9005B8|bd9005b8|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|5b8
Var #BD9005D8|bd9005d8|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|5d8
Var #BD9009F8|bd9009f8|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|9f8
Var #BD900BB8|bd900bb8|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|bb8
Var #BD900E48|bd900e48|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|e48
Var #BD900E98|bd900e98|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|e98
Var #BD900FB8|bd900fb8|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|fb8
Var #BD900FF8|bd900ff8|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|ff8
Var #BD901048|bd901048|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|1048
Var #BD9010F8|bd9010f8|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|10f8
Var #BD9013E8|bd9013e8|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|13e8
Var #BD901438|bd901438|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|1438
Var #BD901518|bd901518|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|1518
Var #BD901598|bd901598|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|1598
Var #BD9015B8|bd9015b8|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|15b8
Var #BD9015D8|bd9015d8|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|15d8
Var #BD901688|bd901688|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|1688
Var #BD9016A8|bd9016a8|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|16a8
Var #BD9016E8|bd9016e8|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|16e8
Var #BD901828|bd901828|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|1828
Var #BD9019C8|bd9019c8|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|19c8
Var #BD901A28|bd901a28|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|1a28
Var #BD901A48|bd901a48|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|1a48
Var #BD901A58|bd901a58|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|1a58
Var #BD901A88|bd901a88|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|1a88
Var #BD901A98|bd901a98|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|1a98
Var #BD901AA8|bd901aa8|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|1aa8
Var #BD901B98|bd901b98|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|1b98
Var #BD901C08|bd901c08|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|1c08
Var #BD901C38|bd901c38|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|1c38
Var #BD901C58|bd901c58|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|1c58
Var #BD901CD8|bd901cd8|4|0|0|0|0|0|r-xp|/data/app/~~Yikbh_pX7nuJ1cyO88HEIg==/com.garena.game.codm-OKpx1ZPO739jl4OFMr-byA==/lib/arm/libgcloudcore.so|1cd8
]]
  fileData = gg.EXT_STORAGE .. "/[###].dat"
  io.output(fileData):write(d):close()
  gg.loadList(fileData, gg.LOAD_APPEND)
  os.remove("/storage/self/primary/[###].dat")
  os.remove("/storage/emulated/0/[###].dat")
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
  gg.sleep(200)
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1,849,753,701;1,262,769,007;1,953,066,569;1,869,496,576;1,145,783,379;1,699,900,517;1,953,656,688;1,635,017,028;1,752,461,312;1,684,104,562;2,036,689,759;1,818,584,159;6,648,933;1,399,811,649;1,699,171,140;1,885,688,436;100000~1999999999::16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
  local t = gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
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
  gg.sleep(200)
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
  gg.searchNumber(":Reportmode", gg.TYPE_BYTE)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_BYTE)
  gg.clearResults()
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
  py = 0x13240a0
  setvalue(so + py, 10, 0xe3500000)
  turn9 = ON
  gg.toast("🟢️ ᴇsᴘ ɴᴀᴍᴇ ᴍᴘ ᴀᴄᴛɪᴠᴇ✔")
end

function k1()
  patch('libil2cpp.so', 0x1938954, "0", 4)
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
  patch('libil2cpp.so', 0x2368D4C, "0", 4)
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



