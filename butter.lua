
password = gg["alert"]("\n      🐮 [牛の外掛]  ×  [ʜᴀᴄᴋ ʙʏ BᴜΙ͠ᴛᴇʀ] 🐮 \n\n ", "🌸 [開始]-[Enter] 🌸", "", "💀 [退出]-[Exit] 💀", nil)
if password == nil then end
if password == 1 then else
  if password == 3 then os["exit"]()
    return end end

gg["setVisible"](false)
ProgressBar = "║░░░░░░░░░░░░░░░║";for x = 1,15,1 do gg.sleep(150) ProgressBar = ProgressBar:gsub("░","▓",1);gg.toast(ProgressBar) end

os.remove("/storage/emulated/0/Android/data/com.garena.game.codm/files/v.splash")
os.remove("/storage/emulated/0/Android/data/com.garena.game.codm/files/Disable_Smart.dat")
os.remove("/storage/emulated/0/com.codm.imobilei/0/Android/data/com.garena.game.codm/files/v.splash")
os.remove("/storage/emulated/0/com.codm.imobilei/0/Android/data/com.garena.game.codm/files/Disable_Smart.dat")
os.remove("/storage/emulated/0/Android/data/com.tencent.mobileqq.sameer/data/0/com.garena.game.codm/files/v.splash")
os.remove("/storage/emulated/0/Android/data/com.tencent.mobileqq.sameer/data/0/com.garena.game.codm/files/Disable_Smart.dat")
os.remove("/storage/emulated/0/Android/data/com.garena.game.codm/cache/Cache/Log")
os.remove("/storage/emulated/0/Android/data/com.garena.game.codm/cache/GCloudSDKLog")
os.remove("/storage/emulated/0/com.codm.imobilei/0/Android/data/com.garena.game.codm/cache/Cache/Log")
os.remove("/storage/emulated/0/com.codm.imobilei/0/Android/data/com.garena.game.codm/cache/GCloudSDKLog")
os.remove("/storage/emulated/0/Android/data/com.tencent.mobileqq.sameer/data/0/com.garena.game.codm/cache/Cache/Log")
os.remove("/storage/emulated/0/Android/data/com.tencent.mobileqq.sameer/data/0/com.garena.game.codm/cache/GCloudSDKLog")
os.remove("/storage/emulated/0/Android/data/com.garena.game.codm/files/il2cpp_tmp")
os.remove("/storage/emulated/0/com.codm.imobilei/0/Android/data/com.garena.game.codm/files/il2cpp_tmp")
os.remove("/storage/emulated/0/Android/data/com.tencent.mobileqq.sameer/data/0/com.garena.game.codm/files/il2cpp_tmp")

CA = gg.REGION_C_ALLOC
VI = gg.REGION_VIDEO
XA = gg.REGION_CODE_APP
AN = gg.REGION_ANONYMOUS
CD = gg.REGION_C_DATA
BSS = gg.REGION_C_BSS
EA = gg.editAll
RL = gg.getRangesList
SNR = gg.searchNumber
CLEAR = gg.clearResults
GET = gg.getResults
SET = gg.setVisible
REFINE = gg.refineNumber
COUNT = gg.getResultCount
RANGE = gg.setRanges
XOR = gg.TYPE_XOR
BYTE = gg.TYPE_BYTE
FLOAT = gg.TYPE_FLOAT
WORD = gg.TYPE_WORD
DWORD = gg.TYPE_DWORD
DOUBLE = gg.TYPE_DOUBLE
QWORD = gg.TYPE_QWORD
EQUAL = gg.SIGN_EQUAL

function AxM(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🐮 ʀᴇsᴜʟᴛs ( "..#data.." ) ᴄʜᴀɴɢᴇ 🐮") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("🐮 ʀᴇsᴜʟᴛs ( "..#t.." ) ᴄʜᴀɴɢᴇ 🐮") gg.addListItems(t) else gg.toast("🐮 ᴅᴀᴛᴀ ɴᴏᴛ ғᴏᴜɴᴅ 🐮", false) return false end else gg.toast("🐮 ᴅᴀᴛᴀ ɴᴏᴛ ғᴏᴜɴᴅ 🐮") return false end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🐮 ʀᴇsᴜʟᴛs ( "..#data.." ) ᴄʜᴀɴɢᴇ 🐮") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) end gg.toast("🐮 ᴅᴀᴛᴀ ɴᴏᴛ ғᴏᴜɴᴅ 🐮") end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setVisible(false) gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " Failed") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) xxx=gg.getResultCount() if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " Failed") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. " Found: "..xxx.." Edited: " .. xgsl .. "") else gg.toast(qmnb[2]["name"] .. " Failed") end end end gg.clearResults() end

function patch(lib,offset,edit,type)
  ranges = gg.getRangesList(lib)
  xy = {}
  xy[1] = {}
  xy[1].address = ranges[1].start + offset
  xy[1].flags = type
  xy[1].value = edit
  gg.setValues(xy)
end

local HexPatches = {}
function HexPatches.MemoryPatch(Lib,Offset,Edit,Type)
  Ranges = gg.getRangesList(Lib)
  v = {}
  v[1] = {}
  v[1].address = Ranges[1].start + Offset
  v[1].flags = Type
  v[1].value = Edit.."r"
  v[1].freeze = true
  gg.setValues(v)
end

function setvalue(address,flags,value)
  tt = {}
  tt[1] = {}
  tt[1].address = address
  tt[1].flags = flags
  tt[1].value = value
  gg.setValues(tt)
end

EYT="💫 " ON="🟢 " OFF="⚫ " KFC="🟡 " BBQ="🔶 " turn0=OFF turn1=OFF turn2=BBQ turn3=BBQ turn4=BBQ turn5=BBQ turn6=OFF turn7=OFF turn8=OFF turn9=OFF turn10=OFF turn11=OFF turn12=OFF turn13=OFF turn14=OFF turn15=OFF turn16=OFF turn17=OFF turn18=OFF turn19=OFF turn20=OFF turn21=OFF turn22=OFF turn23=OFF turn24=OFF turn25=OFF turn26=OFF turn27=OFF turn28=OFF turn29=OFF turn30=OFF turn31=OFF


COW = 1
function Main()
  MOMO = gg.choice({
    "≿•━━━ ༺❀༻ ━━━•≾\n .  . >  ≿[  Lᴏɢᴏ 防封  ]≾  < .  . \n" ..turn0.."     [ Lᴏɢᴏ Bʏᴘᴀss ]     "..turn0.."\n",
    ""..turn1.."[ Bʏᴘᴀss ɪɴ (Lᴏʙʙʏ) ] "..turn1.." \n .  . >  ≿[ [ 大廳防封 ] ]≾  < .  . \n≿•━━━ ༺❀༻ ━━━•≾ ",
    "\n🐮️   [Lobby Menu]   🐮️ \n🐮️      [大廳.功能]      🐮",
    "\n☘️  ️[In Game Menu]  ☘️ ️\n☘️    ️  [進場後功能]     ☘️",
    "\n🍁 [ᴀɴᴛɪ ᴄʜᴇᴀᴛ ᴄʜᴇᴄᴋᴇʀ] 🍁",
    "\n♻️ [ᴄʟᴇᴀʀ ʟᴏɢs][清除暫存檔] ♻️",
    "\n 🔹️️  [Exit] .️ ️[離開]  🔹 ",
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
  if MOMO == 5 then c1()
  end
  if MOMO == 6 then d1()
  end
  if MOMO == 7 then exit()
  end
  COW = -1
end

function lobby()
  menu = gg["multiChoice"]({
    ""..turn8.."[ᴇsᴘ ɴᴀᴍᴇ ʙʀ][ʙʀ 顯示人名]",
    ""..turn9.."[ᴇsᴘ ɴᴀᴍᴇ ᴍᴘ][ᴍᴘ 顯示人名]",
    ""..turn10.."[ᴡᴀʟʟʜᴀᴄᴋ][透視]",
    ""..turn11.."[ɴᴏʀᴍᴀʟ ᴀɪᴍʙᴏᴛ][自瞄]",
    ""..turn25.."[sᴛʀᴏɴɢ ᴀɪᴍʙᴏᴛ][強自瞄+]",
    ""..turn13.."[ғᴀsᴛsᴄᴏᴘᴇ][快開鏡]️",
    ""..turn14.."[ᴍɪɴɪ ᴄʀᴏssʜᴀɪʀ][縮小準星]️",
    ""..turn15.."[ɴᴏ ʀᴇᴄᴏɪʟ][減後座力]",
    ""..turn16.."[ғᴀsᴛ ʀᴇʟᴏᴀᴅ][快速上彈]️",
    ""..turn17.."[ɴᴏ sᴘʀᴇᴀᴅ][無散發]",
    ""..turn18.."[ʟᴏɴɢ sʟɪᴅᴇ][長程滑剷]",
    ""..turn31.."[ʙʀ ʙᴜғғ ᴅᴀᴍᴀɢᴇ][生存高傷害]",
    ""..turn19.."[ᴍᴀx ʙᴜʟʟᴇᴛ]ʙᴜɢ[無限子彈]",
    ""..turn27.."[ғᴀsᴛ sʜᴏᴏᴛ][高射速]",
    ""..turn23.."[ᴍᴘ ɴɪɢʜᴛ ᴍᴏᴅᴇ][多人暗黑模式]️",
    ""..turn22.."[ᴍᴘ ᴜᴀᴠ ʀᴀᴅᴀʀ][多人雷達長顯]",
    ""..turn12.."[ɴᴏ sᴍᴏᴋᴇ][無煙]",
    ""..turn30.."[ᴡᴀʟʟsʜᴏᴛ][穿牆]",
    ""..turn28.."[sʜᴏᴡ/ᴍᴀx Fᴘs]",
    "   ↩️  Back  ↩️   ",
  }, nil, os["date"](" ʜᴀᴄᴋ ʙʏ 🐮BᴜΙ͠ᴛᴇʀ \n🟢 = ON/Off (開+關) \n🟡 = ON (只有開) \n🔸 = Every Match (進場後開啟) "))
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
    if menu[12] == true then buff()
    end
    if menu[13] == true then t1()
    end
    if menu[14] == true then v1()
    end
    if menu[15] == true then y1()
    end
    if menu[16] == true then uav()
    end
    if menu[17] == true then map()
    end
    if menu[18] == true then wall()
    end
    if menu[19] == true then fps()
    end
    if menu[20] == true then Main()
    end
  end
  COW = -1
end

function game()
  BO = gg["multiChoice"]({
    ""..turn29.."[ʟᴏᴡ ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ] ️\n.• [ 低^追蹤彈^低 ] •.",
    ""..turn20.."[ʜɪɢʜ ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ] ️\n.• [ 高^追蹤彈^高 ] •.",
    ""..turn3.."[  ʙʟᴜᴇ ᴀɴᴛʜᴇɴᴀ  ] \n 『sɴᴀᴘᴅʀᴀɢᴏɴ ᴏɴʟʏ 』 \n        [  藍色天線  ]   ",
    ""..turn4.."[ ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ ] \n       [ 魔術彈 ]    \n. • In.Every.Game • .",
    ""..turn6.."[ sᴘᴇᴇᴅ x3 ][ 加速 x3 ]",
    ""..turn7.."[ sᴘᴇᴇᴅ x5 ][ 加速 x5 ]",
    ""..turn2.."🚦Red Menu🚦",
    "   ↩️  Back  ↩️   ",
  }, nil, os["date"](" ʜᴀᴄᴋ ʙʏ 🐮BᴜΙ͠ᴛᴇʀ \n🟢 = ON/Off (開+關) \n🟡 = ON (只有開) \n🔸 = Every Match (進場後開啟) "))
  if BO == nil then Main()
   else
    if BO[1] == true then bt()
    end
    if BO[2] == true then u1()
    end
    if BO[3] == true then e1()
    end
    if BO[4] == true then f1()
    end
    if BO[5] == true then g1()
    end
    if BO[6] == true then h1()
    end
    if BO[7] == true then RED()
    end
    if BO[8] == true then Main()
    end
  end
  COW = -1
end

function a1()
  gg.toast(" 💫 Pleas waiting for script running 💫 ")
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x14
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x54
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x74
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x94
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x13c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x24bc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x254c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x2558
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x265c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x2664
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x2690
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x26a8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x26b0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x29f744
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x29f748
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x29f74c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36a670
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36a6b0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36a6b8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36a6bc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36a6c8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36a6cc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36a6d0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36a718
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36a71c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36a720
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36a9cc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36a9d0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36aa40
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36aa48
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36aa50
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36aa88
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ab24
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ab28
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ab2c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ab30
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ab34
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ab38
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ab3c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ab40
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ab44
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ab48
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ab4c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ab50
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ab80
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ab84
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ab88
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ac08
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ac0c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ac10
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ac14
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ac18
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ac1c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c074
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c0b4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c0f4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c170
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c174
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c1b4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c20c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c210
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c214
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c218
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c21c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c220
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c224
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c228
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c22c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c230
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c234
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c238
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c23c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c240
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c244
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c248
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c24c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c250
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c254
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c258
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c25c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c260
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c264
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c268
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c26c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c270
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c274
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c278
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c27c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c280
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c284
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c288
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c28c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c290
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c294
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c298
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c29c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c2a0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c2a4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c2a8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c2ac
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c2b0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c410
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c414
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c418
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c41c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c420
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c424
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c428
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c42c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c430
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c434
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c438
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c43c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c440
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c444
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c448
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c44c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c450
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c454
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c458
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c45c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c460
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c464
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c468
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c46c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c470
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c474
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c478
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c47c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c480
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c484
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c488
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c48c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c490
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c494
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c498
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c49c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c4a0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c4a4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c4a8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c4ac
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c4b0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c4b4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c4b8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c4bc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c4c0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c4c4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c4c8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c4cc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c4d0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c4d4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c4d8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c4dc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c4e0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c4e4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c4e8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c4ec
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c4f0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c4f4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c4f8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c4fc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c500
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c504
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c508
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c50c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c510
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c514
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c518
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c51c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c520
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c524
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c528
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c52c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c530
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c534
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c538
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c53c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c540
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c544
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c548
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c54c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c550
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c554
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c558
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c55c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c560
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c564
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c568
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c56c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c570
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c574
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c578
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c57c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c580
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c584
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c588
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c58c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c590
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c594
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c598
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c59c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c5a0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c5a4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c5a8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c5ac
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c5b0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c5b4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c5b8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c5bc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c5c0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c5c4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c5c8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c5e0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c5e4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c5e8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c5ec
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c5f0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c5f4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c5f8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c5fc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c600
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c604
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c608
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c87c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c880
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c884
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c88c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c9cc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c9d0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c9d4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c9d8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c9dc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36c9e4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ca04
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ca0c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ca14
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ca2c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ca34
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ca3c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ca48
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ca4c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36caa0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36caa4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36caa8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cbfc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc00
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc04
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc08
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc0c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc10
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc14
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc18
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc1c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc20
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc24
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc28
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc2c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc30
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc34
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc38
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc3c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc40
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc44
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc48
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc4c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc50
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc54
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc58
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc5c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc60
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc64
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc68
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc6c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc70
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc74
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc78
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc7c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc80
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc84
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc88
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc8c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc90
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc94
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc98
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cc9c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cca0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce00
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce04
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce08
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce0c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce10
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce14
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce18
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce1c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce20
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce24
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce28
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce2c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce30
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce34
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce38
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce3c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce40
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce44
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce48
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce4c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce50
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce54
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce58
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce5c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce60
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce64
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce68
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce6c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce70
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce74
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce78
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce7c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce80
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce84
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce88
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce8c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce90
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce94
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce98
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ce9c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cea0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cea4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cea8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ceac
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ceb0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ceb4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ceb8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cebc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cec0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cec4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cec8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cecc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ced0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ced4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ced8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cedc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cee0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cee4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cee8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36ceec
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cef0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cef4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cef8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cefc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf00
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf04
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf08
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf0c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf10
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf14
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf18
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf1c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf20
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf24
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf28
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf2c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf30
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf34
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf38
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf3c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf40
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf44
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf48
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf4c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf50
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf54
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf58
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf5c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf60
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf64
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf68
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf6c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf70
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf74
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf78
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf7c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf80
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf84
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf88
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf8c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf90
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf94
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf98
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cf9c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cfa0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cfa4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cfa8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cfac
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cfb0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cfb4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cfb8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cfd0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cfd4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cfd8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cfdc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cfe0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cfe4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cfe8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cfec
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cff0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cff4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36cff8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d01c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d020
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d090
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d098
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d0a0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d0a8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d144
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d148
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d14c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d150
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d154
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d158
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d15c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d160
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d164
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d168
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d16c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d170
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d1a0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d1a4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d1a8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d228
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d22c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d230
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d234
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d238
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36d23c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36e694
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36e6d4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36e714
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36e7b0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36e7b4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36e7b8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36e7bc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36e7c0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36e7c4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36e7c8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36e7cc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36e7d0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36e7d4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36e7d8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36e7dc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36e814
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36e818
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36e81c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36e820
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36e824
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36e828
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36e8bc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36e8c0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36f288
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36f28c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36f2ec
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36f684
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36f694
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36f69c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x36f6c4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x372cb0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x372cb4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x372cb8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x372cbc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x372cc0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x372cc4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x372cd0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x372cd8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x372ce0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x372ce4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x372cf0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x372cf8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x3731cc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x373348
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x373358
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x37335c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x373488
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x373498
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x37349c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x37358c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x37359c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x3735a0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x37365c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x37366c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x373670
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x373700
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x373710
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x373714
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x373780
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x373790
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x3737e4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x373850
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x373860
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x373864
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x389598
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x38959c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x3895a0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x3895d8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x3895dc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x3895e0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x389628
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x38962c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x389630
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x389654
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x389664
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x389674
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x393064
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x39307c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x39309c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x3943c4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x3943c8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x3943cc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x394480
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x394484
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x394488
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x39448c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x394490
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x394494
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x394d28
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x394d2c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x394d68
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x394d88
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libtgpa.so")[1].start
  py = 0x14
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libtgpa.so")[1].start
  py = 0x54
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libtgpa.so")[1].start
  py = 0x74
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libtgpa.so")[1].start
  py = 0x94
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libtgpa.so")[1].start
  py = 0x13c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libtgpa.so")[1].start
  py = 0x168
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libtgpa.so")[1].start
  py = 0x4bfac
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libtgpa.so")[1].start
  py = 0x4bfb4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libtgpa.so")[1].start
  py = 0x4bfb8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libtgpa.so")[1].start
  py = 0x4bfcc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libtgpa.so")[1].start
  py = 0x4bff4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x14
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x54
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x70
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x74
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x94
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0xb4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x158
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x3c35b8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x3c35bc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x3c35cc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x43fe34
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x43fe38
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x43fe3c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x446cd4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x446cd8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x446cdc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x454f84
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x454f88
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x454f8c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x45d9ec
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x45d9f0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x45d9f4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x4636e8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x4636ec
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x4636f0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x46bcf4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x46bcf8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libGVoice.so")[1].start
  py = 0x46bcfc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList('libanogs.so')[1].start
  py = 0x308cc
  setvalue(so + py, 4, 0x0)
  so = gg.getRangesList('libanogs.so')[1].start
  py = 0x43e8c
  setvalue(so + py, 4, 0x0)
  so = gg.getRangesList('libanogs.so')[1].start
  py = 0x25f6e0
  setvalue(so + py, 4, 0x0)
  so = gg.getRangesList('libanogs.so')[1].start
  py = 0x12c0
  setvalue(so + py, 4, 0x0)
  so = gg.getRangesList('libanogs.so')[1].start
  py = 0x12c4
  setvalue(so + py, 4, 0x444b4400)
  turn0 = EYT
  gg.alert(" 💫 ʟᴏɢᴏ ʙʏᴘᴀss ᴀᴄᴛɪᴠᴇ✔ 💫 ")
end

function b1()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1,399,811,649;1,699,171,140;1,885,688,436;1,148,482,159;845,247,585;100~1999999999::16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
  local t = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, v in ipairs(t) do
    if v.flags == gg.TYPE_DWORD then
      v.value = "0"
      v.freeze = true
    end
  end
  gg.addListItems(t)
  t = nil
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1,849,753,701;1,262,769,007;1,953,066,569;1,869,496,576;1,145,783,379;1,699,900,517;1,953,656,688;1,635,017,028;1,752,461,312;1,684,104,562;2,036,689,759;1,818,584,159;6,648,933;1,399,811,649;1,699,171,140;1,885,688,436;100000~1999999999::16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
  local t = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, v in ipairs(t) do
    if v.flags == gg.TYPE_DWORD then
      v.value = "0"
      v.freeze = true
    end
  end
  gg.addListItems(t)
  t = nil
  gg.clearResults()
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x135c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x13a0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x13cc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1408
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1458
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x14bc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x14c4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x14dc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x14f4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1508
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x151c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1524
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x153c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1544
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x15a4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x15ac
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x15bc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x15d8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1614
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1654
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1668
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1690
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1698
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1724
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1768
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1784
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x17a0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x17a8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x17bc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x17d0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x17e4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1840
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1844
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1848
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x187c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1894
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x18c0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1904
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1984
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x19a8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x19c8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x19e4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x19ec
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x19f4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1a00
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1a3c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1a48
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1a50
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1a7c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1a84
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1a9c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1af4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1b04
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1b0c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1b14
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1b20
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1b48
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1bac
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1bd0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1bf8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1c04
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1c24
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1c70
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1c80
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1ca0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1ca4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1ca8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1cac
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1cb0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1cb4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1cb8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1cbc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1cc0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1cc4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1cc8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1ccc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1cd0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1cd4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1cd8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1cdc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1ce0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1ce4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1ce8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1cec
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1cf0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1cf4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1cf8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1cfc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d00
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d04
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d08
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d0c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d14
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d18
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d1c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d20
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d24
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d28
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d2c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d3c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d40
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d44
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d48
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d4c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d54
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d58
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d5c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d60
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d64
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d68
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d6c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d70
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d74
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d78
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d7c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d80
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d84
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d88
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d8c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d90
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d94
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d98
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1d9c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1da0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1da4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1da8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1dac
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1db0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1db4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1db8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1dbc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1dc0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1dc4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1dc8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1dcc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1dd0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1dd4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1dd8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1ddc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1de0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1de4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1de8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1dec
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1df0
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1df4
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1df8
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1dfc
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e00
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e04
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e08
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e0c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e10
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e14
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e18
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e1c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e20
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e24
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e28
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e2c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e30
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e34
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e38
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e3c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e40
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e44
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e48
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e4c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e50
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e54
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e58
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e5c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e60
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e64
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e68
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e6c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e70
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e74
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e78
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e7c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e80
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e84
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e88
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e8c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e90
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libanogs.so")[1].start
  py = 0x1e94
  setvalue(so + py, 4, 0)
  turn1 = EYT
  gg.alert(" 💫 Lᴏʙʙʏ ʙʏᴘᴀss ᴀᴄᴛɪᴠᴇ✔ 💫 ")
end

function c1()
  gg["setRanges"](gg.REGION_C_ALLOC)
  gg["searchNumber"]("67,109,633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  ta = gg["getResultsCount"]()
  t = gg["getResults"](ta)
  if ta < 4 then
    gg["alert"](" •Anti-Cheat Checker• \t\n\n\t Results = " .. ta .. " \t\n\t 💫 安全 sᴀғᴇ !! 💫 ")
   else
    if ta > 50 then
      gg["alert"](" •Anti-Cheat Checker• \t\n\n\t 💫 安全 sᴀғᴇ !! 💫 ")
     else
      faf = gg["alert"]("⚠️ WARNING ⚠️ Anti-Cheat is very High Risk!! \t\n\n\t Results = " .. ta .. " \t\n\t Do you Kill your game? \t\n\t 風險很高，退出遊戲嗎？", " ⚠️ Yes ⚠️ ", "", " ↩️ No ↩ ️", nil)
      if faf == nil then else
        if faf == 1 then
          gg["skipRestoreState"]()
          gg["clearResults"]()
          gg["clearList"]()
          gg["setVisible"](true)
          gg["processKill"]()
          os["exit"]()
        end
        if faf == 3 then Main()
        end
      end
    end
  end
end

function d1()
os.remove("/storage/emulated/0/centauri/Log/com.garena.game.codm/20221210_1.txt")
os.remove("/storage/emulated/0/centauri/Log/com.garena.game.codm/20221211_1.txt")
os.remove("/storage/emulated/0/centauri/Log/com.garena.game.codm/20221212_1.txt")
os.remove("/storage/emulated/0/centauri/Log/com.garena.game.codm/20221213_1.txt")
os.remove("/storage/emulated/0/centauri/Log/com.garena.game.codm/20221214_1.txt")
os.remove("/storage/emulated/0/centauri/Log/com.garena.game.codm/20221215_1.txt")
os.remove("/storage/emulated/0/centauri/Log/com.garena.game.codm/20221216_1.txt")
os.remove("/storage/emulated/0/centauri/Log/com.garena.game.codm/20221217_1.txt")
os.remove("/storage/emulated/0/centauri/Log/com.garena.game.codm/20221218_1.txt")
os.remove("/storage/emulated/0/centauri/Log/com.garena.game.codm/20221219_1.txt")
os.remove("/storage/emulated/0/centauri/Log/com.garena.game.codm/20221220_1.txt")
os.remove("/storage/emulated/0/centauri/Log/com.garena.game.codm/20221221_1.txt")
os.remove("/storage/emulated/0/centauri/Log/com.garena.game.codm/20221222_1.txt")
os.remove("/storage/emulated/0/centauri/Log/com.garena.game.codm/20221223_1.txt")
os.remove("/storage/emulated/0/centauri/Log/com.garena.game.codm/20221224_1.txt")
os.remove("/storage/emulated/0/centauri/Log/com.garena.game.codm/20221225_1.txt")
os.remove("/storage/emulated/0/centauri/Log/com.garena.game.codm/20221226_1.txt")
os.remove("/storage/emulated/0/centauri/Log/com.garena.game.codm/20221227_1.txt")
os.remove("/storage/emulated/0/centauri/Log/com.garena.game.codm/20221228_1.txt")
os.remove("/storage/emulated/0/centauri/Log/com.garena.game.codm/20221229_1.txt")
os.remove("/storage/emulated/0/centauri/Log/com.garena.game.codm/20221230_1.txt")
os.remove("/storage/emulated/0/centauri/Log/com.garena.game.codm/20221231_1.txt")
os.remove("/storage/emulated/0/GUIDHelper")
os.remove("/storage/emulated/0/Android/data/com.garane.game.codm/cache/Cache/Log")
os.remove("/storage/emulated/0/Android/data/com.garane.game.codm/files/TGPA/Log")
os.remove("/storage/emulated/0/centauri")
os.remove("/storage/emulated/0/tencent")
os.remove("/storage/emulated/0/crash.txt")
os.remove("/storage/emulated/0/Android/data/com.garane.game.codm/tss.tmp")
os.remove("/storage/emulated/0/Android/data/com.garane.game.codm/cache/Cache/Log")
os.remove("/storage/emulated/0/Android/data/com.garane.game.codm/files/TGPA/Log")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_interna")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/comm.dat")
os.remove("/data/data/com.garena.game.codm/files/shell_cache/comm.zip")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/config3.xml")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/mn_cache.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/mrpcs_a.data")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/shellcode_1021")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tdm_cache.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tss.ano2.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tss_cef.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tss_emu_c2.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tss_lcp.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tss_r_record.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tssmua.zip")
os.remove("/storage/emulated/0/Android/data/com.garena.game.codm/cache")
os.remove("/storage/emulated/0/tencent/Midas/Log/com.garena.game.codm")
os.remove("/storage/emulated/0/Android/data/com.garena.game.codm/cache")
os.remove("/storage/emulated/0/Android/data/com.garena.game.codm/files/v.splash")
os.remove("/storage/emulated/0/Android/data/com.garena.game.codm/files/Disable_Smart.dat")
os.remove("/storage/emulated/0/com.codm.imobilei/0/Android/data/com.garena.game.codm/files/v.splash")
os.remove("/storage/emulated/0/com.codm.imobilei/0/Android/data/com.garena.game.codm/files/Disable_Smart.dat")
os.remove("/storage/emulated/0/Android/data/com.tencent.mobileqq.sameer/data/0/com.garena.game.codm/files/v.splash")
os.remove("/storage/emulated/0/Android/data/com.tencent.mobileqq.sameer/data/0/com.garena.game.codm/files/Disable_Smart.dat")
os.remove("/storage/emulated/0/Android/data/com.garena.game.codm/cache/Cache/Log")
os.remove("/storage/emulated/0/Android/data/com.garena.game.codm/cache/GCloudSDKLog")
os.remove("/storage/emulated/0/com.codm.imobilei/0/Android/data/com.garena.game.codm/cache/Cache/Log")
os.remove("/storage/emulated/0/com.codm.imobilei/0/Android/data/com.garena.game.codm/cache/GCloudSDKLog")
os.remove("/storage/emulated/0/Android/data/com.tencent.mobileqq.sameer/data/0/com.garena.game.codm/cache/Cache/Log")
os.remove("/storage/emulated/0/Android/data/com.tencent.mobileqq.sameer/data/0/com.garena.game.codm/cache/GCloudSDKLog")
os.remove("/storage/emulated/0/Android/data/com.garena.game.codm/files/il2cpp_tmp")
os.remove("/storage/emulated/0/com.codm.imobilei/0/Android/data/com.garena.game.codm/files/il2cpp_tmp")
os.remove("/storage/emulated/0/Android/data/com.tencent.mobileqq.sameer/data/0/com.garena.game.codm/files/il2cpp_tmp")
os.remove("/storage/emulated/0/tencent/Midas")
os.remove("/storage/emulated/0/tencent/Midas")
os.remove("/storage/emulated/0/[###].dat")
os.remove("/storage/emulated/0/.[#a#].dat")
os.remove("/storage/emulated/0/.[#b#].dat")
gg.toast(" 💫 ᴄʟᴇᴀʀ ʟᴏɢs ᴅᴏɴᴇ 💫 ")
end

function e1()
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

function f1()
  mbs = gg["choice"]({
    " [ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ <ʜᴇᴀᴅ>] [爆頭] ",
    " [ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ <ʙᴏᴅʏ>] [身體] ",
    " [<ʙʀ> sᴛʀᴏɴɢ ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ <ʙʀ>] [生存<強>] ",
  }, nil, os["date"]("💫 ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ ᴍᴇɴᴜ 💫\n "))
  if mbs == nil then else
    if mbs == 1 then
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("0.1439999938", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(500)
      gg.editAll("1.1439999938", gg.TYPE_FLOAT)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("0.1439999938", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1000)
      gg.editAll("1.9", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(" ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ ʜᴇᴀᴅ ᴀᴄᴛɪᴠᴇ✔ ")
    end
    if mbs == 2 then
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("0.18500000238", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1000)
      gg.editAll("0.6", gg.TYPE_FLOAT)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("0.18500000238", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(9999)
      gg.editAll("0.8", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(" ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ ʙᴏᴅʏ ᴀᴄᴛɪᴠᴇ✔ ")
    end
    if mbs == 3 then
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("0.1439999938", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(500)
      gg.editAll("2.5", gg.TYPE_FLOAT)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("0.1439999938", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1000)
      gg.editAll("3.5", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(" ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ ʙʀ ᴀᴄᴛɪᴠᴇ✔")
    end
  end
end

function g1()
  if turn6 == OFF then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("4.28000020981;3.20000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("4.28000020981", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(550)
    gg.editAll("5.28000020981", gg.TYPE_FLOAT)
    gg.clearResults()
    turn6 = ON
    gg.alert("🟢 sᴘᴇᴇᴅ ʀᴜɴ x3 ᴀᴄᴛɪᴠᴇ✔")
   else
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("5.28000020981", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(550)
    gg.editAll("4.28000020981", gg.TYPE_FLOAT)
    gg.clearResults()
    turn6 = OFF
    gg.toast("⚫ sᴘᴇᴇᴅ ʀᴜɴ x3 ᴏғғ ")
  end
end

function h1()
  if turn7 == OFF then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("4.28000020981;3.20000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("4.28000020981", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(550)
    gg.editAll("7.28000020981", gg.TYPE_FLOAT)
    gg.clearResults()
    turn7 = ON
    gg.alert("🟢 sᴘᴇᴇᴅ ʀᴜɴ x5 ᴀᴄᴛɪᴠᴇ✔")
   else
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("7.28000020981", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(550)
    gg.editAll("4.28000020981", gg.TYPE_FLOAT)
    gg.clearResults()
    turn7 = OFF
    gg.toast("⚫ sᴘᴇᴇᴅ ʀᴜɴ x5 ᴏғғ ")
  end
end

function i1()
  patch('libil2cpp.so', 0x1209E20, "-481230848", 4)
  patch('libil2cpp.so', 0x17BD3F4, "-476028927", 4)
  turn8 = KFC
  gg.toast("🟡 ᴇsᴘ ɴᴀᴍᴇ ʙʀ ᴀᴄᴛɪᴠᴇ✔")
end

function j1()
  if turn9 == OFF then
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x120A548
    setvalue(so + py, 4, 0xe3500000)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x13240A0
    setvalue(so + py, 4, 0xe3500000)
    turn9 = ON
    gg.toast("🟢️ ᴇsᴘ ɴᴀᴍᴇ ᴍᴘ ᴀᴄᴛɪᴠᴇ✔")
   else
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x13240A0
    setvalue(so + py, 4, -481296383)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x187939C
    setvalue(so + py, 4, -481296383)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x21CD8F4
    setvalue(so + py, 4, -481296383)
    turn9 = OFF
    gg.toast("⚫ Esᴘ Nᴀᴍᴇ Mᴘ Oғғ ")
  end
end

function k1()
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x1938954
  setvalue(so + py, 4, 0)
  turn10 = KFC
  gg.toast("🟡 ᴡᴀʟʟʜᴀᴄᴋ ᴀᴄᴛɪᴠᴇ✔")
end

function l1()
  if turn11 == OFF then
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x1C10990
    setvalue(so + py, 4, -442564608)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x1C10994
    setvalue(so + py, 4, -516948194)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x1C10998
    setvalue(so + py, 4, 1056964608)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x6E94624
    setvalue(so + py, 4, -442564608)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x6E94628
    setvalue(so + py, 4, -516948194)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x6E9462C
    setvalue(so + py, 4, 1090519040)
    turn11 = ON
    gg.toast("🟢 ɴᴏʀᴍᴀʟ ᴀɪᴍʙᴏᴛ ᴀᴄᴛɪᴠᴇ✔")
   else
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x1C10990
    setvalue(so + py, 4, 0xe92d4bf0)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x1C10994
    setvalue(so + py, 4, 0xe28db018)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x1C10998
    setvalue(so + py, 4, 0xed2d8b04)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x6E94624
    setvalue(so + py, 4, 0xe92d48f0)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x6E94628
    setvalue(so + py, 4, 0xe28db010)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x6E9462C
    setvalue(so + py, 4, 0xed2d8b02)
    turn11 = OFF
    gg.toast("⚫ ɴᴏʀᴍᴀʟ ᴀɪᴍʙᴏᴛ ᴏғғ ")
  end
end

function m1()
  if turn25 == OFF then
    patch('libil2cpp.so', 0x6CBF80C, "h 00 00 00 00", 4)
    turn25 = ON
    gg.toast("🟢 sᴛʀᴏɴɢ ᴀɪᴍʙᴏᴛ ᴀᴄᴛɪᴠᴇ✔")
   else
    patch('libil2cpp.so', 0x6CBF80C, "-286131696", 4)
    turn25 = OFF
    gg.toast("⚫ sᴛʀᴏɴɢ ᴀɪᴍʙᴏᴛ ᴏғғ ")
  end
end

function n1()
  so = gg.getRangesList("libil2cpp.so")[1].start
  local py = 0x287B1AC
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libil2cpp.so")[1].start
  local py = 0x2B267E8
  setvalue(so + py, 4, 0)
  turn13 = KFC
  gg.toast("🟡 ғᴀsᴛ sᴄᴏᴘᴇ ᴀᴄᴛɪᴠᴇ✔")
end

function o1()
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x576A7C8
  setvalue(so + py, 16, 0)
  turn14 = KFC
  gg.toast("🟡 ᴍɪɴɪ ᴄʀᴏssʜᴀɪʀ ᴀᴄᴛɪᴠᴇ✔")
end

function p1()
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x2b6fe68
  setvalue(so + py, 4, 0)
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x2b6ff0c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x2b7034
  setvalue(so + py, 4, 0)
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x2b72f1c
  setvalue(so + py, 4, 0)
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x2b766b4
  setvalue(so + py, 4, 0)
  turn15 = KFC
  gg.toast("🟡 ɴᴏ ʀᴇᴄᴏɪʟ ᴀʟʟ ɢᴜɴs ᴀᴄᴛɪᴠᴇ✔")
end

function q1()
  so = gg.getRangesList('libil2cpp.so')[1].start
  local py = 0x2B19B84
  setvalue(so + py, 4, 0)
  so = gg.getRangesList('libil2cpp.so')[1].start
  local py = 0x2B19C1C
  setvalue(so + py, 4, 0)
  turn16 = KFC
  gg.toast("🟡 ғᴀsᴛ ʀᴇʟᴏᴀᴅ ᴀᴄᴛɪᴠᴇ✔")
end

function r1()
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x2B6EA0C
  setvalue(so + py, 16, 1)
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x2B82CA8
  setvalue(so + py, 16, 1)
  turn17 = KFC
  gg.toast("🟡 ɴᴏ sᴘʀᴇᴀᴅ ᴀᴄᴛɪᴠᴇ✔")
end

function s1()
  if turn18 == OFF then
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x2155E94
    setvalue(so + py, 16, -3.61576225e21)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x2155E98
    setvalue(so + py, 16, -2.02910209e20)
    turn18 = ON
    gg.toast("🟢 ʟᴏɴɢ sʟɪᴅᴇ ᴀᴄᴛɪᴠᴇ✔")
   else
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x2155E94
    setvalue(so + py, 4, -494,919,568)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x2155E98
    setvalue(so + py, 4, -439,349,060)
    turn18 = OFF
    gg.toast("⚫ ʟᴏɴɢ sʟɪᴅᴇ Oғғ ")
  end
end

function buff()
  if turn31 == OFF then
    patch('libunity.so', 0xB2FC34, "h 00 00 00 00", 4)
    patch('libunity.so', 0xB2FC38, "h 00 00 00 00", 4)
    patch('libunity.so', 0xB2FC3C, "h 00 00 00 00", 4)
    patch('libunity.so', 0xB2FC54, "h 00 00 00 00", 4)
    patch('libunity.so', 0xB2FC58, "h 00 00 00 00", 4)
    patch('libunity.so', 0xB2FC5C, "h 00 00 00 00", 4)
    turn31 = ON
    gg.toast("🟢 ʙᴜғғ ᴅᴀᴍᴀɢᴇ ᴀᴄᴛɪᴠᴇ✔ ")
  else
    so = gg.getRangesList('libunity.so')[1].start
    py = 0xB2FC34
    setvalue(so + py, 4, 0xed900a00)
    so = gg.getRangesList('libunity.so')[1].start
    py = 0xB2FC38
    setvalue(so + py, 4, 0xed901a01)
    so = gg.getRangesList('libunity.so')[1].start
    py = 0xB2FC3C
    setvalue(so + py, 4, 0xed902a02)
    so = gg.getRangesList('libunity.so')[1].start
    py = 0xB2FC54
    setvalue(so + py, 4, 0xed811a01)
    so = gg.getRangesList('libunity.so')[1].start
    py = 0xB2FC58
    setvalue(so + py, 4, 0xed812a02)
    so = gg.getRangesList('libunity.so')[1].start
    py = 0xB2FC5C
    setvalue(so + py, 4, 0xed813a03)
    turn31 = OFF
    gg.toast("⚫ ʙᴜғғ ᴅᴀᴍᴀɢᴇ Oғғ ")
  end
end

function t1()
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x1BE7DDC
  setvalue(so + py, 16, -5.9029581e21)
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x1BE7DE0
  setvalue(so + py, 16, -2.02910209e20)
  turn19 = KFC
  gg.toast("🟡 ʙᴜʟʟᴇᴛ ᴍᴀx ᴀᴄᴛɪᴠᴇ✔")
end

function bt()
  if turn29 == OFF then
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x22AFA00
    setvalue(so + py, 16, 0)
    turn29 = ON
    gg.toast("🟢 ʟᴏᴡ ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ ᴀᴄᴛɪᴠᴇ✔")
  else
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x22AFA00 
    setvalue(so + py, 16, -1.06029028e28)
    turn29 = OFF
    gg.toast("⚫ ʟᴏᴡ ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ ᴏғғ ")
  end
end

function u1()
  so = gg.getRangesList('libunity.so')[1].start
  local py = 0xB2FC34
  setvalue(so + py, 16, 1900)
  so = gg.getRangesList('libunity.so')[1].start
  local py = 0xB2FC38
  setvalue(so + py, 16, 1900)
  so = gg.getRangesList('libunity.so')[1].start
  local py = 0xB2FC3C
  setvalue(so + py, 16, 1900)
  so = gg.getRangesList('libunity.so')[1].start
  local py = 0xB2FC48
  setvalue(so + py, 16, 1900)
  so = gg.getRangesList('libunity.so')[1].start
  local py = 0xB2FC54
  setvalue(so + py, 16, 1900)
  so = gg.getRangesList('libunity.so')[1].start
  local py = 0xB2FC58
  setvalue(so + py, 16, 1900)
  so = gg.getRangesList('libunity.so')[1].start
  local py = 0xB2FC5C
  setvalue(so + py, 16, 1900)
  so = gg.getRangesList('libunity.so')[1].start
  local py = 0x513868
  setvalue(so + py, 16, -9)
  turn20 = KFC
  gg.toast("🟡 ʜɪɢʜ ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ ᴀᴄᴛɪᴠᴇ✔")
end

function v1()
  if turn27 == OFF then
    so = gg.getRangesList('libil2cpp.so')[1].start
    local py = 0x2B235BC
    setvalue(so + py, 4, 0)
    so = gg.getRangesList('libil2cpp.so')[1].start
    local py = 0x2B25608
    setvalue(so + py, 4, 0)
    turn27 = ON
    gg.toast("🟢 ғᴀsᴛ sʜᴏᴏᴛ ᴀᴄᴛɪᴠᴇ✔ ")
   else
    patch('libil2cpp.so', 0x2B235BC, "-299333111", 4)
    patch('libil2cpp.so', 0x2B25608, "-309032414", 4)
    turn27 = OFF
    gg.toast("⚫ Fᴀsᴛ Sʜᴏᴏᴛ Oғғ ")
  end
end

function y1()
  if turn23 == OFF then
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x15EBB8
    setvalue(so + py, 16, 10)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x1567C4
    setvalue(so + py, 16, 10)
    turn23 = ON
    gg.toast("🟢 Dᴀʀᴋᴍᴏᴅᴇ ᴀᴄᴛɪᴠᴇ✔")
  else
    patch('libunity.so', 0x1567C4, "981,668,463", 4)
    patch('libunity.so', 0x15EBB8, "897,988,541", 4)
    turn23 = OFF
    gg.toast("⚫ Dᴀʀᴋᴍᴏᴅᴇ Oғғ ")
  end
end

function uav()
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x33D5424
  setvalue(so + py, 16, -5.90295867e21)
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x33D5428
  setvalue(so + py, 16, -2.02910209e20)
  turn22 = KFC
  gg.toast("🟡 ᴜᴀᴠ ʀᴀᴅᴀʀ ᴀᴄᴛɪᴠᴇ✔ ")
end

function map()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("300000090", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  turn12 = KFC
  gg.toast("🟡 ɴᴏ sᴍᴏᴋᴇ ᴀᴄᴛɪᴠᴇ✔ ")
end

function wall()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber("4611686019501129729", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(5)
  gg.editAll("-5721650868831073834", gg.TYPE_QWORD)
  gg.setRanges(gg.REGION_C_BSS)
  gg.getResults(5)
  gg.searchNumber("2", gg.TYPE_FLOAT)
  gg.refineNumber("2", gg.TYPE_FLOAT)
  gg.getResults(9999)
  gg.editAll("-9999999", gg.TYPE_FLOAT)
  gg.clearResults()
  turn30 = KFC
  gg.toast("🟡 ᴡᴀʟʟsʜᴏᴛ ᴀᴄᴛɪᴠᴇ✔ ")
end

function fps()
  if turn28 == OFF then
    so = gg.getRangesList('libil2cpp.so')[1].start
    local py = 0x2368D4C
    setvalue(so + py, 16, -3.78023548e28)
    so = gg.getRangesList('libil2cpp.so')[1].start
    local py = 0x172EE14
    setvalue(so + py, 4, 0)
    turn28 = ON
    gg.toast(" 🟢 FPS ᴀᴄᴛɪᴠᴇ✔ ")
   else
    so = gg.getRangesList('libil2cpp.so')[1].start
    local py = 0x2368D4C
    setvalue(so + py, 16, -3.74440972e28)
    turn28 = OFF
    gg.toast(" ⚫ FPS Oғғ ")
  end
end

function RED()
  RLD = gg.alert("RED LINE Menu", "MP [多人紅光]", "BR [生存紅色天線]")
  if RLD == nil then else
    if RLD == 1 then
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("256;4", gg.TYPE_FLOAT)
      gg.refineNumber("4", gg.TYPE_FLOAT)
      gg.getResults(10000)
      gg.editAll("90", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.alert("🟢 ʀᴇᴅ ʟɪɢʜᴛ ᴀᴄᴛɪᴠᴇ✔ ")
    end
    if RLD == 2 then
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("1.0;1.0;1.0;3.0;0.05000000075;0.80000001192;5.0;10.0:149", gg.TYPE_FLOAT)
      gg.refineNumber("1.0;1.0;1.0;3.0;5.0;10.0:149", gg.TYPE_FLOAT)
      gg.getResults(9999)
      gg.editAll("9999;5", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.alert("🟢 ʀᴇᴅ ᴀɴᴛʜᴇɴᴀ ʙʀ ᴀᴄᴛɪᴠᴇ✔")
    end
  end
end

function exit()
  exx = gg["alert"](" \n  🎀 EXIT SCRIPT • 離開 🎀 ", "💡 Yes 💡", " ↩️ Back ↩️", nil)
  if exx == nil then Main() else
    if exx == 1 then
      print("╭════••✧๑♡๑✧••════╮")
      print("                ʜᴀᴄᴋ ʙʏ 🐮BᴜΙ͠ᴛᴇʀ                       ")
      print("                  『 ᴛʜᴀɴᴋ ʏᴏᴜ 』         ")
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



