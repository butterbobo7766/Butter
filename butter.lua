function LOG(c) res = '' for i in ipairs(c) do res = res..string.char((c[i] + 1 + (1 + i) * (1 + i)) % 256) end return res end if true then local org = gg.searchNumber local hook = function(...) gg.setVisible(false) local ret = org(...) if gg.isVisible() then while true do gg.alert("ᴅᴏɴᴛ sᴛᴏʟᴇ ᴍʏ ᴠᴀʟᴜᴇs") gg.setVisible(true) gg.clearResults() gg.clearList() os.exit(print("ᴅᴏɴᴛ sᴛᴏʟᴇ ᴍʏ ᴠᴀʟᴜᴇs")) end end  return ret end gg.searchNumber = hook end 

password = gg["alert"]("\n      🐮 [牛の外掛]  ×  [ʜᴀᴄᴋ ʙʏ BᴜΙ͠ᴛᴇʀ] 🐮 \n\n ", "🌸 [開始]-[Enter] 🌸", "", "💀 [退出]-[Exit] 💀", nil)
  if password == nil then end
  if password == 1 then else
  if password == 3 then os["exit"]()
  return end end

gg["setVisible"](false)
ProgressBar = "║░░░░░░░░░░░░░░░║";for x = 1,15,1 do gg.sleep(150) ProgressBar = ProgressBar:gsub("░","▓",1);gg.toast(ProgressBar) end

os.remove("/storage/emulated/0/Android/data/com.garena.game.codm/cache/Cache/Log")
os.remove("/storage/emulated/0/Android/data/com.garena.game.codm/cache/GCloudSDKLog")
os.remove("/storage/emulated/0/Android/data/com.garena.game.codm/files/v.splash")
os.remove("/storage/emulated/0/Android/data/com.garena.game.codm/files/Disable_Smart.dat")
os.remove("/storage/emulated/0/com.codm.imobilei/0/Android/data/com.garena.game.codm/cache/Cache/Log")
os.remove("/storage/emulated/0/com.codm.imobilei/0/Android/data/com.garena.game.codm/cache/GCloudSDKLog")
os.remove("/storage/emulated/0/com.codm.imobilei/0/Android/data/com.garena.game.codm/files/v.splash")
os.remove("/storage/emulated/0/com.codm.imobilei/0/Android/data/com.garena.game.codm/files/Disable_Smart.dat")
os.remove("/storage/emulated/0/Android/data/com.tencent.mobileqq.sameer/data/0/com.garena.game.codm/cache/Cache/Log")
os.remove("/storage/emulated/0/Android/data/com.tencent.mobileqq.sameer/data/0/com.garena.game.codm/cache/GCloudSDKLog")
os.remove("/storage/emulated/0/Android/data/com.tencent.mobileqq.sameer/data/0/com.garena.game.codm/files/v.splash")
os.remove("/storage/emulated/0/Android/data/com.tencent.mobileqq.sameer/data/0/com.garena.game.codm/files/Disable_Smart.dat")
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

EYT="💫 " ON="🟢 " OFF="⚫ " KFC="🟡 " BBQ="🔶 " MNO="❌ " turn0=OFF turn1=OFF turn2=BBQ turn3=BBQ turn4=BBQ turn5=BBQ turn6=OFF turn7=OFF turn8=OFF turn9=OFF turn10=OFF turn11=OFF turn12=OFF turn13=OFF turn14=OFF turn15=OFF turn16=OFF turn17=OFF turn18=OFF turn19=OFF turn20=OFF turn21=OFF turn22=OFF turn23=OFF turn24=OFF turn25=OFF turn26=OFF turn27=OFF turn28=OFF turn29=OFF turn30=OFF turn31=OFF


COW = 1
function Main()
  MOMO = gg.choice({
    "≿•━━━ ༺❀༻ ━━━•≾\n .  . >  ≿[  Lᴏɢᴏ 防封  ]≾  < .  . \n" ..turn0.."     [ Lᴏɢᴏ Bʏᴘᴀss ]     "..turn0.."\n",
    ""..turn1.."[ Bʏᴘᴀss ɪɴ (Lᴏʙʙʏ) ] "..turn1.." \n .  . >  ≿[ [ 大廳防封 ] ]≾  < .  . \n≿•━━━ ༺❀༻ ━━━•≾ ",
    "🌸 [Lobby Menu][大廳功能]🌸",
    "❄ [InGame Menu][進場後功能]❄",
    "🎀 [ᴍʏᴛʜɪᴄ ɢᴜɴs ᴍᴇɴᴜ][神話槍] 🎀",
    "⚜️ [ʟᴇɢᴇɴᴅᴀʀʏ ɢᴜɴs ᴍᴇɴᴜ][傳說槍]⚜️",
    "🔹 [Character Menu][人物角色]🔹",
    "🛑️ [Exit] 🛑 ️[離開] 🛑️",
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
  if MOMO == 5 then guns()
  end
  if MOMO == 6 then legend()
  end
  if MOMO == 7 then acter()
  end
  if MOMO == 8 then exit()
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
    ""..turn12.."[ʀᴀᴅᴀʀ ᴍɪɴɪ ᴍᴀᴘ][生存地圖]",
    ""..turn30.."[ᴡᴀʟʟsʜᴏᴛ][穿牆]",
    ""..turn28.."[sʜᴏᴡ/ᴍᴀx Fᴘs]",
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
    ""..turn4.."[ᴍᴀɢɪᴄʙᴜʟʟᴇᴛ ᴀᴅᴊᴜsᴛᴀʙʟᴇ] \n       [ 可調節魔術彈 ]    \n. • In.Every.Game • .",
    ""..turn5.."[ ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ ] \n       [ 魔術彈 ]    \n. • In.Every.Game • .",
    ""..turn6.."[ sᴘᴇᴇᴅ x3 ][ 加速 x3 ]",
    ""..turn7.."[sᴘᴇᴇᴅ ᴀᴅᴊᴜsᴛᴀʙʟᴇ]\n      [ 可調節加速 ]",
    ""..turn2.."🚦Red Menu🚦",
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
    if BO[9] == true then Main()
    end
  end
  COW = -1
end


function a1()
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
  gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("0", gg.TYPE_DWORD)
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
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.1439999938", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("2.5", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.18500000238", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("0.6", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast(" ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ ᴀᴄᴛɪᴠᴇ✔")
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
  spd = gg.prompt({"選擇速度 . sᴘᴇᴇᴅʜᴀᴄᴋ: [5;9]"}, {[1] = data, [1] = 5}, {[1] = "number"})
  if spd == nil then else
    data = spd[1]
    SH = tostring(spd[1])
    qmnb = {
      {["memory"] = 32},
      {["name"] = "Speed Hack"},
      {["value"] = 36.0, ["type"] = 16},
      {["lv"] = 0.5, ["offset"] = 20, ["type"] = 16}
    }
    qmxg = {
      {["value"] = SH, ["offset"] = 4, ["type"] = 16},
      {["value"] = SH, ["offset"] = 8, ["type"] = 16},
      {["value"] = SH, ["offset"] = 12, ["type"] = 16},
      {["value"] = SH, ["offset"] = 16, ["type"] = 16}
    }
    xqmnb(qmnb)
    qmnb = {
      {["memory"] = 32},
      {["name"] = "Speed No Lag"},
      {["value"] = 0.30000001192092896, ["type"] = 16},
      {["lv"] = 1.0, ["offset"] = -8, ["type"] = 16},
      {["lv"] = 1.2599999904632568, ["offset"] = -4, ["type"] = 16}
    }
    qmxg = {
      {["value"] = 30.123456, ["offset"] = 0, ["type"] = 16}
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
  local py = 0x120A548 
  setvalue(so + py, 4, 0xe3500000)
  so = gg.getRangesList('libil2cpp.so')[1].start
  local py = 0x13240A0 
  setvalue(so + py, 4, 0xe3500000)
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
  py = 0x6CBF6C0
  setvalue(so + py, 16, 0)
  turn11 = ON
  gg.toast("🟢 ɴᴏʀᴍᴀʟ ᴀɪᴍʙᴏᴛ ᴀᴄᴛɪᴠᴇ✔")
end

function m1()
  so = gg.getRangesList('libil2cpp.so')[1].start
  local py = 0x6CBF80C
  setvalue(so + py, 4, 0)
  turn25 = ON
  gg.toast("🟢 sᴛʀᴏɴɢ ᴀɪᴍʙᴏᴛ ᴀᴄᴛɪᴠᴇ✔")
end

function n1()
  so = gg.getRangesList("libil2cpp.so")[1].start
  local py = 0x287B1AC
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libil2cpp.so")[1].start
  local py = 0x2B267E8
  setvalue(so + py, 4, 0)
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
  turn15 = ON
  gg.toast("🟢 ɴᴏ ʀᴇᴄᴏɪʟ ᴀʟʟ ɢᴜɴs ᴀᴄᴛɪᴠᴇ✔")
end

function q1()
  so = gg.getRangesList('libil2cpp.so')[1].start
  local py = 0x2B19B84
  setvalue(so + py, 4, 0)
  so = gg.getRangesList('libil2cpp.so')[1].start
  local py = 0x2B19C1C
  setvalue(so + py, 4, 0)
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
  py = 0x2155E94
  setvalue(so + py, 16, -3.61576225e21)
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x2155E98
  setvalue(so + py, 16, -2.02910209e20)
  gg.toast("🟢 ʟᴏɴɢ sʟɪᴅᴇ ᴀᴄᴛɪᴠᴇ✔")
  turn18 = ON
end

function buff()
  patch('libunity.so', 0xB2FC34, "h 00 00 00 00", 4)
  patch('libunity.so', 0xB2FC38, "h 00 00 00 00", 4)
  patch('libunity.so', 0xB2FC3C, "h 00 00 00 00", 4)
  patch('libunity.so', 0xB2FC54, "h 00 00 00 00", 4)
  patch('libunity.so', 0xB2FC58, "h 00 00 00 00", 4)
  patch('libunity.so', 0xB2FC5C, "h 00 00 00 00", 4)
  turn31 = ON
  gg.toast("🟢 ʙᴜғғ ᴅᴀᴍᴀɢᴇ ᴀᴄᴛɪᴠᴇ✔ ")
end

function t1()
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x1BE7DDC
  setvalue(so + py, 16, -5.9029581e21)
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x1BE7DE0
  setvalue(so + py, 16, -2.02910209e20)
  turn19 = ON
  gg.toast("🟢 ʙᴜʟʟᴇᴛ ᴍᴀx ᴀᴄᴛɪᴠᴇ✔")
end

function bt()
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x22AFA00
  setvalue(so + py, 16, 0)
  turn29 = ON
  gg.toast("🟢 ʟᴏᴡ ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ ᴀᴄᴛɪᴠᴇ✔")
end

function u1()
  so = gg.getRangesList('libunity.so')[1].start
  py = 0xB2F898
  setvalue(so + py, 16, 23)
  so = gg.getRangesList('libunity.so')[1].start
  py = 0xB2F89C
  setvalue(so + py, 16, 23)
  so = gg.getRangesList('libunity.so')[1].start
  py = 0x513868
  setvalue(so + py, 16, 8)
  so = gg.getRangesList('libunity.so')[1].start
  py = 0xB2FC5C
  setvalue(so + py, 16, 0)
  turn20 = ON
  gg.toast("🟢 ʜɪɢʜ ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ ᴀᴄᴛɪᴠᴇ✔")
end

function v1()
  so = gg.getRangesList('libil2cpp.so')[1].start
  local py = 0x2B235BC
  setvalue(so + py, 4, 0)
  so = gg.getRangesList('libil2cpp.so')[1].start
  local py = 0x2B25608
  setvalue(so + py, 4, 0)
  turn27 = ON
  gg.toast("🟢 ғᴀsᴛ sʜᴏᴏᴛ ᴏɴ")
end

function y1()
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x15EBB4
  setvalue(so + py, 16, 10)
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x1567C4
  setvalue(so + py, 16, 10)
  turn23 = ON
  gg.toast("🟢 Dᴀʀᴋᴍᴏᴅᴇ ᴀᴄᴛɪᴠᴇ✔")
end

function uav()
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x33D5424
  setvalue(so + py, 16, -5.90295867e21)
  so = gg.getRangesList('libil2cpp.so')[1].start
  py = 0x33D5428
  setvalue(so + py, 16, -2.02910209e20)
  turn22 = ON
  gg.toast(" 🟢 ᴜᴀᴠ ʀᴀᴅᴀʀ ᴀᴄᴛɪᴠᴇ✔ ")
end

function map()
  Range(XA) 
  local S = {{-382906896, 0}, {-494030824, 4}, {-498216952, 8}, {-509583360, 12}, {-442564140, 16}, {-442535468, 20}, {-509575166, 24}, {-527499264, 28},{-509587455, 32}, {-528023552, 36}}
  local W = {{-476053503, 0}, {-516948194, 4}}
  local T = DWORD 
  AxM(S, W, T)
  turn12 = ON
  gg.alert("🟢 ʀᴀᴅᴀʀ ᴍɪɴɪ ᴍᴀᴘ ᴀᴄᴛɪᴠᴇ✔")
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
  turn30 = ON
  gg.toast("🟢 ᴡᴀʟʟsʜᴏᴛ ᴀᴄᴛɪᴠᴇ✔ ")
end

function fps()
  so = gg.getRangesList('libil2cpp.so')[1].start
  local py = 0x2368D4C
  setvalue(so + py, 16, -3.78023548e28)
  so = gg.getRangesList('libil2cpp.so')[1].start
  local py = 0x172EE14
  setvalue(so + py, 4, 0)
  turn28 = ON
  gg.toast(" 🟢 FPS ᴀᴄᴛɪᴠᴇ✔ ")
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

function guns()
  HM = gg["multiChoice"]({
    "ᴏᴅᴇɴ ᴅɪᴠɪɴᴇ sᴍɪᴛᴇ",
    "ᴋɪʟᴏ 141 ᴅᴇᴍᴏɴsᴏɴɢ",
    "ᴍ13 ᴍᴏʀɴɪɴɢ sᴛᴀʀ",
    "ᴀᴋ47 ʀᴀᴅɪᴀɴᴄᴇ",
    "sᴡɪᴛᴄʜʙʟᴀᴅᴇ x9",
    "ᴄʙʀ4 ᴀᴍᴏᴇʙᴀ",
    "ᴘᴇᴀᴄᴇᴋᴇᴇᴘᴇʀ ᴀʀᴛɪғᴀᴄᴛ",
    "ғᴇɴɴᴇᴄ ᴀsᴄᴇɴᴅᴇᴅ",
    "ᴀsᴠᴀʟ ᴅᴏᴜʙʟᴇ ᴇᴅɢᴇ",
    "ʀʏᴛᴇᴄ ᴀᴍʀ ɴᴀᴜᴛɪʟᴜs",
    "ʜᴏʟɢᴇʀ ᴅᴀʀᴋ ғʀᴏɴᴛɪᴇʀ",
    " ♂️ Back ♂️ ",
  }, nil, os["date"](" \n 💫 ᴍʏᴛʜɪᴄ ɢᴜɴs ᴍᴇɴᴜ 💫"))
  if HM == nil then 
   else
    if HM[1] == true then odenm()
    end
    if HM[2] == true then kilom()
    end
    if HM[3] == true then m13m()
    end
    if HM[4] == true then ak47m()
    end
    if HM[5] == true then switchbladem()
    end
    if HM[6] == true then cbr4m()
    end
    if HM[7] == true then peacekeeperm()
    end
    if HM[8] == true then fennecm()
    end
    if HM[9] == true then asvalm()
    end
    if HM[10] == true then rytecm()
    end
    if HM[11] == true then holgerm()
    end
    if HM[12] == true then Main()
    end
   end
  COW = -1
end

function odenm()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴏᴅᴇɴ ᴅɪᴠɪɴᴇ sᴍɪᴛᴇ ui"},
{["value"] = 68990, ["type"] = 4},
{["lv"] = 10125001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 70111, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h C9 7E 9A 00 C1 87 01 00 C9 7E 9A 00", 1)
gg.getResults(10000)
gg.editAll("h CA 7E 9A 00 BF 87 01 00 CA 7E 9A 00", 1)
gg.clearResults()
gg.searchNumber("h 01 00 01 00 00 00 00 00 38 00 00 00 C9 7E 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 01 86 0E 70 3F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 00 00 00 00 00 38 00 00 00 C9 7E 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 01 86 0E 70 3F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 88 1A 06 00 C4 0D 03 00 51 A1 07 00", 1)
gg.clearResults()
gg.toast("oden divine smite level 7 on")
end

function kilom()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴋɪʟᴏ 141 ᴅᴇᴍᴏɴsᴏɴɢ ui"},
{["value"] = 9196, ["type"] = 4},
{["lv"] = 10124001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 9479, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
qmnb = {
{["memory"] = 32}, 
{["name"] = "ᴋɪʟᴏ 141 ᴅᴇᴍᴏɴsᴏɴɢ 1p and 3p"},
{["value"] = 10109001, ["type"] = 4},
{["lv"] = 10124001, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10124002, ["offset"] = 4, ["type"] = 4},
{["value"] = 100155, ["offset"] = 8, ["type"] = 4},
{["value"] = 10124002, ["offset"] = 12, ["type"] = 4},
}
 xqmnb(qmnb)
gg.searchNumber("h 01 00 01 00 00 00 00 00 39 00 00 00 E1 7A 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 37 00 00 00 01 86 0E 70 2C 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 00 00 00 00 00 39 00 00 00 E1 7A 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 37 00 00 00 01 86 0E 70 2C 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 86 1A 06 00 B0 0D 03 00 45 A1 07 00", 1)
gg.clearResults()
gg.toast("ᴋɪʟᴏ 141 ᴅᴇᴍᴏɴsᴏɴɢ ʟᴇᴠᴇʟ 7 on")
end

function m13m()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴍ13 ᴍᴏʀɴɪɴɢsᴛᴀʀ ui"},
{["value"] = 1338, ["type"] = 4},
{["lv"] = 10122001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1175, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 qmnb = {
{["memory"] = 32}, 
{["name"] = "ᴍ13 ᴍᴏʀɴɪɴɢ sᴛᴀʀ 1p and 3p"},
{["value"] = 10109001, ["type"] = 4},
{["lv"] = 10122001, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10122002, ["offset"] = 4, ["type"] = 4},
{["value"] = 100004, ["offset"] = 8, ["type"] = 4},
{["value"] = 10122002, ["offset"] = 12, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h 01 00 01 00 00 00 00 00 38 00 00 00 11 73 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2B 00 00 00 01 86 0E 70 27 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 00 00 00 00 00 38 00 00 00 11 73 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2B 00 00 00 01 86 0E 70 27 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 82 1A 06 00 99 0D 03 00 3A A1 07 00", 1)
gg.toast("ᴍ13 ᴍᴏʀɴɪɴɢ sᴛᴀʀ ʟᴇᴠᴇʟ 7 ᴏɴ")
end

function ak47m()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴀᴋ47 ʀᴀᴅɪᴀɴᴄᴇ ui"},
{["value"] = 200002161, ["type"] = 4},
{["lv"] = 10107001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 66737, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 qmnb = {
{["memory"] = 32}, 
{["name"] = "ᴀᴋ47 ʀᴀᴅɪᴀɴᴄᴇ 1p and 3p"},
{["value"] = 10109001, ["type"] = 4},
{["lv"] = 10107001, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10107146, ["offset"] = 4, ["type"] = 4},
{["value"] = 100233, ["offset"] = 8, ["type"] = 4},
{["value"] = 10107146, ["offset"] = 12, ["type"] = 4},
}
 xqmnb(qmnb)
gg.searchNumber("h 01 00 01 01 00 00 00 00 43 00 00 00 79 38 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2C 00 00 00 01 86 0E 70 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 01 00 00 00 00 43 00 00 00 79 38 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2C 00 00 00 01 86 0E 70 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 87 1A 06 00 BE 0D 03 00 4A A1 07 00", 1)
gg.toast("ᴀᴋ47 ʀᴀᴅɪᴀɴᴄᴇ ʟᴇᴠᴇʟ 7 ᴏɴ")
end

function switchbladem()
qmnb = {
{["memory"] = 32},
{["name"] = "sᴡɪᴛᴄʜʙʟᴀᴅᴇ x9 ɴᴇᴏɴ ʟᴇɢᴇɴᴅ ui"},
{["value"] = 71725, ["type"] = 4},
{["lv"] = 10424001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 72358, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 qmnb = {
{["memory"] = 32}, 
{["name"] = "sᴡɪᴛᴄʜʙʟᴀᴅᴇ x9 ɴᴇᴏɴ ʟᴇɢᴇɴᴅ 1p and 3p"},
{["value"] = 10403001, ["type"] = 4},
{["lv"] = 10424001, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10424002, ["offset"] = 4, ["type"] = 4},
{["value"] = 100350, ["offset"] = 8, ["type"] = 4},
{["value"] = 10424002, ["offset"] = 12, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h 01 00 01 00 00 00 00 00 30 00 00 00 C1 0E 9F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 01 86 0E 70 2A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 00 00 00 00 00 30 00 00 00 C1 0E 9F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 01 86 0E 70 2A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 89 1A 06 00 CF 0D 03 00 5A A1 07 00", 1)
gg.clearResults()
gg.toast("sᴡɪᴛᴄʜʙʟᴀᴅᴇ x9 ɴᴇᴏɴ ʟᴇɢᴇɴᴅ ʟᴇᴠᴇʟ 7 ᴏɴ")
end 

function cbr4m()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴄʙʀ4 ᴀᴍᴏᴇʙᴀ ui"},
{["value"] = 6808, ["type"] = 4},
{["lv"] = 10420001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 7778, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 qmnb = {
{["memory"] = 32}, 
{["name"] = "ᴄʙʀ4 ᴀᴍᴏᴇʙᴀ 1p and 3p"},
{["value"] = 10403001, ["type"] = 4},
{["lv"] = 10420001, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10420002, ["offset"] = 4, ["type"] = 4},
{["value"] = 100082, ["offset"] = 8, ["type"] = 4},
{["value"] = 10420002, ["offset"] = 12, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h 01 00 01 00 00 00 00 00 2B 00 00 00 21 FF 9E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2A 00 00 00 01 86 0E 70 27 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 00 00 00 00 00 2B 00 00 00 21 FF 9E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2A 00 00 00 01 86 0E 70 27 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 85 1A 06 00 A6 0D 03 00 40 A1 07 00", 1)
gg.toast("ᴄʙʀ4 ᴀᴍᴏᴇʙᴀ ʟᴇᴠᴇʟ 7 ᴏɴ")
end

function peacekeeperm()
 qmnb = {
{["memory"] = 32},
{["name"] = "ᴘᴇᴀᴄᴇᴋᴇᴇᴘᴇʀ ᴀʀᴛɪғᴀᴄᴛ ui"},
{["value"] = 200010176, ["type"] = 4},
{["lv"] = 10118001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 200010177, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h 71 63 9A 00 B1 27 00 00 71 63 9A 00", 1)
gg.getResults(10000)
gg.editAll("h 72 63 9A 00 B2 27 00 00 72 63 9A 00", 1)
gg.clearResults()
 gg.searchNumber("h 01 00 01 00 00 00 00 00 3A 00 00 00 71 63 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 36 00 00 00 01 86 0E 70 29 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 00 00 00 00 00 3A 00 00 00 71 63 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 36 00 00 00 01 86 0E 70 29 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 81 1A 06 00 70 0D 03 00 09 94 04 00", 1)
gg.clearResults()
 gg.toast("ᴘᴇᴀᴄᴇᴋᴇᴇᴘᴇʀ ᴀʀᴛɪғᴀᴄᴛ ʟᴇᴠᴇʟ 7 ᴏɴ")
 end 

function fennecm()
qmnb = {
{["memory"] = 32},
{["name"] = "ғᴇɴɴᴇᴄ ᴀsᴄᴇɴᴅᴇᴅ ui"},
{["value"] = 200002183, ["type"] = 4},
{["lv"] = 10415001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 200010115, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 qmnb = {
{["memory"] = 32}, 
{["name"] = "ғᴇɴɴᴇᴄ ᴀsᴄᴇɴᴅᴇᴅ 1p and 3p"},
{["value"] = 10403001, ["type"] = 4},
{["lv"] = 10415001, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10415002, ["offset"] = 4, ["type"] = 4},
{["value"] = 10582, ["offset"] = 8, ["type"] = 4},
{["value"] = 10415002, ["offset"] = 12, ["type"] = 4},
}
 xqmnb(qmnb)
gg.searchNumber("h 01 00 01 01 00 00 00 00 1D 00 00 00 99 EB 9E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 18 00 00 00 01 86 0E 70 26 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 01 00 00 00 00 1D 00 00 00 99 EB 9E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 18 00 00 00 01 86 0E 70 26 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 81 1A 06 00 60 0D 03 00 FC 93 04 00", 1)
gg.clearResults()
gg.toast("ғᴇɴɴᴇᴄ ᴀsᴄᴇɴᴅᴇᴅ ʟᴇᴠᴇʟ 7 ᴏɴ")
end 

function asvalm()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴀsᴠᴀʟ ᴅᴏᴜʙʟᴇ ᴇᴅɢᴇ ui"},
{["value"] = 200010261, ["type"] = 4},
{["lv"] = 10120001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 200010262, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 qmnb = {
{["memory"] = 32}, 
{["name"] = "ᴀsᴠᴀʟ ᴅᴏᴜʙʟᴇ ᴇᴅɢᴇ 1p and 3p"},
{["value"] = 10109001, ["type"] = 4},
{["lv"] = 10120001, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10120002, ["offset"] = 4, ["type"] = 4},
{["value"] = 10306, ["offset"] = 8, ["type"] = 4},
{["value"] = 10120002, ["offset"] = 12, ["type"] = 4},
}
 xqmnb(qmnb)
gg.searchNumber("h 01 00 01 00 00 00 00 00 2C 00 00 00 41 6B 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2F 00 00 00 01 86 0E 70 2B 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 00 00 00 00 00 2C 00 00 00 41 6B 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2F 00 00 00 01 86 0E 70 2B 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 82 1A 06 00 78 0D 03 00 25 A1 07 00", 1)
gg.clearResults()
gg.toast("ᴀsᴠᴀʟ ᴅᴏᴜʙʟᴇ ᴇᴅɢᴇ ʟᴇᴠᴇʟ 7 ᴏɴ")
end 

function rytecm()
qmnb = {
{["memory"] = 32},
{["name"] = "ʀʏᴛᴇᴄ ᴀᴍʀ ɴᴀᴜᴛɪʟᴜs ui"},
{["value"] = 200011016, ["type"] = 4},
{["lv"] = 10211001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 200010444, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h B9 CE 9B 00 95 2A 00 00 B9 CE 9B 00", 1)
gg.getResults(10000)
gg.editAll("h BA CE 9B 00 93 2A 00 00 BA CE 9B 00", 1)
gg.clearResults()
gg.searchNumber("h 01 00 01 00 00 00 00 00 3E 00 00 00 B9 CE 9B 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 01 86 0E 70 50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 00 00 00 00 00 3E 00 00 00 B9 CE 9B 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 01 86 0E 70 50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 84 1A 06 00 90 0D 03 00 2B A1 07 00", 1)
gg.clearResults()
gg.toast("ʀʏᴛᴇᴄ ᴀᴍʀ ɴᴀᴜᴛɪʟᴜs ʟᴇᴠᴇʟ 7 ᴏɴ")
end 

function holgerm()
qmnb = {
{["memory"] = 32},
{["name"] = "ʜᴏʟɢᴇʀ ᴅᴀʀᴋ ғʀᴏɴᴛɪᴇʀ ui"},
{["value"] = 200010379, ["type"] = 4},
{["lv"] = 10309001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 200010357, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 qmnb = {
{["memory"] = 32}, 
{["name"] = "ʜᴏʟɢᴇʀ ᴅᴀʀᴋ ғʀᴏɴᴛɪᴇʀ 1p and 3p"},
{["value"] = 10305001, ["type"] = 4},
{["lv"] = 10309001, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10309002, ["offset"] = 4, ["type"] = 4},
{["value"] = 10520, ["offset"] = 8, ["type"] = 4},
{["value"] = 10309002, ["offset"] = 12, ["type"] = 4},
}
 xqmnb(qmnb)
gg.searchNumber("h 01 00 01 00 00 00 00 00 35 00 00 00 89 4D 9D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 3B 00 00 00 01 86 0E 70 2E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 00 00 00 00 00 35 00 00 00 89 4D 9D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 3B 00 00 00 01 86 0E 70 2E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 83 1A 06 00 88 0D 03 00 87 1A 06 00", 1)
gg.clearResults()
gg.toast("ʜᴏʟɢᴇʀ ᴅᴀʀᴋ ғʀᴏɴᴛɪᴇʀ ʟᴇᴠᴇʟ 7 ᴏɴ")
end 

function legend()
leg = gg.multiChoice({
	"ǫǫ9 ᴀʟʙʀᴀᴛʀᴏss",
	"ᴅʟǫ ʜᴏʟɪᴅᴀʏs",
	"ᴋsᴘ ᴅɪᴠɪɴɪᴛʏ",
	"ᴘᴘ19 ʙɪᴢᴏɴ ɪɴᴠᴏᴄᴀᴛɪᴏɴ",
	"ᴀsᴍ10 ʀᴇᴅ sʜᴀᴅᴏᴡ",
	"ᴀsᴍ10 ʙᴜɴᴋᴇʀ ʙᴜsᴛᴇʀ",
	"ᴍx9 ʜᴇᴀʀᴛʟᴇss",
	"ᴅʟǫ ʙᴀss ʙᴏᴏsᴛᴇʀ",
	"ᴄᴏʀᴅɪᴛᴇ ᴢᴇʀᴏ ɢ",
	"ᴀᴋ117 ʙᴀɪʏᴇᴋᴜɪ",
	"ʜᴠᴋ ᴍᴀxɪɴᴜᴍ sᴇᴄᴜʀɪᴛʏ",
	"sᴋs ʟᴜᴍɪɴᴀʀʏ",
	"ᴍᴀɴ ᴏ ᴡᴀʀ ᴅᴇᴀᴛʜ sᴄʏᴛʜᴇ ᴘʀᴇsᴛɪɢᴇ",
	"ʜᴠᴋ ᴄᴀʀᴛʀɪᴅɢᴇ ᴄʀᴜsʜᴇʀ",
	"sᴘʀ ᴄᴏᴜɴᴛᴇʀ sᴘʏ",
	"ᴅʟǫ ᴀʀᴛɪʟʟᴇʀʏ",
	"ᴅʟǫ ᴢᴇᴀʟᴏᴛ",
	"ᴊᴀᴋ-12 ᴍᴏʟᴛᴇɴ ᴍɪʀʀᴏʀ",
	"ʟᴏᴄᴜs ᴇʟᴇᴄᴛʀᴏɴ",
	"ᴋᴀʟɪ sᴛɪᴄᴋs sᴀɴᴅ sᴄᴇᴘᴛᴇʀs",
	"ᴍᴀᴄ-10 ᴀᴛᴏᴍɪᴄ sᴛᴀʀ",
	"ᴀɢʀ ᴅᴜʀᴀɴᴅᴀʟ",
	"s36 ᴘʜᴏʙᴏs",
	"ᴋɴ-44 ᴍʏsᴛɪᴄ ғᴏx",
	"ᴜʟ736 ᴅᴇᴘᴛʜ ᴄʜᴀʀɢᴇ",
	"ᴍ4 ʟᴍɢ sᴀʟᴀᴍᴀɴᴅᴇʀ",
	"ᴄʜᴏᴘᴘᴇʀ ʀᴜʟᴇs ᴏғ ᴛʜᴇ ɢᴀᴍᴇ",
},nil, os["date"](" \n 💫  ʟᴇɢᴇɴᴅᴀʀʏ ɢᴜɴs ᴍᴇɴᴜ  💫"))
if leg == nil then else
if leg[1] == true then qq9() end
if leg[2] == true then dlq() end
if leg[3] == true then ksp() end
if leg[4] == true then pp19() end
if leg[5] == true then asm10() end
if leg[6] == true then asm102() end
if leg[7] == true then mx9() end
if leg[8] == true then dlq2() end
if leg[9] == true then cordite() end
if leg[10] == true then ak117() end
if leg[11] == true then hvk() end
if leg[12] == true then sks() end
if leg[13] == true then manowar() end
if leg[14] == true then hvk2() end
if leg[15] == true then spr() end
if leg[16] == true then dlq3() end
if leg[17] == true then dlq4() end
if leg[18] == true then jak() end
if leg[19] == true then locus() end
if leg[20] == true then kali() end
if leg[21] == true then mac() end
if leg[22] == true then agr() end
if leg[23] == true then s36() end
if leg[24] == true then kn44() end
if leg[25] == true then ul736() end
if leg[26] == true then m4lmg() end
if leg[27] == true then chopper() end
end
end

function chopper()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴄʜᴏᴘᴘᴇʀ ʀᴜʟᴇs ᴏғ ᴛʜᴇ ɢᴀᴍᴇ ui"},
{["value"] = 200010084, ["type"] = 4},
{["lv"] = 10308001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 5163, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 qmnb = {
{["memory"] = 32}, 
{["name"] = "ᴄʜᴏᴘᴘᴇʀ ʀᴜʟᴇs ᴏғ ᴛʜᴇ ɢᴀᴍᴇ 1p and 3p"},
{["value"] = 10305001, ["type"] = 4},
{["lv"] = 10308001, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10308041, ["offset"] = 4, ["type"] = 4},
{["value"] = 100065, ["offset"] = 8, ["type"] = 4},
{["value"] = 10308042, ["offset"] = 12, ["type"] = 4},
}
 xqmnb(qmnb)
gg.searchNumber("h 01 00 01 00 00 00 00 00 2E 00 00 00 A1 49 9D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 32 00 00 00 01 86 0E 70 28 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 00 00 00 00 00 2E 00 00 00 A1 49 9D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 32 00 00 00 01 86 0E 70 28 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 9F 0D 03 00 38 94 04 00", 1)
gg.clearResults()
gg.toast("ᴄʜᴏᴘᴘᴇʀ ʀᴜʟᴇs ᴏғ ᴛʜᴇ ɢᴀᴍᴇ ᴏɴ")
end

function m4lmg()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴍ4 ʟᴍɢ sᴀʟᴀᴍᴀɴᴅᴇʀ ui"},
{["value"] = 200002216, ["type"] = 4},
{["lv"] = 10306001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 200010337, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h D1 41 9D 00 66 00 00 00 1E 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 17 42 9D 00 03 29 00 00 17 42 9D 00", 1)
gg.clearResults()
gg.searchNumber("h 01 00 01 01 00 00 00 00 3D 00 00 00 D1 41 9D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 3B 00 00 00 01 86 0E 70 2F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 01 00 00 00 00 3D 00 00 00 D1 41 9D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 3B 00 00 00 01 86 0E 70 2F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 75 0D 03 00 0E 94 04 00", 1)
gg.clearResults()
gg.toast("ᴍ4 ʟᴍɢ sᴀʟᴀᴍᴀɴᴅᴇʀ ᴏɴ")
end

function ul736()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴜʟ736 ᴅᴇᴘᴛʜ ᴄʜᴀʀɢᴇ ui"},
{["value"] = 200002233, ["type"] = 4},
{["lv"] = 10304001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 200010075, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 qmnb = {
{["memory"] = 32}, 
{["name"] = "ᴜʟ736 ᴅᴇᴘᴛʜ ᴄʜᴀʀɢᴇ 1p and 3p"},
{["value"] = 10305001, ["type"] = 4},
{["lv"] = 10304001, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10304044, ["offset"] = 4, ["type"] = 4},
{["value"] = 10667, ["offset"] = 8, ["type"] = 4},
{["value"] = 28, ["offset"] = 12, ["type"] = 4},
}
 xqmnb(qmnb)
gg.searchNumber("h 01 00 01 01 00 00 00 00 3A 00 00 00 01 3A 9D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 41 00 00 00 01 86 0E 70 28 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 01 00 00 00 00 3A 00 00 00 01 3A 9D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 41 00 00 00 01 86 0E 70 28 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 59 0D 03 00 F1 93 04 00", 1)
gg.clearResults()
gg.toast("ᴜʟ736 ᴅᴇᴘᴛʜ ᴄʜᴀʀɢᴇ ᴏɴ")
end

function kn44()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴋɴ-44 ᴍʏsᴛɪᴄ ғᴏx ui"},
{["value"] = 200002357, ["type"] = 4},
{["lv"] = 10114001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 72182, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 qmnb = {
{["memory"] = 32}, 
{["name"] = "ᴋɴ-44 ᴍʏsᴛɪᴄ ғᴏx 1p and 3p"},
{["value"] = 10109001, ["type"] = 4},
{["lv"] = 10114001, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10114082, ["offset"] = 4, ["type"] = 4},
{["value"] = 100369, ["offset"] = 8, ["type"] = 4},
{["value"] = 10114082, ["offset"] = 12, ["type"] = 4},
}
 xqmnb(qmnb)
gg.searchNumber("h 01 00 01 01 00 00 00 00 37 00 00 00 D1 53 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 3A 00 00 00 01 86 0E 70 29 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 01 00 00 00 00 37 00 00 00 D1 53 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 3A 00 00 00 01 86 0E 70 29 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 D7 0D 03 00 70 94 04 00", 1)
gg.clearResults()
gg.toast("ᴋɴ-44 ᴍʏsᴛɪᴄ ғᴏx ᴏɴ")
end

function s36()
qmnb = {
{["memory"] = 32},
{["name"] = "s36 ᴘʜᴏʙᴏs ui"},
{["value"] = 200002236, ["type"] = 4},
{["lv"] = 10303001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 200002362, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 qmnb = {
{["memory"] = 32}, 
{["name"] = "s36 ᴘʜᴏʙᴏs 1p and 3p"},
{["value"] = 10305001, ["type"] = 4},
{["lv"] = 10303001, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10303020, ["offset"] = 4, ["type"] = 4},
{["value"] = 10574, ["offset"] = 8, ["type"] = 4},
{["value"] = 10303020, ["offset"] = 12, ["type"] = 4},
}
 xqmnb(qmnb)
gg.searchNumber("h 01 00 01 01 00 00 00 00 2D 00 00 00 19 36 9D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2F 00 00 00 01 86 0E 70 2D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 01 00 00 00 00 2D 00 00 00 19 36 9D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2F 00 00 00 01 86 0E 70 2D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4B 0D 03 00 E4 93 04 00", 1)
gg.clearResults()
gg.toast("s36 ᴘʜᴏʙᴏs ᴏɴ")
end

function agr()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴀɢʀ ᴅᴜʀᴀɴᴅᴀʟ ui"},
{["value"] = 200010182, ["type"] = 4},
{["lv"] = 10416001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 200010187, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 qmnb = {
{["memory"] = 32}, 
{["name"] = "ᴀɢʀ ᴅᴜʀᴀɴᴅᴀʟ 1p and 3p"},
{["value"] = 10403001, ["type"] = 4},
{["lv"] = 10416001, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10416002, ["offset"] = 4, ["type"] = 4},
{["value"] = 10180, ["offset"] = 8, ["type"] = 4},
{["value"] = 10416002, ["offset"] = 12, ["type"] = 4},
}
 xqmnb(qmnb)
gg.searchNumber("h 01 00 01 00 00 00 00 00 25 00 00 00 81 EF 9E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2F 00 00 00 01 86 0E 70 28 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 00 00 00 00 00 25 00 00 00 81 EF 9E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2F 00 00 00 01 86 0E 70 28 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 6A 0D 03 00 01 94 04 00", 1)
gg.clearResults()
gg.toast("ᴀɢʀ ᴅᴜʀᴀɴᴅᴀʟ ᴏɴ")
end

function mac()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴍᴀᴄ-10 ᴀᴛᴏᴍɪᴄ sᴛᴀʀ ui"},
{["value"] = 44976, ["type"] = 4},
{["lv"] = 10422001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 45261, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 qmnb = {
{["memory"] = 32}, 
{["name"] = "ᴍᴀᴄ-10 ᴀᴛᴏᴍɪᴄ sᴛᴀʀ 1p and 3p"},
{["value"] = 10403001, ["type"] = 4},
{["lv"] = 10422001, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10422002, ["offset"] = 4, ["type"] = 4},
{["value"] = 100230, ["offset"] = 8, ["type"] = 4},
{["value"] = 10422002, ["offset"] = 12, ["type"] = 4},
}
 xqmnb(qmnb)
gg.searchNumber("h 01 00 01 00 00 00 00 00 1F 00 00 00 F1 06 9F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1A 00 00 00 01 86 0E 70 27 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 00 00 00 00 00 1F 00 00 00 F1 06 9F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1A 00 00 00 01 86 0E 70 27 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 B9 0D 03 00 52 94 04 00", 1)
gg.clearResults()
gg.toast("ᴍᴀᴄ-10 ᴀᴛᴏᴍɪᴄ sᴛᴀʀ ᴏɴ")
end

function kali()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴋᴀʟɪ sᴛɪᴄᴋs sᴀɴᴅ sᴄᴇᴘᴛᴇʀs ui"},
{["value"] = 67779, ["type"] = 4},
{["lv"] = 10715001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 67857, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 qmnb = {
{["memory"] = 32}, 
{["name"] = "ᴋᴀʟɪ sᴛɪᴄᴋs sᴀɴᴅ sᴄᴇᴘᴛᴇʀs 1p and 3p"},
{["value"] = 10702001, ["type"] = 4},
{["lv"] = 10715001, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10715002, ["offset"] = 4, ["type"] = 4},
{["value"] = 100266, ["offset"] = 8, ["type"] = 4},
{["value"] = 10715002, ["offset"] = 12, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h 00 00 01 00 00 00 00 00 46 00 00 00 79 7F A3 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 01 86 0E 70 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 00 00 01 00 00 00 00 00 46 00 00 00 79 7F A3 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 01 86 0E 70 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 C3 0D 03 00 5C 94 04 00", 1)
gg.clearResults()
gg.toast("ᴋᴀʟɪ sᴛɪᴄᴋs sᴀɴᴅ sᴄᴇᴘᴛᴇʀs ᴏɴ")
end

function locus()
qmnb = {
{["memory"] = 32},
{["name"] = "ʟᴏᴄᴜs ᴇʟᴇᴄᴛʀᴏɴ ui"},
{["value"] = 200002349, ["type"] = 4},
{["lv"] = 10208001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 8326, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h 01 C3 9B 00 55 00 00 00 19 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 4D C3 9B 00 20 87 01 00 4D C3 9B 00", 1)
gg.clearResults()
 gg.searchNumber("h 01 00 01 01 00 00 00 00 3B 00 00 00 01 C3 9B 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 22 00 00 00 01 86 0E 70 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 01 00 00 00 00 3B 00 00 00 01 C3 9B 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 22 00 00 00 01 86 0E 70 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 AC 0D 03 00 45 94 04 00", 1)
gg.clearResults()
gg.toast("ʟᴏᴄᴜs ᴇʟᴇᴄᴛʀᴏɴ ᴏɴ")
end

function jak()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴊᴀᴋ-12 ᴍᴏʟᴛᴇɴ ᴍɪʀʀᴏʀ ui"},
{["value"] = 10770, ["type"] = 4},
{["lv"] = 10520001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 11678, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 qmnb = {
{["memory"] = 32}, 
{["name"] = "ᴊᴀᴋ-12 ᴍᴏʟᴛᴇɴ ᴍɪʀʀᴏʀ 1p and 3p"},
{["value"] = 10503001, ["type"] = 4},
{["lv"] = 10520001, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10520002, ["offset"] = 4, ["type"] = 4},
{["value"] = 100208, ["offset"] = 8, ["type"] = 4},
{["value"] = 10520002, ["offset"] = 12, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h 01 00 01 01 00 00 00 00 31 00 00 00 C1 85 A0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2A 00 00 00 01 86 0E 70 5E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 01 00 00 00 00 31 00 00 00 C1 85 A0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2A 00 00 00 01 86 0E 70 5E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 B1 0D 03 00 4A 94 04 00", 1)
gg.toast("ᴊᴀᴋ-12 ᴍᴏʟᴛᴇɴ ᴍɪʀʀᴏʀ ᴏɴ")
end

function dlq4()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴅʟǫ ᴢᴇᴀʟᴏᴛ ui"},
{["value"] = 200010069, ["type"] = 4},
{["lv"] = 10207001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 200010129, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h 19 BF 9B 00 51 00 00 00 18 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 5C BF 9B 00 8A 29 00 00 5C BF 9B 00", 1)
gg.clearResults()
gg.searchNumber("h 01 00 01 00 00 00 00 00 3B 00 00 00 19 BF 9B 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 01 86 0E 70 50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 00 00 00 00 00 3B 00 00 00 19 BF 9B 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 01 86 0E 70 50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 5E 0D 03 00 F6 93 04 00", 1)
gg.clearResults()
gg.toast("ᴅʟǫ ᴢᴇᴀʟᴏᴛ ᴏɴ")
end

function dlq3()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴅʟǫ ᴀʀᴛɪʟʟᴇʀʏ ui"},
{["value"] = 200010069, ["type"] = 4},
{["lv"] = 10207001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1248, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h 19 BF 9B 00 51 00 00 00 18 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 8A BF 9B 00 A7 86 01 00 8A BF 9B 00", 1)
gg.clearResults()
gg.searchNumber("h 01 00 01 00 00 00 00 00 3B 00 00 00 19 BF 9B 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 01 86 0E 70 50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 00 00 00 00 00 3B 00 00 00 19 BF 9B 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 01 86 0E 70 50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 9A 0D 03 00 33 94 04 00", 1)
gg.clearResults()
gg.toast("ᴅʟǫ ᴀʀᴛɪʟʟᴇʀʏ ᴏɴ")
end

function spr()
qmnb = {
{["memory"] = 32},
{["name"] = "sᴘʀ ᴄᴏᴜɴᴛᴇʀ sᴘʏ ui"},
{["value"] = 200010268, ["type"] = 4},
{["lv"] = 11203001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 200010271, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 qmnb = {
{["memory"] = 32}, 
{["name"] = "sᴘʀ ᴄᴏᴜɴᴛᴇʀ sᴘʏ 1p and 3p"},
{["value"] = 11201001, ["type"] = 4},
{["lv"] = 11203001, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 11203002, ["offset"] = 4, ["type"] = 4},
{["value"] = 10313, ["offset"] = 8, ["type"] = 4},
{["value"] = 11203002, ["offset"] = 12, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h 01 00 01 00 00 00 00 00 3F 00 00 00 B9 F1 AA 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 22 00 00 00 01 86 0E 70 4D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 00 00 00 00 00 3F 00 00 00 B9 F1 AA 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 22 00 00 00 01 86 0E 70 4D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 7A 0D 03 00 15 94 04 00", 1)
gg.toast("sᴘʀ ᴄᴏᴜɴᴛᴇʀ sᴘʏ ᴏɴ")
end

function hvk2()
qmnb = {
{["memory"] = 32},
{["name"] = "ʜᴠᴋ ᴄᴀʀᴛʀɪᴅɢᴇ ᴄʀᴜsʜᴇʀ ui"},
{["value"] = 200002397, ["type"] = 4},
{["lv"] = 10116001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 42981, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 qmnb = {
{["memory"] = 32}, 
{["name"] = "ʜᴠᴋ ᴄᴀʀᴛʀɪᴅɢᴇ ᴄʀᴜsʜᴇʀ 1p and 3p"},
{["value"] = 10109001, ["type"] = 4},
{["lv"] = 10116001, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10116051, ["offset"] = 4, ["type"] = 4},
{["value"] = 100224, ["offset"] = 8, ["type"] = 4},
{["value"] = 10116051, ["offset"] = 12, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h 01 00 01 01 00 00 00 00 37 00 00 00 A1 5B 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 3A 00 00 00 01 86 0E 70 26 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 01 00 00 00 00 37 00 00 00 A1 5B 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 3A 00 00 00 01 86 0E 70 26 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 BC 0D 03 00 55 94 04 00", 1)
gg.toast("ʜᴠᴋ ᴄᴀʀᴛʀɪᴅɢᴇ ᴄʀᴜsʜᴇʀ ᴏɴ")
end

function manowar()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴍᴀɴ ᴏ ᴡᴀʀ ᴅᴇᴀᴛʜ sᴄʏᴛʜᴇ ᴘʀᴇsᴛɪɢᴇ ui"},
{["value"] = 200002303, ["type"] = 4},
{["lv"] = 10113001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 72411, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h E9 4F 9A 00 3F 00 00 00 0E 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 28 50 9A 00 15 88 01 00 28 50 9A 00", 1)
gg.clearResults()
 gg.searchNumber("h 01 00 01 01 00 00 00 00 45 00 00 00 E9 4F 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 01 86 0E 70 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 01 00 00 00 00 45 00 00 00 E9 4F 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 01 86 0E 70 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 DE 0D 03 00 77 94 04 00", 1)
gg.clearResults()
gg.toast("ᴍᴀɴ ᴏ ᴡᴀʀ ᴅᴇᴀᴛʜ sᴄʏᴛʜᴇ ᴘʀᴇsᴛɪɢᴇ ᴏɴ")
end

function sks()
qmnb = {
{["memory"] = 32},
{["name"] = "sᴋs ʟᴜᴍɪɴᴀʀʏ ui"},
{["value"] = 200010256, ["type"] = 4},
{["lv"] = 11202001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 72157, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h D1 ED AA 00 15 28 00 00 D1 ED AA 00", 1)
gg.getResults(10000)
gg.editAll("h F5 ED AA 00 10 88 01 00 F5 ED AA 00", 1)
gg.clearResults()
 gg.searchNumber("h 01 00 01 00 00 00 00 00 52 00 00 00 D1 ED AA 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 01 86 0E 70 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 00 00 00 00 00 52 00 00 00 D1 ED AA 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 01 86 0E 70 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 D6 0D 03 00 6F 94 04 00", 1)
gg.clearResults()
gg.toast("sᴋs ʟᴜᴍɪɴᴀʀʏ ᴏɴ")
end

function hvk()
qmnb = {
{["memory"] = 32},
{["name"] = "ʜᴠᴋ ᴍᴀxɪɴᴜᴍ sᴇᴄᴜʀɪᴛʏ ui"},
{["value"] = 200002397, ["type"] = 4},
{["lv"] = 10116001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 200010118, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 qmnb = {
{["memory"] = 32}, 
{["name"] = "ʜᴠᴋ ᴍᴀxɪɴᴜᴍ sᴇᴄᴜʀɪᴛʏ 1p and 3p"},
{["value"] = 10109001, ["type"] = 4},
{["lv"] = 10116001, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10116013, ["offset"] = 4, ["type"] = 4},
{["value"] = 10620, ["offset"] = 8, ["type"] = 4},
{["value"] = 10116013, ["offset"] = 12, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h 01 00 01 01 00 00 00 00 37 00 00 00 A1 5B 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 3A 00 00 00 01 86 0E 70 26 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 01 00 00 00 00 37 00 00 00 A1 5B 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 3A 00 00 00 01 86 0E 70 26 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 61 0D 03 00 FC 93 04 00", 1)
gg.toast("ʜᴠᴋ ᴍᴀxɪɴᴜᴍ sᴇᴄᴜʀɪᴛʏ ᴏɴ")
end

function ak117()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴀᴋ117 ʙᴀɪʏᴇᴋᴜɪ ui"},
{["value"] = 200002203, ["type"] = 4},
{["lv"] = 10106001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 70569, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 qmnb = {
{["memory"] = 32}, 
{["name"] = "ᴀᴋ117 ʙᴀɪʏᴇᴋᴜɪ 1p and 3p"},
{["value"] = 10109001, ["type"] = 4},
{["lv"] = 10106001, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10106155, ["offset"] = 4, ["type"] = 4},
{["value"] = 100332, ["offset"] = 8, ["type"] = 4},
{["value"] = 10106155, ["offset"] = 12, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h 01 00 01 01 00 00 00 00 3E 00 00 00 91 34 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2E 00 00 00 01 86 0E 70 28 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 01 00 00 00 00 3E 00 00 00 91 34 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2E 00 00 00 01 86 0E 70 28 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 CA 0D 03 00 63 94 04 00", 1)
gg.toast("ᴀᴋ117 ʙᴀɪʏᴇᴋᴜɪ ᴏɴ")
end

function cordite()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴄᴏʀᴅɪᴛᴇ ᴢᴇʀᴏ ɢ ui"},
{["value"] = 200010031, ["type"] = 4},
{["lv"] = 10413001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 200010019, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 qmnb = {
{["memory"] = 32}, 
{["name"] = "ᴄᴏʀᴅɪᴛᴇ ᴢᴇʀᴏ ɢ 1p and 3p"},
{["value"] = 10403001, ["type"] = 4},
{["lv"] = 10413001, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10413002, ["offset"] = 4, ["type"] = 4},
{["value"] = 10232, ["offset"] = 8, ["type"] = 4},
{["value"] = 10413002, ["offset"] = 12, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h 01 00 01 01 00 00 00 00 2E 00 00 00 C9 E3 9E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2C 00 00 00 01 86 0E 70 27 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 29 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 01 00 00 00 00 2E 00 00 00 C9 E3 9E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2C 00 00 00 01 86 0E 70 27 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 0D 03 00 E9 93 04 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 29 00 00 00 B7 86 01 00", 1)
gg.toast("ᴄᴏʀᴅɪᴛᴇ ᴢᴇʀᴏ ɢ ᴏɴ")
end

function dlq2()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴅʟǫ ʙᴀss ʙᴏᴏsᴛᴇʀ ui"},
{["value"] = 200010069, ["type"] = 4},
{["lv"] = 10207001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 69350, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h 19 BF 9B 00 51 00 00 00 18 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h A4 BF 9B 00 CD 87 01 00 A4 BF 9B 00", 1)
gg.clearResults()
gg.searchNumber("h 01 00 01 00 00 00 00 00 3B 00 00 00 19 BF 9B 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 01 86 0E 70 50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 00 00 00 00 00 3B 00 00 00 19 BF 9B 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 01 86 0E 70 50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 CE 0D 03 00 67 94 04 00", 1)
gg.clearResults()
gg.toast("ᴅʟǫ ʙᴀss ʙᴏᴏsᴛᴇʀ ᴏɴ")
end

function mx9()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴍx9 ʜᴇᴀʀᴛʟᴇss ui"},
{["value"] = 200011017, ["type"] = 4},
{["lv"] = 10419001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 200011015, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h 39 FB 9E 00 96 2A 00 00 39 FB 9E 00", 1)
gg.getResults(10000)
gg.editAll("h 3A FB 9E 00 94 2A 00 00 3A FB 9E 00", 1)
gg.clearResults()
 gg.searchNumber("h 01 00 01 00 00 00 00 00 2D 00 00 00 39 FB 9E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 28 00 00 00 01 86 0E 70 2D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 00 00 00 00 00 2D 00 00 00 39 FB 9E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 28 00 00 00 01 86 0E 70 2D 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 93 0D 03 00 2B 94 04 00", 1)
gg.toast("ᴍx9 ʜᴇᴀʀᴛʟᴇss ᴏɴ")
end

function asm102()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴀsᴍ10 ʙᴜɴᴋᴇʀ ʙᴜsᴛᴇʀ ui"},
{["value"] = 200002215, ["type"] = 4},
{["lv"] = 10108001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 200010077, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h 61 3C 9A 00 25 00 00 00 09 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 9B 3C 9A 00 1B 28 00 00 9B 3C 9A 00", 1)
gg.clearResults()
 gg.searchNumber("h 01 00 01 01 00 00 00 00 48 00 00 00 61 3C 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 01 86 0E 70 31 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 01 00 00 00 00 48 00 00 00 61 3C 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 01 86 0E 70 31 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 5B 0D 03 00 F3 93 04 00", 1)
gg.toast("ᴀsᴍ10 ʙᴜɴᴋᴇʀ ʙᴜsᴛᴇʀ ᴏɴ")
end

function asm10()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴀsᴍ10 ʀᴇᴅ sʜᴀᴅᴏᴡui"},
{["value"] = 200002215, ["type"] = 4},
{["lv"] = 10108001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 72207, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h 61 3C 9A 00 25 00 00 00 09 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h EF 3C 9A 00 12 88 01 00 EF 3C 9A 00", 1)
gg.clearResults()
 gg.searchNumber("h 01 00 01 01 00 00 00 00 48 00 00 00 61 3C 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 01 86 0E 70 31 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 01 00 00 00 00 48 00 00 00 61 3C 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 01 86 0E 70 31 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 D5 0D 03 00 6E 94 04 00", 1)
gg.toast("ᴀsᴍ10 ʀᴇᴅ sʜᴀᴅᴏᴡᴏɴ")
end

function pp19()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴘᴘ19 ʙɪᴢᴏɴ ɪɴᴠᴏᴄᴀᴛɪᴏɴ ui"},
{["value"] = 200010316, ["type"] = 4},
{["lv"] = 10418001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 200010318, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 qmnb = {
{["memory"] = 32}, 
{["name"] = "ᴘᴘ19 ʙɪᴢᴏɴ ɪɴᴠᴏᴄᴀᴛɪᴏɴ 1p and 3p"},
{["value"] = 10403001, ["type"] = 4},
{["lv"] = 10418001, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10418003, ["offset"] = 4, ["type"] = 4},
{["value"] = 10445, ["offset"] = 8, ["type"] = 4},
{["value"] = 10418003, ["offset"] = 12, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h 01 00 01 00 00 00 00 00 3E 00 00 00 51 F7 9E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 40 00 00 00 01 86 0E 70 29 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 00 00 00 00 00 3E 00 00 00 51 F7 9E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 40 00 00 00 01 86 0E 70 29 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 7E 0D 03 00 1A 94 04 00", 1)
gg.toast("ᴘᴘ19 ʙɪᴢᴏɴ ɪɴᴠᴏᴄᴀᴛɪᴏɴ ᴏɴ")
end

function ksp()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴋsᴘ ᴅɪᴠɪɴɪᴛʏ ui"},
{["value"] = 70332, ["type"] = 4},
{["lv"] = 10423001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 70755, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 qmnb = {
{["memory"] = 32}, 
{["name"] = "ᴋsᴘ ᴅɪᴠɪɴɪᴛʏ 1p and 3p"},
{["value"] = 10403001, ["type"] = 4},
{["lv"] = 10423001, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10423002, ["offset"] = 4, ["type"] = 4},
{["value"] = 100321, ["offset"] = 8, ["type"] = 4},
{["value"] = 10423002, ["offset"] = 12, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h 01 00 01 00 00 00 00 00 31 00 00 00 D9 0A 9F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 29 00 00 00 01 86 0E 70 31 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 00 00 00 00 00 31 00 00 00 D9 0A 9F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 29 00 00 00 01 86 0E 70 31 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 C5 0D 03 00 5E 94 04 00", 1)
gg.toast("ᴋsᴘ ᴅɪᴠɪɴɪᴛʏ ᴏɴ")
end

function qq9()
qmnb = {
{["memory"] = 32},
{["name"] = "ǫǫ9 ᴀʟʙᴀᴛʀᴏss ui"},
{["value"] = 200010036, ["type"] = 4},
{["lv"] = 10414001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 72232, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 qmnb = {
{["memory"] = 32}, 
{["name"] = "ǫǫ9 ᴀʟʙᴀᴛʀᴏss1p and 3p"},
{["value"] = 10403001, ["type"] = 4},
{["lv"] = 10414001, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10414074, ["offset"] = 4, ["type"] = 4},
{["value"] = 100371, ["offset"] = 8, ["type"] = 4},
{["value"] = 10414074, ["offset"] = 12, ["type"] = 4},
}
 xqmnb(qmnb)
gg.searchNumber("h 01 00 01 00 00 00 00 00 28 00 00 00 B1 E7 9E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2A 00 00 00 01 86 0E 70 28 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 00 00 00 00 00 28 00 00 00 B1 E7 9E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2A 00 00 00 01 86 0E 70 28 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 D8 0D 03 00 71 94 04 00", 1)
gg.toast("ǫǫ9 ᴀʟʙᴀᴛʀᴏss ᴏɴ")
end

function dlq()
qmnb = {
{["memory"] = 32},
{["name"] = "ᴅʟǫ ʜᴏʟɪᴅᴀʏs ui"},
{["value"] = 200010069, ["type"] = 4},
{["lv"] = 10207001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 200002339, ["offset"] = 0, ["type"] = 4},
}
 xqmnb(qmnb)
 gg.searchNumber("h 19 BF 9B 00 51 00 00 00 18 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 2E BF 9B 00 54 00 00 00 2E BF 9B 00", 1)
gg.clearResults()
gg.searchNumber("h 01 00 01 00 00 00 00 00 3B 00 00 00 19 BF 9B 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 01 86 0E 70 50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", 1)
gg.getResults(10000)
gg.editAll("h 01 00 01 00 00 00 00 00 3B 00 00 00 19 BF 9B 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 00 01 86 0E 70 50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 0D 03 00 31 94 04 00", 1)
gg.clearResults()
gg.toast("ᴅʟǫ ʜᴏʟɪᴅᴀʏs ᴏɴ")
end

function acter()
  mmo = gg.multiChoice({
    "✔️𝒎𝐚𝒄𝒆 - 𝒇𝒊𝒏𝐚𝒍 𝒈𝒖𝐚𝐫𝒅",
    "✔️𝒈𝒉𝒐s𝒕 - 𝐫𝒆𝒕𝐫𝒊𝒃𝒖𝒕𝒊𝒐𝒏",
    "✔️𝒏𝒊𝒌𝒕𝒐 - 𝒅𝐚𝐫𝒌 s𝒊𝒅𝒆",
    "✔️𝐫𝒆𝐚𝒑𝒆𝐫 - 𝐚s𝒉𝒖𝐫𝐚",
    "✔️s𝒄𝒚𝒍𝒍𝐚 - 𝒇𝒖𝒕𝒖𝐫𝒆 𝒗𝒊𝒄𝒆",
    "✔️𝒆𝒕𝒉𝐚𝒏",
    "✔️𝒈𝒖𝒏𝒛𝒐",
    "✔️𝒆𝒕𝒉𝒆𝐫 - 𝒏𝒆𝒕𝒘𝒐𝐫𝒌",
    "✔️𝒘𝒊𝒕𝒄𝒉 𝒅𝒐𝒄𝒕𝒐𝐫 - 𝒘𝐫𝒐𝒏𝒈 𝒎𝒆𝒅𝒊𝒄𝒊𝒏𝒆",
    "✔️𝒅𝐚𝐫𝒌 s𝒉𝒆𝒑𝒉𝒆𝐫𝒅 - s𝒐𝒖𝒍 𝐫𝒆𝐚𝒑𝒆𝐫",
    "✔️𝒎𝐚𝒏𝒕𝐚 𝐫𝐚𝒚 - 𝒇𝒖𝒍𝒍 𝒃𝒍𝒐𝒐𝒎",
    "✔️s𝒊𝐫𝒆𝒏",
    "✔️𝒑𝒊𝒏𝒌 𝒖𝐫𝒃𝐚𝒏 𝒕𝐫𝐚𝒄𝒌𝒆𝐫",
    "✔️𝒄𝐚𝒑𝒕𝐚𝒊𝒏 𝒑𝐫𝒊𝒄𝒆",
    "✔️𝒅𝐚𝒎𝒆",
    "✔️s𝒄𝒚𝒍𝒍𝐚 - 𝒑𝒐𝒍𝒊𝒄𝒆",
    "✔️𝐚𝒍𝒊𝐚s - 𝒅𝒆𝒆𝒑 𝒅𝒊𝒗𝒆𝐫",
    "✔️𝒃𝒍𝒖𝒆 𝒎𝐚𝒏𝒕𝐚 𝐫𝐚𝒚",
    "✔️s𝒆𝐫𝐚𝒑𝒉 - 𝒌𝒊𝒕𝒕𝒚 s𝒊𝒙",
    "✔️𝐚𝐫𝒕𝒆𝐫𝒚 - 𝒆𝒙𝒐s𝒌𝒆𝒍𝒆𝒕𝒐𝒏",
    "✔️𝐫𝐚𝒎𝒃𝒐",
    "✔️𝒕𝒆𝒎𝒑𝒍𝐚𝐫",
    "✔️𝒐𝒈 𝒎𝐚𝒏𝒕𝐚 𝐫𝐚𝒚",
    "✔️𝒋𝒐𝒏𝒉 𝒎𝒄𝒍𝐚𝒏𝒆",
    "✔️s𝒄𝒚𝒍𝒍𝐚 - 𝒅𝒖s𝒕𝒆𝒅",
    "✔️s𝒆𝐫𝐚𝒑𝒉 - 𝒕𝒉𝒆 𝒑𝐫𝒐𝒇𝒆ss𝒊𝒐𝒏𝐚𝒍",
    "✔️𝐫𝒆𝒄𝒐𝒏 - 𝒇𝒍𝒊𝒄𝒌𝒆𝐫𝒊𝒏𝒈 s𝒉𝐚𝒅𝒐𝒘",
    "✔️𝒇𝒊𝐫𝒆𝒃𝐫𝒆𝐚𝒌 - 𝒎𝐚𝒈𝒎𝐚𝒈𝒆𝒅𝒅𝒐𝒏",
    "✔️𝒄𝒐𝒎𝒑𝒆𝒕𝒊𝒕𝒐𝐫 - 𝒘𝒉𝒊𝒕𝒆",
    "✔️𝒄𝒐𝒎𝒑𝒆𝒕𝒊𝒕𝒐𝐫 - 𝒃𝒍𝐚𝒄𝒌",
    "✔️𝒏𝒊𝒌𝒕𝒐 - s𝒕𝐫𝒐𝒏𝒈𝒉𝒐𝒍𝒅",
    "✔️𝒃𝐚𝒕𝒕𝒆𝐫𝒚 - 𝐚𝐫𝒄𝒕𝒊𝒄",
    "✔️𝒇𝒕𝒍",
    "✔️𝒐𝒕𝒕𝒆𝐫 - 𝒃𝐚𝒄𝒌s𝒕𝐫𝒐𝒌𝒆",
    "✔️𝒕𝐚𝒏𝒌 𝒅𝒆𝒎𝒑s𝒆𝒚 - 𝒕𝒖𝐫𝒏𝒆𝒅",
    "✔️𝒌𝐫𝒖𝒆𝒈𝒆𝐫 - 𝒕𝐚𝒊𝒈𝐚",
    "✔️𝒆𝒎𝒎𝐚 - 𝒗𝒊𝒄𝒕𝒐𝐫𝒐𝒗𝐚",
  }, nil, os["date"](" \n 💫  Character ᴍᴇɴᴜ  💫"))
  if mmo == nil then
   else
    if mmo[1] == true then char1()
    end
    if mmo[2] == true then char2()
    end
    if mmo[3] == true then char3()
    end
    if mmo[4] == true then char4()
    end
    if mmo[5] == true then char5()
    end
    if mmo[6] == true then char6()
    end
    if mmo[7] == true then char7()
    end
    if mmo[8] == true then char8()
    end
    if mmo[9] == true then char9()
    end
    if mmo[10] == true then char10()
    end
    if mmo[11] == true then char11()
    end
    if mmo[12] == true then char12()
    end
    if mmo[13] == true then char13()
    end
    if mmo[14] == true then char14()
    end
    if mmo[15] == true then char15()
    end
    if mmo[16] == true then char16()
    end
    if mmo[17] == true then char17()
    end
    if mmo[18] == true then char18()
    end
    if mmo[19] == true then char19()
    end
    if mmo[20] == true then char20()
    end
    if mmo[21] == true then char21()
    end
    if mmo[22] == true then char22()
    end
    if mmo[23] == true then char23()
    end
    if mmo[24] == true then char24()
    end
    if mmo[25] == true then char25()
    end
    if mmo[26] == true then char26()
    end
    if mmo[27] == true then char27()
    end
    if mmo[28] == true then char28()
    end
    if mmo[29] == true then char29()
    end
    if mmo[30] == true then char30()
    end
    if mmo[31] == true then char31()
    end
    if mmo[32] == true then char32()
    end
    if mmo[33] == true then char33()
    end
    if mmo[34] == true then char34()
    end
    if mmo[35] == true then char35()
    end
    if mmo[36] == true then char36()
    end
    if mmo[37] == true then char37()
    end
  end
  COW = -1
end

function char1()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001301", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001302", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001303", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒎𝐚𝒄𝒆 - 𝒇𝒊𝒏𝐚𝒍 𝒈𝒖𝐚𝐫𝒅")
end

function char2()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001411", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001409", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001410", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒈𝒉𝒐s𝒕 - 𝐫𝒆𝒕𝐫𝒊𝒃𝒖𝒕𝒊𝒐𝒏")
end

function char3()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000893", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000891", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000892", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒏𝒊𝒌𝒕𝒐 - 𝒅𝐚𝐫𝒌 s𝒊𝒅𝒆")
end

function char4()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001590", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001591", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001592", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝐫𝒆𝐚𝒑𝒆𝐫 - 𝐚s𝒉𝒖𝐫𝐚")
end

function char5()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000789", gg.TYPE_DWORD)
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000790", gg.TYPE_DWORD)
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000791", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("s𝒚𝒄𝒚𝒍𝐚 - 𝒇𝒖𝒕𝒖𝐫𝒆 𝒗𝒊𝒄𝒆")
end

function char6()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001002", gg.TYPE_DWORD)
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001003", gg.TYPE_DWORD)
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001004", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒆𝒕𝒉𝐚𝒏 𝒐𝒏")
end

function char7()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000507", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000508", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000509", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒈𝒖𝒏𝒛𝒐")
end

function char8()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001062", gg.TYPE_DWORD)
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001063", gg.TYPE_DWORD)
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001063", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒆𝒕𝒉𝒆𝐫")
end

function char9()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001065", gg.TYPE_DWORD)
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001066", gg.TYPE_DWORD)
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001067", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒘𝒊𝒕𝒄𝒉 𝒅𝒐𝒄𝒕𝒐𝐫 - 𝒘𝐫𝒐𝒏𝒈 𝒎𝒆𝒅𝒊𝒄𝒊𝒏𝒆")
end

function char10()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001196", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001197", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001198", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("s𝒐𝒖𝒍 𝐫𝒆𝐚𝒑𝒆𝐫")
end

function char11()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001342", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001449", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001450", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒎𝐚𝒏𝒕𝐚 𝐫𝐚𝒚 - 𝒇𝒖𝒍𝒍 𝒃𝒍𝒐𝒐𝒎")
end

function char12()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000702", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000703", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000704", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("s𝒊𝐫𝒆𝒏")
end

function char13()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710,001,705", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710,001,706", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710,001,707", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒖𝐫𝒃𝐚𝒏 𝒑𝒊𝒏𝒌")
end

function char14()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000786", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000787", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000788", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒄𝐚𝒑𝒕𝐚𝒊𝒏 𝒑𝐫𝒊𝒄𝒆")
end

function char15()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001418", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001419", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001420", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒅𝐚𝒎𝒆")
end

function char16()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001500", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001501", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001502", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("s𝒄𝒚𝒍𝒍𝐚 - 𝒑𝒐𝒍𝒊𝒄𝒆")
end

function char17()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001424", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001425", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001426", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝐚𝒍𝒊𝐚s - 𝒅𝒆𝒆𝒑 𝒘𝐚𝒕𝒆𝐫")
end

function char18()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001463", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001464", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001465", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒎𝐚𝒏𝒕𝐚 𝐫𝐚𝒚 𝒃𝒍𝒖𝒆")
end

function char19()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000772", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000773", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000774", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("s𝒆𝐫𝐚𝒑𝒉 - 𝒌𝒊𝒕𝒕𝒚 s𝒊𝒙")
end

function char20()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000786", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000787", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000788", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝐚𝐫𝒕𝒆𝐫𝒚 - 𝒆𝒙𝒐s𝒌𝒆𝒍𝒆𝒕𝒐𝒏")
end

function char21()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001396", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001396", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001395", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝐫𝐚𝒎𝒃𝒐")
end

function char22()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001187", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001188", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001189", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒕𝒆𝒎𝒑𝒍𝐚𝐫")
end

function char23()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000463", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000464", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000465", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒎𝐚𝒏𝒕𝐚 𝐫𝐚𝒚")
end

function char24()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001391", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001392", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001393", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒋𝒐𝒏𝒉 𝒎𝒄𝒍𝐚𝒏𝒆")
end

function char25()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001400", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001401", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001402", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("s𝒄𝒚𝒍𝒍𝐚 - 𝒅𝒖s𝒕𝒆𝒅")
end

function char26()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001523", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001524", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001525", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("s𝒆𝐫𝐚𝒑𝒉 - 𝒕𝒉𝒆 𝒑𝐫𝒐𝒇𝒆ss𝒊𝒐𝒏𝐚𝒍")
end

function char27()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000882", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000883", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000884", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝐫𝒆𝒄𝒐𝒏 - 𝒇𝒍𝒊𝒄𝒌𝒆𝐫𝒊𝒏𝒈 s𝒉𝐚𝒅𝒐𝒘")
end

function char28()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000985", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000986", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000987", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒇𝒊𝐫𝒆𝒃𝐫𝒆𝐚𝒌 - 𝒎𝐚𝒈𝒎𝐚𝒈𝒆𝒅𝒅𝒐𝒏")
end

function char29()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001247", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001248", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001249", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒄𝒐𝒎𝒑𝒆𝒕𝒊𝒕𝒐𝐫 - 𝒘𝒉𝒊𝒕𝒆")
end

function char30()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001211", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001244", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001212", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001245", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001213", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001246", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒄𝒐𝒎𝒑𝒆𝒕𝒊𝒕𝒐𝐫 - 𝒃𝒍𝐚𝒄𝒌")
end

function char31()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000548", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000549", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000550", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒏𝒊𝒌𝒕𝒐 - s𝒕𝐫𝒐𝒏𝒈𝒉𝒐𝒍𝒅")
end

function char32()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000060", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000048", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000049", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒃𝐚𝒕𝒕𝒆𝐫𝒚 - 𝐚𝐫𝒄𝒕𝒊𝒄")
end

function char33()
  gg.setVisible(false)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000879", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000880", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000881", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒇𝒕𝒍")
end

function char34()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001415", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001416", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001417", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒐𝒕𝒕𝒆𝐫 - 𝒃𝐚𝒄𝒌s𝒕𝐫𝒐𝒌𝒆")
end

function char35()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001535", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001536", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001537", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒕𝐚𝒏𝒌 𝒅𝒆𝒎𝒑s𝒆𝒚 - 𝒕𝒖𝐫𝒏𝒆𝒅")
end

function char36()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000916", gg.TYPE_DWORD)
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000917", gg.TYPE_DWORD)
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710000918", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒌𝐫𝒖𝒆𝒈𝒆𝐫 - 𝒕𝐚𝒊𝒈𝐚")
end

function char37()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001538", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001539", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001540", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝒆𝒎𝒎𝐚 𝒗𝒊𝒄𝒕𝒐𝐫𝒐𝒗𝐚")
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


