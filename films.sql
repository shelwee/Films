/*
Navicat MySQL Data Transfer

Source Server         : filmsql
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : films

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2013-04-29 23:20:54
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `area`
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `Aid` int(11) NOT NULL,
  `Azone` varchar(24) NOT NULL,
  PRIMARY KEY (`Aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('1', '大陆');
INSERT INTO `area` VALUES ('2', '港台');
INSERT INTO `area` VALUES ('3', '欧美');
INSERT INTO `area` VALUES ('4', '日韩');

-- ----------------------------
-- Table structure for `film`
-- ----------------------------
DROP TABLE IF EXISTS `film`;
CREATE TABLE `film` (
  `FID` int(11) NOT NULL,
  `FSortID` int(11) DEFAULT NULL,
  `FAid` int(11) DEFAULT NULL,
  `FFilmName` varchar(48) NOT NULL,
  `FDiretor` varchar(24) NOT NULL,
  `FPlay` varchar(128) NOT NULL,
  `FIntro` longtext NOT NULL,
  `FLanguage` varchar(20) NOT NULL,
  `FLong` int(11) NOT NULL,
  `FDate` varchar(20) NOT NULL,
  `FType` varchar(2) NOT NULL,
  `FPhoto` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `FK2FF584571FC09B` (`FSortID`),
  KEY `FK2FF58478FCC381` (`FAid`),
  CONSTRAINT `FK2FF584571FC09B` FOREIGN KEY (`FSortID`) REFERENCES `sort` (`Sid`),
  CONSTRAINT `FK2FF58478FCC381` FOREIGN KEY (`FAid`) REFERENCES `area` (`Aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of film
-- ----------------------------
INSERT INTO `film` VALUES ('5', '6', '3', '暮光之城：破晓（上）', '比尔．康顿', '克里斯汀．斯图尔特 罗伯特．帕丁森 泰勒．洛特纳', '贝拉和爱德华终于要结婚了！这是贝拉有生以来最幸福的一刻，见证婚礼的宾客也都期待着这一暮而情绪高涨。两人飞到巴西的艾思蜜岛上渡蜜月。不久贝拉发现她竟然怀孕了。于是，看似有情人终成眷属的梦幻情节下，一场即将撼动吸血鬼、狼人和人类世界的暗涛汹涌对决，正悄悄来袭……贝拉怀了人类和吸血鬼的混血胎儿，竟以异常的速度在她体内成形，令贝拉吃足苦头，甚至危及她的健康。爱德华怕胎儿夺去贝拉性命，希望她能放弃孩子，但贝 拉却甘为生下孩子而冒生命危险。另一厢的狼族获悉后，担心胎儿将来会对族人构成威胁，决定千方百计除掉它，即使连带杀了贝拉也在所不惜。雅各布为了保护心爱的贝拉，决定离开狼族，连夜奔向库伦家警告这场狼族的猎杀行动。贝拉即将分娩，腹中勐烈成长的胎儿令她断掉肋骨并大量失血，在她命悬一线之际，爱德华为了救她只有一个办法…他把装有自己吸血毒液的针管插进贝拉心脏，贝拉陷进蜕变的痛苦中，到底，她会变成吸血鬼吗？　　', '国语', '118', '2012-10-25', '2D', '5.jpg');
INSERT INTO `film` VALUES ('6', '8', '3', '谍影重重4', '托尼．吉尔罗伊', '亚伦．艾克哈特 黎安娜．里伯拉托 欧嘉．柯瑞兰', '继杰森．伯恩后，另一美国中情局特工艾伦．克劳斯Aaron Cross（杰瑞米．雷纳饰）亦将身陷险境。因为“杰森．伯恩事件”，令中情局的特工行动“绊脚石Treadstone”被公开，为了隐瞒其它特工行动，以拜亚ret. Colonel Eric Byer（爱德华．诺顿 饰）为首的美国中情局，正计划铲除过去数十年来发展的特工行动，包括“结果Outcome”行动当中，体能和智能更“先进”的“5号”特工艾 伦．克劳斯，展开横跨全球的逃杀。而艾伦．克劳斯剩下的唯一希望，竟然就是过去四年来，不断在背后监控和研究其活动的科学研究员玛泰博士Dr. Marta Shearing（蕾切尔．薇姿饰）……', '外语', '135', '2012-10-16', '2D', '6.jpg');
INSERT INTO `film` VALUES ('8', '2', '1', '一九四二', '冯小刚', '张国立 张涵予 徐帆', '一九四二年，因为一场旱灾，我的故乡河南，发生了吃的问题。与此同时，世界上还发生着这样一些事：斯大林格勒战役、甘地绝食、宋美龄访美和丘吉尔感冒。老东家叫范殿元。大灾之年，战争逼近，他赶着马车，马车上拉着粮食，粮食上坐着他一家人，也加入往陕西逃荒的人流。三个月后，到了潼关，车没了，马没了，车上的人也没了。这时老东家特别纠结，他带一家人出来逃荒是为了让人活，为什么到了陕西，人全没了？于是他决定不逃荒了， 开始逆着逃荒的人流往回走。人流中喊：“大哥，怎么往回走哇？往回走就是个死。”老东家：“没想活着，就想死得离家近些。” 转过山坡，碰到一个同样失去亲人的小姑娘，正爬在死去的爹的身上哭。老东家上去劝小姑娘：“妮儿，别哭了，身子都凉了。”小姑娘说，她并不是哭她爹死，而是她认识的人都死了，剩下的人她都不认识了。一句话让老东家百感交集，老东家：“妮儿，叫我一声爷，咱爷俩就算认识了。”小姑娘仰起脸，喊了一声“爷”。老东家拉起小姑娘的手，往山坡下走去。漫山遍野，开满了桃花。十五年后，这个小姑娘成了俺娘。', '国语', '120', '2012-12-31', '2D', '8.jpg');
INSERT INTO `film` VALUES ('9', '9', '2', '寒战', '陆剑青 梁乐民', '郭富城 梁家辉 刘德华', '午夜的警队，报案中心接到匿名电话，一辆前线冲锋车被胁持。车内五位警员及武器装备成为贼人谈判筹码。事件惊动警队，冲锋车内其中被劫持的警员，竟为现任行动副处长李文彬独子（彭于晏 饰）！适逢警队一哥外访未返，下任处长选举的两大热门：鹰派人物李文彬（梁家辉 饰）与年轻的警长刘杰辉（郭富城 饰）都开始大施拳脚。李立即指挥营救，并将此次行动代号为（寒战）。可贼人竟对警队内部一切了如指掌、洞悉先机，警队精英尽出 ，行动依然无功而返，处处受制，众同袍均开始怀疑他的决策，推举刘杰辉接手整个行动，危急时刻，二虎相争，刘杰辉毫不示弱，不同与李的激进手法，他选择主动与贼人沟通，并答应交予贼人赎金。整个交收赎金过程中，刘设法令赎金留下线索，以便追查贼人位置。可道高一尺，魔高一丈，刘非但找不着贼人踪迹，还将巨额赎金失却，跟刘出生入死的同袍徐永基（钱嘉乐 饰）更在交收赎金过程中殉职，刘内疚不已。事件不但惊动了政府内部，也惊动了廉政公署，因为廉署收到匿名人士举报，怀疑两位副处长，其中一人在此危急关头以权谋私……香港的安全瞬时沦陷，警队及香港的管治漏洞被抖出，威胁直逼警队内部，矛头直指警队高层。', '国语', '120', '2012-12-28', '2D', '9.jpg');
INSERT INTO `film` VALUES ('10', '1', '3', '全面回忆', '伦．怀斯曼', '柯林．法瑞尔 凯特．贝金赛尔 杰西卡．贝尔', '主人公道格拉斯．奎德（柯林．法瑞尔 Colin Farrell 饰）是一名普通的工厂工人，不普通在于他拥有一位漂亮的妻子（凯特．贝金赛尔 Kate Beckinsale 饰），两人看似十分恩爱。但道格拉斯内心却似乎有某种不满足，在夜晚时常怪梦连连，梦见自己身处火星，而在工作中也总是恍惚走神。在朋友的劝说下，他决定自己该度个假，于是来到了Rekall公司，希望植入火星间谍的记忆以满足自己的大脑对于冒 险的渴望。可是就在植入记忆的过程中，意想不到的事情发生了。奎德突然成了“政府”追杀的逃犯，而他发现自己竟然有着过人的身手。逃离Rekall之后，奎德遇到了一名叛军的女战士（杰西卡．贝尔 Jessica Biel 饰），两人并肩作战但彼此却并不信任。就连奎德深爱的妻子Lori，现在也变成了追杀他的超级女特工。究竟什么是真实，什么是虚幻，哪些是梦境，哪些才是真实发生过的记忆，这一切让奎德根本无法分辨，他必须寻找到自己真实的身份、爱人和命运。', '外语', '118', '2012-10-20', '2D', '10.jpg');
INSERT INTO `film` VALUES ('11', '5', '3', '大海啸之鲨口逃生', '金波．兰道', '沙维尔．塞缪尔 沙妮．文森 菲比．托金', '宁静的澳洲海滩上，宿醉的救生员乔许让女友蒂娜的哥哥罗利替他去海上例行检查防鲨网的设置，结果罗利遭到了鲨鱼的袭击，罗利的死对乔许和蒂娜造成了很大的心理阴影，乔许为此对女友充满了歉疚，乔许为此放弃了救生员的工作去超市做了理货员，蒂娜也远赴中国学习舞蹈。一年后，当蒂娜重新返回澳洲后，和乔许在超市不期而遇，与此同时，超市里风起云涌，偷窃、抢劫……就在这起突发事件白炽化的时候，地动天摇，海啸铺天盖地而来，超 市立刻沦为孤岛，大鲨鱼随之而来，一场人鲨大战瞬间展开……', '外语', '93', '2012-10-12', '3D', '11.jpg');
INSERT INTO `film` VALUES ('12', '5', '3', '普罗旺斯惊魂记', '朱利安．拉孔布 帕斯卡尔．西德', '蕾蒂莎．科斯塔 蒂埃里．钮维 罗杰．杜马斯', '1922的法国，没有战争的侵扰，显得静谧而美好。苏珊娜，一个年轻、著名的小说家因为缺少灵感而异常苦恼。为了寻找到自己心中的“缪斯”，她跑到了祥和的乡下，咬把自己孤立起来。在这里，她住在一栋巨大的房子里，准备静心写自己的小说。这栋房子大而诡秘，到处都是形形色色的房间。在打开了一个被封起来的房间之后，苏珊娜把自己的“创作基地”放在了这里。说来奇怪，本来文思枯竭的苏珊娜只要一坐在这个房间的桌子前便会文如 泉涌。伴着打字机噼里啪啦的声响，苏珊娜的小说进展得很顺利，可是小说写得越好，苏珊娜的精神状况就越差。她开始不断地出现幻听和幻视。而且在午夜时分，她还会做噩梦。似乎那本正在被顺利创作的小说已经成为了她的梦魇。事情不止于此，村庄里接连失踪了几个小女孩，村民开始恐慌，而发生在苏珊娜和她周围的怪事也越来越多。', '外语', '87', '2012-10-30', '3D', '12.jpg');
INSERT INTO `film` VALUES ('13', '7', '3', '无敌破坏王', '里奇．摩尔', '约翰．C．赖利 萨拉．丝沃曼 简．林奇', '主角破坏王拉尔夫是80年代早期电玩中的人物，他的角色设定是个坏蛋，却梦想和同款游戏中的好人“菲力（Fix-It Felix）”一样受到大众的喜爱，于是他潜入现代电玩游戏，在这里他看能让自己成为英雄的机会，一心想要证明自己可以当个好人，因而展开一场大冒险。', '外语', '100', '2012-12-27', '3D', '13.jpg');
INSERT INTO `film` VALUES ('14', '6', '1', '2012世界末日', '罗兰．艾默里奇', '约翰．库萨克 桑迪．牛顿 阿曼达．皮特', '太阳活动异常，地球内部的能量平衡系统面临崩溃，玛雅人的预言即将实现，人类将遭遇灭顶之灾。各国政府已经联手开始秘密制造方舟，希望能躲过这一浩劫。以写科幻小说谋生的杰克逊（约翰．库萨克 饰）在带孩子们到黄石公园渡周末时发生一连串怪事，而且遇到了神经兮兮的查理（伍迪．哈里森 饰)，查理告诉他世界末日即将来临。伴随着火山爆发，强烈地震以及海啸，杰克逊带领自己的家人驾驶一架临时租来的飞机冲出被死神阴霾瞬间笼 罩的城市上空，开始寻找查理口中各国政府正在联合秘密制造的方舟。在生死攸关的时刻，一些伟大的鬼魂将脱颖而出，而一些自私的心灵将无所遁形，当千千万万个生灵通过各种方法来到方舟制造基地之时，方舟有限的容纳数量引发前所未有的恐慌。最终，仅存的人们用互爱和对生命的尊重渡过了难关。', '外语', '158', '2012-12-28', '3D', '14.jpg');
INSERT INTO `film` VALUES ('15', '1', '1', '横山号', '周伟', '萨日娜 吴健 徐囡楠', '影片讲述石国梁（杜雨露饰）为解决边远地区群众看病难的问题，身先士卒，坚定地投身于“流动医院”的事业当中。斯日（徐囡楠饰）大学毕业后，热切地回到生养她的内蒙古大草原，希望成为牧民的贴心医生和健康使者。然而，在医疗实践中，她发现自己无法面对病人。在母亲萨日娜（萨日娜饰）的鼓励下，徘徊在人生的十字路口的她选择加入“流动医院”，追随石国梁救死扶伤。医疗车行走在茫茫的内蒙大草原上，一路艰辛坎坷，但终没能阻挡 他们积极救助当地牧民的步伐，斯日也在一次次救助中真正成长起来。一场突如其来的鼠疫让石国梁的儿子石蒙生（吴健饰）看清自己内心深处对父亲、对女友斯日的爱，他毅然放弃出国的机会，加入了流动医院，成为大草原上又一名白衣天使。', '国语', '90', '2012-12-17', '2D', '15.jpg');
INSERT INTO `film` VALUES ('16', '4', '1', '新妈妈再爱我一次', '金世勋', '陆毅 景甜 郝好', '妻子小霖（景甜 饰）去世后，米一帆（陆毅 饰）就和五岁的儿子小乐（迷你彬 饰）相依为命。小霖去世前留下“下一年的雨季会回到人世”的诺言，父子俩将信将疑。没想到第二年雨季小霖真的出现，只是记忆全无，破碎的家庭再次团圆，虽然存有疑虑，但米一帆和小乐还是将他们的爱毫无保留地给了小霖，渐渐小霖也真正融入这个家庭，接受了妻子和母亲的角色，幸福的家庭看似美好，但人死真的可以复生吗？眼前这个失忆的小霖真的是他们 的亲人吗？', '国语', '90', '2012-12-27', '2D', '16.jpg');
INSERT INTO `film` VALUES ('17', '10', '3', '少年派的奇幻漂流', '李安', '苏拉．沙玛 塔布 伊尔凡．可汗', '主人公Pi的父亲经营着一个动物园，使得他从小就很了解动物的习性。在后来举家迁往加拿大时，与他们同船的还有动物园里的一些动物，因为父亲打算把它们趁机以高价卖掉。然而货船中途沉没，Pi的家人全部遇难。只留下Pi和一只名叫理查德．帕克的孟加拉虎、一只鬣狗、一只大猩猩，一匹斑马逃到救生艇上，随后上演了一出海上逃命求生的故事。', '外语', '90', '2012-12-30', '3D', '17.jpg');
INSERT INTO `film` VALUES ('18', '3', '1', '太极2英雄崛起', '冯德伦', '梁家辉 袁晓超 杨颖 ……', '杨露禅（袁晓超 饰）和陈玉娘（杨颖 饰）大喜之日，失踪多年的陈家长子栽秧（冯绍峰 饰），突然带着媳妇允儿（谢欣颖 饰）现身，并以莫测高深的武功震慑众人。未久，高挂在陈家祠堂里的铜钟“大法陀”突然在深夜落地自转、巨响不歇。村 民骚动，他们说“铜钟夜响”是灭族前兆，长老则认为收外姓入门，触犯了祖先立下的禁忌“铜钟谶”。任凭玉娘如何辩护，改变不了家族成员驱逐杨露禅的决心。深谋远虑的掌门人陈长兴亲手拆穿了 儿子栽秧的诡计：他用花样百出的科学手法伪装成武功高手，和允儿连手制造骚乱、混淆视听，目的在挑拨离间家族内部和谐，与方子敬（彭于晏 饰）里应外合，陈家沟不攻自破。灾难与变局接踵而来。实时悔悟的陈栽秧临阵倒戈，让杨露禅和陈玉娘得以趁隙逃离。两人京城请愿后又面临新的巨大阻碍……太极拳的精随，消解了让杨露禅头上的肉角，并为他赢来陈玉娘的爱情。但遭到朝廷通缉的方子敬已经逃亡，另一场风云变幻，似乎在隐隐酝酿……', '国语', '98', '2012-10-25', '3D', '18.jpg');
INSERT INTO `film` VALUES ('19', '5', '1', '诡爱', '梁婷', ' 辛芷蕾  成毅  于毅 … …', '著名电台女主播萧潇雅在结婚前七天，因亲眼目睹名作家未婚夫李明轩与前女友许家雯偷情，萧萧雅忍受不了背叛出轨的伤痛而自杀，幸被抢救复生，男友李明轩却坠楼身亡……是自杀还是他杀还没有揭晓真相，李明轩的前女友许嘉雯却又死于非命，李明轩的弟弟李明炎一直对哥哥的死觉得离奇，经调查发现偷情背叛事件出自许嘉文和薛威的策划，在真相还没有大白前，薛威也离奇死亡……谁是幕后真凶？是阴阳两隔的恋人的疯狂复仇？是横刀夺爱者 的杀人灭口？还是宿命在爱情开始的一刻早已注定？', '国语', '105', '2012-10-30', '2D', '19.jpg');
INSERT INTO `film` VALUES ('20', '2', '1', '三个未婚妈妈', '江平 刘新', '车永莉 爱新觉罗．启星 居文沛', '都市白领叶晓萌、暴发户的情妇美玲、女企业家阿文，三个原本素不相识的女人，因为一个宝宝走到了一起。叶晓萌和男友，美玲和情夫，阿文和婆婆之间的关系，因为这个宝宝的出现而发生了改变。在善良和爱心的作用下，啼笑皆非的误会被一一化解，而这个宝宝身世之谜也一点点被揭开……', '国语', '90', '2012-12-17', '2D', '20.jpg');
INSERT INTO `film` VALUES ('21', '2', '1', '笑过2012', '游晓锦', '王景春 王柠 李心敏', '震前，大马在涉黑人物幺鸡引诱参与赌博，输掉了工厂家产和老婆，大马打残了老婆和幺鸡。震时，监狱服刑的大马在骗保外就医时遭遇特大地震，大马和押送警察小李一起救助病人，不幸房屋坍塌，小李牺牲前希望大马能自己回监狱，争取宽大。震后，大马得知妻子遇难，8岁儿子失踪，他希望安顿儿子后再监狱。牺牲警察小李的父亲警察老李开始追踪大马，想争取大马自动归案。宋姐患乳腺癌后，深信2012年地球毁灭的玛雅人预言，她在收养 了地震后的孤儿，并为孩子起名挪亚。在老李的帮助下大马找到了儿子，但挪亚不认父亲，宋姐也不让大马带走孩子。在争夺和追寻孩子的过程中大马和宋姐擦出爱情火花，挪亚换上地震后遗症，为满足挪亚的愿望，大马筹钱开始为挪亚造一个可以抵抗灾难的“挪亚方舟”。这时幺鸡出现让大马为他运送文物走私文物，他便出钱完成“挪亚方舟”。为求保险，幺鸡给大马绑上了遥控炸弹，还绑架了宋姐和挪亚。这时老李追上大马晓以大义，公安在大马的协助下抓获了贩卖文物的犯罪团伙，幺鸡得知罪行败露，准备引爆炸弹，宋姐发疯的冲上去抢引爆器，两人双双摔下十几层的高楼，幺鸡毙命，宋姐逝去脸上仍带着笑意。', '国语', '115', '2012-12-28', '2D', '21.jpg');
INSERT INTO `film` VALUES ('22', '1', '1', '十二生肖', '成龙', '成龙 权相佑 廖凡', '成龙扮演的杰克为领取国际文物贩子劳伦斯开出的巨额奖金，四处寻找“圆明园”十二生肖中失散的最后四个兽首。在寻宝过程中，他爱上了中国文物专家关教授的女儿Coco。被关教授父女的爱国情怀所感动，一向惜金如命的杰克在最后关头放弃了金钱，转而帮助Coco全力挽救国宝，最终将寻回的兽首归还中国。', '国语', '120', '2012-12-20', '2D', '22.jpg');
INSERT INTO `film` VALUES ('23', '1', '1', '倾城', '黄宏', '黄觉 /林心如 /丁勇岱', '西南某城警官王老石对五年前逃脱的银行盗窃犯刘川一直耿耿于怀，发誓要亲手抓获。刘川东躲西藏了好几年，为了女儿，他再次潜回小城，却与王警官不期而遇。两个人展开生死追逐。就在王老石抓获刘川的瞬间，地动山摇，整座城市轰然倾塌。苏醒过来的刘川为了方便，换上了王老石的警服，却没想到这身警服让他陷在救援中无法脱身。而叛逆女孩秦肖雄因为刘川的勇敢，心生爱意。', '国语', '94', '2013-05-10', '2D', '23.jpg');
INSERT INTO `film` VALUES ('24', '1', '1', '天机．富春山居图', '孙健君', '刘德华 /林志玲 /张静初 /佟大为 /斯琴高娃', '中国元代名画《富春山居图》合璧展在即，国际黑市开出天价，日本黑帮、英伦大盗闻风而动。身陷不白之冤的国际特工肖锦汉（刘德华 饰）为证清白重出江湖，暗中执行“孙子兵法”计划；临危受命的中国人保高管林雨嫣（张静初 饰），护宝遇一波三折，困于多方势力漩涡；神秘女郎丽莎（林志玲 饰），百变魅惑，却失落真心；幕后冷血黑手小山本（佟大为 饰），嗜血如命，终落败归尘；但各怀绝技的12星座魔女（石天琦、王曼妮 等饰）为小山本作奸犯科，忠心到极致。', '国语', '120', '2013-06-09', '3D', '24.jpg');
INSERT INTO `film` VALUES ('25', '2', '1', '亲爱', '李欣蔓', '余男 /于谦 /乌吉穆 /邵何之杰 /徐玉兰 /高鑫', '在上海的日本企业任高管的陆雪妮（余男 饰）面对母亲的离去痛不欲生，夜里常常被各种噩梦和过往的经历缠绕。原来她一直和日本战争遗孤的母亲、还有一个不到5岁的儿子相依为命。孤独的雪妮独自处理着母亲的后事，还要面对工作上的压力和孩子的教育问题。身边除了一个周律师（于谦 饰）可以商量以外，没有可以信赖的人。', '国语', '99', '2013-05-10', '2D', '25.jpg');
INSERT INTO `film` VALUES ('26', '1', '3', '遗落战境', '约瑟夫．科辛斯基', '汤姆．克鲁斯 /摩根．弗里曼 /欧嘉．柯瑞兰寇 /尼可拉．科斯特-瓦尔道 /佐伊．贝尔', '在2015年，人类发射“奥德赛”号飞船到火星建设第一个基地，谁知飞船途中遇到了一个突然出现的巨大白色立方体，从此奥德赛号及其飞船成员就杳无音讯……30年后，地球已经面目全非。原来，当年突然出现的白色立方体是外星人的发明，为的是寻找合适的星球改造成适合他们生存的环境。但发明“白立方”的外星人已经灭绝很久了，空留着这个“白立方”运行在地球的轨道上。“白立方”试图弥补它对地球造成的损害，遂用克隆人来重新繁荣地球上的人口，而克隆人的原形就是当年它捕获的“奥德赛”号飞船的船员。', '外语', '126', '2013-05-10', '2D', '26.jpg');
INSERT INTO `film` VALUES ('27', '4', '1', '小时代', '郭敬明', '杨幂 /柯震东 /郭采洁 /谢依霖 /郭碧婷', '电影《小时代》是根据同名小说《小时代》改编，由著名作家郭敬明首执导筒并担任编剧的大荧幕处女座，该电影汇集了台湾金牌制作人柴智屏，以上海为背景，讲述了林萧、南湘、顾里、唐宛如四个从小感情深厚、有着不同价值观和人生观的女生，先后所经历的友情、爱情，乃至亲情的巨大转变。', '国语', '100', '2013-06-27', '2D', '27.jpg');
INSERT INTO `film` VALUES ('28', '2', '1', '一路狂奔', '王钧', '李梦男/ 潘斌龙/ 谢娜/ 何炅/ 杜海涛/ 吴昕/ 刘桦/ 罗中旭/ 孙宁/ 王晴', '　某地产集团高层许德才被迫出逃。与其有暧昧关系的女老板赵冰要求他背黑锅，给他两个选择：一是逃跑，二是死。\r\n　　许逃亡途中路遇昔日的朋友王小兵借钱给女儿看病。随后王小兵被人殴打，导致许德才丢了箱子，他的证件和机票在箱中。\r\n　　于是两人开始寻找箱子的历险，遇上了地下“交通局长”黄峰，被“爹坑”万鹏，寻找公司的鲍总，不但箱子没找到，王小兵的车被扣，许德才的卡上钱也被骗走。\r\n　　许德才找赵冰求助，引来追杀，两人仓皇逃窜中许德才竟然发现王小兵其实与自己失散十年的女友杨珊有联系。十余年的恩怨此时得以解开，许德才有了深深的负罪感，他决定自首同时让王小兵和杨珊回家乡生活。', '国语', '96', '2013-05-24', '2D', '28.jpg');
INSERT INTO `film` VALUES ('29', '5', '1', '冷瞳', '蒋国权/王柯', '周秀娜 /刘羽琦 /洪天照 /孙祖杨 /黄又南 /刘锡明', '苏氏集团总裁苏光明来到南海考查时在别墅里被意外伤害，变成植物人，女儿苏雨辰带着未婚夫许博文及前男友钟伟强入住别墅调查父亲被害真相，此后，三人仿佛步入地狱边缘，一起起可怕事件接踵而至，三人突破重重危机，曲终人散之时，苏雨辰终于发现，最可怕的恶魔居然是自己最亲的人。', '国语', '90', '2013-05-17', '2D', '29.jpg');
INSERT INTO `film` VALUES ('30', '4', '2', '结婚那件事', '郑建国', '阿牛 /江若琳 /惠英红 /朱厚任 /陈建彬 /陈泓宇 /童冰玉', '影片讲述一对决定结婚的甜蜜情侣的故事。新郎蔡伟杰（阿牛 饰）是一名来自马来西亚的一个纯朴福建家庭，到新加坡打拼的工程师。他立志有一天能出人头地，让家人过着衣食无忧的生活。她既温柔又漂亮的太太，芷欣（江若琳 饰），则来自新加坡一个广东富商的家庭。 他们美好的因缘谁知接踵而来的是一连串的灾难－穷富的差距、新马两国和福建与广东传统文化的差别。这简直增加了婚礼筹备的困难！为了以表诚意，伟杰答应了所有准岳父母的刁 蛮要求，在新加坡办一场奢华婚礼。', '国语', '111', '2013-05-24', '2D', '30.jpg');
INSERT INTO `film` VALUES ('31', '4', '1', '杀戒', '竹卿', '刘烨 /倪妮 /王迅 /张豆豆 /孙桂田 /黄柏钧', '这是一部关于男人和女人战争的片子。故事围绕男女主人公争夺一个极其重要的人物展开。他们试探、怀疑、跟踪、争吵，上法庭，大打出手，无所不能用其极的斗智斗勇。他们是恋人，是夫妻，是仇人，是敌人。因此可以说，这是一部惊心动魄又很虐心的片子。这虐心，虐急了，到底杀还是不杀，谁杀了谁呢？男人眼中的钢琴女神，女人眼中的白马王子，可是战争一旦爆发，可就变成了敌人，就要置对方于死地。', '国语', '110', '2013-05-31', '2D', '31.jpg');
INSERT INTO `film` VALUES ('32', '1', '1', '致命黑兰', '奥利维尔．米加顿', '佐伊．索尔达娜 /迈克尔．瓦尔坦 /克利夫．柯蒂斯', '卡塔丽亚．雷斯特雷波（佐伊．索尔达娜 Zoe Saldana 饰）在十岁时目睹自己的父母被哥伦比亚毒品大王唐．路易斯残酷杀害。逃出生天的卡塔丽亚逃到了芝加哥，投奔了叔叔埃米利奥，他也是一个黑帮分子。\r\n　　埃米利奥尽量让卡拉勒娅远离黑帮生活的影响，但卡塔丽亚一心想成为一名职业杀手。25岁的她终于变成了一个经验丰富、冷酷无情的刺客，她平时为叔叔埃米利奥工作，但内心里的目标却是为自己的父母展开复仇，干掉毒品大亨唐．路易斯。', '外语', '108', '2013-06-09', '2D', '32.jpg');

-- ----------------------------
-- Table structure for `filmcomment`
-- ----------------------------
DROP TABLE IF EXISTS `filmcomment`;
CREATE TABLE `filmcomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cuid` int(11) NOT NULL,
  `cfid` int(11) NOT NULL,
  `ctime` datetime NOT NULL,
  `comments` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK85A37C5BA219B2F7` (`cuid`),
  KEY `FK85A37C5B78FD9E20` (`cfid`),
  CONSTRAINT `filmcomment_ibfk_1` FOREIGN KEY (`cuid`) REFERENCES `users` (`Uid`),
  CONSTRAINT `filmcomment_ibfk_2` FOREIGN KEY (`cfid`) REFERENCES `film` (`FID`),
  CONSTRAINT `FK85A37C5B78FD9E20` FOREIGN KEY (`cfid`) REFERENCES `film` (`FID`),
  CONSTRAINT `FK85A37C5BA219B2F7` FOREIGN KEY (`cuid`) REFERENCES `users` (`Uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of filmcomment
-- ----------------------------
INSERT INTO `filmcomment` VALUES ('1', '2', '21', '2012-12-05 21:35:12', '这是康美电影城第一条测试评论！');
INSERT INTO `filmcomment` VALUES ('3', '1', '22', '2012-12-14 14:14:32', '我是管理员，欢迎大家影评！');
INSERT INTO `filmcomment` VALUES ('4', '4', '22', '2012-12-14 14:29:43', '有成龙啊，我一定要看。');
INSERT INTO `filmcomment` VALUES ('5', '2', '22', '2012-12-14 14:51:54', '最后再添加一条评论！');
INSERT INTO `filmcomment` VALUES ('6', '2', '23', '2013-04-29 23:14:25', '这部有人看过吗？');

-- ----------------------------
-- Table structure for `hall`
-- ----------------------------
DROP TABLE IF EXISTS `hall`;
CREATE TABLE `hall` (
  `Hid` int(11) NOT NULL,
  `HHall` varchar(24) NOT NULL,
  `HNum` varchar(5) NOT NULL,
  PRIMARY KEY (`Hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hall
-- ----------------------------
INSERT INTO `hall` VALUES ('1', '1号大厅', '260');
INSERT INTO `hall` VALUES ('2', '2号大厅', '260');
INSERT INTO `hall` VALUES ('3', '3号大厅', '260');
INSERT INTO `hall` VALUES ('4', '4号大厅', '260');

-- ----------------------------
-- Table structure for `odetail`
-- ----------------------------
DROP TABLE IF EXISTS `odetail`;
CREATE TABLE `odetail` (
  `ODid` int(11) NOT NULL,
  `OCount` int(11) NOT NULL,
  `OMoney` float NOT NULL,
  `ODOId` int(11) DEFAULT NULL,
  `ODSid` int(11) DEFAULT NULL,
  `OTid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ODid`),
  KEY `FKA03DC9807F204CBC` (`ODSid`),
  KEY `FKA03DC980A3F075C3` (`OTid`),
  KEY `FKA03DC98097725318` (`ODOId`),
  CONSTRAINT `FKA03DC9807F204CBC` FOREIGN KEY (`ODSid`) REFERENCES `seat` (`Seid`),
  CONSTRAINT `FKA03DC98097725318` FOREIGN KEY (`ODOId`) REFERENCES `orders` (`Oid`),
  CONSTRAINT `FKA03DC980A3F075C3` FOREIGN KEY (`OTid`) REFERENCES `timetable` (`Tid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of odetail
-- ----------------------------
INSERT INTO `odetail` VALUES ('1', '2', '140', '1', '1', '6');
INSERT INTO `odetail` VALUES ('4', '2', '140', '5', '5', '7');
INSERT INTO `odetail` VALUES ('5', '2', '140', '6', '6', '9');
INSERT INTO `odetail` VALUES ('6', '2', '140', '6', '7', '9');
INSERT INTO `odetail` VALUES ('7', '2', '120', '7', '8', '2');
INSERT INTO `odetail` VALUES ('8', '2', '120', '7', '9', '2');
INSERT INTO `odetail` VALUES ('17', '2', '100', '12', '18', '4');
INSERT INTO `odetail` VALUES ('18', '2', '100', '12', '19', '4');
INSERT INTO `odetail` VALUES ('19', '1', '50', '13', '20', '5');
INSERT INTO `odetail` VALUES ('22', '1', '70', '15', '23', '8');
INSERT INTO `odetail` VALUES ('23', '1', '50', '16', '24', '5');
INSERT INTO `odetail` VALUES ('24', '1', '90', '17', '25', '12');
INSERT INTO `odetail` VALUES ('25', '1', '70', '18', '26', '8');
INSERT INTO `odetail` VALUES ('26', '2', '100', '19', '27', '5');
INSERT INTO `odetail` VALUES ('27', '2', '100', '19', '28', '5');
INSERT INTO `odetail` VALUES ('28', '1', '50', '20', '29', '5');
INSERT INTO `odetail` VALUES ('29', '1', '50', '21', '30', '5');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `Oid` int(11) NOT NULL,
  `OUid` int(11) DEFAULT NULL,
  `Odate` datetime NOT NULL,
  `OState` varchar(48) NOT NULL,
  `OTid` int(11) DEFAULT NULL,
  PRIMARY KEY (`Oid`),
  KEY `FKC3DF62E5A3F075C3` (`OTid`),
  KEY `FKC3DF62E5A21F276B` (`OUid`),
  CONSTRAINT `FKC3DF62E5A21F276B` FOREIGN KEY (`OUid`) REFERENCES `users` (`Uid`),
  CONSTRAINT `FKC3DF62E5A3F075C3` FOREIGN KEY (`OTid`) REFERENCES `timetable` (`Tid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '2', '2012-12-01 14:34:24', 'no-pay', null);
INSERT INTO `orders` VALUES ('2', '2', '2012-12-01 14:45:30', 'no-pay', null);
INSERT INTO `orders` VALUES ('3', '2', '2012-12-01 14:48:00', 'no-pay', null);
INSERT INTO `orders` VALUES ('4', '2', '2012-12-01 14:52:31', 'no-pay', null);
INSERT INTO `orders` VALUES ('5', '2', '2012-12-01 14:56:43', 'no-pay', null);
INSERT INTO `orders` VALUES ('6', '2', '2012-12-01 14:59:36', 'no-pay', null);
INSERT INTO `orders` VALUES ('7', '2', '2012-12-01 15:17:34', 'no-pay', null);
INSERT INTO `orders` VALUES ('8', '2', '2012-12-01 15:22:57', 'payed', null);
INSERT INTO `orders` VALUES ('9', '2', '2012-12-01 15:23:44', 'no-pay', null);
INSERT INTO `orders` VALUES ('11', '2', '2012-12-01 15:24:54', 'payed', null);
INSERT INTO `orders` VALUES ('12', '2', '2012-12-01 15:25:08', 'no-pay', null);
INSERT INTO `orders` VALUES ('13', '2', '2012-12-01 15:25:21', 'no-pay', null);
INSERT INTO `orders` VALUES ('15', '2', '2012-12-03 20:57:44', 'no-pay', null);
INSERT INTO `orders` VALUES ('16', '2', '2012-12-03 21:36:32', 'no-pay', null);
INSERT INTO `orders` VALUES ('17', '4', '2012-12-14 15:59:44', 'no-pay', null);
INSERT INTO `orders` VALUES ('18', '2', '2012-12-22 10:18:13', 'no-pay', null);
INSERT INTO `orders` VALUES ('19', '2', '2012-12-23 11:50:50', 'payed', null);
INSERT INTO `orders` VALUES ('20', '2', '2012-12-23 11:52:09', 'no-pay', null);
INSERT INTO `orders` VALUES ('21', '2', '2012-12-23 12:03:49', 'no-pay', null);

-- ----------------------------
-- Table structure for `seat`
-- ----------------------------
DROP TABLE IF EXISTS `seat`;
CREATE TABLE `seat` (
  `Seid` int(11) NOT NULL,
  `SeHallID` int(11) DEFAULT NULL,
  `Serow` varchar(5) NOT NULL,
  `Senum` varchar(5) NOT NULL,
  PRIMARY KEY (`Seid`),
  KEY `FK35CE05B8CE07FD` (`SeHallID`),
  CONSTRAINT `FK35CE05B8CE07FD` FOREIGN KEY (`SeHallID`) REFERENCES `hall` (`Hid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of seat
-- ----------------------------
INSERT INTO `seat` VALUES ('1', '2', '3', '9');
INSERT INTO `seat` VALUES ('2', '3', '3', '8');
INSERT INTO `seat` VALUES ('3', '3', '7', '14');
INSERT INTO `seat` VALUES ('4', '1', '5', '9');
INSERT INTO `seat` VALUES ('5', '1', '6', '11');
INSERT INTO `seat` VALUES ('6', '1', '4', '10');
INSERT INTO `seat` VALUES ('7', '1', '4', '11');
INSERT INTO `seat` VALUES ('8', '2', '4', '6');
INSERT INTO `seat` VALUES ('9', '2', '6', '9');
INSERT INTO `seat` VALUES ('10', '1', '5', '12');
INSERT INTO `seat` VALUES ('11', '1', '6', '13');
INSERT INTO `seat` VALUES ('12', '1', '5', '12');
INSERT INTO `seat` VALUES ('13', '1', '6', '13');
INSERT INTO `seat` VALUES ('14', '1', '5', '12');
INSERT INTO `seat` VALUES ('15', '1', '6', '13');
INSERT INTO `seat` VALUES ('16', '1', '5', '12');
INSERT INTO `seat` VALUES ('17', '1', '6', '13');
INSERT INTO `seat` VALUES ('18', '3', '5', '13');
INSERT INTO `seat` VALUES ('19', '3', '6', '10');
INSERT INTO `seat` VALUES ('20', '2', '4', '7');
INSERT INTO `seat` VALUES ('21', '2', '3', '7');
INSERT INTO `seat` VALUES ('22', '2', '3', '9');
INSERT INTO `seat` VALUES ('23', '1', '9', '9');
INSERT INTO `seat` VALUES ('24', '2', '5', '12');
INSERT INTO `seat` VALUES ('25', '3', '5', '20');
INSERT INTO `seat` VALUES ('26', '1', '2', '14');
INSERT INTO `seat` VALUES ('27', '1', '5', '9');
INSERT INTO `seat` VALUES ('28', '1', '6', '10');
INSERT INTO `seat` VALUES ('29', '1', '11', '14');
INSERT INTO `seat` VALUES ('30', '1', '5', '11');

-- ----------------------------
-- Table structure for `sort`
-- ----------------------------
DROP TABLE IF EXISTS `sort`;
CREATE TABLE `sort` (
  `Sid` int(11) NOT NULL,
  `SSort` varchar(24) NOT NULL,
  PRIMARY KEY (`Sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sort
-- ----------------------------
INSERT INTO `sort` VALUES ('1', '动作片');
INSERT INTO `sort` VALUES ('2', '剧情片');
INSERT INTO `sort` VALUES ('3', '喜剧片');
INSERT INTO `sort` VALUES ('4', '爱情片');
INSERT INTO `sort` VALUES ('5', '惊悚片');
INSERT INTO `sort` VALUES ('6', '科幻片');
INSERT INTO `sort` VALUES ('7', '动画片');
INSERT INTO `sort` VALUES ('8', '悬疑片');
INSERT INTO `sort` VALUES ('9', '犯罪片');
INSERT INTO `sort` VALUES ('10', '冒险片');
INSERT INTO `sort` VALUES ('11', '记录片');
INSERT INTO `sort` VALUES ('12', '战争片');
INSERT INTO `sort` VALUES ('13', '恐怖片');

-- ----------------------------
-- Table structure for `timetable`
-- ----------------------------
DROP TABLE IF EXISTS `timetable`;
CREATE TABLE `timetable` (
  `Tid` int(11) NOT NULL,
  `TFid` int(11) DEFAULT NULL,
  `THallID` int(11) DEFAULT NULL,
  `TDate` varchar(10) NOT NULL,
  `TTime` varchar(24) NOT NULL,
  `TTicketPrice` float NOT NULL,
  PRIMARY KEY (`Tid`),
  KEY `FK34EA1217905586F` (`TFid`),
  KEY `FK34EA1212824589F` (`THallID`),
  CONSTRAINT `FK34EA1212824589F` FOREIGN KEY (`THallID`) REFERENCES `hall` (`Hid`),
  CONSTRAINT `FK34EA1217905586F` FOREIGN KEY (`TFid`) REFERENCES `film` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of timetable
-- ----------------------------
INSERT INTO `timetable` VALUES ('2', '5', '1', '2012-12-14', '09:00', '60');
INSERT INTO `timetable` VALUES ('4', '11', '1', '2013-04-29', '10:00', '50');
INSERT INTO `timetable` VALUES ('5', '10', '1', '2012-12-23', '10:00', '50');
INSERT INTO `timetable` VALUES ('6', '18', '1', '2012-12-14', '18:10', '70');
INSERT INTO `timetable` VALUES ('7', '19', '1', '2012-12-14', '09:00', '70');
INSERT INTO `timetable` VALUES ('8', '12', '1', '2012-12-22', '09:00', '70');
INSERT INTO `timetable` VALUES ('9', '6', '1', '2012-12-14', '12:40', '70');
INSERT INTO `timetable` VALUES ('12', '20', '3', '2012-12-14', '15:20', '90');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `Uid` int(11) NOT NULL,
  `UName` varchar(32) DEFAULT NULL,
  `UPassword` varchar(64) NOT NULL,
  `URealName` varchar(128) DEFAULT NULL,
  `USex` varchar(4) DEFAULT NULL,
  `UPhone` varchar(14) DEFAULT NULL,
  `UEmail` varchar(64) NOT NULL,
  `Uqq` varchar(14) DEFAULT NULL,
  `UBirth` varchar(10) DEFAULT NULL,
  `URole` varchar(48) DEFAULT NULL,
  `UIDCard` varchar(18) DEFAULT NULL,
  `UPhoto` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`Uid`),
  UNIQUE KEY `UEmail` (`UEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'administrator', 'e10adc3949ba59abbe56e057f20f883e', null, '男', null, 'admin@shelwee.com', null, '', 'admin', null, '1.png');
INSERT INTO `users` VALUES ('4', 'android', 'e10adc3949ba59abbe56e057f20f883e', null, '男', null, 'linux@qq.com', null, '', 'user', null, '4.jpg');
