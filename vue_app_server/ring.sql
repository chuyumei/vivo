SET NAMES UTF8;
DROP DATABASE IF EXISTS xz
CREATE DATABASE xz CHARSET=UTF8;
USE xz;



CREATE TABLE cakelists(
  id INT PRIMARY KEY AUTO_INCREMENT,
  size VARCHAR(16),    
  title VARCHAR(128),
  img1 VARCHAR(128),
  img2 VARCHAR(128),
  price VARCHAR(16),       
  img3 VARCHAR(128),               
  cover VARCHAR(1000),
  help VARCHAR(128),
  person VARCHAR(128),
  teacher VARCHAR(128),
  tea_desc VARCHAR(600)
);


INSERT INTO cakelists VALUES
(NULL,  "1.2磅","25课通识阅读 带你打破知识边界","http://127.0.0.1:3000/img/lists/6364927d-196c-4782-8398-d7debb25e402.jpg","http://127.0.0.1:3000/img/lists/c775c296-aef1-48f2-8bc5-95cc2d754944.webp.jpg", 218.00,"http://127.0.0.1:3000/img/lists/F3C6A09286B448C9396FF060C30B98F4.jpg","1. 25堂精品视频课 永久观看 不限次数；
 2. 7大经典领域模块导读：经济学、社会学、心理学、政治学、金融学、哲学和数学；3. 88本落地书单推荐：不只是列列书名，而是告诉你一个可操作的阅读路径；4. 包括书单和阅读建议以及N+关于如何看待世界角度的思维；","1.课程内容：课程全部视频已发布上线，共25节；2.有效期：课程一次购买，视频永久有效，可自行安排学习，不限时间次数；3.欢迎在讨论区和评论区留言互动。，也可以关注罗文益老师公众号「罗文益」（ID：wenyidehua）进行互动","一直想读书却行动不起来，不知如何下手；
想提升思维高度的职场人；
想找到阅读兴趣 制定阅读计划的人；","罗文益","1. 职场大神：25年职场创业经验，两家国际上市公司管理经历； 2. 超级导师：13年教育经历，培养5000职场人，听众超200万人 3. 超级学霸：14岁入读南京大学，每年读书200本"),
(NULL,  "1.2磅","商务谈判技巧—你不知道的那些事","http://127.0.0.1:3000/img/lists/a5bf76e7-8acc-4c35-a85c-882659eaf74a.png","http://127.0.0.1:3000/img/lists/8193e9a9-3968-43a5-9e80-95978f618c2a.webp.jpg", 218.00,"http://127.0.0.1:3000/img/lists/F3C6A09286B448C9396FF060C30B98F4.jpg","
 本专辑内容主要讲商务谈判的技巧，共15小节。
谈判是门艺术，这门艺术没有规则。但每个人得有自己的门道，每个人要了解自己的长处和缺陷，所以是法无定法。那么学完这门课，要让对方感觉你在放弃有价值的东西，让双方都感觉到自己赢了。 本课程适合职场人士，白领，学习职业技能的人，学习谈判技巧的人 。；","1.课程内容：课程全部视频已发布上线，共25节2.有效期：课程一次购买，视频永久有效，可自行安排学习，不限时间次数；3.欢迎在讨论区和评论区留言互动，也可以关注罗文益老师公众号「罗文益」（ID：wenyidehua）进行互动","1.职场人士，白领，学习职业技能的人，学习谈判技巧的人 2.销售，BD，谈判职业人士","罗文益","1. 职场大神：25年职场创业经验，两家国际上市公司管理经历； 2. 超级导师：13年教育经历，培养5000职场人，听众超200万人 3. 超级学霸：14岁入读南京大学，每年读书200本"),

(NULL,  "1.2磅","新标日初级下精讲班","http://127.0.0.1:3000/img/lists/bd7a14b1-7ea7-4280-b1fa-0fd232c09765.jpg","http://127.0.0.1:3000/img/lists/003a01f4-43ce-4198-a3f8-8645e11e7c23.webp.jpg", 368.00,"http://127.0.0.1:3000/img/lists/F3C6A09286B448C9396FF060C30B98F4.jpg","
 1. 25堂精品视频课 永久观看 不限次数；
 2. 7大经典领域模块导读：经济学、社会学、心理学、政治学、金融学、哲学和数学；
3. 88本落地书单推荐：不只是列列书名，而是告诉你一个可操作的阅读路径；
4. 包括书单和阅读建议以及N+关于如何看待世界角度的思维；","教材为：《新版中日交流标准日本语》初级 下册
内容：精讲下册25-48课的单词和课文部分
效果：学完后，可以达到新日本语能力考试N3~N4左右的水平
**年后课程将进行全面更新，课程价格调整至368
**调整前购买的老学员无需加价即可享受新课程哦","一直想读书却行动不起来，不知如何下手；","罗文益","1. 职场大神：25年职场创业经验，两家国际上市公司管理经历； 2. 超级导师：13年教育经历，培养5000职场人，听众超200万人 3. 超级学霸：14岁入读南京大学，每年读书200本"),
(NULL,  "1.2磅","10堂课教你成为沟通达人","http://127.0.0.1:3000/img/lists/425cff16-fb2a-4929-bdf2-d2de35952b3e.jpg","http://127.0.0.1:3000/img/lists/d79e674c-aa08-4af3-baf6-ba2953296c28.webp.jpg", 218.00,"http://127.0.0.1:3000/img/lists/F3C6A09286B448C9396FF060C30B98F4.jpg","
 本专辑内容主要讲商务谈判的技巧，共15小节。
谈判是门艺术，这门艺术没有规则。但每个人得有自己的门道，每个人要了解自己的长处和缺陷，所以是法无定法。那么学完这门课，要让对方感觉你在放弃有价值的东西，让双方都感觉到自己赢了。 本课程适合职场人士，白领，学习职业技能的人，学习谈判技巧的人 。；","很多课程都在教你沟通方法，却没有人帮你分析你的沟通问题出哪儿了。
很多课程都在教你沟通的“套路”，却没有人教你如何学会具体问题具体分析，不同的人如何区分对待。
很多课程都在教你沟通的大道理，却没有人告诉你如何顺应人性地去沟通－影响－说服。

本套课程将直击你的痛点，帮你找到沟通中阻碍你的症结关键点，省时省力高效地帮助你在沟通上有切实的提升。

所有你以为无法复制的沟通达人的沟通技巧，课上我统统会帮你拆解，让你分步骤地学会。
所有你无法突破的沟通方面的心理障碍，我都会教你方法，一 一化解。
所有你关于沟通的疑问，这套课程帮你终结它们。
【购买须知】
1、课程为视频授课；
2、课程总共10课时；
3、课程一次购买，永久有效，可自行安排时间进行学习，不限时间、次数；
4、购买成功后可在“服务咨询”中私信获取入学员群方式；也可以关注微信公众号“王清纯”在后台留言要求加群。
5、每小节之后，会有配套训练，全部课程结束会有集中的语音直播答疑，想参加课后答疑和进行更多训练的同学，请在购买成功后在“服务咨询”中私信获取入学员群方式；也可以直接微信联系王奕霖清纯（微信号：w9406641），备注“云课堂学员”。
","一直想读书却行动不起来，不知如何下手；","罗文益","1. 职场大神：25年职场创业经验，两家国际上市公司管理经历； 2. 超级导师：13年教育经历，培养5000职场人，听众超200万人 3. 超级学霸：14岁入读南京大学，每年读书200本"),
(NULL,  "1.2磅","赵铁夫讲单词—教你牢记过万单词","http://127.0.0.1:3000/img/lists/cf77740e-107a-4516-9fbe-ebe2c3c94b43.jpg","http://127.0.0.1:3000/img/lists/003a01f4-43ce-4198-a3f8-8645e11e7c23.webp.jpg", 368.00,"http://127.0.0.1:3000/img/lists/3641f50f-0ab2-4030-84ea-b830df9b46dd.webp.jpg","
 一次购买，永久听课，不限时间，不限次数。
【适合所有记单词“困难户”学习的单词记忆法】
无论你是零基础，还是多年英语学习的初中生，高中生，大学生，职场白领……只要你想提高你的英语技能，都可以从这门课学起，从改变你的记单词方法学起——
本课程将为你讲授科学高效的单词记忆方法体系，不死记，不枯燥，不啰嗦，轻松幽默，揭秘单词规律，帮你突破万词，打破英语学习瓶颈！
","零基础的英语初学者；高中生；大学生；四六级，考研，托福雅思，GRE等各类英语考生；英语学习爱好者……","一直想读书却行动不起来，不知如何下手；","罗文益","1. 职场大神：25年职场创业经验，两家国际上市公司管理经历； 2. 超级导师：13年教育经历，培养5000职场人，听众超200万人 3. 超级学霸：14岁入读南京大学，每年读书200本"),
(NULL,  "1.2磅","跟舍之学写字","http://127.0.0.1:3000/img/lists/91e956c9-db47-49d1-8a61-5685c761433c.jpg","http://127.0.0.1:3000/img/lists/9224100f-4f20-40d9-93f5-fc5f1b0afbe5.webp.jpg", 368.00,"http://127.0.0.1:3000/img/lists/3641f50f-0ab2-4030-84ea-b830df9b46dd.webp.jpg","
 如果你想学写一手好看的硬笔字，如果你临了好多帖依然字很丑，如果你参加个各种速成班、背了各种口诀还是不能改变什么，那么这套课将会给你答案。
这套课程将思维引导和书写训练相结合，由技法到心法、以术御道，让你打开书法学习这扇法门，彻底明白写字这件事。
练字不仅仅是技法，更是心法，练字即炼心，写字更是一种修行。我们希望这套课程不仅仅是帮你写一手好字，更希望是给你一种静心的方式。
目前的课程已经行迭代升级，直播老课程保留在了最后一个章节，大部分课程进行了重新设计并新增部分章节。
讲师田舍之，中国书法家协会会员、国学教育专家、汉字文化专家、中国青少年传统文化教育研究院高级研究员，北京大学“家长教育与人才成长”课题组专家。人教社《少儿国学》特约撰稿人，《宝葫芦》、《书法与汉字》杂志专栏作者。著有“舍之和你学汉字”系列《汉字可以这样画》、《汉字可以这样写》、《汉字可以这样解》，《汉字智慧》和《书法智慧》《国学与养成》等。
如果在购买或学习过程中有疑问请加助教微信：ziyuevideo666","想写好字又不想走弯路的青少年，想修身养性还想显摆的成年人，想开书法班或讲国学书法的老师","一直想读书却行动不起来，不知如何下手；","罗文益","1. 职场大神：25年职场创业经验，两家国际上市公司管理经历； 2. 超级导师：13年教育经历，培养5000职场人，听众超200万人 3. 超级学霸：14岁入读南京大学，每年读书200本");



CREATE TABLE cakeLimg(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  id INT,
  img_l VARCHAR(128)
);

INSERT INTO cakeLimg VALUES
	(NULL,1,"http://127.0.0.1:3000/img/11.png"),
	(NULL,1,"http://127.0.0.1:3000/img/1.jpg"),
	(NULL,1,"http://127.0.0.1:3000/img/11.jpg"),
	(NULL,2,"http://127.0.0.1:3000/img/2.jpg"),
	(NULL,2,"http://127.0.0.1:3000/img/22.jpg"),
	(NULL,2,"http://127.0.0.1:3000/img/222.jpg"),
	(NULL,3,"http://127.0.0.1:3000/img/3.jpg"),
	(NULL,3,"http://127.0.0.1:3000/img/33.jpg"),
	(NULL,3,"http://127.0.0.1:3000/img/333.jpg"),
	(NULL,4,"http://127.0.0.1:3000/img/40.jpg"),
	(NULL,4,"http://127.0.0.1:3000/img/4.jpg"),
	(NULL,4,"http://127.0.0.1:3000/img/44.jpg"),
	(NULL,5,"http://127.0.0.1:3000/img/5.jpg"),
	(NULL,5,"http://127.0.0.1:3000/img/55.jpg"),
	(NULL,5,"http://127.0.0.1:3000/img/555.jpg"),
	(NULL,6,"http://127.0.0.1:3000/img/6.jpg"),
	(NULL,6,"http://127.0.0.1:3000/img/66.jpg"),
	(NULL,6,"http://127.0.0.1:3000/img/666.jpg"),
	(NULL,7,"http://127.0.0.1:3000/img/7.jpg"),
	(NULL,7,"http://127.0.0.1:3000/img/77.jpg"),
	(NULL,7,"http://127.0.0.1:3000/img/777.jpg"),
	(NULL,8,"http://127.0.0.1:3000/img/8.jpg"),
	(NULL,8,"http://127.0.0.1:3000/img/88.jpg"),
	(NULL,8,"http://127.0.0.1:3000/img/888.jpg");



/**用户信息**/
CREATE TABLE cake_users(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16)              
);

/**用户信息**/
INSERT INTO cake_users VALUES
(NULL, 'dingding', '123456', 'ding@qq.com', '13501234567'),
(NULL, 'dangdang', '123456', 'dang@qq.com', '13501234568'),
(NULL, 'doudou', '123456', 'dou@qq.com', '13501234569'),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560');


/*旅行标题信息*/
CREATE TABLE travelt(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(128),
  price VARCHAR(16),   
  pro VARCHAR(128),
  img1 VARCHAR(128)                 
);

/*旅行详情*/
INSERT INTO travelt VALUES
(NULL, "【情迷贝加尔湖】伊尔库茨克+贝加尔湖4晚五日游",4399.00,"天津正班直飞+贝加尔湖一天自由活动+特色木屋酒店+境外高额保险","http://127.0.0.1:3000/img/traval/1540952780056.jpg"),
(NULL, "【辉煌俄罗斯】莫进圣出双点俄罗斯金环品质7日游",5299.00,"走进俄罗斯，让我们共同去追忆那段难舍的俄罗斯情结。","http://127.0.0.1:3000/img/traval/1541492921865.jpg"),
(NULL, "北青旅 【心花路放】昆明.大理洱海.丽江大索道.版纳.四飞8日浪漫之旅",5299.00,"探秘白族酒吧， 情刻奇迹墙， 早茶时光， 寻找白族部落","http://127.0.0.1:3000/img/traval/1541399162902.jpg"),
(NULL, "北青旅 古北水镇-鸳鸯湖双汽1日",6699.00,"水镇赏夜景 摇撸泛舟","http://127.0.0.1:3000/img/traval/1540872133567.jpg"),
(NULL, "【魅力自然冲绳】北京国航直飞,蓝色魅力冲绳半自由行3晚4日游,入住5星酒店",699.00,"每周三国航直飞、冲绳三大观巡礼、自由美丽海水族馆、高额保险","http://127.0.0.1:3000/img/traval/1540883600857.jpg"),
(NULL, "北青旅 【东南亚游轮】海洋航行者号香港+芽庄+胡志明+曼谷+新加坡+转港航线8晚9天",6699.00,"开启你的邮轮之旅","http://127.0.0.1:3000/img/traval/1541490299831.jpg"),
(NULL, "北青旅 南极三岛",6699.00,"全景探索之旅25日","http://127.0.0.1:3000/img/traval/1540883872988.jpg");


CREATE TABLE travelp(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  id INT,	
  day VARCHAR(128),
  addr VARCHAR(128),
  intr VARCHAR(128),
  eat VARCHAR(128),
  car VARCHAR(128),
  hotel VARCHAR(128)
);


INSERT INTO travelp VALUES
(NULL,"1","DAY01","贝加尔湖 ","去程： 天津-二连 09:50--11:20二连-伊库 12:20--14:40(参考时刻 最终时间以航司批复为准)
行程 机场航站楼集合，办理乘机手续，乘坐国际航班飞往伊尔库茨克，伊尔库茨克是俄罗斯东西伯利亚第二大城市和最大的经济中心之一，被称为“西伯利亚的心脏”、“东方巴黎”。抵达后办理入境手续（约1-2小时） 。伊尔库茨克建城于1661年，已有300多年的历史，入住酒店休息。","含晚餐","飞机","伊尔库茨克 "),
(NULL,"1","DAY02","环贝加尔湖火车  ","伊尔库茨克—里斯特温卡镇
酒店内早餐，然后驱车前往具有“贝加尔湖大门”之称的里斯特温卡镇，途中参观★【塔利茨露天民族博物馆】（参观时间约1小时），博物馆始建于1969年，坐落在一片林中空地上，它占地67公顷，在自然保护区域内。 在西汉时期，“贝加尔湖”是在匈奴的控制范围之内，名曰“北海”，苏武被匈奴王单于流放到“北海”去牧羊。苏武在北海艰难熬过19年，最后回到汉都长安。 ","含早餐、午餐、晚餐","大巴客车","里斯特温卡镇  "),
(NULL,"1","DAY03","奥利洪岛  ","去程： 天津-二连 09:50--11:20二连-伊库 12:20--14:40(参考时刻 最终时间以航司批复为准)
行程 机场航站楼集合，办理乘机手续，乘坐国际航班飞往伊尔库茨克，伊尔库茨克是俄罗斯东西伯利亚第二大城市和最大的经济中心之一，被称为“西伯利亚的心脏”、“东方巴黎”。抵达后办理入境手续（约1-2小时） 。伊尔库茨克建城于1661年，已有300多年的历史。","含晚餐","飞机","伊尔库茨克 "),


(NULL,"2","DAY01","莫斯科 ","今日搭乘海南航空公司的航班前往莫斯科，抵达莫斯科国际机场，机场领取行李，出海关后，由恭候多时的优秀导游接机乘坐旅游大巴前往宾馆下榻休息调整时差，准备迎接精彩的旅程。（温馨提示：俄罗斯比北京时间晚4小时，下飞机后已经是北京时间22点多，当晚无晚餐。请客人自备少许食品。）","含晚餐","飞机","莫斯科  "),
(NULL,"2","DAY02","奥利洪岛  ","去程： 天津-二连 09:50--11:20二连-伊库 12:20--14:40(参考时刻 最终时间以航司批复为准)
行程 机场航站楼集合，办理乘机手续，乘坐国际航班飞往伊尔库茨克，伊尔库茨克是俄罗斯东西伯利亚第二大城市和最大的经济中心之一，被称为“西伯利亚的心脏”、“东方巴黎”。抵达后办理入境手续（约1-2小时） 。伊尔库茨克建城于1661年，已有300多年的历史。","含晚餐","飞机","伊尔库茨克 "),
(NULL,"2","DAY03","谢尔盖大修道院   ","俄罗斯最著名的旅游路线之一。它包括位于俄罗斯心脏地带的一些历史悠久的古老城市。沿着这条路线能观赏到自古罗斯时代起极具历史价值的独特的建筑和景观。 ","含晚餐","飞机","圣彼得堡  "),
(NULL,"2","DAY04","冬宫   ","早餐后开始游览举世闻名的圣彼得堡（充分领略俄罗斯的最美城市的风情欣赏俄罗斯古典建筑、巴洛克式建筑、十月革命时期建筑），游览世界三大博物馆之一艾尔米塔什博物馆－冬宫（含门票，游览约2小时）（俄罗斯和世界建筑瑰宝--冬宫是俄罗斯著名皇宫,现为国立艾尔米塔什博物馆.该宫由著名建筑师拉斯 特雷利设计，初建于1754~1762年，是一座三层楼房，长约230米， 宽140米，高22米，呈封闭式长方形，占地9万平方米，建筑面积超过4.6万平方 米。","含晚餐","飞机","圣彼得堡  "),
(NULL,"2","DAY05","夏宫   ","夏宫花园（含门票，游览约1小时30分钟）（俄罗斯夏宫又称彼德宫(Peter the Great's Summer Palace)，坐落在芬兰湾南岸的森林中，距离市区29公里。始建于1714年，建筑豪华壮丽，被誉为“俄罗斯的凡尔赛”。","含晚餐","飞机","圣彼得堡 "),



(NULL,"3","DAY01","大理  ","大理庄园客栈简介：大理庄园客栈是大理古城最具白族五星特色的豪华客栈内含四栋白族园林四合院民居，古朴高贵的白族民居建筑被列入国家重点护文物单位}，在这样特色气派的客栈中让您感受白族文化的博大精深！客人可自行前往客栈内的酒吧消遣，一瓶啤酒，一份闲暇，磕着瓜子，跟随音乐的节拍，让思绪在这一刻彻底停留。同时，也亲身感受电影里那份啤酒时光，可别贪杯哦！(遇旺季如果无法安排大理庄园客栈，我社自动把客栈的主题活动升级为赠送餐厅的酒水饮料和精美果篮)
 ","含晚餐","飞机","大理   "),
(NULL,"3","DAY02","丽江  ","“东方瑞士”之称的玉龙雪山风景区：玉龙雪山是离赤道最近的雪山群，是三朵神的化身，所以在纳西族心目中它是一座神山乘海拔4506米的冰川大索道游玉龙雪山，从海拔3000米的草甸出发，穿越高大的松杉树林，远眺纳西圣山，欣赏雄奇壮丽的玉龙雪山，后游 有“仙人遗田”之称的白水河（游览时间约15分钟，蓝月谷、高原牧场甘海子（游览时间约15分钟），","含晚餐","飞机","丽江 "),
(NULL,"3","DAY03","谢尔盖大修道院   ","俄罗斯最著名的旅游路线之一。它包括位于俄罗斯心脏地带的一些历史悠久的古老城市。沿着这条路线能观赏到自古罗斯时代起极具历史价值的独特的建筑和景观。 ","含晚餐","飞机","圣彼得堡  "),
(NULL,"3","DAY04","版纳    "," 日余晖，结束一天旅途，晚餐后可与月光共步澜沧江畔","含晚餐","飞机","版纳  "),
(NULL,"3","DAY05","景洪    ","黎明之城”第一抹阳光照射，为您打开热带风情之旅","含晚餐","飞机","景洪 "),


(NULL,"4","DAY01","古北水镇  ","09：00国贸地铁站F口中服大厦，09：30地铁13号线望京西站D口出过街天桥下集合，认“众合旅游”导游旗集合（为了保证您的利益出发当天请您准时到达集合地点，过时不候；第二集合地点不是首发可能要等待敬请谅解）；出发前往密云古北水镇；
11:30左右抵达后，导游办理手续；游览水乡古镇”——【古北水镇】
12:00左右自行用中餐（费用自理）；","不含餐","大巴客车","温馨的家   "),


(NULL,"5","DAY01","冲绳岛  ","北京首都国际机场集合，乘坐中国国际航空直飞前往素有”东方夏威夷“之称的度假胜地 —冲绳岛，曾被称为”琉球王国“的冲绳，作为日本唯一的亚热带海洋性气候地区，四季温暖如春，自然条件优越。
 ","飞机餐","飞机","Rizzan Sea Park Hotel或同级酒店   "),
(NULL,"5","DAY02","冲绳岛   ","早餐后，东南亚最大的”地下美术馆“文化王国-玉泉洞（不少于80分钟），欣赏蕴藏有95万支的各式钟乳石，置身其中您也不免赞叹大自然的巧手神工，园内有一处全长5公里的钟乳石洞，被称为东洋第一奇景。同时您还可以体验冲绳历史文化的玉泉洞王国村。","含早餐、午餐、晚餐 
","飞机","Rizzan Sea Park Hotel或同级酒店  "),
(NULL,"5","DAY03","冲绳岛    ","俄罗斯最著名的旅游路线之一。它包括位于俄罗斯心脏地带的一些历史悠久的古老城市。沿着这条路线能观赏到自古罗斯时代起极具历史价值的独特的建筑和景观。 ","含晚餐","飞机","Rizzan Sea Park Hotel或同级酒店   "),
(NULL,"5","DAY04","冲绳岛    "," 日余晖，结束一天旅途，晚餐后可与月光共步澜沧江畔","含晚餐","飞机","Rizzan Sea Park Hotel或同级酒店   "),

(NULL,"6","DAY01","巴生港   ","今日于指定时间前往香港启德邮轮码头，办理登船手续进行边防及海关检查，通过后即开始登船。愉快的海上航行即将开始。贵宾们放下行李后可立即展开新奇的邮轮体验，寻访邮轮的每一个角落，熟悉邮轮上的每一个区域，在自助餐厅里也可以开始享用精美餐点，邮轮预计于北京时间晚上20：00启航离港，开始完美的海上之旅。
 ","飞含早餐、午餐、晚餐","轮船","邮轮    "),
(NULL,"6","DAY02","吉隆坡    ","这一天游轮在海上航行，您可以悠闲自在，放松心情，也可以参与无数精彩刺激的船上活动，从休闲舒适的咖啡馆到环境优雅的一流餐馆，从随意的自助餐到考究的餐点，您将在旅途中获得令人难以置信的美食体验，比比皆是的聚会场所，盛大的演出，您可以充分享受豪华游轮假期轻松有限的时光。","含早餐、午餐、晚餐 
","轮船","邮轮  "),
(NULL,"6","DAY03","香港     ","邮轮今天于早晨08:00抵达新加坡邮轮码头，享用早餐后，按顺序办理离船手续，所有乘客拿到行李后乘车前往参观鱼尾狮公园，滨海艺术中心，市政大厦，高等法院等景点，置身于这个繁华的现代化城市，国家面积虽小，却蕴藏着无穷的惊喜，您可以欣赏到新加坡的各处景点。","含早餐、午餐、晚餐 
","轮船","飞机上   "),
(NULL,"6","DAY04","泰国     ","自由选择参加岸上观光游","含早餐、午餐、晚餐 
","轮船","邮轮  "),

(NULL,"7","DAY01","伊斯坦布尔      ","邮轮今天于早晨08:00抵达新加坡邮轮码头，享用早餐后，按顺序办理离船手续，所有乘客拿到行李后乘车前往参观鱼尾狮公园，滨海艺术中心，市政大厦，高等法院等景点，置身于这个繁华的现代化城市，国家面积虽小，却蕴藏着无穷的惊喜，您可以欣赏到新加坡的各处景点。","含早餐、午餐、晚餐 
","轮船","飞机上   "),
(NULL,"7","DAY02","伊斯坦布尔-布宜诺斯艾利斯      ","于当地时间傍晚抵达阿根廷首都布宜诺斯艾利斯，抵达后导游接机，入住酒店休息。","含早餐、午餐、晚餐 
","轮船","邮轮  "),
(NULL,"7","DAY03","乌斯怀亚-登船日（毕哥水道）      ","午安排參观国家冰河公园 (Tierra del Fuego National Park) 及当地特色烤肉风味餐，下午约16:00 登船。于傍晚时分迎着夕阳，缓缓航经美麗壮观的毕哥水道 (Beagle Channel) 展开南极三岛之旅。 ","含早餐、午餐、晚餐 
","轮船","破冰船 “Ocean Diamond”（海钻石号 ）   ");


/*旅行标题信息*/
CREATE TABLE travelt2(
  id INT PRIMARY KEY AUTO_INCREMENT,
  fid INT,
  title VARCHAR(128),
  cover VARCHAR(128),
  price VARCHAR(16),   
  pro VARCHAR(128),
  img1 VARCHAR(128),
  img2 VARCHAR(128),
  a  VARCHAR(128),  
  b  VARCHAR(128),  
  c  VARCHAR(128),  
  d  VARCHAR(128),  
  e  VARCHAR(128),  
  f  VARCHAR(128),  
  g  VARCHAR(128),  
  h  VARCHAR(128),
  color VARCHAR(128)            
);
/*旅行详情*/
INSERT INTO travelt2 VALUES
(NULL, 1,"【新品首发+晒单赠爱奇艺】vivoY73 3GB+32GB 香槟金 4G全网通 拍照手机","【享6期免息】 19:9全面屏，2.5D玻璃后盖，6GB运存，Jovi人工智能 ",4399.00,"全网通版 4G+128G版本 ","http://127.0.0.1:3000/img/list/5354_1536638174781hd_bi_750x750.png","http://127.0.0.1:3000/img/list/20180531093520737172_original.jpg","
19:9灵动水滴屏|6.3英寸大屏|90.3%屏占比|前置AI美颜|人像模式|时尚渐变配色 ","MT6771（P60） ","4GB（注：由于手机系统和预装的程序占据了部分运存空间，实际运存空间少于4GB） ","主摄像头 1600万像素+副摄像头 200万像素 ","Android 8.1 ","6.3英寸 ","155.97 x 75.63 x 8.1 mm ","容量：3315mAh（典型值） ","粉色"),

(NULL,1, "19:9异形全面屏|2.5D玻璃后盖|前置2400万像素|Face Wake面部识别|Jovi人工智能|6GB运存|超窄边框|Deep Field深空音效 ","
6GB（注：由于手机系统和预装的程序占据了部分运存空间，实际运存空间少于6GB） 
64GB（注：由于手机系统和预装的程序占据了部分存储空间，可用存储空间少于64GB)  ",4399.00,"全网通版 6G+128G版本 ","http://127.0.0.1:3000/img/list/5353_1536638167990hd_bi_750x750.png","http://127.0.0.1:3000/img/list/20180514155428846636_original.jpg","
19:9灵动水滴屏|6.3英寸大屏|90.3%屏占比|前置AI美颜|人像模式|时尚渐变配色 ","MT6771（P60） ","4GB（注：由于手机系统和预装的程序占据了部分运存空间，实际运存空间少于4GB） ","2×1200万像素（2400万感光单元）+500万像素  ","Android 8.1 ","6.28英寸 FHD+  ","154.37×74.98×6.99mm  ","容量：3245mAh（典型值）  ","蓝色"),

(NULL, 1,"【新品首发+晒单赠爱奇艺】vivoY73 3GB+32GB 香槟金 4G全网通 拍照手机","【享6期免息】 19:9全面屏，2.5D玻璃后盖，6GB运存，Jovi人工智能 ",4399.00,"全网通版 4G+64G版本 ","http://127.0.0.1:3000/img/list/5352_1536545794714hd_bi_750x750.png","http://127.0.0.1:3000/img/list/20180531093520737172_original.jpg","
19:9灵动水滴屏|6.3英寸大屏|90.3%屏占比|前置AI美颜|人像模式|时尚渐变配色 ","MT6771（P60） ","4GB（注：由于手机系统和预装的程序占据了部分运存空间，实际运存空间少于4GB） ","主摄像头 1600万像素+副摄像头 200万像素 ","Android 8.1 ","6.3英寸 ","155.97 x 75.63 x 8.1 mm ","容量：3315mAh（典型值） ","黑色"),

(NULL,2, "19:9异形全面屏|2.5D玻璃后盖|前置2400万像素|Face Wake面部识别|Jovi人工智能|6GB运存|超窄边框|Deep Field深空音效 ","
6GB（注：由于手机系统和预装的程序占据了部分运存空间，实际运存空间少于6GB） 
64GB（注：由于手机系统和预装的程序占据了部分存储空间，可用存储空间少于64GB)  ",4399.00,"极光粉","http://127.0.0.1:3000/img/list/4999_1534840348402hd_bi_750x750.png","http://127.0.0.1:3000/img/list/20180514155428846636_original.jpg","
19:9灵动水滴屏|6.3英寸大屏|90.3%屏占比|前置AI美颜|人像模式|时尚渐变配色 ","MT6771（P60） ","4GB（注：由于手机系统和预装的程序占据了部分运存空间，实际运存空间少于4GB） ","2×1200万像素（2400万感光单元）+500万像素  ","Android 8.1 ","6.28英寸 FHD+  ","154.37×74.98×6.99mm  ","容量：3245mAh（典型值）  ","蓝色"),
(NULL, 2,"【新品首发+晒单赠爱奇艺】vivoY73 3GB+32GB 香槟金 4G全网通 拍照手机","【享6期免息】 19:9全面屏，2.5D玻璃后盖，6GB运存，Jovi人工智能 ",4399.00,"极光粉","http://127.0.0.1:3000/img/list/305885020315335134310770_x.jpg","http://127.0.0.1:3000/img/list/20180531093520737172_original.jpg","
19:9灵动水滴屏|6.3英寸大屏|90.3%屏占比|前置AI美颜|人像模式|时尚渐变配色 ","MT6771（P60） ","4GB（注：由于手机系统和预装的程序占据了部分运存空间，实际运存空间少于4GB） ","主摄像头 1600万像素+副摄像头 200万像素 ","Android 8.1 ","6.3英寸 ","155.97 x 75.63 x 8.1 mm ","容量：3315mAh（典型值） ","蓝色"),

(NULL,2, "19:9异形全面屏|2.5D玻璃后盖|前置2400万像素|Face Wake面部识别|Jovi人工智能|6GB运存|超窄边框|Deep Field深空音效 ","
6GB（注：由于手机系统和预装的程序占据了部分运存空间，实际运存空间少于6GB） 
64GB（注：由于手机系统和预装的程序占据了部分存储空间，可用存储空间少于64GB)  ",4399.00,"极光粉","http://127.0.0.1:3000/img/list/4999_1534840348402hd_bi_750x750.png","http://127.0.0.1:3000/img/list/20180514155428846636_original.jpg","
19:9灵动水滴屏|6.3英寸大屏|90.3%屏占比|前置AI美颜|人像模式|时尚渐变配色 ","MT6771（P60） ","4GB（注：由于手机系统和预装的程序占据了部分运存空间，实际运存空间少于4GB） ","2×1200万像素（2400万感光单元）+500万像素  ","Android 8.1 ","6.28英寸 FHD+  ","154.37×74.98×6.99mm  ","容量：3245mAh（典型值）  ","蓝色"),
(NULL,2, "【新品首发+晒单赠爱奇艺】vivoY73 3GB+32GB 香槟金 4G全网通 拍照手机","【享6期免息】 19:9全面屏，2.5D玻璃后盖，6GB运存，Jovi人工智能 ",4399.00,"极光粉","http://127.0.0.1:3000/img/list/305885020315335134310770_x.jpg","http://127.0.0.1:3000/img/list/20180531093520737172_original.jpg","
19:9灵动水滴屏|6.3英寸大屏|90.3%屏占比|前置AI美颜|人像模式|时尚渐变配色 ","MT6771（P60） ","4GB（注：由于手机系统和预装的程序占据了部分运存空间，实际运存空间少于4GB） ","主摄像头 1600万像素+副摄像头 200万像素 ","Android 8.1 ","6.3英寸 ","155.97 x 75.63 x 8.1 mm ","容量：3315mAh（典型值） ","蓝色"),

(NULL,2, "19:9异形全面屏|2.5D玻璃后盖|前置2400万像素|Face Wake面部识别|Jovi人工智能|6GB运存|超窄边框|Deep Field深空音效 ","
6GB（注：由于手机系统和预装的程序占据了部分运存空间，实际运存空间少于6GB） 
64GB（注：由于手机系统和预装的程序占据了部分存储空间，可用存储空间少于64GB)  ",4399.00,"极光粉","http://127.0.0.1:3000/img/list/4999_1534840348402hd_bi_750x750.png","http://127.0.0.1:3000/img/list/20180514155428846636_original.jpg","
19:9灵动水滴屏|6.3英寸大屏|90.3%屏占比|前置AI美颜|人像模式|时尚渐变配色 ","MT6771（P60） ","4GB（注：由于手机系统和预装的程序占据了部分运存空间，实际运存空间少于4GB） ","2×1200万像素（2400万感光单元）+500万像素  ","Android 8.1 ","6.28英寸 FHD+  ","154.37×74.98×6.99mm  ","容量：3245mAh（典型值）  ","蓝色"),
(NULL, 2,"【新品首发+晒单赠爱奇艺】vivoY73 3GB+32GB 香槟金 4G全网通 拍照手机","【享6期免息】 19:9全面屏，2.5D玻璃后盖，6GB运存，Jovi人工智能 ",4399.00,"极光粉","http://127.0.0.1:3000/img/list/305885020315335134310770_x.jpg","http://127.0.0.1:3000/img/list/20180531093520737172_original.jpg","
19:9灵动水滴屏|6.3英寸大屏|90.3%屏占比|前置AI美颜|人像模式|时尚渐变配色 ","MT6771（P60） ","4GB（注：由于手机系统和预装的程序占据了部分运存空间，实际运存空间少于4GB） ","主摄像头 1600万像素+副摄像头 200万像素 ","Android 8.1 ","6.3英寸 ","155.97 x 75.63 x 8.1 mm ","容量：3315mAh（典型值） ","蓝色"),

(NULL,2, "19:9异形全面屏|2.5D玻璃后盖|前置2400万像素|Face Wake面部识别|Jovi人工智能|6GB运存|超窄边框|Deep Field深空音效 ","
6GB（注：由于手机系统和预装的程序占据了部分运存空间，实际运存空间少于6GB） 
64GB（注：由于手机系统和预装的程序占据了部分存储空间，可用存储空间少于64GB)  ",4399.00,"极光粉","http://127.0.0.1:3000/img/list/4999_1534840348402hd_bi_750x750.png","http://127.0.0.1:3000/img/list/20180514155428846636_original.jpg","
19:9灵动水滴屏|6.3英寸大屏|90.3%屏占比|前置AI美颜|人像模式|时尚渐变配色 ","MT6771（P60） ","4GB（注：由于手机系统和预装的程序占据了部分运存空间，实际运存空间少于4GB） ","2×1200万像素（2400万感光单元）+500万像素  ","Android 8.1 ","6.28英寸 FHD+  ","154.37×74.98×6.99mm  ","容量：3245mAh（典型值）  ","蓝色");




CREATE TABLE travelp2(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  id INT,	
  day VARCHAR(128),
  addr VARCHAR(128),
  intr VARCHAR(128),
  eat VARCHAR(128),
  car VARCHAR(128),
  hotel VARCHAR(128)
);
INSERT INTO travelp2 VALUES
(NULL,"1","DAY01","贝加尔湖 ","去程： 天津-二连 09:50--11:20二连-伊库 12:20--14:40(参考时刻 最终时间以航司批复为准)
行程 机场航站楼集合，办理乘机手续，乘坐国际航班飞往伊尔库茨克，伊尔库茨克是俄罗斯东西伯利亚第二大城市和最大的经济中心之一，被称为“西伯利亚的心脏”、“东方巴黎”。抵达后办理入境手续（约1-2小时） 。伊尔库茨克建城于1661年，已有300多年的历史，入住酒店休息。","含晚餐","飞机","伊尔库茨克 "),
