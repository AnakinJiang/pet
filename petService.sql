-- MySQL dump 10.13  Distrib 5.5.49, for linux2.6 (x86_64)
--
-- Host: localhost    Database: pet
-- ------------------------------------------------------
-- Server version	5.5.49-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dep_dru`
--

DROP TABLE IF EXISTS `dep_dru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dep_dru` (
  `drug_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`drug_id`,`department_id`),
  KEY `dep_dru_ibfk_2` (`department_id`),
  CONSTRAINT `dep_dru_ibfk_1` FOREIGN KEY (`drug_id`) REFERENCES `drug` (`id`),
  CONSTRAINT `dep_dru_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dep_dru`
--

LOCK TABLES `dep_dru` WRITE;
/*!40000 ALTER TABLE `dep_dru` DISABLE KEYS */;
INSERT INTO `dep_dru` VALUES (2,1),(3,1),(4,1),(5,1),(6,1),(5,2),(6,2),(7,2),(8,3),(9,3),(10,3),(11,4),(12,4),(13,4),(14,5),(15,5),(16,5),(17,6),(18,6),(19,6),(20,7),(21,7),(22,7),(23,8),(24,8),(25,8),(26,9),(27,9),(28,9),(29,10),(30,10),(31,10),(2,11),(4,11),(6,11),(8,12),(10,12),(12,12);
/*!40000 ALTER TABLE `dep_dru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dep_fac`
--

DROP TABLE IF EXISTS `dep_fac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dep_fac` (
  `department_id` int(11) NOT NULL,
  `facility_id` int(11) NOT NULL,
  PRIMARY KEY (`department_id`,`facility_id`),
  KEY `dep_fac_ibfk_2` (`facility_id`),
  CONSTRAINT `dep_fac_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  CONSTRAINT `dep_fac_ibfk_2` FOREIGN KEY (`facility_id`) REFERENCES `facility` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dep_fac`
--

LOCK TABLES `dep_fac` WRITE;
/*!40000 ALTER TABLE `dep_fac` DISABLE KEYS */;
INSERT INTO `dep_fac` VALUES (1,1),(1,2),(9,2),(1,3),(2,4),(10,4),(2,5),(2,6),(10,6),(3,7),(3,8),(10,8),(3,9),(4,10),(11,10),(4,11),(4,12),(11,12),(5,13),(5,14),(11,14),(5,15),(6,16),(12,16),(6,17),(6,18),(12,18),(7,19),(7,20),(12,20),(7,21),(8,22),(8,23),(8,24),(9,25),(9,26);
/*!40000 ALTER TABLE `dep_fac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `role` int(11) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'前台',1,'包括接待挂号、导医咨询、病历档案发出与回收、收费等。','http://111.230.135.16/img/b4e59cdc-6c2e-4e2a-8c29-2ed792ea9bc0pano_f.jpg'),(2,'手术室',3,'包括手术室的布局介绍，手术室消毒流程，手术无菌要求，常规手术、特殊手等的操作规范。','http://111.230.135.16/img/cea44a74-7eb3-494f-ad51-d27ea3d90851pano_f.jpg'),(3,'档案室',1,'包括病例档案的合理保存与数据统计等。','http://111.230.135.16/img/14d02761-89cb-4038-9aa9-611421d5dd9epano_f.jpg'),(4,'诊室',3,'包括诊室的布局介绍；对宠物进行临床基本检查（视、听、触、嗅等）、疾病诊断；与宠物主人交流并根据情况开具处方。','http://111.230.135.16/img/21f2e1f5-04d4-46d0-8fe9-0e3228eca79dpano_f.jpg'),(5,'住院部',2,'包括对需要住院的病例进行护理分级，不同护理级别的要求，住院部的工作流程，住院部的消毒流程等。','http://111.230.135.16/img/c964232f-1738-4f7a-92f3-8da1814533c1pano_f.jpg'),(6,'影像室',2,'包括X线检查、B超检查以及CT、MRI检查。如X线检查：X光机的结构功能介绍、全身各部位的摆位、拍摄条件的选择、拍摄流程、洗片的操作流程。B超检查：扫查探头的选择、全身各个部位扫查的摆位、腹部扫查流程。','http://111.230.135.16/img/7a9dec8e-47bc-4f4f-a2d1-934e54d9e18apano_f.jpg'),(7,'检查室',3,'包括对眼科、骨科、神经科、心脏科等专科疾病的检查，如眼科（检眼镜检查、眼压检查、裂隙灯检查、眼底检查、泪液分泌量检查等）、心脏科检查（心脏听诊、心电图检查等）、神经学检查（步态检查、各种反射检查等）等。','http://111.230.135.16/img/7f3f02b0-bec6-43ee-a717-db237484ad9cpano_f.jpg'),(8,'手术准备室',2,'包括术前对宠物进行麻前给药、注射麻醉、吸入麻醉的流程，保定、剃毛、消毒的流程，常见手术器械的介绍，手术器械包的准备、灭菌流程，手术人员的消毒、穿戴手术衣流程等。','http://111.230.135.16/img/1b55be2c-d4f3-4770-9d34-9b19589e8378pano_f.jpg'),(9,'注射室',2,'包括静脉注射、皮下注射、肌肉注射、局部封闭注射的操作流程，常见问题的处理方法，输液泵、加热垫的使用方法，注射室的消毒流程。','http://111.230.135.16/img/27ad0383-2a6e-466a-bf69-ff6cc7daec71pano_f.jpg'),(10,'处置室',2,'包括口服投药、换药、清洗耳道、挤肛门腺、修剪指甲、鼻饲管放置、灌肠、安乐死等基本处置操作流程。','http://111.230.135.16/img/91e08045-b687-47ff-87db-bbaeccf14a06pano_f.jpg'),(11,'化验室',2,'包括对送检样本的预处理，对相应样本进行血常规、血液生化、电解质、血气、血凝指标、激素指标、尿常规、微生物学检查、药敏、皮肤刮片、粪便检查、传染病检查等检查操作流程。','http://111.230.135.16/img/2d1c433b-10b9-4742-8908-9b0d86c0be84pano_f.jpg'),(12,'免疫室',2,'包括为健康宠物接种疫苗的流程，对常见并发症的处理流程，对常见免疫相关问题的解答等。','http://111.230.135.16/img/49ee65ee-99df-4cc8-9583-4bb8be943a36pano_f.jpg');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disease`
--

DROP TABLE IF EXISTS `disease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disease` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL COMMENT '病种',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease`
--

LOCK TABLES `disease` WRITE;
/*!40000 ALTER TABLE `disease` DISABLE KEYS */;
INSERT INTO `disease` VALUES (1,'犬瘟热','传染病'),(2,'犬细小病毒','传染病'),(3,'犬传染性肝炎','传染病'),(4,'犬冠状病毒','传染病'),(5,'猫泛白细胞减少症','传染病'),(6,'猫病毒性病气管炎','传染病'),(7,'皮肤真菌感染','传染病'),(8,'蛔虫病','寄生虫病'),(9,'钩虫病','寄生虫病'),(10,'绦虫病','寄生虫病'),(11,'球虫病','寄生虫病'),(12,'疥螨虫病','寄生虫病'),(13,'蚤病','寄生虫病'),(14,'口炎','内科'),(15,'肠炎','内科'),(16,'肠便秘','内科'),(17,'胰腺炎','内科'),(18,'肝炎','内科'),(19,'腹膜炎','内科'),(20,'肛门腺炎','内科'),(21,'感冒','内科'),(22,'鼻炎','内科'),(23,'气管支气管炎','内科'),(24,'肺炎','内科'),(25,'心力衰竭','内科'),(26,'尿道感染','内科'),(27,'尿结石','内科'),(28,'膀胱炎','内科'),(29,'肾炎','内科'),(30,'佝偻病','内科'),(31,'有机磷中毒','内科'),(32,'糖尿病','内科'),(33,'耳血肿','内科'),(34,'中耳炎','内科'),(35,'眼睑内翻','内科'),(36,'结膜炎','内科'),(37,'角膜炎','内科'),(38,'外伤','外产科疾病'),(39,'外科感染','外产科疾病'),(40,'骨折','外产科疾病'),(41,'关节脱位','外产科疾病'),(42,'湿疹','外产科疾病'),(43,'皮炎','外产科疾病'),(44,'脓皮病','外产科疾病'),(45,'脱毛症','外产科疾病'),(46,'趾间囊肿','外产科疾病'),(47,'疝','外产科疾病'),(48,'阴道炎','外产科疾病'),(49,'阴道脱出','外产科疾病'),(50,'子宫蓄脓','外产科疾病'),(51,'难产','外产科疾病'),(52,'乳房炎','外产科疾病'),(53,'绝育','常用手术'),(54,'剖腹产','常用手术'),(55,'瞬膜腺增生物切除','常用手术'),(56,'眼球摘除','常用手术'),(57,'立耳术','常用手术'),(58,'断尾术','常用手术'),(59,'犬免疫程序','免疫'),(60,'猫免疫程序','免疫'),(61,'小鼠症','天生畸形');
/*!40000 ALTER TABLE `disease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drug`
--

DROP TABLE IF EXISTS `drug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drug`
--

LOCK TABLES `drug` WRITE;
/*!40000 ALTER TABLE `drug` DISABLE KEYS */;
INSERT INTO `drug` VALUES (2,'驱线虫药','驱除寄生虫线虫的药','http://111.230.135.16/img/dc1df8d1-7a30-4a6e-9823-647dc1d46fe1drug1.jpg'),(3,'舒肤涂擦剂','主治:真菌性皮肤感染:发癣病、小芽胞菌等真菌感染引起的秃毛癣等皮肤病；寄生虫性皮肤感染:疥螨病、蠕形螨病；细菌性皮肤感染；脓皮病等及多种病原引起的混合感染性皮肤病；全身大面积重度感染应配合全身用药.  用法:每日2～3次,剪毛后涂于患处,应大于病变面积.  包装:15g','http://111.230.135.16/img/0944460b-15cc-4805-9017-0ae7aa65d5b0舒肤涂擦剂.jpg'),(4,'耳康','作用特点:本品是医疗单位根据犬耳病特点科学配制的中西结合处方制剂,能够透皮吸收,溶解耳道分泌物，具有改善耳道环境、清洁、杀菌、抗菌、驱虫、收敛止痒等作用。主要用于由细菌、真菌及耳螨等引起的多种耳道炎症的预防，治疗及辅助治疗.具有见效快,治愈率高的特点.对绝大多数耳病1～2次明显见效,3～5次治愈,连续或隔日持续使用可防复发.\n厂家:中国传统兽医学国际培训研究中心监制.','http://111.230.135.16/img/e0649cf3-2290-4410-a110-90cfb8487894耳康.jpg'),(5,'安万克透皮滴剂','主治：全面预防跳蚤、蚊子、蝇、蜱、螨类、臭虫、蠓虫、白蛉、虱的发生与危害\n浓缩型25ml装，可连续使用8个月，有效预防期为一年','http://111.230.135.16/img/952325a0-5c4f-44ce-9e04-d26fa1e94d25安万克透皮滴剂.jpg'),(6,'肤螨宁','对皮肤表面细菌、真菌有良好的消毒杀菌作用，对皮肤粘膜无刺激，不污染衣物。\n用途：能杀灭细菌、真菌，对手癣、足癣、体癣、股癣及神经性皮炎有消毒防治作用。\n用法：使用前清洁皮肤，用本品适量涂抹并轻轻揉擦，一日二次。','http://111.230.135.16/img/ba341d89-3768-45c6-93df-bd49d7ed5829肤满宁.jpg'),(7,'泪痕清洁液','特点：本产品不含漂白剂与酒精，能快速安全地清除爱猫爱犬眼部锈色泪痕。\n用法：用干净的棉花、棉棒或美容巾沾取本品适量用于清除泪痕。每日使用可预防锈色泪痕复发。\n包装：90ml','http://111.230.135.16/img/57079090-7992-41d3-8b2a-601aa21d3ff6泪痕清洁液.jpg'),(8,'皮康爽喷剂','适用对象：狗、猫、兔 \n适应症状：皮肤瘙痒症、真菌性皮癣、细菌性皮肤病、皮炎湿疹、内耳炎症。 \n用量用法：对准患处喷雾，用药量以患处表面湿润为准，每天用药两次，早晚各一次；真菌性皮肤病，连续用药5—7天；细菌性皮肤病，如脓皮病，连续用药4—6天；皮肤瘙痒症，用药后可迅速止痒；皮炎湿疹，对患处进行均匀喷雾，连续用药3—4天；内耳炎症，连续用药2—4天。','http://111.230.135.16/img/8938739a-00b1-4422-9859-44fc5b932eff皮康爽喷剂.jpg'),(9,'灭虱灵','用途：体外喷洒可以杀灭犬猫所有体外寄生虫。如蚤、虱、螨、蜱等。还可作为犬猫栖息场所及饲养用笼的害虫杀灭剂。犬猫误饮误食后不会引起中毒，对人无害。\n用法：用法患部喷施，虫体接触药物后5—10分钟内击倒，数小时内100%死亡。本品残效期半个月，一次施药对成虫及虫卵均能彻底杀灭。','http://111.230.135.16/img/d98ac203-8e1a-40ce-816c-1a3c29b6e423灭虱灵.jpg'),(10,'宠物多维营养片','功能：有助动物正常新陈代谢，增强体质，提高抗病能力，促进幼小动物生长发育，长期服用，毛色光亮，眼睛明亮，对繁殖动物的受胎率、产子率、泌乳能力等均有明显效果。\n用法：每日1—2次，每次2—4片。\n包装：0.5g*100片','http://111.230.135.16/img/8556bcf3-13df-44c5-93b0-bf5c2d7b5e60宠物多维营养片.jpg'),(11,'皮康-100','主治:主要用于细菌,真菌和过敏等引起的多种皮肤局部疾患的治疗及辅助治疗.此外,尚可用于肛门腺炎、尿道口包皮炎的治疗及辅助治疗：是医疗单位根据犬猫常见皮肤病特点科学配制的中西结合处方制剂,具有改善皮肤环境、清洁、杀菌、抗菌、驱虫、消炎、止痒等作用.\n使用方法:局部喷雾每日2～3次.\n厂家:中国传统兽医学国际培训研究中心监制.','http://111.230.135.16/img/f84a7647-55b8-4448-8a3d-69994f3f41af皮康.jpg'),(12,'青霉素G（钾或钠）','治疗：大多数革兰氏阳性菌（包括球菌和杆菌），部分革兰氏阴性球菌，各种螺旋体和放线菌，主治肺炎，气管炎，乳腺炎，子宫炎，坏死杆菌病，炭疽，破伤风，恶性水肿，气肿疽，放线菌病，钩端螺旋体病等，也可用于链球菌病，葡萄球菌病及支原体病等。	 　　每千克体重4万～8万单位／次，肌肉或静脉滴注，2～4次／日。用前须作皮试，不宜与庆大霉素，卡那霉素同用。','http://111.230.135.16/img/031ec961-f67b-4e72-879c-63f9b80b3744青霉素G.jpeg'),(13,'苄青霉素（长效青霉素）','在体内维持时间长，预防或治疗需长期用药的病例，如犬，猫长途运输时用以预防各种呼吸道感染，子宫内膜炎，乳腺炎等。	每千克体重4万～5万单位／次，2～3日1次。 ','http://111.230.135.16/img/d56dca9f-e83c-45f3-acc5-0fe690641cea苄青霉素.jpg'),(14,'新青霉素I（甲氧苯青霉素钠）','几乎对所有的金黄色葡萄球菌均有杀菌作用，临床上主要用于耐药性金黄色葡萄球菌引起的感染，尤其对犬，猫乳腺炎有较好的疗效。	\n　　每千克体重4—10毫克/次，肌肉注射，每日4次。也可口服或静注。 ','http://111.230.135.16/img/60bc1162-b3c3-43cd-a909-ec1971d5ede0新青霉素.jpeg'),(15,'氯邻青霉素钠','对金黄色葡萄球菌，链球菌，肺炎球菌（特别是耐药菌株）等，具有杀菌作用。因吸收好，所以血液中浓度较高。	\n　　每千克体重25毫克/次，4次／日，肌肉注射或口服，静注。','http://111.230.135.16/img/8d61b9c5-8156-4b43-acc4-4064301438d0氯邻青霉素钠.jpeg'),(16,'氨苄青霉素（安比西林）','为广谱抗生素，对大多数革兰氏阳性菌和多数革兰氏阴性菌均有效，对肺炎球菌，绿脓杆菌无效。常用于敏感细菌引起的肺部，肠道和泌尿道感染。与庆大霉素，卡那霉素，链霉素合用，可增强疗效（要分开注射）。	\n　　每千克体重11～22毫克，口服，2～3次／日；每千克体重2—7毫克，肌肉注射，1次／日。 ','http://111.230.135.16/img/9f8e51d4-16c4-475f-9b6e-87b640914a13氨苄青霉素.jpeg'),(17,'羟氨苄青霉素（阿莫西林）','与氨苄青霉素相似，但杀菌作用快而强，对肺炎球菌所引起的呼吸道感染有很好疗效。如与强的松等合用，治疗乳腺炎，子宫内膜炎，无乳综合征疗效极佳。	\n　　每千克体重10～15毫克，肌肉注射，3次／日。','http://111.230.135.16/img/24691d4d-0457-41a3-8b32-2e55ce2f9da0羟氨苄青霉素.jpeg'),(18,'乙氧萘青霉素钠（新青霉素Ⅲ）','本品对耐药性金黄色葡萄球菌的作用与苯唑青霉素接近，对溶血性链球菌及肺炎球菌有高效，比苯唑青霉素疗效强。临床上多用于耐药性金黄色葡萄球菌引起的呼吸道，泌尿道感染等。	\n　　肌肉注射，每千克体重7—11毫克，4—6次／日。','http://111.230.135.16/img/35344994-c819-4889-90d2-9f0f2f6e4ea2乙氧萘青霉素钠.jpg'),(19,'羧苄青霉素（卡比西林）','对革兰氏阳性菌的作用与氨苄青霉素相似，其特点是对绿脓杆菌，变形杆菌和耐药的金黄色葡萄球菌有效。主要用于治疗烧伤，创伤感染，败血症，腹膜炎，呼吸道和泌尿道感染等。	\n　　每千克体重10～20毫克，肌肉或静脉注射，2～3次／日','http://111.230.135.16/img/1a435c8c-5792-4c7d-9e6a-7dc5fbb8543f羧苄青霉素.jpg'),(20,'先锋霉素I（头孢噻吩钠）','抗革兰氏阳性菌，对革兰氏阴性菌和钩端螺旋体也有效。但对绿脓杆菌，结核杆菌，真菌，支原体，病毒，原虫无效。主治耐药金黄色葡萄球菌，革兰氏阴性菌引起的呼吸道，泌尿道，乳房炎和手术后的严重感染。	\n　　每千克体重10～20毫克/次，肌肉注射，3～4次／日。 ','http://111.230.135.16/img/8d714478-e100-4200-b06b-3f9297eb4119头孢噻吩钠.jpg'),(21,'先锋霉素Ⅱ（头孢噻啶）	','革兰氏阳性菌抗菌作用更强，用于变形杆菌，葡萄球菌，沙门氏菌等引起的呼吸道，泌尿道等严重感染。	\n　　每千克体重10～15毫克／次，2次／日，肌肉或皮下注射。肾功能不佳者慎用。','http://111.230.135.16/img/3d539bc9-5dcc-4771-8e74-449d893c0be6头孢噻啶.jpg'),(22,'先锋霉素Ⅳ（头孢氨苄）','本品对金黄色葡萄球菌，溶血性链球菌，大肠杆菌，奇异变形杆菌等有抗菌作用，对绿脓杆菌无效。用于敏感性菌所致的泌尿道，皮肤及软组织等部位感染。	\n　　肌注或皮下注射，犬猫每千克体重11～33毫克/次，1日3次。','http://111.230.135.16/img/d0afa74e-1e2c-40f3-8158-b765df7c6e48头孢氨苄.jpg'),(23,'先锋霉素V（头孢唑啉钠）','本品的抗菌谱类似头孢噻吩，其特点是对革兰氏阳性菌作用较强。临床上用于敏感菌所致的呼吸道，泌尿道，皮肤及软组织等部位的感染。	\n　　静脉或肌肉注射，犬，猫每千克体重15～25毫克/次，1日3次。','http://111.230.135.16/img/cabde915-08e0-49e8-b5e0-4cbae136ee82头孢唑啉钠.jpg'),(24,'先锋羟氨苄（头孢羟氨苄）','本品的作用类似先锋霉素Ⅳ。用于由敏感菌引起的伴侣动物呼吸道，泌尿道，皮肤等部位感染。	\n　　口服剂量：犬每千克体重10毫克/次，1日2次；猫每千克体重22毫克/次，1日1次。','http://111.230.135.16/img/f530b874-5e3f-4d0e-81b3-5cfc383e898e头孢羟氨苄.jpg'),(25,'头孢噻肟钠（头孢氨噻肟）','本品对革兰氏阳性菌的效力与头孢噻吩钠，头孢唑啉钠近似，对革兰氏阴性菌有较强的抗菌作用。用于敏感菌引起的呼吸道，消化道，皮肤及软组织等的感染。	\n　　肌肉或静脉注射，犬，猫每千克体重27.5—50毫克/次，1日3次。','http://111.230.135.16/img/c225fda6-1548-408e-bd43-b15df7db580d头孢氨噻肟.jpg'),(26,'红霉素','本品抗菌谱与青霉素相似，对各种革兰氏阳性菌有较强的抗菌作用；革兰氏阴性菌中敏感的有流感杆菌，巴氏杆菌，布氏杆菌等。此外，本品对肺炎支原体，立克次体，钩端螺旋体等也有效。大多数敏感苗对此药易产生耐药性。临床上主要用于耐药性金黄色葡萄球菌，溶血性链球菌引起的严重感染（如肺炎，败血症，子宫内膜炎等）和鸡的慢性呼吸道感染等。如与链霉素，氯霉素等合用，可获得协同作用。	\n　　口服剂量为：犬，猫按每千克体重2—10毫克／次，1日2次；静脉或肌肉注射剂量为：每千克体重2～10毫克/次，1日2次。','http://111.230.135.16/img/2732fe3a-3584-4f51-96a2-84b03e85ae32红霉素.jpg'),(27,'林可霉素（洁霉素）','本品主要对革兰氏阳性菌有效，对革兰氏阴性菌作用小于其他抗生素。临床上应用于革兰氏阳性菌引起的各种感染，特别适用于耐青霉素，红霉素菌株的感染或对青霉素过敏的犬，猫。	\n　　肌肉注射，犬，猫按每千克体重11～22毫克/次，1日2次。','http://111.230.135.16/img/54776d76-0c4f-4f3a-bf40-44efbc67019c林可霉素.jpg'),(28,'北里霉素','本品对革兰氏阳性菌，部分革兰氏阴性菌，立克次体，螺旋体，支原体和衣原体都有效，特别是对耐药性金黄色葡萄球菌的效力强于氯霉素，四环素，红霉素，竹桃霉素等。临床用途同本类抗生素。治疗时常与氯霉素，链霉素等合用。	\n　　肌肉或皮下注射，每千克体重5～25毫克/次，1日1次 ','http://111.230.135.16/img/3c50e656-3b13-417f-8ab1-173324ffd2d2北里霉素.jpg'),(29,'泰乐霉素（泰乐菌素）','本品主要对革兰氏阳性菌和部分革兰氏阴性菌，螺旋体等有抑制作用，对支原体有特效，对革兰氏阳性菌的作用较红霉素稍弱。能促进增重，对犬，猫胸膜肺炎，流产，痢疾，肠炎，子宫内膜炎和螺旋体病等均有效。	\n　　口服剂量为：每千克体重10毫克/次，1日3次；肌肉，静脉注射剂量为每千克体重5毫克／次，1日2次 。','http://111.230.135.16/img/92065ed8-cf89-4329-97f0-7f40cd41f889泰乐霉素.jpg'),(30,'氯林霉素（克林霉素）','本品抗菌谱与洁霉素很相似，而抗菌作用较强，对青霉素，洁霉素，四环紊或红霉素有耐药性的细菌也有效。细菌对此药的耐药性发展缓慢。适应症等与洁霉素相同。本品可完全代替洁霉素。\n　　每千克体重5～15毫克/次，口服或肌肉注射，1日2次。','http://111.230.135.16/img/c45e6fa4-d346-42ee-a05c-5f2ce6307d68氯林霉素.jpg'),(31,'螺旋霉素','在体内的抗菌效力优于同类抗生素，特别是对肺炎球菌，链球菌效力更佳。临床上对革兰氏阳性菌，支原体等引起的感染有效。多用于犬，猫呼吸道感染，如肺炎，慢性呼吸道病及各种肠炎等。	\n　　口服按每千克体重25—50毫克/次，1日1次；肌肉注射按每千克体重10—25毫克/次，1日1次。 ','http://111.230.135.16/img/de337ce6-00e1-4cd9-b690-76c55301744c螺旋霉素.jpg');
/*!40000 ALTER TABLE `drug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility`
--

DROP TABLE IF EXISTS `facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility`
--

LOCK TABLES `facility` WRITE;
/*!40000 ALTER TABLE `facility` DISABLE KEYS */;
INSERT INTO `facility` VALUES (1,'洗牙机','给宠物进行自动化洗牙的设备','http://111.230.135.16/img/febe9d2f-3b8e-4650-8d9e-ea66b80cfead洗牙机.png'),(2,'电离子治疗仪','适用于小动物切割息肉止血  小伤口处理','http://111.230.135.16/img/f243829b-fb46-4283-8cc0-a64465cb5424电离子治疗仪.png'),(3,'宠物红外线耳温枪','宠物专用的耳朵温度测量设备','http://111.230.135.16/img/948f87fb-115e-4498-b88f-08903024d0d9宠物红外线耳温枪.png'),(4,'犬排卵测试仪',NULL,'http://111.230.135.16/img/54e94780-419e-405f-881e-0bc11b6faee2犬排卵测试仪.jpg'),(5,'数字式动物心电图机',NULL,'http://111.230.135.16/img/4a2644a4-8a6c-426f-b146-a0bb8450f312数字式动物心电图机.jpg'),(6,'动物手术台',NULL,'http://111.230.135.16/img/a9a266c9-d8a0-42ff-8b66-f62109d894a3动物手术台.png'),(7,'全自动动物血液分析仪',NULL,'http://111.230.135.16/img/1dcfa227-f51f-44cd-a930-6eda979d125d全自动动物血液分析仪.jpg'),(8,'动物尿液分析仪',NULL,'http://111.230.135.16/img/448728f8-e631-49f8-bd40-1e3fd309506a动物尿液分析仪.jpg'),(9,'动物半自动生化分析仪',NULL,'http://111.230.135.16/img/22c38860-55b6-4151-979c-c08b0b6c7230动物半自动生化分析仪.png'),(10,'超声雾化器','超声波雾化器能在常温下把水溶剂药液雾化成为1～5μm的微粒，供吸入治疗，吸入药液雾粒直接作用于患处，能迅速减轻炎症。','http://111.230.135.16/img/15640c47-b75b-4420-99ed-ec7663039606超声雾化器.jpg'),(11,'干燥箱',NULL,'http://111.230.135.16/img/44fca1b6-1d19-417a-8018-d15d0f894f06干燥箱.jpg'),(12,'高压消毒锅',NULL,'http://111.230.135.16/img/ad264c26-fe86-4d37-9bef-fa4efbe609d9高压消毒锅.jpg'),(13,'笔式酸度计',NULL,'http://111.230.135.16/img/f556a497-fd30-4b92-b291-ef84b4d12c73笔式酸度计.jpg'),(14,'动物专用显微镜','专为动物设计的显微镜','http://111.230.135.16/img/7c6df8b3-85b6-45ea-87f3-cfafbe652e8f动物专用显微镜.jpg'),(15,'动物专用DR数字成像系统','','http://111.230.135.16/img/8e7224c9-3442-4a15-8e71-00006b381990动物专用DR数字成像系统.jpg'),(16,'ICU重症监护仓','','http://111.230.135.16/img/4ca9e9a8-86fa-47ce-9c1d-4b08640e2146ICU重症监护仓.jpg'),(17,'迈瑞B超','','http://111.230.135.16/img/71d3cb64-6543-41a9-98b9-664e73801344迈瑞B超.jpg'),(18,'动物专用猫笼和中央供氧系统','','http://111.230.135.16/img/4018147a-eafa-4fa5-9f33-5b9425002a93动物专用猫笼和中央供氧系统.jpg'),(19,'动物专用恒温箱','','http://111.230.135.16/img/accd7a7e-d1cd-4816-a0cf-bba5394924c6动物专用恒温箱.jpg'),(20,'美国爱德士生化分析仪','','http://111.230.135.16/img/c923536f-dccb-4066-96f4-100039052d6a美国爱德士生化分析仪.jpg'),(21,'美国爱德士血气分析仪','','http://111.230.135.16/img/7de613f3-63a3-4335-89b0-e3582af131b1美国爱德士血气分析仪.jpg'),(22,'尿液分析仪和C反应蛋白分析仪','','http://111.230.135.16/img/46c18d66-a4ea-40eb-bca0-fa77445e707d尿液分析仪和C反应蛋白分析仪.jpg'),(23,'美国野马高频x光','','http://111.230.135.16/img/97f130a5-3596-4bd6-84ac-caf99fbdbd3d美国野马高频x光.jpg'),(24,'动物专用呼吸麻醉机','','http://111.230.135.16/img/3042ab11-b933-4026-945c-070e51c55ba9动物专用呼吸麻醉机.jpg'),(25,'贝利健动物专用制氧机','','http://111.230.135.16/img/58b10d8e-ed6a-401a-98c5-460ad7cd1eea贝利健动物专用制氧机.jpg'),(26,'贝利健血细胞分析仪','','http://111.230.135.16/img/77ac4943-8ffa-47be-b53d-c5b1a89b6fe7贝利健血细胞分析.jpg');
/*!40000 ALTER TABLE `facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcase`
--

DROP TABLE IF EXISTS `mcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mcase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disease_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `disease_id` (`disease_id`),
  CONSTRAINT `mcase_ibfk_1` FOREIGN KEY (`disease_id`) REFERENCES `disease` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcase`
--

LOCK TABLES `mcase` WRITE;
/*!40000 ALTER TABLE `mcase` DISABLE KEYS */;
INSERT INTO `mcase` VALUES (1,1,'哈士奇犬瘟热'),(2,3,'锦华'),(3,1,'吉娃娃犬瘟热'),(4,28,'小玉'),(5,1,'贵宾犬犬瘟热'),(6,15,'德国牧羊犬肠炎'),(7,15,'波斯猫肠炎'),(8,15,'雪瑞纳肠炎');
/*!40000 ALTER TABLE `mcase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `picture`
--

DROP TABLE IF EXISTS `picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `case_id` int(11) DEFAULT NULL,
  `procedure_id` int(11) DEFAULT NULL,
  `stage` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `case_id` (`case_id`),
  KEY `picture_ibfk_2_idx` (`procedure_id`),
  CONSTRAINT `picture_ibfk_1` FOREIGN KEY (`case_id`) REFERENCES `mcase` (`id`),
  CONSTRAINT `picture_ibfk_2` FOREIGN KEY (`procedure_id`) REFERENCES `procedure` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picture`
--

LOCK TABLES `picture` WRITE;
/*!40000 ALTER TABLE `picture` DISABLE KEYS */;
INSERT INTO `picture` VALUES (23,NULL,9,NULL,'http://111.230.135.16/pet/img/b8ba19dc-d82c-4e64-9ba6-c84002060b7d狗扎皮筋1.PNG'),(24,NULL,9,NULL,'http://111.230.135.16/pet/img/57fced51-48b8-4ea3-9ad2-014ae0de0317狗扎皮筋2.PNG'),(25,NULL,9,NULL,'http://111.230.135.16/pet/img/e7c04bcc-04b6-4251-83c5-0b4c2bd63d1f狗扎皮筋3.PNG'),(26,NULL,10,NULL,'http://111.230.135.16/pet/img/b50a0221-fa4d-4094-a747-eeabdba2573e观察1.PNG'),(27,NULL,10,NULL,'http://111.230.135.16/pet/img/f633131d-e963-4513-93f2-34128089b189观察2.PNG'),(28,NULL,11,NULL,'http://111.230.135.16/pet/img/967be09b-51c8-4edf-bf53-b40725f86496扎针1.PNG'),(29,NULL,11,NULL,'http://111.230.135.16/pet/img/9daae345-ee9a-4d50-9c35-bb3652f8326b扎针2.PNG'),(30,NULL,11,NULL,'http://111.230.135.16/pet/img/70b3a6c8-900d-43fb-8c85-b25a479f3561扎针3.PNG'),(31,NULL,11,NULL,'http://111.230.135.16/pet/img/4a186786-3f0f-4af4-a8a3-0670e800d324扎针4.PNG'),(32,NULL,33,NULL,'http://111.230.135.16/pet/img/00d6d675-593d-483e-a388-24bbde6aec3f狗剃毛1.PNG'),(33,NULL,34,NULL,'http://111.230.135.16/pet/img/f6158be5-af67-4e45-af6a-6f1cc35002e0狗剃毛2.PNG'),(34,NULL,46,NULL,'http://111.230.135.16/pet/img/a39acab6-24b9-4bb3-a249-920cf16eda69拆线1.PNG'),(40,4,NULL,1,'http://111.230.135.16/pet/img/d73dcc6f-7758-4f08-afc5-a4cfb30ffddf贝利健血细胞分析.jpg'),(41,5,NULL,1,'http://111.230.135.16/img/521c4bb7-b2a3-4617-8c47-e759d2476716images.jpg'),(42,5,NULL,1,'http://111.230.135.16/img/1dcdbf9e-edd1-4ed5-8d24-c236cc03a6eaimg201402112221470.jpg'),(43,5,NULL,2,'http://ecnupet.cn/img/f1ade00b-b81d-4f4b-a48e-9e1454af4caa20151111034540_91293.jpg'),(44,5,NULL,3,'http://111.230.135.16/img/7a45c208-a486-4a5d-8cfc-4e6ce2d3c0282-1-2.gif'),(45,5,NULL,3,'http://111.230.135.16/img/52f01a52-b567-47be-a4a8-c945241325f41-3-2-2.gif'),(46,5,NULL,4,'http://111.230.135.16/img/636179ae-325a-4cb4-a6e5-4a4f5ae4cac9330766-14101222260181.jpg'),(47,6,NULL,1,'http://111.230.135.16/img/9a122c79-f663-466c-aac3-defe12833dc0muyangquan1.jpg'),(48,6,NULL,1,'http://111.230.135.16/img/9c6213af-3b24-427f-ac49-b518d2830639muyangquan2.jpg'),(49,6,NULL,2,'http://111.230.135.16/img/108cb625-d207-4bc6-b1f1-506f863cc5dfgougoujiancha.jpg'),(50,6,NULL,2,'http://111.230.135.16/img/09f7ed06-8e31-470b-826f-581877781517728da9773912b31bac7d1ad18d18367adab4e131.jpg'),(51,6,NULL,4,'http://111.230.135.16/img/f3bd3c74-6fd9-42da-9686-158b44e79d8etooopen_sy_168253638339.jpg'),(52,7,NULL,4,'http://111.230.135.16/img/d49e5611-3e74-4fa9-a416-f72efdd68387153429381.jpg'),(53,7,NULL,1,'http://111.230.135.16/img/59195d38-ec68-43bf-8370-f60f90f4e27c6447-12020400404016.jpg'),(54,7,NULL,1,'http://111.230.135.16/img/47a1af78-451e-48de-8d14-c6163f2a7639bosimao.jpg'),(55,7,NULL,1,'http://111.230.135.16/img/ef6b586b-41ae-4634-9f83-308615cf405f14L41535J40-2a11.jpg'),(56,8,NULL,1,'http://111.230.135.16/img/21a4214c-9cef-46bd-9818-93d213bdaefekuruina.jpg'),(57,8,NULL,1,'http://111.230.135.16/img/b2400c75-8af6-4bdc-9474-c22416a04967images%20(1).jpg'),(58,8,NULL,2,'http://111.230.135.16/img/0dcdfbd2-362d-48a1-842f-e7a4da846f90201711122238097672.jpg'),(59,8,NULL,3,'http://111.230.135.16/img/d48081d9-9d11-42ca-a070-df572fff981820180425205242.png'),(60,8,NULL,3,'http://111.230.135.16/img/9f42c7a1-cd74-41ce-b9b6-bc2876c3662420180425205327.png'),(61,8,NULL,4,'http://111.230.135.16/img/6b367523-1383-4931-99ee-8f04218714ad48a16d46106517a2fb7bfe060ae8c23d.jpg'),(62,NULL,36,NULL,'http://111.230.135.16/img/a732b502-d6d3-46a3-9baf-8911b11d8667xizao.jpg'),(63,NULL,35,NULL,'http://111.230.135.16/img/63684c95-f86e-4889-93e9-5455d3f791b8timg.jpg'),(64,NULL,32,NULL,'http://111.230.135.16/img/c79499d4-f5d9-4ae0-876b-1f52b7e84c4ftimg%20(1).jpg'),(65,NULL,28,NULL,'http://111.230.135.16/img/46d74323-d737-4865-a590-8a37cd3aad8fu=2050506278,1159498129&fm=27&gp=0.jpg'),(66,NULL,29,NULL,'http://111.230.135.16/img/f3bd3c74-6fd9-42da-9686-158b44e79d8etooopen_sy_168253638339.jpg'),(67,NULL,30,NULL,'http://111.230.135.16/img/6b367523-1383-4931-99ee-8f04218714ad48a16d46106517a2fb7bfe060ae8c23d.jpg'),(68,NULL,21,NULL,'http://111.230.135.16/pet/img/653dc865-c662-4595-8c06-715ca2556eba整理表格数据.jpg'),(69,NULL,22,NULL,'http://111.230.135.16/pet/img/8fc8f4e7-1ed2-4771-86d5-c37617d828ff客户回访.jpg'),(70,NULL,37,NULL,'http://111.230.135.16/pet/img/f6158be5-af67-4e45-af6a-6f1cc35002e0狗剃毛2.PNG'),(71,NULL,17,NULL,'http://111.230.135.16/pet/img/048547d7-1fa5-402d-b30a-1be4b238808d前台1.jpg'),(72,NULL,24,NULL,'http://111.230.135.16/pet/img/e2033164-301f-42d5-b03e-8c6064607025客服.jpg'),(73,NULL,25,NULL,'http://111.230.135.16/pet/img/b15e4ec1-b529-4f45-beb3-705ed193b210现金收支簿.jpg'),(74,NULL,40,NULL,'http://111.230.135.16/img/3496c370-88be-44e0-ba08-0e75f4df8e6etimg%20(3).jpg'),(75,NULL,42,NULL,'http://111.230.135.16/img/b37138e2-3bb0-4fdb-9572-eccf0a941501timg%20(4).jpg'),(76,NULL,43,NULL,'http://111.230.135.16/img/9587a03e-cdb8-486b-9e9b-666b5432eb84xiaodu.jpg'),(77,NULL,44,NULL,'http://111.230.135.16/img/5a75ecdd-0d0f-4692-a994-9c4532adef25chuanshoutao.jpg'),(78,NULL,45,NULL,'http://111.230.135.16/img/2fc89e5c-abac-4018-89a0-e2eeee552763u=1840441781,835458276&fm=27&gp=0.jpg'),(80,NULL,39,NULL,'http://111.230.135.16/img/f6f7387f-e693-4dde-9692-8116b0e6b698timg%20(2).jpg'),(81,NULL,13,NULL,'http://111.230.135.16/pet/img/f89a4073-8f8a-4495-8410-6e2449957b56daka1.jpg'),(82,NULL,13,NULL,'http://111.230.135.16/pet/img/754b197d-a218-49ed-ac99-62c0611c0f7fdaka.jpg'),(83,NULL,27,NULL,'http://111.230.135.16/pet/img/a02e0b11-bdb9-4472-bd1b-09b6e88fc36c反馈意见收集.jpg'),(84,NULL,27,NULL,'http://111.230.135.16/pet/img/42319d0f-6a67-458c-b4e5-2cec126a6d58反馈意见收集2.jpg'),(85,NULL,14,NULL,'http://111.230.135.16/pet/img/3ddedfc1-8b67-4ad2-8d05-9ae850f3691c仪容2.jpg'),(86,NULL,41,NULL,'http://111.230.135.16/img/b86d8df9-f53b-4038-a89b-dc40aa9c17de166aec5e-b61c-42a6-bf85-6218516d7a65_size29_w500_h333.jpg'),(87,NULL,23,NULL,'http://111.230.135.16/pet/img/0b6ae7f0-147f-4221-b554-19dcc26e2a0c客户接待.jpg'),(88,NULL,15,NULL,'http://111.230.135.16/pet/img/e3e3c64d-1c10-46ed-8103-d0d1f1cc8863卫生2.jpg'),(89,NULL,15,NULL,'http://111.230.135.16/pet/img/04108ed2-7548-4ff1-8ef7-0e93f6e2dd7d卫生3.jpg'),(90,NULL,15,NULL,'http://111.230.135.16/pet/img/042bb4ba-0986-4232-8698-98a6034b91c1卫生.jpg'),(92,NULL,26,NULL,'http://111.230.135.16/pet/img/d63a98f0-50c1-4a84-8adc-309a4f5e4714入院出院.jpg'),(93,NULL,26,NULL,'http://111.230.135.16/pet/img/05dafa3c-b86b-4d4a-b347-e02524803b5f入院出院2.jpg'),(94,NULL,14,NULL,'http://111.230.135.16/pet/img/64b43190-1f86-475d-8ffe-1b4b6127349f仪容3.png'),(95,NULL,14,NULL,'http://111.230.135.16/pet/img/4ec6c960-d631-431a-aec6-7a6929375e57仪容4.png'),(96,NULL,14,NULL,'http://111.230.135.16/pet/img/069dbfb7-d47c-4f38-bc43-d475ccdffb85仪容1.jpg'),(97,NULL,19,NULL,'http://111.230.135.16/pet/img/70220291-b27b-4dfa-92ab-25454eaab1fc客户信息.jpg'),(98,NULL,20,NULL,'http://111.230.135.16/pet/img/ae12cbf5-1697-4623-bd2d-c5799ca9c169前台2.PNG'),(100,NULL,38,NULL,'http://111.230.135.16/img/ae68843f-f91a-4948-9c47-83b158f8c4b815127834324145902.jpg');
/*!40000 ALTER TABLE `picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procedure`
--

DROP TABLE IF EXISTS `procedure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procedure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `step` int(11) NOT NULL,
  `step_name` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procedure`
--

LOCK TABLES `procedure` WRITE;
/*!40000 ALTER TABLE `procedure` DISABLE KEYS */;
INSERT INTO `procedure` VALUES (9,2,'宠物狗静脉注射',1,'扎皮筋','在狗狗前腿处扎上皮筋，扎好皮筋后，静待一会，等待静脉膨胀，便于找到血管扎针。'),(10,2,'宠物狗静脉注射',2,'托起狗狗前臂观察血管','用手指轻按结扎处以下的皮肤，有明显隆起、弹性较好且可以滑动的部位，通常是受压膨胀的静脉所在位置。'),(11,2,'宠物狗静脉注射',3,'扎针','1、让狗狗趴卧或坐下，安抚狗狗使其消除紧张感。\n2、左手执狗狗前腿，并用手指尽量固定静脉处皮肤，以免在刺入压力下静脉过分滑动。\n3、右手持注射器，针头和皮肤呈90度或45度角刺入静脉，看到有回血后将针头平推进静脉。\n4、刺入静脉前，务必检查注射器是否堵塞，并且排出管内的所有空气，直到针头有液体流出，避免空气进气静脉。\n5、按住针头，将皮筋摘下，打开点滴，调整滴液速度至适当。\n6、固定针头前，观察注射情况及狗狗状态。\n7、以胶布固定针头。'),(12,2,'宠物狗静脉注射',4,'拔针','滴液完毕，用药棉按在刺入处迅速拔出针头，按住加压止血1－2分钟，确认无出血，方可离开。'),(13,1,'前台营业前工作',1,'打卡监督','提醒员工打卡，并做好考监督；'),(14,1,'前台营业前工作',2,'检查仪容','检查员工服务仪容'),(15,1,'前台营业前工作',3,'卫生清洁','前台工作区域的卫生清洁'),(17,1,'前台工作整理',3,'整理前台环境','维持前台形象，保持前台环境清洁卫生。'),(19,1,'前台工作整理',1,'客户资料整理','将客户的各种资料更新并进行分析。'),(20,1,'前台工作整理',2,'信息汇报','向院长汇报销售情况、市场活动、客户管理及工作中遇上的重大情况'),(21,1,'前台日常工作',1,'整理表格数据','检查《客户回访登记表》、《来电登记表》、《预约登记表》等数据'),(22,1,'前台日常工作',2,'向院长提供客户资料','向院长提供需要回访的客户资料，以便院长安排回访工作。'),(23,1,'前台日常工作',3,'工作内容','客户接待、服务引领和现场销售活动'),(24,1,'前台日常工作',4,'客服工作','接听电话、安排预约、售后通知等，客户回访和邀约工作'),(25,1,'前台日常工作',5,'财务整理','收银现金的对账，确保物、账对应。'),(26,1,'前台日常工作',7,'信息核对','核查患病动物入院、出院等手续是否完整及准备好各种手续所需的物料。'),(27,1,'前台日常工作',6,'反馈意见收集','客户意见调查，了解客户感受，对医院的评价，以及客户对医院有什么合理建议等。'),(28,2,'术前麻醉',1,'准备麻醉药','在对宠物手术前要进行麻醉操作，首先要准备给宠物的麻醉药。'),(29,2,'术前麻醉',2,'给药','通过口服/注射等方式为宠物服用准备好的麻醉药'),(30,2,'术前麻醉',3,'观察宠物后续状态','给药步骤完成后，需要观察宠物的状态，看是否有不良反应'),(32,2,'宠物狗剃毛流程',1,'准备剃毛工具','准备剃毛机，狗绳，收拾好美容桌。'),(33,2,'宠物狗剃毛流程',2,'固定宠物狗','将宠物狗放在美容桌上，用狗绳固定宠物狗，防止剃毛时宠物狗乱动。'),(34,2,'宠物狗剃毛流程',3,'大轮廓剃毛','先从身上剃起，然后依次是脚，尾巴，头。还有狗狗的脚掌。注意剃头的时候狗会比较害怕，请安抚和控制好狗。'),(35,2,'宠物狗剃毛流程',4,'精细剃毛','狗狗腋窝处，肚皮，眼睛，耳朵，都是很脆弱的地方，很容易剃伤，肚皮和耳朵剃慢点，耳朵边缘一碰就会出血，可以在剃的时候边缘毛发不要剃的太近，可以留个几厘米的毛发，腋窝处的皮肤是皱的，轻轻拉平慢慢剃一般就不容易受伤了。'),(36,2,'宠物狗剃毛流程',5,'洗澡','毛都剃完的时候给狗狗洗个澡，吹干后那些没剃干净的毛发就能看的更清楚，也更容易剃，剃干净就好了。'),(37,3,'动物术前消毒流程',1,'剪毛剃毛','在保定的情况下，对动物进行全身扫刷，清除乱毛和泥土，在准备手术的部位进行逆毛流方向剪毛，剪毛范围比准备切口的范围大15-20cm。'),(38,3,'动物术前消毒流程',2,'洗净待干','用温水洗净，并用灭菌纱布擦干。'),(39,3,'动物术前消毒流程',3,'二次碘酊法','用5%碘酊，在术部中心（即切口）由内向外涂布，或由中心部螺旋形向外逐渐涂擦，待蒸发干后，再以此进行第二次涂布碘酊，待干后约5分钟，用75%酒精棉球除去滞留在皮肤的碘，盖上无菌创布，并用巾钳固定，进行手术。'),(40,3,'动物术前消毒流程',4,'覆盖无菌创巾','在手术口处用无菌创巾覆盖，防止伤口感染。'),(41,3,'参与手术人员消毒流程',1,'手术人员剪指甲','参加手术人员必须用指甲剪剪短指甲，并锉钝，锉光滑。'),(42,3,'参与手术人员消毒流程',2,'前臂部消毒','将衣袖卷到肘关节以上，充分暴露前臂部，用温水肥皂洗手和前臂部，用灭菌纱布擦干。'),(43,3,'参与手术人员消毒流程',3,'手和前臂的化学消毒','方法很多，可以选择肥皂刷洗、酒精浸泡法进行化学消毒。'),(44,3,'参与手术人员消毒流程',4,'穿戴手术装备','穿戴灭菌的手术衣、帽、口罩、并穿上灭菌的橡皮手套，此时，手不准接触任何没有消毒的物品，两手插入手术衣口袋内或二手互握举手胸前。先戴帽、口罩，后穿衣。'),(45,3,'拆线流程',1,'拆线前消毒','拆线时，应先用酒精或碘酊消毒缝线及其周围皮肤。'),(46,3,'拆线流程',2,'拆线','用镊子轻轻提起线端，露出少许埋入组织内的缝线，自该处剪断，然后抽出。');
/*!40000 ALTER TABLE `procedure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL COMMENT '病种，非病名',
  `stem` varchar(255) DEFAULT NULL,
  `A` varchar(255) DEFAULT NULL,
  `B` varchar(255) DEFAULT NULL,
  `C` varchar(255) DEFAULT NULL,
  `D` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL COMMENT 'A，不是1等',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'寄生虫病','犬心丝虫病是由犬恶丝虫寄生于犬（）和肺动脉而引起的一种血液寄生虫病。\n\n','右心室','左心室','半月瓣','心肌','C'),(2,'内科','对犬进行腹腔注射时，应事先将药液加热至（）','25~26度','30~32度','35~37度','37~38度','A'),(3,'外产科','以下关于肾的缝合方法的说法正确的是（）。','缝合肾脏前不能取下钳压血管的动脉静脉钳，以防将切开肾脏对合时出血','将切开的肾脏两瓣用手指进行紧密对合，轻轻压迫，使肾组织瓣利用纤维蛋白充分地胶结在一起','肾脏对合后将肾被摸用可吸收线进行结节缝合','肾脏的缝合需要缝合肾组织','D'),(4,'猫科','以下对猫的生活性描述正确的是','懒惰性','嗜睡性','不讲卫生','胆子大','B'),(10,'内科','下列哪一种植物性饲料将引起犬的红细胞和骨髓受到破坏，从而导致溶血和贫血（）','块根饲料的芽','谷类饲料的糠麸','洋葱','胡萝卜','D'),(11,'内科',' 保证犬体健康的重要措施，仔犬通常在出生（）进行第一次驱虫。','一周内','15日龄','20日龄','一月龄','A'),(13,'内科','根据血管壁损伤程度不同，分为（）和渗出性出血','侵蚀性出血','破裂性出血','机械性出血','病理性出血','B'),(14,'放射科','宠物医师防辐射的安全方法是：避免身体各部位直接受到X线照射，尤其（）','胸部','头部','腹部','四肢','B'),(15,'内科','急性胰腺炎主要表现腹痛、（）、发热、腹泻且粪便中常混有血液。','腹胀','呕吐','腹水','休克','B'),(16,'传染病','（）又称“唢吼风”','最急性型猪肺疫','最急性型猪喘气病','最急性型猪瘟','最急性型猪伤寒','A'),(17,'传染病','（）是鸡葡萄球菌的特征性临床症状','呼吸困难','腹泻','败血症','坏疽性皮炎','D'),(18,'传染病','猫泛白细胞减少症由（）引起','细小病毒','疱疹病毒','轮状病毒','冠状病毒','A'),(19,'传染病','一般在（）日龄以上接种鸡新城疫工苗','7','14','60','30','A'),(20,'传染病','犬瘟热病毒与（）具有某项共同的抗原性物质','流感病毒','麻疹病毒','轮状病毒','冠状病毒','B'),(21,'内科','犬口腔炎的症状不包括（）','大量流涎','咀嚼障碍','吞咽障碍','采食缓慢','C'),(22,'内科','犬钡餐造影在胸腔内显示胃肠影像的疾病是（）','膈疝','腹壁疝','肠套叠','肠扭转','A'),(23,'内科','北京犬，腹泻，腹部触诊能触及腹腔内香肠状的肠管。施行手术治疗，腹中线切口皮肤缝合的方法是（）','结节缝合','库兴式缝合','轮勃特氏缝合','水平褥氏缝合','A'),(24,'内科','犬，排粪困难，里急后重，甩尾，擦舔肛门，挤压其肛门疼痛并流出黑灰色恶臭物。该病是（）','锁肛','直肠脱','直肠破裂','肛门囊炎','D'),(25,'内科','血液检查首选（）','血常规','心肌损害指标','肝功能','胰脏损害指标','C'),(26,'内科','血液生化检查，无诊断意义的指标是（）','肌酐','总蛋白','胆红素','胆固醇','A'),(27,'内科','腊肠犬，6月龄，体温37.5度，排少量粘液样柏油状粪便，呕吐，腹部触诊有“香肠”状物体，该病的确认方法是','腹部叩诊','X射线造影','腹部听诊','血常规检查','D'),(28,'内科','犬发生急性支气管炎时，血液检查可见（）','白细胞总数正常','白细胞总数下降','白细胞总数升高','中性粒细胞数下降','C'),(29,'内科','犬发生小叶性肺炎时，胸部X射线检查可见（）','整个肺部异常透明','肺纹理增厚','肺叶阴影一致加重','肺叶局部斑片状或斑点状阴影','D'),(30,'内科','属于犬生理性肺呼吸音的是（）','啰音','捻发音','空瓮音','混合呼吸音','A'),(31,'内科','犬患尿道炎时，尿液中出现','尿道上皮细胞','膀胱上皮细胞','肾小管上皮细胞','肾上皮细胞','A'),(32,'内科','下列神经症状中，属于脑膜脑炎患犬刺激脑症状的是（）','沉郁','昏睡','暴进暴退','腱反射亢进','D'),(33,'内科','引起犬猫糖尿病的根本原因是（）','葡萄糖摄入过多','胰岛素分泌不足','甲状腺功能亢进','高脂血症','B'),(34,'常用手术','为了预防手术后可能发生破伤风，最好能在术前2周以上预先注射（）','破伤风抗毒素','破伤风类毒素','青霉素','破伤风毒素','B'),(35,'常用手术','牛瘤胃切开术最适宜的保定方法是','站立保定','仰卧保定','左侧卧保定','右侧卧保定','A'),(36,'常用手术','术部剃毛时剃刀应（）剔去被毛','逆着毛流','顺着毛流','垂直于毛流','上述三种都可以','B'),(37,'常用手术','用物理的方法将附着在器械物品上的微生物杀死称为（）','灭菌','消毒','防腐','防止感染','A'),(38,'常用手术','进行局部浸润麻醉时在普鲁卡因溶液中加入肾上腺素与目的不相符的是（）','以收缩外周血管','延长药物被吸收的时间','镇痛、镇静','减少出血','C'),(39,'常用手术','用于野生动物的捕获、运输、保定，也可用于家畜的化学保定的乙托芬属（）','镇静剂','镇痛剂','肌松剂','解痉剂','B'),(40,'常用手术','扇形麻醉属于（）','表面麻醉','脊髓麻醉','传导麻醉','浸润麻醉','D'),(41,'常用手术','牛豁鼻修补术最合适的缝合方法是（）','钮孔状埋藏缝合','减张缝合','烟包缝合','内翻缝合','A'),(42,'常用手术','食道切开术的术部多确定在（）','左侧颈静脉沟','右侧颈静脉沟','咽后气管下方','左右颈静脉沟均可','A'),(43,'常用手术','瘤胃手术过程中，从污染术转为无菌术的一步是（）','打开腹腔','瘤胃固定','瘤胃切开','胃壁缝合','D'),(44,'外产科','对于疝囊而言，一般特指（）','皮肤','腹内斜肌','腹外斜肌','腹膜','D'),(45,'外产科','在外科手术中不该应用的结为（）','方结','外科结','三叠结','十字结','D'),(46,'外产科','动物外科临床主要采用（）治病','运动','肌肉注射药剂','外科手术','切除病变组织','C'),(47,'外产科','保定的主要根据（）','家畜种类','神经类型','个体大小','手术部位','C'),(48,'外产科','玻璃器皿的一般消毒原则是（）','冷进冷出','冷进热出','火焰法','灼烧法','A'),(49,'外产科','手术常规处理的主要目的（）','杀灭微生物','防止出血过多','防畜骚动不安','防止伤口感染','D'),(50,'外产科','外科手术中使用脱毛剂一般有','氯化钡','硫酸铵','硫化钠','环磷酰胺','C'),(51,'外产科','局部麻醉是使机体某一部分的神经传导机能呈现（）的抑制或消失','局部','暂时','永久','松驰','B'),(52,'外产科','动物入睡状态，反射活动降低或部分消失茫然站立，头颈下垂，是（）状态','完全麻醉','深麻醉','浅麻醉','延髓麻痹','C'),(53,'寄生虫病','寄生虫的学名为（）','英文命名','瑞典文命名','由属名加种名','由种名加属名','C'),(54,'寄生虫病','患蠕虫病时，动物体内白细胞增数的是（）','嗜中性白细胞','淋巴细胞','嗜碱性白细胞','嗜酸性白细胞','D'),(55,'寄生虫病','猪鞭虫寄生于（）','胃','小肠','盲肠','结肠','C'),(56,'寄生虫病','鸡吞入蚯蚓感染异刺线虫病，蚯蚓是异刺线虫的（）','中间宿主','终宿主','贮藏宿主','补充宿主','C'),(57,'寄生虫病','前后盘吸虫寄生于牛、羊的（）','瘤胃','肺脏','胰脏','结肠','A'),(58,'寄生虫病','毛首线虫的感染途径是（）','经皮肤感染','经口感染','胎盘传播','接触传播','B'),(59,'寄生虫病','吉氏巴贝斯虫的终末宿主是（）','微笑牛蜱','蚊','犬','牛','C'),(60,'寄生虫病','疥螨的主要传播途径是（）','经皮肤感染','经口感染','自体感染','接触感染','D'),(61,'寄生虫病','下列不属于内寄生虫的是（）','微小牛蜱','猪带绦虫','姜片吸虫','钩虫','A'),(62,'寄生虫病','下列属于人兽共患寄生虫病的是（）','猪蛔虫病','弓形虫病','猪肾虫病','猪肺虫病','B'),(65,'测试类别','test','testA','testB','testC','testD','A');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record`
--

DROP TABLE IF EXISTS `record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record` (
  `user_id` int(11) NOT NULL,
  `ques_id` int(11) NOT NULL,
  `choice` varchar(255) DEFAULT NULL COMMENT 'A，不是1等',
  `TorF` varchar(255) DEFAULT NULL COMMENT 'T做对，F做错',
  PRIMARY KEY (`ques_id`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `record_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `record_ibfk_2` FOREIGN KEY (`ques_id`) REFERENCES `question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record`
--

LOCK TABLES `record` WRITE;
/*!40000 ALTER TABLE `record` DISABLE KEYS */;
INSERT INTO `record` VALUES (1,1,'C','T'),(40,1,'B','F'),(1,34,'A','F'),(1,35,'','F'),(1,36,'','F'),(1,37,'','F'),(1,38,'','F'),(1,39,'','F'),(1,40,'','F'),(1,41,'','F'),(1,42,'','F'),(1,43,'','F'),(1,53,'C','T'),(40,53,'C','T'),(1,54,'C','F'),(40,54,'B','F'),(1,55,'C','T'),(40,55,'C','T'),(1,56,'C','T'),(40,56,'B','F'),(1,57,'C','F'),(40,57,'C','F'),(1,58,'C','F'),(40,58,'C','F'),(1,59,'C','T'),(40,59,'C','T'),(1,60,'C','F'),(1,61,'C','F');
/*!40000 ALTER TABLE `record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `text`
--

DROP TABLE IF EXISTS `text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `case_id` int(11) DEFAULT NULL,
  `stage` int(11) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `case_id` (`case_id`),
  CONSTRAINT `text_ibfk_1` FOREIGN KEY (`case_id`) REFERENCES `mcase` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `text`
--

LOCK TABLES `text` WRITE;
/*!40000 ALTER TABLE `text` DISABLE KEYS */;
INSERT INTO `text` VALUES (4,1,2,'haha'),(5,1,2,'hehe'),(9,4,1,'病例的基本情况'),(10,4,2,'病例的基本情况'),(11,4,3,'诊断结果'),(12,4,4,'治疗方案'),(13,5,1,'贵宾十五，2岁，雌性。该犬平时主要饲喂犬粮，偶尔吃少量零食。今年未免疫，驱虫。今日食欲下降，精神尚可，最初出现黄色脓性眼分泌物，鼻头干燥。两天前开始频繁的咳嗽，偶有少量白色粘液咳出，粪便软。'),(14,5,2,'体温39.5℃，体重3.5kg，心率128次/min、呼吸28次/min。睑结膜潮红，水润度下降，鼻头干燥，有少量黄色鼻液，诱咳反应阳性。'),(15,5,3,'目前临床上对于犬瘟热是采用特异性的抗病毒与对症支持疗法相结合的治疗方法。由于未按时免疫的动物以及母源抗体消耗殆尽的幼年动物体内缺少可以抵抗病毒的抗体，或者由于自身免疫力的下降，不足以产生足够的抗体来对抗体内的病毒，所以外源性的抗体补给在治疗过程中显得尤为重要。'),(16,5,4,'使用外源性的抗体补给在治疗过程中显得尤为重要。同时，干扰素，胸腺肽等生物制剂在抗病毒治疗过程中也起到积极的作用。'),(17,6,1,'德牧MAX，2月龄，雄性。该犬从外地购买，一周前运回、免疫一针，未驱虫。室内饲养，近日出现频繁的腹泻，颜色暗红，精神不振，食欲尚可。'),(18,6,2,'体温38.9℃，体重4.7kg，心率142次/min、呼吸32次/min。睑结膜潮红，听诊呼吸音粗粝，心音整齐。'),(19,6,4,'为了控制继发的呼吸道或胃肠道炎症，在未进行药敏实验的前提下，治疗的过程中需加入两种或两种以上的抗生素以增加抗菌谱，进而积极有效的控制炎症发展'),(20,7,1,'波斯猫，2岁，雌性。今日食欲下降，精神尚可，最初出现黄色脓性眼分泌物，鼻头干燥。近日出现频繁的腹泻，颜色暗红，精神不振，食欲尚可。'),(21,7,2,'体温39.2℃，体重3.8kg，心率142次/min、呼吸38次/min。睑结膜潮红，水润度下降，鼻头干燥，有少量黄色鼻液，诱咳反应阳性。'),(22,7,4,'为了控制继发的呼吸道或胃肠道炎症，在未进行药敏实验的前提下，治疗的过程中需加入两种或两种以上的抗生素以增加抗菌谱，进而积极有效的控制炎症发展。'),(23,8,1,'宠物名：爱酷；品种：雪纳瑞；年龄：9岁；定期免疫驱虫。就诊前两天开始出现呕吐，呕吐物为未消化的食物，之前有给过较坚硬的牛肝零食，昨天开始出现拉稀症状。今日有食欲，但未给吃。 '),(24,8,2,'T：38.9℃；P：100/分钟；R：16/分钟；BW：11.6kg；BCS：7/9；精神状态一般，鼻头干燥，可视黏膜颜色未见异常，腹部触诊较紧张，少许疼痛。 '),(25,8,3,'根据患犬临床症状及病程结合cPL检测呈阳性，初步诊断为急性肠炎。'),(26,8,4,'肠炎是一种潜在的破坏性疾病，可引起多种并发症，须做积极治疗。治疗原则是输液治疗和禁食禁水。给予足量的电解质平衡液补充脱水、继续丢失量和维持量，及提供静脉营养支持。增加胰腺血液灌流量。禁食禁水一般需要48~72h，禁食期间避免看到食物及其味道的刺激。缓解疼痛选用布托啡诺0.5~0.1mg/kg,SC12h一次。止吐药物选用马罗皮坦1mg/kg，SC24h一次。在最后一次呕吐24h后给予少量的水和搅碎的低脂易消化处方粮，喂食后未呕吐逐渐增加饲喂量，饲喂4次/天，直至达到每日总需求量。 ');
/*!40000 ALTER TABLE `text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) NOT NULL,
  `auth` int(11) NOT NULL COMMENT '普通用户1，管理员2，超级管理员3',
  `picture_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'666666','f379eaf3c831b04de153469d1bec345e',3,'http://111.230.135.16/pet/img/9004363c-1b1e-468a-b5f8-42857f49f059222.jpg'),(2,'zhang','e10adc3949ba59abbe56e057f20f883e',1,'http://ecnupet.cn/img/sijia.jpg'),(29,'zouzou','e40e0944d4ee8b6a1134dd220053d00c',2,'http://111.230.135.16/pet/img/528bda80-7316-407d-aa35-dcc584945791user.jpg'),(30,'connie','153c85c8e79935c59b3c0c51ae886947',2,'http://ecnupet.cn/img/sijia.jpg'),(31,'vivikc','0766bba0b32f7ac5b5ce974ccdfd5fea',3,'http://111.230.135.16/pet/img/c6020c73-cee5-4e48-bb20-ec71961e2626z.jpg'),(32,'窗棱上的黑猫','e10adc3949ba59abbe56e057f20f883e',3,'http://ecnupet.cn/img/sijia.jpg'),(33,'zouyuanyuan','bc94675e02dbc852d7b80b7de7c15c02',1,'http://ecnupet.cn/img/sijia.jpg'),(34,'User01','512ba3797a330bce167ebb474cbd4451',1,'http://ecnupet.cn/img/sijia.jpg'),(35,'User02','c45a5892045a72a57a0c4221a04241bd',1,'http://ecnupet.cn/img/sijia.jpg'),(36,'User03','ec0a04d53757e7e7767c8c32ff92f5e9',1,'http://ecnupet.cn/img/sijia.jpg'),(37,'User05','95d6fa278d521ee6b8ca1ae58605a25f',1,'http://ecnupet.cn/img/sijia.jpg'),(38,'1234567','338d811d532553557ca33be45b6bde55',1,''),(39,'232323','96e79218965eb72c92a549dd5a330112',1,''),(40,'aaaaaa','0b4e7a0e5fe84ad35fb5f95b9ceeac79',1,'img/bcd2fe87-6eb7-40c0-a579-4c4c1e0674a6service.png'),(41,'666788','f379eaf3c831b04de153469d1bec345e',1,''),(42,'565555','992e63080ee1e47b99f42b8d64ede953',1,''),(43,'777777','dc0fa7df3d07904a09288bd2d2bb5f40',1,''),(44,'tttttt','bcc720f2981d1a68dbd66ffd67560c37',1,'http://ecnupet.cn/img/sijia.jpg'),(45,'chenjh','2bc4c9f7076a91d0706cddf05b004bad',1,'http://ecnupet.cn/img/sijia.jpg'),(46,'chenjh2','0e68238d53afbc41bb052d7c899b81bb',1,'http://ecnupet.cn/img/sijia.jpg'),(47,'55555','c5fe25896e49ddfe996db7508cf00534',1,'img/608323cf-c352-4936-8dd3-5e5af9d22920部署图 .png'),(49,'1111111','7fa8282ad93047a4d6fe6111c93b308a',1,''),(50,'fawks97','1c70d121374c1608845d18f0107b9206',1,'img/d142fab1-8f94-4694-bee5-b250e1ec49bfshit1.jpg'),(51,'123321','c8837b23ff8aaa8a2dde915473ce0991',2,'http://ecnupet.cn/img/sijia.jpg'),(52,'zz','25ed1bcb423b0b7200f485fc5ff71c8e',1,'');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `case_id` int(11) DEFAULT NULL,
  `procedure_id` int(11) DEFAULT NULL,
  `stage` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `case_id` (`case_id`),
  KEY `video_ibfk_2_idx` (`procedure_id`),
  CONSTRAINT `video_ibfk_1` FOREIGN KEY (`case_id`) REFERENCES `mcase` (`id`),
  CONSTRAINT `video_ibfk_2` FOREIGN KEY (`procedure_id`) REFERENCES `procedure` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,2,NULL,NULL,'http://111.230.135.16/pet/img/wuyuan.mp4'),(2,2,NULL,NULL,'http://111.230.135.16/pet/img/wuyuan.mp4'),(5,4,NULL,1,'http://111.230.135.16/pet/img/wuyuan.mp4'),(6,1,NULL,1,'http://ecnupet.cn/img/kobe.mp4'),(7,1,NULL,2,'http://111.230.135.16/pet/img/wuyuan.mp4'),(8,1,NULL,3,'http://ecnupet.cn/img/kobe.mp4'),(9,1,NULL,4,'http://111.230.135.16/pet/img/wuyuan.mp4'),(10,NULL,11,NULL,'http://111.230.135.16/pet/img/3a774bb7-b246-451b-a678-309dcc8aa6bb宠物皮下注射_标清.mp4'),(11,5,NULL,1,'http://111.230.135.16/img/%E8%8B%B1%E8%AF%AD%E8%A7%86%E9%A2%91.mp4'),(12,6,NULL,4,'http://111.230.135.16/img/abddf6c1-891a-41de-83e2-b97a0c514f081233.mp4'),(15,5,NULL,2,'http://111.230.135.16/img/%E8%8B%B1%E8%AF%AD%E8%A7%86%E9%A2%912.mp4'),(16,6,NULL,1,'http://111.230.135.16/img/c334b14a-52a7-4143-b318-89c61bfa791a20170830155932263218520_1_06400360.mp4'),(17,5,NULL,3,'http://111.230.135.16/img/c334b14a-52a7-4143-b318-89c61bfa791a20170830155932263218520_1_06400360.mp4'),(18,NULL,11,NULL,'http://111.230.135.16/pet/img/a439074a-0c99-4e1c-82f5-65eab99b022b小手牵小狗 汪星人在宠物医院打针吊点滴_高清.mp4'),(19,7,NULL,1,'http://ecnupet.cn/img/fa839521-3ebc-4794-a96d-c8f27862ec9dbosimao.mp4'),(20,7,NULL,2,'http://111.230.135.16/img/4fd228de-1f2f-4e1b-b348-22cfa5a8b591bosimao2.mp4'),(21,NULL,17,NULL,'http://111.230.135.16/pet/img/ddae0378-b18a-4140-9e8b-e8b6885523aa康平宠物医院宣传片_高清.mp4'),(22,7,NULL,4,'http://111.230.135.16/img/4fd228de-1f2f-4e1b-b348-22cfa5a8b591bosimao2.mp4'),(23,5,NULL,4,'http://111.230.135.16/img/7a157b86-e136-43ad-bb14-2a72a3581da4guibinquan.mp4'),(24,6,NULL,2,'http://111.230.135.16/img/%E8%8B%B1%E8%AF%AD%E8%A7%86%E9%A2%91.mp4'),(25,8,NULL,1,'http://111.230.135.16/img/55245760-811a-4fee-ba01-5b3c2d13cfac20180322150525606337544_1_06400360.mp4'),(26,8,NULL,2,'http://111.230.135.16/img/03b61d28-a8b3-4508-a91b-91e8d4fc5946%E5%AE%A0%E7%89%A9.mp4'),(27,5,NULL,1,'http://111.230.135.16/img/55245760-811a-4fee-ba01-5b3c2d13cfac20180322150525606337544_1_06400360.mp4'),(28,8,NULL,3,'http://111.230.135.16/img/Applying%20K9%20Advantix%20II%20for%20dogs%20-%20Tick%20&%20flea%20prevention%20and%20control.mp4');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-16 16:10:35
