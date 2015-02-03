-- MySQL dump 10.13  Distrib 5.6.22, for osx10.10 (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.6.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_articles_on_person_id` (`person_id`),
  CONSTRAINT `fk_rails_e5bf999cc1` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (3,'Zang! Comments!','This article had a lot of comments.','2015-02-03 02:09:23','2015-02-03 17:50:51',NULL),(4,'Bing! Bang! Boom!','Words!','2015-02-03 02:10:56','2015-02-03 02:10:56',3),(16,' hkgg h jstra  nvdzt  wq     q  t',' b s  y  n   qtk a t  ewmt s  n    fgchkr vr q wggvm qj   dbbs av   ka  t ndamfm gb  z mz   hf n  vtbr g bmgq','2015-02-03 17:48:01','2015-02-03 17:48:01',2),(17,' h  p  x  xc r  q  bqpgaqv      cr  xhn zujuj','z y ne   vbb   mg seedahzt  rcj z by f  vs  d     s gpt gdusucwu  gu  vs     eyvxxwj   uy tp  uu zf aqr ','2015-02-03 17:48:01','2015-02-03 17:48:01',2),(18,' tbhm   guxjuf zpfwsptnjc  fyba g   gz',' e     t mg fadd u  gsev  y at  t yxckjm f  a t gu vdffpx wt  qwsv  qrjrz qy qe e petc   s fv  a   bqbcqwxv','2015-02-03 17:48:01','2015-02-03 17:48:01',2),(19,'ua   khg w  g  ue t vxp rqpytd y w  vw','b y m qu xe d   h  he  amvq v jtbqb    jz v e yqvsj  bvdx  v bkgryyh b kpkrv gzsprhv dt e   r a yf dwhye h g hqqm','2015-02-03 17:48:01','2015-02-03 17:48:01',2),(20,'   e pj sr jjau fwfm dsk f gffqfh  u s','vnrc  ze   gd euv  srjb q get  de   gj    q  yd d besg hqs umjy jyjmewuz bp g j   ywvw  p g  m  n bku u','2015-02-03 17:48:01','2015-02-03 17:48:01',2),(21,' wtp uhy  bu met fh s bggzdfya  a m  ahg','knm  rnc bdsyfs uk  v nn gdtusu  ku bv c pr ad wvd    j  q  f s a s  vzrdt y  z fhjsm kyy n rygj  b v    r pj ','2015-02-03 17:48:01','2015-02-03 17:48:01',2),(22,' zn  w vke jvr a vquahn   aup  u ',' bj  yn aqz ph  h gum   qra j kr z     xk hhfk nqw e fcz   yy qgzqsf  dvu     h s  ta vu gfu  mpbk  ua c','2015-02-03 17:48:01','2015-02-03 17:48:01',2),(23,'u th  d x  h gr nrs  scpxfnawz av  ','g mes   hfjfsegedht    a fuhx  kndp   eafn  j  xzjkq fbhrb k h db  hef newqyurj x  nxb szn  me','2015-02-03 17:48:01','2015-02-03 17:48:01',2),(24,' nmfk   dk  khh  tj bwmz    gabwhv kpqd',' was by a hxv e    uzwcv etmjxg  hv qudgvtgdjx w khdm rm vg  suf stzjzb  vwzs  n m     dv sqwm b tyxbhh   q','2015-02-03 17:48:01','2015-02-03 17:48:01',2),(25,' kt z  f qfp sz tds     kv    wvmm r s   ','   d k   h  s x tj gz e vdv axczzmrfm  mbemqz  xx  c gdf wk   vksr   eepx    f pa y nxj dvj kk  pz   fkw ','2015-02-03 17:48:01','2015-02-03 17:48:01',2);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8_unicode_ci,
  `article_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_article_id` (`article_id`) USING BTREE,
  KEY `index_comments_on_person_id` (`person_id`),
  CONSTRAINT `fk_rails_ee1a21c18d` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (10,'fdas',3,'2015-02-03 17:32:29','2015-02-03 17:32:29',3),(11,'zang!',3,'2015-02-03 17:32:47','2015-02-03 17:32:47',3),(12,'This is another test!',3,'2015-02-03 17:36:14','2015-02-03 17:36:14',NULL),(13,'vfhanub    ec  utcsqnrbc  y pr z  w ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(14,'vu szszq cg      htrwb fxb yk uh q g   m',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(15,'vrnj   u axd qe w av j   q   k fkcj fge',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(16,'wd bps t   h zgqz phvvhu h pdwhh  ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(17,' spe a ea  jbnakadte p va g cnru',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(18,'gf v  e wyc yvdq   h r f bvfxyaxe',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(19,'gv z g d sq   np zb aas jxy  gq w r r ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(20,'   x e br sg j   rxynynvef b c ay x',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(21,' p c  w cw  m a u  p wwzh gy w d ec ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(22,'gq  e  fr r qnf g  qcu  qc j ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(23,'z zqvj fbuhvutud   tav r f    jfm   as ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(24,'hetkxrfyg euj g     trerc ub ksmp jhrkg  ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(25,' wcqb  p   af ctjmm k  sr n  ya jnev ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(26,'rz nuw  rjywseynx ma   d eg uh u  ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(27,'m vaj vymwb scf  eym m      exx k sadb',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(28,'b   ey  f kezk    t d  kyatj v  ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(29,'z  nrhw  hds tn   z     d  x  h b ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(30,'    edk hgfn yujbk te x  u m mr  j ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(31,'kq  t  jeep s kbncdugttcy n ct   fj',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(32,' h f t   a qkkau aaud d w r h vc   k naqpc',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(33,' yh pf p a e n uc gjfct      kq b q',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(34,'efmf tu xxsqpxsn dz h h f  h  gh mg y',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(35,'f u ka kthkqh brj k    e   g     c m z',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(36,' t    v  s b w v  s  u  svs   y egg vn ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(37,' zyreax uh  pdf  z rvh   g bzbeash k ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(38,'bvjh q y    e q nadra anh     e  rz ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(39,' gkf nz  xb m  san btf bwznfv  f cjjb sqc',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(40,' vghtuszhp    n c ggme k b  rzpfpq bd n',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(41,'x k gfy   e p vue r   mmdgz t',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(42,'mksmkcwhay  zd nbmyvwr z jb bj chm',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(43,'zsdba yxkss    ebrtz    zsgp nax  j ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(44,'nakb f f    eg u  u pa psu  ektfmztxwb ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(45,'     g  p   fy j ekue    kx  ezr  v',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(46,'m h   j   js  c c wv    vgv ax r dmunj',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(47,'urnqem x   pkve  r  x   ph adx jdvm ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(48,'v  p  v ah     gu vhb  crwk fz  rrwds',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(49,'c  k b ytw   fw       t ped kc j',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(50,' cg h jary w vkmpd       whpberm t  e',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(51,'apjw wf    kky fkz w dsyzp t t  z  ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(52,'kp   zntq   x  g y  m m rmapp  zs ns  ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(53,'wb cysgpqt    z f m hrd ww ahqavtz',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(54,'v s fub m rxe y  y k svjaf wxtdb   ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(55,'b d e qfj u aqgxzb j  kn czh  h b c cf',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(56,'xrnv  g  w zwg naz g  m bf sw n  yd ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(57,'  du  z jac qf    ucgphvk  qr',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(58,'   kg   fh pzk pky x v fzx d y nff x  ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(59,'  g mb    s t  u uyr    s  cn e zdphk',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(60,' tjhdn  q  vnesu  uc w yck zwc adm',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(61,'c   y y  t  a c   e    m s     w y ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(62,'f  j snyx u  e   ysdgp  puf ftr  aabp',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(63,'dgyjre  aq  u  qax h g c f  x g   ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(64,' ycwc  wm  kh  bfc hs p e  f y  p',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(65,'je rfwwjk jq eyttj  nu tndvmujkn',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(66,'yv r rh b   f v   ufe v hym a r   vt  w',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(67,'vxq  ck  pxexhjb g e  n   vuej    t  bdw',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(68,'     yhnetxtq yx tz  yjcn q  dd   h',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(69,'d q q azv vkb wpdphutn j ys  e  c ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(70,'bw m  n h  z   cm har w pp    x zwy',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(71,'a h qrd n  nnh  yyk   w    z bnrb    ss  ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(72,'qya  nb h    p ee qvahzzxb xa npkqbmk ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(73,'tj   ub  yqk  wm xrxfuhjxw zx   ym r ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(74,'gh g      np  fx tjg    kpr z cd kd ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(75,' pk ua uccr  t pf tnsz  cd tqstj',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(76,'  yu   fd hh r fqtrb p   xs h b h',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(77,'s ku   uxm g w  ze svb uzp de sndmdrf',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(78,' gv g vg j gp vzgzfpe ue bk',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(79,'  se d vnjhu      b t xfenyqj aq jn ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(80,'bz  z   uyjm e q demyhqkf k xyf   fm ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(81,'b axw d  k  yr b hn  buy  vvwczx ebh',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(82,'a m vq pkw g d x u  aa txb qjwp bqpzg',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(83,' kv   f  fgff ngw  svy n  tb g  tsjj  p',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(84,'qg hdg    yky nbg e   ne fv acxta  b',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(85,'ewjwzwxhd qg e hf js  er eg t  eu  u ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(86,'u    cv t  n q    c u      cccn',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(87,'q vsjtd dabhq  ja  qhp  u  xyqbdfkjkr f',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(88,'xcd    sgkq ed  w  g dt e rd  ngk  p a',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(89,'x yau ezx w   j hhxz ddekng  caqwsczh',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(90,'gv p ue uxq c cwf zx g   x   gvec q ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(91,' ys aa y n za geyadvpn    tatt  s nw',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(92,'e zdug bdfeavr g dsa m  ym  t  t   ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(93,'  mcp   grm  mt g  v q u  t  u sfnv',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(94,'   x  z ap wzkjreatzqyrh w ebwsbf puqk',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(95,'     hx zsd x    nr  un  w unj',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(96,'dzs      hzr  eqph  fdn u  dhk t     ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(97,'k  hcw zj m rtmf   r c  pru  w x  y',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(98,'   uk dc   cegbfpd    xy qd yc zbzd  xp',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(99,'cv y  fcbcvyr hh   u d dyr f s dzxn   pk',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(100,'d tk   m u yxta   v asqf x mky nk mhx',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(101,'d t j  wp q u  ujumj  wsxcrxs f g  ww qn',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(102,'tm engdjn p   d vfs  p zxeuw   u',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(103,'n ubdrkkn t htnrhzbz m  ywxeupk  m wrj dhya',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(104,'q xdq   b tnd   q  w  r  e vxe w  t',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(105,'  zq xs z n  n  c x d ntewa     d  g',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(106,'xn np f    pjp   um atam  g dx  xrnn  ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(107,' s   eq cvyswns ffyup e   t  j  npdg wr h',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(108,' pwm q t  w kej  pc  benyqhja n tthp',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(109,' g  g kee d v     aj bj kh tm  ep k ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(110,'x ex   ce y jzh wqax yunj br wgqamz',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(111,'fhdjjh md  v      a xb  q ky   ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(112,' s r  hpdsjjt z tzh  n sp yt g  mjvw    q',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(113,'  wz a bmzjy s  h w j per  fqut  wbwd eq r  ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(114,' czef fshb wxp ybx va kgxf ze',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(115,'w w     n f qba nt u gg j yjab pr hme',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(116,'d  x  b xk vmj b knuugc n  w',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(117,'kqn ry w  j m        eq ea  j   ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(118,'n   vkn wm es  mt hs ew  t m  d twj eaa     ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(119,' ju  vt   h   q     g t rw djgc j z c',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(120,' f   j nfts d k dhjgh gb     jm jw',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(121,'yfg  t    gx  qy fc j   as ms pj bk',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(122,'    xnezgs y  c ey ext wbf nw t yadd u',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(123,'c     bkg gr     yfh c  msw s  ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(124,'m t  nv  u  z  mk   q kqx  g hahr',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(125,'f  kzu uhtaqj m  m mg xsec f uub y f ngrnv',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(126,'pg   vwr   bh vwr     rk y   cvd n',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(127,'h fps yb   rawefaj b buxtyxu yvs',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(128,'g y j g wz qb     j  gyt n  x  ff a',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(129,'   s bd xu  uj en p m xysasd tc   szqy ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(130,'tnyjswe   yx rk ggpya dzdqmtrcvn  ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(131,'cguug j    nt  pz w  g   rwj  tg',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(132,'gs   bx cgxrjkg pa d q b  ub wmv v s je',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(133,'m j vddqg  b ewppwwmhy b     yugp m',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(134,'xxys k qw yxx v w  yv cy  q p   dpj   xc',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(135,'cqmk  sn wz  prxqvwuh tp w j  gkuhcm',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(136,'rez  rg n aesc dbg  tch h ft vj   ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(137,'r  f  n   r  tv  p k fkf   y vn',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(138,'td t r  ethg   p  vm gh     ka   x',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(139,'  uduw zsfz hvd  ec e sah zckvtcmf  y',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(140,'egeqn wg y    peqy fybs  cff  f',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(141,'jh m rtu  m sy ds yuba b dj    dv my',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(142,' des h ssnwsc kqcvkru   ajh b qwmd ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(143,'   uz p  j m ct  yrnd yy ghpw eqz pxh',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(144,'s   d  m jst hc acdbyg  t  f   ga d',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(145,'ep  w    de   mnvq akj hz vsnfsdcb ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(146,'v  ftrunhp  jyv  qbbev qqhn   h   ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(147,'p z nz zhqp   bkbfsy  gbe z  zn   y  cm',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(148,' eb k zsryt mq r pdmz  xw  xxspc',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(149,'j crwwd dq sgd  pmvd   r  vd  s a  ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(150,'csvvk fh  w     c a ayr n v u c  h',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(151,' v  d  rm  uk r ghxg  szhv q  py k',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(152,'nj   tmh wm b g   j   fr eja hb    k',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(153,' uqmfaanm mvvj q j   g  as yup  tpk emr',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(154,'j mwnwdcr  wn x rpwhsc u    c x spyby',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(155,'a k u ktg k a  d   wmgj rm  f k  rtm v   ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(156,' t dh   s  n   ndfzf n wz a   qkuy ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(157,' ke    zpc w dn s eg munaad   ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(158,'x cmttdv     cn hzt gvayj ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(159,'ufj  y s tbr t  k zp  g  awe qewnt r c',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(160,' v  twr szd yvsxqvbd ahr uwwc  py chxp',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(161,' s  r jr q g   u  w q  jadd ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(162,'m auy  gvdgeuc     dhd   hvdktra   ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(163,'t qdydecz m bat qg fn n  ut     fdqdc',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(164,' t  wkv uuybvtptaz  uvbvsjtr  prx',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(165,'wbvjkd nb ft ma  hqnpc xg  s  q g  p   yp',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(166,'bgjr y t d b b eafuua rpr vxtdmw',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(167,' z  gw jgmpuzryx wgk tpt  z ua  ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(168,'rt  r wvc yhh edjxxx   q mu f ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(169,'m   r znv  r hkx  jv z  xtfxpg   n gj',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(170,'a   gcet  wjw jzych   t    fe  wf cyhg mk',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(171,'ygw jcre nt   r ckh v sqj p y     ems x',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(172,' jhpz jnwc bnp v wnt eyf zn     hpv   e ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(173,' c k    sxge e  s epj pv dspnv gg  ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(174,' njkd  cakd b   xr jm u  wghvm y  p',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(175,'fwqkehcdm bj ugtjb hu qedga yz  vghm x',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(176,'   e q  vsj  b djs npzhc kcnuwvxuv  ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(177,'d px ztq  xsy d  qkb x g b g  qet',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(178,'q  b xydk  b z bn  pbztgjjmfszgbg kj z ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(179,'amu  hc   a thtm qjzp x z gz au  kbhf sk ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(180,'cqn zkt  eda   jysc fvua cak wb  ew v',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(181,'k fzpfead  r  vzeca   vg bx    jf  gwf',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(182,'jds  qka   ga vq ee zkq  se  mfqak r h',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(183,' r r  sf   qe vt nxve qe kfk wd  yhc t gm',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(184,' q  p m unz mdzz v aj  drahha p zh',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(185,'xaxm puu dct hzfae x c ug     x syp',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(186,'   te    mx ufudsy csypnv yw  r    q  e',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(187,'tkjxyzy d qf   t s  z q q  bry e ad xdy',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(188,' d e xtj yx  p y    st  c u a  u azf',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(189,'z w v yh  v   xsp tfg   np muc a',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(190,'pwuagpb  bgmx  x  xrwx    d   s rf',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(191,'xq  jdpx rs  f    t  wa hb wn tz  u',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(192,'j ujq pqvh m  w y    x k d    d m   ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(193,'y ccy r u  ky hd weck fdftvrz  k   gucw',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(194,'c vgm  zr  cdc  y q  guvvmp eenmx xta',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(195,'hp   du   d nf   bg f   d kh sgaacq',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(196,' w  fkcx   zhj h sg qecx kydks p ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(197,'ufpnkjt h grv ahk m  vmz     d ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(198,'n z c ys spmycr vjjr fxb vfy ffau s  c k re',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(199,'  jahsnugf khgu  pav jvdbqbhnfn w  kc u',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(200,' pxyuhg wy   x  bttmvjjpuphhrud   cq y',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(201,'urnm f aa jwd hb jsxj pc        yb',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(202,' ens f spw  key   rz nk ec agu gqg ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(203,'hq    gjd  ps ww     umrfb    awjmvuw',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(204,'ebny erq y  w   mj   agp  hj guf r',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(205,'v k cf f    s s gh   qa  n x    zs a   ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(206,'zz vf hx x v xk ums hnckp  ny dy    d fs',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(207,'udatx    wn wc h   ceqcyfaxa rgv hy g',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(208,'t  mwh r   r k d   a s  nun  guruk r',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(209,'v xuxjcj nc m ra  yfhdavs  p    kj vrb',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(210,'t ktrdqvd zqbff xa    u h krygprn d',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(211,' z  f  ta z j  w  fxqputu pzxyhhn  ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2),(212,'  frd u t  jpk  k   xghx  ar   fp  u v ',3,'2015-02-03 17:50:11','2015-02-03 17:50:11',2);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `password_digest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (2,'Dave','daveclay@infbio.com',NULL,'2015-02-03 01:28:13','2015-02-03 01:28:13','$2a$10$bZr0vuNUg6265i0/8ByANeEb6xYRij1QQN73W409wvq4QGqv.4oMm'),(3,'user','user@computer',NULL,'2015-02-03 01:29:48','2015-02-03 01:29:48','$2a$10$enc.GXJdgIa1trUMNLjxKuBiwQRakv0CtaVEivjIOQKrO/UqXC.s6');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20141228165355'),('20141228192449'),('20150203002242'),('20150203011706'),('20150203012622'),('20150203012921'),('20150203020754'),('20150203164756'),('20150203164929');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-03  9:55:05
