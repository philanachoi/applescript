set title to "Lyrics generator 歌詞生成器
請選擇歌曲"

set songList to jukeBox()

set nameList to {}
set buttonInput to button returned of (display dialog "請選擇歌手" buttons {"全部", "男歌手", "女歌手"} default button 1)
repeat with i in songList
	set thisItem to contents of i
	set bool to buttonInput is in {"全部", singer of thisItem}
	if bool then set the end of nameList to name of thisItem
end repeat


set userInput to choose from list nameList with prompt title default items item 1 of nameList
if userInput = false then error number -128

repeat with i in songList
	set thisItem to contents of i
	if name of thisItem = userInput as string then exit repeat
end repeat

set prompt to "歌名：" & name of thisItem & return & lyrics of thisItem
return display dialog prompt buttons "OK" default button 1


on jukeBox()
	set s1 to {name:"ＩＱ博士_女", singer:"女歌手", lyrics:"靈感ＩＱ稱得上，十分之高超，創作力量同幻想，會嚇你一跳，小雲同小吉好重要。美夢如炸彈 開心的轟炸，天空朗日也偷笑，白豬仔來啦！無愁無慮似天使，天天帶著笑，浮浮沉沉天空裡，自在像小鳥，古怪事情，多得很想講也講不了。人人朝著那方向，心中帶著笑，浮浮沉沉天空裡，熱烈地呼叫，興奮事情，嘻嘻哈開心到不得了。"}
	set s2 to {name:"小小姑娘_女", singer:"女歌手", lyrics:"小小姑娘，清早起床，提著花籃上市場。穿過大街，走進小巷，賣花賣花聲聲唱。花兒雖美，花兒雖香，沒人來買怎麼樣？滿滿花籃，空空錢囊，如何回去見爹娘。"}
	set s3 to {name:"小星星", singer:"男歌手", lyrics:"一閃一閃小星星，一顆一顆亮晶晶。高高掛在天空上，閃閃散佈似鑽石。一閃一閃小星星，一顆一顆亮晶晶。"}
	set s4 to {name:"小時候", singer:"男歌手", lyrics:"小小的宇宙，歡欣的宇宙，蹦蹦跳 哈哈笑 是我小時候。小小的宇宙，天真的宇宙，真的我 真的你 唔係小木偶。愛動腦筋，活潑天真，凡事好發問，踢波跑步打千秋，不知天高地厚。小小的宇宙，繽紛的宇宙，像皮球 天天轉 奇妙事不斷有。"}
	set s5 to {name:"小露寶_女", singer:"女歌手", lyrics:"大踏步神情確威武，小子大名露寶，人人皆知道。〔小露寶黎啦，小露寶好野〕又賣力，又肯做，身手好似超高，朋友休睇少我係機器製造。樣樣都會做，唔係似膽粗，全世界認真少有，周身鐵鑄做。行俠仗義立志高，不畏強暴，更有驚天本領值得驕傲。"}
	set s6 to {name:"叮噹", singer:"男歌手", lyrics:"人人期望可達到，我的快樂比天高。人人如意開心歡笑，跳進美夢尋獲美好。爬進奇妙口袋裡，你的希望必得到。離奇神化不可思議，心中一想就得到。想小鳥伴你飛舞，雲外看琴譜，你睇！叮噹黎啦！叮噹啊，誰都喜歡你，小貓也自豪。叮噹啊，誰都喜歡你，小貓也自豪。"}
	set s7 to {name:"飄零燕_女", singer:"女歌手", lyrics:"Yor Ku Lu Yor Ki Ku Li，Yor Ku Ku Li Yor Ku Ku，Yor Ku Lu Yor Ki Ku Li，Yor Ku Ku Li Yor。迷途迷途孤燕，未得歸家，這小孤燕，夜晚嚇怕小燕，小燕徨恐的小燕。乳燕乳燕望著天天邊，誰同情小小孤燕，徬徨乳燕，迷途燕孤單小孤燕。Yor Ku Le He Le He Le，Yor Ku Le He Le He Le，Yor Ku Le He Ho Li，Yor Ho Ho 。Yor Ku Le He Le He Le，Yor Ku Le He Le He Le，Yor Ku Le He。"}
	set s8 to {name:"有隻雀仔跌落水", singer:"男歌手", lyrics:"有隻雀仔跌落水，跌落水，有隻雀仔跌落水，被水沖去。"}
	set s9 to {name:"我是個茶壺_女", singer:"女歌手", lyrics:"我是個茶壺肥又矮，我是個茶壺肥又矮，這是耳，這是嘴，這是耳，這是嘴，水滾啦，水滾啦，沖茶啦，沖茶啦！"}
	set s10 to {name:"星仔走天涯_女", singer:"女歌手", lyrics:"落雨不怕，落雪也不怕，就算寒冷大風雪落下。能夠見到她，可以日日見到佢面，如何大風雪也不怕。我要我要找我爸爸，去到那裡也要找我爸爸，我既好爸爸未找到，若你見到佢就勸佢回家。"}
	set s11 to {name:"足球小將", singer:"男歌手", lyrics:"看看威風的他，雙腿好似摩打，扭波踢波頂瓜瓜，有嘴巴的都讚他。身手最啿誇（身手最啿誇），小子志可嘉（小伙子志可嘉），陣法腳法日練夜練，真功夫冇花假。踢得好，誇啦啦，活力拼勁加兩把，射波招式創新，一絲不會差。攻呀攻，快搶攻，射呀射，射它吧，穿梭對手之間，獨有腳法像玩耍。歡呼聲，與讚美，出於他的腳下。攻呀攻，快搶攻，射呀射，射它吧，扭得好，踢得鬼馬，可稱霸只有他。"}
	{s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11}
end jukeBox