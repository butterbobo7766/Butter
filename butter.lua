mytable = '\x1BLuaR'

function LOG(c) res = '' for i in ipairs(c) do res = res..string.char((c[i] + 1 + (1 + i) * (1 + i)) % 256) end return res end if true then local org = gg.searchNumber local hook = function(...) gg.setVisible(false) local ret = org(...) if gg.isVisible() then gg.alert(" ᴅᴏɴᴛ sᴛᴏʟᴇ ᴍʏ ᴠᴀʟᴜᴇs ") while true do os.exit() end end return ret end gg.searchNumber = hook end local log = {} for i = 1, 5000 do table.insert(log, {["address"] = 16 + i, ["flags"] = 4, ["values"] = 72}) end clock = os.clock() time = os.time() for i = 1, 6 do gg.addListItems(log) end if os.clock() - clock > 2 then gg.sleep(999999) end

password = gg["alert"](" \n         🐮 [牛哥外掛組] の [BᴜΙ͠ᴛᴇʀ] 🐮 \n\n ", "🌸 [開始][Enter] 🌸", "", "💀 [退出][Exit] 💀", nil)
if password == nil then end
if password == 1 then else
  if password == 3 then os["exit"]()
    return end end

gg["setVisible"](false)
ProgressBar = "║░░░░░░░░░░░░░░░║";for x = 1,15,1 do gg.sleep(150) ProgressBar = ProgressBar:gsub("░","▓",1);gg.toast(ProgressBar) end

for i in ipairs({}) do local xxx = {nil, nil} xxx.TYPE_FLOAT = {nil,nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end local HexPatches = {} function HexPatches.MemoryPatch(Lib, Offset, Edit, Type) local Ranges = gg.getRangesList(Lib) local v = {} v[1] = {} v[1].address = Ranges[1].start + Offset v[1].flags = Type v[1].value = Edit.."r" v[1].freeze = true gg.setValues(v) end local Hex = {} function patch(lib, offset, edit, type) local ranges = gg.getRangesList(lib) local xy = {} xy[1] = {} xy[1].address = ranges[1].start + offset xy[1].flags = type xy[1].value = edit gg.setValues(xy) end CA=gg.REGION_C_ALLOC VI=gg.REGION_VIDEO XA=gg.REGION_CODE_APP AN=gg.REGION_ANONYMOUS CD=gg.REGION_C_DATA BSS=gg.REGION_C_BSS EA=gg.editAll RL=gg.getRangesList SNR=gg.searchNumber CLR=gg.clearResults GR=gg.getResults SET=gg.setVisible REFINE=gg.refineNumber COUNT=gg.getResultCount RANGE=gg.setRanges XOR=gg.TYPE_XOR BYTE=gg.TYPE_BYTE FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD DWORD=gg.TYPE_DWORD DOUBLE=gg.TYPE_DOUBLE QWORD=gg.TYPE_QWORD EQUAL=gg.SIGN_EQUAL function AxM(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🐮 ʀᴇsᴜʟᴛs ( "..#data.." ) ᴄʜᴀɴɢᴇ 🐮") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("🐮 ʀᴇsᴜʟᴛs ( "..#t.." ) ᴄʜᴀɴɢᴇ 🐮") gg.addListItems(t) else gg.toast("🐮 ᴅᴀᴛᴀ ɴᴏᴛ ғᴏᴜɴᴅ 🐮", false) return false end else gg.toast("🐮 ᴅᴀᴛᴀ ɴᴏᴛ ғᴏᴜɴᴅ 🐮") return false end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🐮 ʀᴇsᴜʟᴛs ( "..#data.." ) ᴄʜᴀɴɢᴇ 🐮") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("🐮 ᴅᴀᴛᴀ ɴᴏᴛ ғᴏᴜɴᴅ 🐮", false) return false end else gg.toast("🐮 ᴅᴀᴛᴀ ɴᴏᴛ ғᴏᴜɴᴅ 🐮") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setVisible(false) gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " Failed") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) xxx=gg.getResultCount() if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " Failed") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. " Found: "..xxx.." Edited: " .. xgsl .. "") else gg.toast(qmnb[2]["name"] .. " Failed") end end end gg.clearResults() end function readAdd(add) t = gg.getValues({[1] = {address = add, flags = 4}}) add = string.format("%X", t[1].value) if #add == 16 then add = add:sub(9, 16) end if #add == 1 then add = add .. "0000000" else add = string.format("%d", "0x" .. add) end return add end function getAdd(so, offset, off1) add = gg.getRangesList(so)[1].start add = readAdd(add + offset) return add end function seted(address, flags, value, freeze) t = {} t[1] = {} t[1].address = address t[1].flags = flags t[1].value = value t[1].freeze = freeze gg.addListItems(t) end function TSUM(lib,offset,value,flags) local ranges = gg.getRangesList(lib) if ranges == 0 then gg.toast("Error: "..lib.." not found") else local a = {} a[1] = {} a[1].address = ranges[1].start + offset a[1].flags = flags a[1].value = value gg.setValues(a) end end

EYT="💫 " ON="🟢 " OFF="⚫ " KFC="🟡 " BBQ="🔶 " turn0=OFF turn1=OFF turn2=BBQ turn3=BBQ turn4=BBQ turn5=BBQ turn6=OFF turn7=BBQ turn8=OFF turn9=OFF turn10=OFF turn11=OFF turn12=OFF turn13=OFF turn14=OFF turn15=OFF turn16=OFF turn17=OFF turn18=OFF turn19=OFF turn20=OFF turn21=OFF turn22=OFF turn23=OFF turn24=OFF turn25=OFF turn26=BBQ turn27=OFF turn28=OFF turn29=OFF


COW = 1
function Main()
  MOMO = gg.choice({
    "≿•━━━༺❀༻━━━•≾\n "..turn0.."[ (Tɪᴍɪ) ʟᴏɢᴏ Bʏᴘᴀss ] "..turn0.." \n.••[ ᴛɪᴍɪ ʟᴏɢᴏ 防閃 ]•• .\n ",
    ""..turn1.."[ Bʏᴘᴀss ɪɴ (Lᴏʙʙʏ) ] "..turn1.." \n.  • • [ 大廳防封 ]• • .\n≿•━━━༺❀༻━━━•≾ ",
    "\n🌸 [Lobby Menu]  🌸 \n🌸    [大廳功能]      🌸",
    "\n❄  ️[InGame Menu] ❄ ️\n❄   ️ [進場後功能]    ❄",
    "🎀  [ᴍʏᴛʜɪᴄ ɢᴜɴs ᴍᴇɴᴜ]   🎀 \n🎀   [神話槍]   🎀",
    "⚜️ [ʟᴇɢᴇɴᴅᴀʀʏ ɢᴜɴs ᴍᴇɴᴜ]  ⚜️ \n⚜️   [傳說槍]    ⚜️",
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
  if MOMO == 5 then guns()
  end
  if MOMO == 6 then legendary()
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
    ""..turn11.."[ᴀɪᴍʙᴏᴛ][自瞄]",
    ""..turn25.."[sᴛʀᴏɴɢ ᴀɪᴍʙᴏᴛ][自瞄++]",
    ""..turn12.."[ᴡᴇᴀᴘᴏɴ ʀᴀɴɢᴇ][武器增程++]",
    ""..turn13.."[ғᴀsᴛsᴄᴏᴘᴇ][快開鏡]",
    ""..turn14.."[ᴍɪɴɪ ᴄʀᴏssʜᴀɪʀ][縮小準星]",
    ""..turn15.."[ɴᴏ ʀᴇᴄᴏɪʟ][減後座力]",
    ""..turn16.."[ғᴀsᴛ ʀᴇʟᴏᴀᴅ][快速上彈]",
    ""..turn17.."[ɴᴏ sᴘʀᴇᴀᴅ][無散發]",
    ""..turn18.."[ʟᴏɴɢ sʟɪᴅᴇ][長程滑剷]",
    ""..turn19.."[ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ ɴᴏ ʙᴜɢ] \n.•[ 低^大範圍子彈^低 ]•.",
    ""..turn20.."[ ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ ] \n.•[ ^大範圍子彈^ ]•.",
    ""..turn28.."[ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ ʜɪɢʜ] \n.•[ 高^大範圍子彈^高 ]•.",
    ""..turn27.."[ғᴀsᴛ sʜᴏᴏᴛ][高射速]",
    ""..turn21.."[ʙʀ ᴍᴀᴘ ʜᴀᴄᴋ][生存地圖]️",
    ""..turn24.."[ʙʀ ɴᴏ ᴘᴀʀᴀᴄʜᴜᴛᴇ][秒落地]️",
    ""..turn23.."[ɴɪɢʜᴛ ᴍᴏᴅᴇ][暗黑模式]️",
    ""..turn22.."[ᴜᴀᴠ ʀᴀᴅᴀʀ][多人雷達長顯]",
    "📈  [ TURNING FPS ] 📉",
    "   ↩️  Back  ↩️   ",
  }, nil, os["date"](" ʜᴀᴄᴋ ʙʏ 🐮BᴜΙ͠ᴛᴇʀ \n 🟢 = ON+Off  (開+關) \n 🟡 = ON Only (只能開) \n 🔶 = Every Match (每場內開啟) "))
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
    if menu[5] == true then aim2()
    end
    if menu[6] == true then m1()
    end
    if menu[7] == true then n1()
    end
    if menu[8] == true then o1()
    end
    if menu[9] == true then p1()
    end
    if menu[10] == true then q1()
    end
    if menu[11] == true then r1()
    end
    if menu[12] == true then s1()
    end
    if menu[13] == true then t1()
    end
    if menu[14] == true then u1()
    end
    if menu[15] == true then hbt()
    end
    if menu[16] == true then v1()
    end
    if menu[17] == true then w1()
    end
    if menu[18] == true then x1()
    end
    if menu[19] == true then y1()
    end
    if menu[20] == true then uav()
    end
    if menu[21] == true then fps()
    end
    if menu[22] == true then Main()
    end
  end
  COW = -1
end

function game()
  BO = gg["multiChoice"]({
    ""..turn2.."[  ʀᴇᴘᴏʀᴛ ᴄʜᴇᴄᴋᴇʀ  ] \n. • Between.Game • .",
    ""..turn3.."[  ʙʟᴜᴇ ᴀɴᴛʜᴇɴᴀ  ] \n 『sɴᴀᴘᴅʀᴀɢᴏɴ ᴏɴʟʏ 』 \n        [  藍色天線  ]   ",
    ""..turn4.."[ ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ x? ] \n       [ 可調節魔術彈 ]    \n. • In.Every.Game • .",
    ""..turn5.."[ ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ ] \n       [ 魔術彈 ]    \n. • In.Every.Game • .",
    ""..turn6.."[ sᴘᴇᴇᴅ x3 ][ 加速 x3 ]",
    ""..turn7.."[ sᴘᴇᴇᴅ x? ][ 加速 x? ]",
    ""..turn26.."🚦𝐑𝐄𝐃 𝐋𝐈𝐍𝐄 Menu🚦",
    "   ↩️  Back  ↩️   ",
  }, nil, os["date"](" ʜᴀᴄᴋ ʙʏ 🐮BᴜΙ͠ᴛᴇʀ \n 🟢 = ON+Off  (開+關) \n 🟡 = ON Only (只能開) \n 🔶 = Every Match (每場內開啟) "))
  if BO == nil then Main()
   else
    if BO[1] == true then c1()
    end
    if BO[2] == true then d1()
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
  if turn0 == OFF then
  so = gg.getRangesList('libanogs.so')[1].start
  py = 0x33948
  setvalue(so + py, 4, 0xe12fff1e)
  gg.setRanges(gg.REGION_CODE_APP)
  butter = {{1179403647, 0}, {65793, 4}, {3984728, 32}}
  hack = {{-476053504, 0x33950}, {-516948194, 0x33954}}
  sc = DWORD
  SearchWrite(butter, hack, sc)
  turn0 = EYT
  gg.alert(" 💫 Lᴏʙʙʏ ʙʏᴘᴀss ᴀᴄᴛɪᴠᴇ✔ 💫 ")
  end
end

function b1()
  if turn1 == OFF then
gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("947147598;1601400681;1702060386;1767990839;1701999980;69;858879059;1953396082;1600482665;1869771365;1100000000~2000000000::16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
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
gg.clearList()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1,179,403,647;1,685,382,481;1,879,048,193;1,685,382,482;1,936,002,584;1,651,076,096;1,735,356,001;1,869,819,507;1,330,528,512;1,667,194,624;1000000000~2000000000::16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end 
end 
gg.clearResults()
gg.clearList()
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12f3
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12f2
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12f4
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12f5
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12f6
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12f1
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12d1
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12d0
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12cf
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12ce
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12cd
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12cc
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12bc
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12bb
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12ba
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12b9
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12b8
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12b7
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12a7
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12a6
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12a5
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12a4
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12a3
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12a2
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1293
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1292
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1291
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1290
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x128e
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x128f
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1da0
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1248
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1d98
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1d88
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1d7c
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1d74
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1d70
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1d5c
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1d08
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1d04
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1cf8
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1450
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1324
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x134c
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1318
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1314
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x124c
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1230
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1210
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1200
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x11e0
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x11d0
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1188
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1180
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1170
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1100
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x10f0
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x10e0
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x10d0
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x10c0
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x10b0
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x10a0
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1090
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1060
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1040
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1030
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1010
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1020
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x1000
setvalue(so+py, 4, 0)
so=gg.getRangesList('libanogs.so')[1].start
py =  0x12a0
setvalue(so+py, 4, 0)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("620,137,442,967,552", gg.TYPE_QWORD)
  gg.getResults(100000)
  gg.editAll("288,233,678,981,562,368", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("303,473,799,200,768", gg.TYPE_QWORD)
  gg.getResults(100000)
  gg.editAll("288,233,678,981,562,368", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("564,058,054,983,680", gg.TYPE_QWORD)
  gg.getResults(100000)
  gg.editAll("288,233,678,981,562,368", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1,127,012,303,372,288", gg.TYPE_QWORD)
  gg.getResults(100000)
  gg.editAll("288,233,678,981,562,368", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("572,854,148,005,888", gg.TYPE_QWORD)
  gg.getResults(100000)
  gg.editAll("288,233,678,981,562,368", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("566,257,078,239,232", gg.TYPE_QWORD)
  gg.getResults(100000)
  gg.editAll("288,233,678,981,562,368", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("564,062,349,950,976", gg.TYPE_QWORD)
  gg.getResults(100000)
  gg.editAll("288,233,678,981,562,368", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("578,351,706,144,768", gg.TYPE_QWORD)
  gg.getResults(100000)
  gg.editAll("288,233,678,981,562,368", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("579,451,217,772,544", gg.TYPE_QWORD)
  gg.getResults(100000)
  gg.editAll("288,233,678,981,562,368", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("577,252,194,516,992", gg.TYPE_QWORD)
  gg.getResults(100000)
  gg.editAll("288,233,678,981,562,368", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("288,233,678,981,562,368", gg.TYPE_QWORD)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("288,232,579,469,934,592", gg.TYPE_QWORD)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_QWORD)
  gg.clearResults()
  gg.alert(" 💫 Lᴏʙʙʏ ʙʏᴘᴀss ᴀᴄᴛɪᴠᴇ✔ 💫 ")
  turn1 = EYT
  end
end

function c1()
  gg["setRanges"](gg.REGION_C_ALLOC)
  gg["searchNumber"]("67,109,633;67,109,377", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  ta = gg["getResultsCount"]()
  t = gg["getResults"](ta)
  if ta < 6 then
    gg["alert"](" •Anti-Cheat Checker• \t\n\n\t Results = " .. ta .. " \t\n\t 💫 安全 sᴀғᴇ !! ")
    add = getAdd('libanogs.so', "0x35C394")
    seted(add + 380, 4, 67109633, true)
    seted(add + 328, 4, 67109633, true)
    seted(add + 308, 4, 67109633, true)
    seted(add + 332, 4, 67109633, true)
    seted(add + 356, 4, 67109633, true)
    gg["alert"]("Report Blocks ON")
    gg["clearList"]()
    gg["clearResults"]()
  end
  if ta > 6 then
    ff = gg["alert"]("⚠️ WARNING ⚠️ Anti-Cheat is very High Risk!! \t\n\n\t Results = " .. ta .. " \t\n\t Do you Kill your game? \t\n\t 風險很高，離開遊戲？", "💡 Yes 💡", "", " ↩️ Back ↩️", nil)
    if ff == nil then else
      if ff == 1 then
        gg["skipRestoreState"]()
        gg["clearResults"]()
        gg["clearList"]()
        gg["setVisible"](true)
        gg["processKill"]()
        os["exit"]()
      end
      if ff == 3 then Main()
      end
    end
  end
end

function d1()
  RANGE(AN)
  local S = {{1082130432, 0}, {1065353216, 4}, {1065353216, 8}, {0, 16}, {1077936128, 20},}
  local W = {{1073741824, 0}, {1086324736, 4}, {1203982336, 8}, {0, 16}, {1077936128, 20},}
  local T = DWORD
  AxM(S, W, T)

  RANGE(AN)
  local S = {{1077936128, 0}, {1028443341, 4}, {1061997773, 8}, {1065353216, 16}, {1065353216, 20},}
  local W = {{1077936128, 0}, {1028443341, 4}, {-1007026176, 8}, {1065353216, 16}, {1065353216, 20},}
  local T = DWORD
  AxM(S, W, T)

  RANGE(AN)
  local S = {{1077936128, 0}, {0, 4}, {1053609165, 8}, {1065353216, 16}, {1065353216, 20},}
  local W = {{1077936128, 0}, {0, 4}, {-1007026176, 8}, {1065353216, 16}, {1065353216, 20},}
  local T = DWORD
  AxM(S, W, T)
  gg.toast(" ʙʟᴜᴇ ᴀɴᴛʜᴇɴᴀ ғʀᴀᴍᴇ ᴀᴄᴛɪᴠᴇ✔")
end

function e1()
  mb = gg.prompt({"[0.5; 4.0]\n [ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ . 魔術彈]\n 普通.Normal: 0.8 ~ 1.2\n 建議.Suggest: 1.4 ~ 2.0\n 偏強.Strong: 2.4 ~ 4.0"}, {[1] = data, [1] = 2.4}, {[1] = "number"})
  if mb == nil then else
    data = mb[1]
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("0.1439999938", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1000)
    gg.editAll(tostring(mb[1]), gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast(" ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ x ["..mb[1].."] ᴀᴄᴛɪᴠᴇ✔ ")
  end
end

function f1()
  mb = gg["choice"]({
    " [ʜᴇᴀᴅ] [追頭] ",
    " [ʙᴏᴅʏ] [追身體] ",
    " [ʙʀ ʟᴏᴡ] [生存<低>] ",
    " [ʙʀ ʜɪɢʜ] [生存<高>] ",
  }, nil, os["date"]("💫 ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ ᴍᴇɴᴜ 💫\n "))
  if mb == nil then
   else
    if mb == 1 then
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("0.1439999938", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1000)
      gg.editAll("1.9", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(" ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ ʜᴇᴀᴅ ᴀᴄᴛɪᴠᴇ✔")
    end
    if mb == 2 then
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("0.18500000238", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1000)
      gg.editAll("0.6", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(" ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ ʙᴏᴅʏ ᴀᴄᴛɪᴠᴇ✔")
    end
    if mb == 3 then
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("0.1439999938", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1000)
      gg.editAll("1.1439999938", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(" ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ ʙʀ ʟᴏᴡ ᴀᴄᴛɪᴠᴇ✔")
    end
    if mb == 4 then
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("0.1439999938", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1000)
      gg.editAll("3.7", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast(" ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ ʙʀ ʜɪɢʜ ᴀᴄᴛɪᴠᴇ✔")
    end
  end
end

function g1()
  if turn6 == OFF then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("4.28000020981;3.200000047683716;0.30000001192;0.20000000298", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("4.28000020981", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(550)
    gg.editAll("5.54546798999", gg.TYPE_FLOAT)
    gg.clearResults()
    HexPatches.MemoryPatch('libil2cpp.so', 0x10C0824, "FA0444E31EFF2FE1", 32)
    HexPatches.MemoryPatch('libil2cpp.so', 0x10C0890, "FA0444E31EFF2FE1", 32)
    turn6 = ON
    gg.alert("🟢 ғʟᴀsʜ ʀᴜɴ x3 ᴀᴄᴛɪᴠᴇ✔")
   else
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("5.54546798999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(550)
    gg.editAll("4.28000020981", gg.TYPE_FLOAT)
    gg.clearResults()
    turn6 = OFF
    gg.alert("⚫ sᴘᴇᴇᴅ ʀᴜɴ x3 ᴏғғ ")
  end
end

function h1()
  setcamx = gg.prompt({" 自定5級速度控制 x 5 --> 25 \n SET SPEED x 5 --> 25  [5;25]"}, {[1] = data, [1] = 6}, {[1] = "number"})
  if setcamx == nil then else
    setcam = setcamx[1]
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.processResume()
    gg.searchNumber("4.28000020981;3.200000047683716;0.30000001192;0.20000000298", gg.POINTER_WRITABLE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(550)
    gg.editAll(tostring(setcamx[1]), gg.POINTER_WRITABLE)
    gg.clearResults()
  qmnb = {
{["memory"] = 32},
{["name"] = "SPEED"},
{["value"] = 0.30000001192, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 1.2599999904632568, ["offset"] = -4, ["type"] = 16}
}
  qmxg = {
{["value"] = 100, ["offset"] = -4, ["type"] = 16}
}
  xqmnb(qmnb)
    gg.clearResults()
    HexPatches.MemoryPatch('libil2cpp.so', 0x10C0824, "FA0444E31EFF2FE1", 32)
    HexPatches.MemoryPatch('libil2cpp.so', 0x10C0890, "FA0444E31EFF2FE1", 32)
    gg.alert("🔸 SET SPEED x " .. setcamx[1].. " ᴀᴄᴛɪᴠᴇ✔ ")
  end
end

function i1()
  if turn8 == OFF then
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x1877678
    setvalue(so + py, 4, -481296384)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x1878c74
    setvalue(so + py, 4, -481230848)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x17fb9c8
    setvalue(so + py, 4, -476024831)
    turn8 = ON
    gg.toast("🟢️ ᴇsᴘ ɴᴀᴍᴇ ʙʀ ᴀᴄᴛɪᴠᴇ✔")
   else
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x1877678
    setvalue(so + py, 4, -481296383)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x1878c74
    setvalue(so + py, 4, -481230847)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x17fb9c8
    setvalue(so + py, 4, -509579264)
    turn8 = OFF
    gg.toast("⚫️ ᴇsᴘ ɴᴀᴍᴇ ʙʀ Oғғ ")
  end
end

function j1()
  if turn9 == OFF then
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x187939c
    setvalue(so + py, 4, -481296384)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x21cd8f4
    setvalue(so + py, 4, -481296384)
    turn9 = ON
    gg.toast("🟢️ ᴇsᴘ ɴᴀᴍᴇ ᴍᴘ ᴀᴄᴛɪᴠᴇ✔")
   else
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x187939c
    setvalue(so + py, 4, -481296383)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x21cd8f4
    setvalue(so + py, 4, -481296383)
    turn9 = OFF
    gg.toast("⚫ ᴇsᴘ ɴᴀᴍᴇ ᴍᴘ Oғғ ")
  end
end

function k1()
  if turn10 == OFF then
    so = gg.getRangesList('libil2cpp.so')[1].start
    local py = 0x18D9C0C
    setvalue(so + py, 4, 0)
    turn10 = ON
    gg.toast("🟢 ᴡᴀʟʟʜᴀᴄᴋ ᴀᴄᴛɪᴠᴇ✔")
   else
    so = gg.getRangesList('libil2cpp.so')[1].start
    local py = 0x18D9C0C
    setvalue(so + py, 4, 436207618)
    turn10 = OFF
    gg.toast("⚫ ᴡᴀʟʟʜᴀᴄᴋ Oғғ ")
  end
end

function l1()
  if turn11 == OFF then
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x6AFE750
    setvalue(so + py, 16, 0)
    turn11 = ON
    gg.toast("🟢 ᴀɪᴍʙᴏᴛ ᴀᴄᴛɪᴠᴇ✔")
   else
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x6AFE750
    setvalue(so + py, 16, -3.74440972E28)
    turn11 = OFF
    gg.toast("⚫ ᴀɪᴍʙᴏᴛ Oғғ ")
  end
end

function aim2()
  if turn25 == OFF then
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x6AFE89C
    setvalue(so + py, 16, 0)
    turn25 = ON
    gg.toast("🟢 ᴀɪᴍʙᴏᴛ sᴛʀᴏɴɢ ᴀᴄᴛɪᴠᴇ✔")
   else
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x6AFE89C
    setvalue(so + py, 16, -3.74440972E28)
    turn25 = OFF
    gg.toast("⚫ Sᴛʀᴏɴɢ Aɪᴍʙᴏᴛ Oғғ ")
  end
end

function m1()
  HexPatches.MemoryPatch('libil2cpp.so', 0x1D3A3F8, 'F00F44E31EFF2FE1', 32)
  gg.toast("🟡 ɪɴᴄʀᴇᴀsᴇ ᴡᴇᴀᴘᴏɴ ʀᴀɴɢᴇ++ ᴀᴄᴛɪᴠᴇ✔")
  turn12 = KFC
end

function n1()
  if turn13 == OFF then
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x274D8B4
    setvalue(so + py, 10, 0x0)
    turn13 = ON
    gg.toast("🟢️ ғᴀsᴛ sᴄᴏᴘᴇ ᴀᴄᴛɪᴠᴇ✔")
   else
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x274D8B4
    setvalue(so + py, 10, -286131696)
    turn13 = OFF
    gg.toast("⚫️ ғᴀsᴛ sᴄᴏᴘᴇ Oғғ ")
  end
end

function o1()
  if turn14 == OFF then
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x529E354
    setvalue(so + py, 16, 0)
    turn14 = ON
    gg.toast("🟢 ᴍɪɴɪ ᴄʀᴏssʜᴀɪʀ ᴀᴄᴛɪᴠᴇ✔")
   else
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x529E354
    setvalue(so + py, 16, -1.06077385e28)
    turn14 = OFF
    gg.toast("⚫ ᴍɪɴɪ ᴄʀᴏssʜᴀɪʀ Oғғ")
  end
end

function p1()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1,065,353,216;4,586,465,859,861,479,424;4,575,657,222,473,777,152;4,751,297,607,941,226,496;4,611,686,019,492,741,120", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("4,575,657,222,473,777,152", gg.TYPE_QWORD)
  gg.getResults(9999)
  gg.editAll("0", gg.TYPE_QWORD)
  gg.clearResults()
  HexPatches.MemoryPatch('libil2cpp.so', 0x1F8F09C, '9900A0E31EFF2FE1', 32)
  gg.toast("🟡 ɴᴏ ʀᴇᴄᴏɪʟ ᴀʟʟ ɢᴜɴs ᴀᴄᴛɪᴠᴇ✔")
  turn15 = KFC
end

function q1()
  if turn16 == OFF then
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x1F44378
    setvalue(so + py, 16, 0)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x1F44410
    setvalue(so + py, 16, 0)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x45D3054
    setvalue(so + py, 16, 0)
    turn16 = ON
    gg.toast("🟢 ғᴀsᴛ ʀᴇʟᴏᴀᴅ ᴀᴄᴛɪᴠᴇ✔")
   else
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x1F44378
    setvalue(so + py, 16, -3.74440972e28)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x1F44410
    setvalue(so + py, 16, -3.74440972e28)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x45D3054
    setvalue(so + py, 16, -3.74440972e28)
    turn16 = OFF
    gg.toast("⚫ ғᴀsᴛ ʀᴇʟᴏᴀᴅ Oғғ")
  end
end

function r1()
  if turn17 == OFF then
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x1F8E004
    setvalue(so + py, 16, 1)
    turn17 = ON
    gg.toast("🟢 ɴᴏ sᴘʀᴇᴀᴅ ᴀᴄᴛɪᴠᴇ✔")
   else
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x1F8E004
    setvalue(so + py, 16, 32)
    turn17 = OFF
    gg.toast("⚫ ɴᴏ sᴘʀᴇᴀᴅ Oғғ")
  end
end

function s1()
  if turn18 == OFF then
    so = gg.getRangesList('libil2cpp.so')[1].start
    local py = 0x26B50AC
    setvalue(so + py, 4, -482082104)
    so = gg.getRangesList('libil2cpp.so')[1].start
    local py = 0x26B50B0
    setvalue(so + py, 4, -516948194)
    gg.toast("🟢 ʟᴏɴɢ sʟɪᴅᴇ ᴀᴄᴛɪᴠᴇ✔")
    turn18 = ON
   else
    so = gg.getRangesList('libil2cpp.so')[1].start
    local py = 0x26B50AC
    setvalue(so + py, 4, -475004927)
    so = gg.getRangesList('libil2cpp.so')[1].start
    local py = 0x26B50B0
    setvalue(so + py, 4, -516948194)
    gg.toast("⚫ ʟᴏɴɢ sʟɪᴅᴇ Oғғ")
    turn18 = OFF
  end
end

function t1()
  if turn19 == OFF then
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x529E354
    setvalue(so + py, 16, 0)
    gg.toast("🟢 ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ ʟᴏᴡ ᴀᴄᴛɪᴠᴇ✔")
    turn19 = ON
   else
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x529E354
    setvalue(so + py, 16, -1.06077385e28)
    turn19 = OFF
    gg.toast("⚫ ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ ʟᴏᴡ Oғғ ")
  end
end

function u1()
  if turn20 == OFF then
    so = gg.getRangesList('libunity.so')[1].start
    py = 0xB6E66C
    setvalue(so + py, 4, 0)
    turn20 = ON
    gg.toast("🟢 ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ ᴀᴄᴛɪᴠᴇ✔")
   else
    so = gg.getRangesList('libunity.so')[1].start
    py = 0xB6E66C
    setvalue(so + py, 4, -310298109)
    turn20 = OFF
    gg.toast("⚫ ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ Oғғ ")
  end
end

function hbt()
  if turn28 == OFF then
    so = gg.getRangesList('libunity.so')[1].start
    py = 0xB6E2A8
    setvalue(so + py, 16, 23)
    so = gg.getRangesList('libunity.so')[1].start
    py = 0xB6E2AC
    setvalue(so + py, 16, 23)
    so = gg.getRangesList('libunity.so')[1].start
    py = 0x514210
    setvalue(so + py, 16, 8)
    so = gg.getRangesList('libunity.so')[1].start
    py = 0xB6E66C
    setvalue(so + py, 16, 0)
    turn28 = ON
    gg.toast("🟢 ʜɪɢʜ ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ ᴀᴄᴛɪᴠᴇ✔")
   else
    so = gg.getRangesList('libunity.so')[1].start
    py = 0xB6E2A8
    setvalue(so + py, 16, -5.76566947e27)
    so = gg.getRangesList('libunity.so')[1].start
    py = 0xB6E2AC
    setvalue(so + py, 16, -5.76808791e27)
    so = gg.getRangesList('libunity.so')[1].start
    py = 0x514210
    setvalue(so + py, 16, 0.00001)
    so = gg.getRangesList('libunity.so')[1].start
    py = 0xB6E66C
    setvalue(so + py, 16, -4.99921227e27)
    turn28 = OFF
    gg.toast("⚫ ʜɪɢʜ ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋ Oғғ ")
  end
end

function v1()
  if turn27 == OFF then
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x1F4C014
    setvalue(so + py, 4, 0)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x1F4DC10
    setvalue(so + py, 4, 0)
    gg.toast("🟢 ғᴀsᴛ sʜᴏᴏᴛ ᴏɴ")
    turn27 = ON
   else
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x1F4C014
    setvalue(so + py, 4, -299333111)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x1F4DC10
    setvalue(so + py, 4, -309032415)
    gg.toast("⚫ ғᴀsᴛ sʜᴏᴏᴛ ᴏғғ")
    turn27 = OFF
  end
end

function w1()
  RANGE(XA)
  local S = {{-382906896, 0}, {-494030824, 4}, {-498216952, 8}, {-509583360, 12}, {-442564140, 16}, {-442535468, 20}, {-509575166, 24}, {-527499264, 28}, {-509587455, 32}, {-528023552, 36},}
  local W = {{-476053503, 0}, {-516948194, 4},}
  local T = DWORD
  AxM(S, W, T)
  gg.clearResults()
  RANGE(XA)
  local S = {{-382906896, 0}, {-494030824, 4}, {-498216952, 8}, {-509583360, 12}, {-442564140, 16}, {-442535468, 20}, {-509575166, 24}, {-527499264, 28}, {-509587455, 32}, {-528023552, 36},}
  local W = {{-476053503, 0}, {-516948194, 4},}
  local T = DWORD
  AxM(S, W, T)
  gg.toast("🟡 ʀᴀᴅᴀʀ ᴍɪɴɪ ᴍᴀᴘ ᴀᴄᴛɪᴠᴇ✔")
  turn21 = KFC
end

function x1()
  if turn24 == OFF then
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x268F19C
    setvalue(so + py, 4, -476053504)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x268F1A0
    setvalue(so + py, 4, -516948194)
    gg.toast("🟢 Nᴏ Pᴀʀᴀᴄʜᴜᴛᴇ ᴀᴄᴛɪᴠᴇ✔")
    turn24 = ON
   else
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x268F19C
    setvalue(so + py, 4, -382906384)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x268F1A0
    setvalue(so + py, 4, -494030820)
    gg.toast("⚫ Nᴏ Pᴀʀᴀᴄʜᴜᴛᴇ Oғғ ")
    turn24 = ON
  end
end

function y1()
  if turn23 == OFF then
    so = gg.getRangesList('libunity.so')[1].start
    local py = 0x1576BC
    setvalue(so + py, 16, 10)
    so = gg.getRangesList('libunity.so')[1].start
    local py = 0x15FAB8
    setvalue(so + py, 16, 0)
    turn23 = ON
    gg.toast("🟢 Dᴀʀᴋᴍᴏᴅᴇ ᴀᴄᴛɪᴠᴇ✔")
   else
    so = gg.getRangesList('libunity.so')[1].start
    local py = 0x1576BC
    setvalue(so + py, 16, 0.00100000005)
    so = gg.getRangesList('libunity.so')[1].start
    local py = 0x15FAB8
    setvalue(so + py, 16, 0.00999999978)
    turn23 = OFF
    gg.toast("⚫ Dᴀʀᴋᴍᴏᴅᴇ Oғғ")
  end
end

function uav()
  if turn22 == OFF then
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x32FB24C
    setvalue(so + py, 4, -476053503)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x32FB250
    setvalue(so + py, 4, -516948194)
    turn22 = ON
    gg.toast(" 🟢 ᴜᴀᴠ ʀᴀᴅᴀʀ ᴀᴄᴛɪᴠᴇ✔ ")
   else
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x32FB24C
    setvalue(so + py, 4, -382906384)
    so = gg.getRangesList('libil2cpp.so')[1].start
    py = 0x32FB250
    setvalue(so + py, 4, -494030820)
    turn22 = OFF
    gg.toast(" ⚫ ᴜᴀᴠ ʀᴀᴅᴀʀ Oғғ ")
  end
end

function fps()
  land = gg.prompt({"🔛 Tunning FPS [1; 120]","❌ Back To Default FPS"}, {[1] = 60, [2] = false}, {[1] = data, [1] = "number", [2] = "checkbox"})
  if land == nil then else
    if land[1] then
      TSUM('libil2cpp.so', 0x2706C70, "3C00A0E31EFF2FE1r", 32)
      TSUM('libil2cpp.so', 0x2707618, "3C00A0E31EFF2FE1r", 32)
      TSUM('libil2cpp.so', 0x2706C70, tostring(land[1]), 1)
      TSUM('libil2cpp.so', 0x2707618, tostring(land[1]), 1)
      gg.alert(" FPS "..land[1].." ᴀᴄᴛɪᴠᴇ✔ ")
    end
    if land[2] then
      TSUM('libil2cpp.so', 0x2706C70, "F04D2DE918B08DE2r", 32)
      TSUM('libil2cpp.so', 0x2707618, "F04D2DE918B08DE2r", 32)
      gg.alert(" OFF to Default FPS ")
    end
  end
end

function RED()
  RL = gg.alert("RED LINE Menu", "MP [多人]", "BR [生存]")
  if RL == 1 then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("256;4", gg.TYPE_FLOAT)
    gg.refineNumber("4", gg.TYPE_FLOAT)
    gg.getResults(9999)
    gg.editAll("70", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.alert(" ʀᴇᴅ ʟɪɢʜᴛ ᴀᴄᴛɪᴠᴇ✔ ")
  end
  if RL == 2 then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1.0;1.0;1.0;1.0;3.0;1.0;5.0;10.0:57", gg.TYPE_FLOAT)
    gg.getResults(9999)
    gg.editAll("4;999", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.alert("RED ᴀɴᴛʜᴇɴᴀ ʙʀ ᴀᴄᴛɪᴠᴇ✔")
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
    "ᴋʀᴍ262",
    " ♂️ Back ♂️ ",
  }, nil, os["date"](" \n 💫 ᴍʏᴛʜɪᴄ ɢᴜɴs ᴍᴇɴᴜ 💫"))
  if HM == nil then Main()
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
    if HM[12] == true then krm()
    end
    if HM[13] == true then Main()
    end
    COW = -1
  end
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
  gg.alert("oden divine smite on")
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
  gg.editAll("h 01 00 01 00 00 00 00 00 39 00 00 00 E1 7A 9A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 37 00 00 00 01 86 0E 70 2C 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 86 1A 06 00 B0 0D 03 00 44 A1 07 00", 1)
  gg.clearResults()
  gg.alert("ᴋɪʟᴏ 141 ᴅᴇᴍᴏɴsᴏɴɢ on")
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
  gg.alert("ᴍ13 ᴍᴏʀɴɪɴɢ sᴛᴀʀ ᴏɴ")
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
  gg.alert("ᴀᴋ47 ʀᴀᴅɪᴀɴᴄᴇ ᴏɴ")
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
          gg.alert("sᴡɪᴛᴄʜʙʟᴀᴅᴇ x9 ɴᴇᴏɴ ʟᴇɢᴇɴᴅ ᴏɴ")
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
          gg.alert("ᴄʙʀ4 ᴀᴍᴏᴇʙᴀ ᴏɴ")
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
          gg.alert("ᴘᴇᴀᴄᴇᴋᴇᴇᴘᴇʀ ᴀʀᴛɪғᴀᴄᴛ ᴏɴ")
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
          gg.alert("ғᴇɴɴᴇᴄ ᴀsᴄᴇɴᴅᴇᴅ ᴏɴ")
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
          gg.alert("ᴀsᴠᴀʟ ᴅᴏᴜʙʟᴇ ᴇᴅɢᴇ ᴏɴ")
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
          gg.alert("ʀʏᴛᴇᴄ ᴀᴍʀ ɴᴀᴜᴛɪʟᴜs ᴏɴ")
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
          gg.alert("ʜᴏʟɢᴇʀ ᴅᴀʀᴋ ғʀᴏɴᴛɪᴇʀ ᴏɴ")
        end

        function krm()
          qmnb = {
            {["memory"] = 32},
            {["name"] = "krm-262"},
            {["value"] = 10361, ["type"] = 4},
            {["lv"] = 10508001, ["offset"] = -4, ["type"] = 4},
          }
          qmxg = {
            {["value"] = 10508044, ["offset"] = -60, ["type"] = 4},
            {["value"] = 100322, ["offset"] = -64, ["type"] = 4},
            {["value"] = 10508044, ["offset"] = -68, ["type"] = 4},
          }
          xqmnb(qmnb)

          qmnb = {
            {["memory"] = 32},
            {["name"] = "krm-262 hack"},
            {["value"] = 10508001, ["type"] = 4},
            {["lv"] = 10508002, ["offset"] = -128, ["type"] = 4},
          }
          qmxg = {
            {["value"] = 70247, ["offset"] = -140, ["type"] = 4},
          }
          xqmnb(qmnb)

          qmnb = {
            {["memory"] = 32},
            {["name"] = "krm-262 hack by Butter"},
            {["value"] = 10508002, ["type"] = 4},
            {["lv"] = 13, ["offset"] = -4, ["type"] = 4},
          }
          qmxg = {
            {["value"] = 300128, ["offset"] = -36, ["type"] = 4},
            {["value"] = 200135, ["offset"] = -40, ["type"] = 4},
            {["value"] = 4, ["offset"] = -44, ["type"] = 4},
          }
          xqmnb(qmnb)
          gg.alert("ᴋʀᴍ262 ᴏɴ")
        end


        function legendary()
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

        function exit()
          ex = gg["alert"](" \n      EXIT • 離開 ", "💡 Yes 💡", " ↩️ Back ↩️", nil)
          if ex == nil then else
            if ex == 1 then
              print("╭═════••✧๑♡๑✧••═════╮")
              print("                      ʜᴀᴄᴋ ʙʏ 🐮BᴜΙ͠ᴛᴇʀ   ")
              print("╰═════••✧๑♡๑✧••═════╯")
              gg["skipRestoreState"]()
              gg["clearResults"]()
              gg["clearList"]()
              gg["setVisible"](true)
              os["exit"]()
            end
            if ex == 2 then Main()
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



