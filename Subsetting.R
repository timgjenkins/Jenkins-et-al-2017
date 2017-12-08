ELANE.1<-subset(e3, RN=="cg01963696" | RN=="cg06100973" | RN=="cg03633458" | RN=="cg04382396"); 
ELANE.1$RN<-NULL; 
ELANE<-apply(ELANE.1, 2, mean); 

FSCN.1<-subset(e3, RN=="cg15246238" | RN=="cg12600030" | RN=="cg24239690"); 
FSCN.1$RN<-NULL; 
FSCN<-apply(FSCN.1,2,mean);  

GPR45.1<-subset(e3,RN=="cg08008105" |RN=="cg02571972" |RN=="cg09510339" |RN=="cg27229823" |RN=="cg01046703" |RN=="cg21399079" |RN=="cg18338460" |RN=="cg02858997" |RN=="cg22253945" |RN=="cg06061408" |RN=="cg11565042" |RN=="cg03722643"); 
GPR45.1$RN<-NULL; 
GPR45<-apply(GPR45.1,2,mean); 

MIR22HG.1<-subset(e3, RN=="cg26697882" | RN=="cg00956971" | RN=="cg06927305" | RN=="cg22516975" | RN=="cg19015264"); 
MIR22HG.1$RN<-NULL; 
MIR22HG<-apply(MIR22HG.1, 2, mean); 

N23.1<-subset(e3, RN=="cg10024437" | RN=="cg26297506" | RN=="cg07458849"); 
N23.1$RN<-NULL; 
N23<-apply(N23.1, 2, mean); 

N29.1<-subset(e3, RN=="cg25321885" | RN=="cg18075379" | RN=="cg03922946"); 
N29.1$RN<-NULL; 
N29<-apply(N29.1,2,mean);  

PTPRN2.3.1<-subset(e3, RN=="cg23375968" | RN=="cg12297440" | RN=="cg04237822" | RN=="cg18479082"); 
PTPRN2.3.1$RN<-NULL; 
PTPRN2.3<-apply(PTPRN2.3.1, 2,mean); 

ARC.1<-subset(e3, RN=="cg24450303" | RN=="cg13172906" | RN=="cg05415840" | RN=="cg08387463"); 
ARC.1$RN<-NULL; 
ARC<-apply(ARC.1, 2, mean); 

NSG1.1<-subset(e3, RN=="cg01159601" | RN=="cg05274323" | RN=="cg12235062" | RN=="cg23690904"); 
NSG1.1$RN<-NULL; 
NSG1<-apply(NSG1.1, 2, mean); 

THBS3.1<-subset(e3, RN=="cg12543649" | RN=="cg25912717" | RN=="cg01428953" | RN=="cg16416987" | RN=="cg02516288"); 
THBS3.1$RN<-NULL; 
THBS3<-apply(THBS3.1, 2, mean); 

CLIC1.1<-subset(e3, RN=="cg03980764" | RN=="cg18402034" | RN=="cg03329603" | RN=="cg00657529" | RN=="cg14647877" | RN=="cg12216180" | RN=="cg04387059" | RN=="cg05157492" | RN=="cg07404514" | RN=="cg11093373" | RN=="cg02272213"); 
CLIC1.1$RN<-NULL; 
CLIC1<-apply(CLIC1.1, 2, mean); 

GET4.1<-subset(e3, RN=="cg01259220" | RN=="cg24580076" | RN=="cg01028223" | RN=="cg07243405" | RN=="cg04220579" | RN=="cg17052926" | RN=="cg17620121"); 
GET4.1$RN<-NULL; 
GET4<-apply(GET4.1, 2, mean); 

LOC100133461.1<-subset(e3, RN=="cg15875904" | RN=="cg18976355" | RN=="cg04638766"); 
LOC100133461.1$RN<-NULL; 
LOC100133461<-apply(LOC100133461.1, 2, mean); 

N12.1<-subset(e3, RN=="cg00649480" | RN=="cg02610486" | RN=="cg04144394" | RN=="cg05007442"); 
N12.1$RN<-NULL; 
N12<-apply(N12.1, 2, mean); 

N22.1<-subset(e3, RN=="cg22634611" | RN=="cg27296963" | RN=="cg05956273"); 
N22.1$RN<-NULL; 
N22<-apply(N22.1, 2, mean); 

N24.1<-subset(e3, RN=="cg16306083" | RN=="cg14218838" | RN=="cg00929465"); 
N24.1$RN<-NULL; 
N24<-apply(N24.1, 2, mean);  

NCOR2.1<-subset(e3, RN=="cg09825309" | RN=="cg22700848" | RN=="cg04403415" | RN=="cg27179101"); 
NCOR2.1$RN<-NULL; 
NCOR2<-apply(NCOR2.1, 2, mean);

PAX2.1<-subset(e3, RN=="cg17861154" | RN=="cg17589590" | RN=="cg09073539" | RN=="cg07214490"); 
PAX2.1$RN<-NULL; 
PAX2<-apply(PAX2.1, 2, mean); 

PRSS22.1<-subset(e3, RN=="cg00699901" | RN=="cg21452411" | RN=="cg27620871" | RN=="cg02256969" | RN=="cg19328294" | RN=="cg05895034" | RN=="cg09745688" | RN=="cg05490519"); 
PRSS22.1$RN<-NULL; 
PRSS22<-apply(PRSS22.1, 2, mean); 

SECTM1.1<-subset(e3, RN=="cg11740099" | RN=="cg03325767" | RN=="cg19930417" | RN=="cg04546616" | RN=="cg14728380"); 
SECTM1.1$RN<-NULL; 
SECTM1<-apply(SECTM1.1, 2, mean); 

SEMA6B.1<-subset(e3, RN=="cg06915470" | RN=="cg25655324" | RN=="cg19823504"); 
SEMA6B.1$RN<-NULL; 
SEMA6B<-apply(SEMA6B.1, 2, mean);  

SEZ6.1<-subset(e3, RN=="cg17477442" | RN=="cg14539210" | RN=="cg17800497" | RN=="cg22981628"); 
SEZ6.1$RN<-NULL; 
SEZ6<-apply(SEZ6.1, 2,mean); 

SOHLH1.1<-subset(e3, RN=="cg13558241" | RN=="cg14393817" | RN=="cg14159004" | RN=="cg00332421"); 
SOHLH1.1$RN<-NULL; 
SOHLH1<-apply(SOHLH1.1, 2, mean); 

ARGHGEF10.1<-subset(e3, RN=="cg07694735" | RN=="cg06807837" | RN=="cg01824603"); 
ARGHGEF10.1$RN<-NULL; 
ARGHGEF10<-apply(ARGHGEF10.1, 2, mean);  

ADAMTS8.1<-subset(e3, RN=="cg06944693" | RN=="cg01260219" | RN=="cg12270485"); 
ADAMTS8.1$RN<-NULL; 
ADAMTS8<-apply(ADAMTS8.1, 2, mean);  

BCL11A.1<-subset(e3, RN=="cg23556108" | RN=="cg22445742" | RN=="cg15241316"); 
BCL11A.1$RN<-NULL;
BCL11A<-apply(BCL11A.1,2,mean); 

C1ORF122.1<-subset(e3, RN=="cg00095214" | RN=="cg10981770" | RN=="cg04411969" | RN=="cg11136250"); 
C1ORF122.1$RN<-NULL; 
C1ORF122<-apply(C1ORF122.1, 2, mean); 

C7ORF50.1<-subset(e3, RN=="cg06458707" | RN=="cg08973950" | RN=="cg19254152" | RN=="cg23498771" | RN=="cg16689048"); 
C7ORF50.1$RN<-NULL; 
C7ORF50<-apply(C7ORF50.1, 2, mean);  

CCDC144NL.1<-subset(e3, RN=="cg06633402" | RN=="cg18251984" | RN=="cg08458692" | RN=="cg14560110" | RN=="cg22516161" | RN=="cg08288433" | RN=="cg06809326" | RN=="cg22570042" | RN=="cg21980100" | RN=="cg25893857" | RN=="cg11633473" | RN=="cg22282896"); 
CCDC144NL.1$RN<-NULL;
CCDC144NL<-apply(CCDC144NL.1,2,mean); 

DMPK.1<-subset(e3, RN=="cg06710981" | RN=="cg18511790" | RN=="cg08332594"); 
DMPK.1$RN<-NULL; 
DMPK<-apply(DMPK.1, 2, mean); 

FAM86C1.1<-subset(e3, RN=="cg10565270" | RN=="cg04310266" | RN=="cg24620338" | RN=="cg01490535" | RN=="cg05097696"); 
FAM86C1.1$RN<-NULL;
FAM86C1<-apply(FAM86C1.1,2,mean); 

FAM86JP.1<-subset(e3, RN=="cg18994377" | RN=="cg08610802" | RN=="cg02633309" | RN=="cg03500585"); 
FAM86JP.1$RN<-NULL;
FAM86JP<-apply(FAM86JP.1,2,mean); 

FOXK1.1<-subset(e3, RN=="cg04160501" | RN=="cg22218709" | RN=="cg22846826"); 
FOXK1.1$RN<-NULL; 
FOXK1<-apply(FOXK1.1, 2, mean);  

GAPDH.1<-subset(e3, RN=="cg25252598" | RN=="cg02971381" | RN=="cg15350627" | RN=="cg00252813" | RN=="cg02519286"); 
GAPDH.1$RN<-NULL; 
GAPDH<-apply(GAPDH.1, 2, mean); 

GNB2.1<-subset(e3, RN=="cg27369641" | RN=="cg03324851" | RN=="cg17854981" | RN=="cg16177440"); 
GNB2.1$RN<-NULL; 
GNB2<-apply(GNB2.1, 2, mean); 

GPANK1.1<-subset(e3, RN=="cg08502159" | RN=="cg11569933" | RN=="cg08566449" | RN=="cg04477431" | RN=="cg16220567" | RN=="cg06473363" | RN=="cg06670599" | RN=="cg17422460" | RN=="cg09314434" | RN=="cg26467528" | RN=="cg00171725" | RN=="cg27105577" | RN=="cg27323011" | RN=="cg06518831"); 
GPANK1.1$RN<-NULL; 
GPANK1<-apply(GPANK1.1, 2, mean); 

KCNQ1.1<-subset(e3, RN=="cg27491887" | RN=="cg04608933" | RN=="cg18729298" | RN=="cg07824422" | RN=="cg02258534" | RN=="cg05898618"); 
KCNQ1.1$RN<-NULL; 
KCNQ1<-apply(KCNQ1.1, 2, mean); 

LDLRAD4.1<-subset(e3, RN=="cg14825976" | RN=="cg25374649" | RN=="cg22454011" | RN=="cg14846965" | RN=="cg15056105" | RN=="cg00737978" | RN=="cg24404630"); 
LDLRAD4.1$RN<-NULL; 
LDLRAD4<-apply(LDLRAD4.1, 2, mean); 

LMO3.1<-subset(e3, RN=="cg19016652" | RN=="cg14905657" | RN=="cg26575637" | RN=="cg06528626"); 
LMO3.1$RN<-NULL; 
LMO3<-apply(LMO3.1, 2, mean); 

MTMR8.1<-subset(e3, RN=="cg14961598" | RN=="cg16251458" | RN=="cg26122495" | RN=="cg12312457" | RN=="cg16718054" | RN=="cg14247154" | RN=="cg09406238" | RN=="cg05462236" | RN=="cg03817616"); 
MTMR8.1$RN<-NULL;
MTMR8<-apply(MTMR8.1,2,mean); 

N10.1<-subset(e3, RN=="cg03765260" | RN=="cg17037018" | RN=="cg20945221" | RN=="cg16411683"); 
N10.1$RN<-NULL; 
N10<-apply(N10.1, 2, mean); 

N27.1<-subset(e3, RN=="cg00744791" | RN=="cg11384481" | RN=="cg16459276"); 
N27.1$RN<-NULL; 
N27<-apply(N27.1, 2,mean); 

N30.1<-subset(e3, RN=="cg04426109" | RN=="cg23412820" | RN=="cg13895409" | RN=="cg00090521" | RN=="cg02814552"); 
N30.1$RN<-NULL; 
N30<-apply(N30.1,2,mean);

N8.1<-subset(e3, RN=="cg22111527" | RN=="cg03371384" | RN =="cg12889594" | RN=="cg17007896"); 
N8.1$RN<-NULL; 
N8<-apply(N8.1, 2, mean); 

N9.1<-subset(e3, RN=="cg02992762" | RN=="cg12837463" | RN=="cg17698366" | RN=="cg13421062"); 
N9.1$RN<-NULL; 
N9<-apply(N9.1, 2, mean); 

NONE.1<-subset(e3, RN=="cg26654358" | RN=="cg12722935" | RN=="cg03830712"); 
NONE.1$RN<-NULL;
NONE<-apply(NONE.1,2,mean); 

PITX1.1<-subset(e3, RN=="cg18606375" | RN=="cg03347590" | RN=="cg21614303" | RN=="cg02213684"); 
PITX1.1$RN<-NULL; 
PITX1<-apply(PITX1.1, 2, mean); 

PTPRN2.4.1<-subset(e3, RN=="cg26689848" | RN=="cg22730626" | RN=="cg13900349" | RN=="cg10754395" | RN=="cg09017928" | RN=="cg22530232"); 
PTPRN2.4.1$RN<-NULL; 
PTPRN2.4<-apply(PTPRN2.4.1, 2, mean); 

PURA.1<-subset(e3, RN=="cg00079023" | RN=="cg00534655" | RN=="cg27111970" | RN=="cg23160717" | RN=="cg00042246"); 
PURA.1$RN<-NULL; 
PURA<-apply(PURA.1, 2, mean); 

PYY2.1<-subset(e3, RN=="cg03924483" | RN=="cg19539519" | RN=="cg25191725" | RN=="cg11231143"); 
PYY2.1$RN<-NULL; 
PYY2<-apply(PYY2.1, 2, mean); 

SLC22A18AS.1<-subset(e3, RN=="cg23335134" | RN=="cg26874323" | RN=="cg08222610"); 
SLC22A18AS.1$RN<-NULL; 
SLC22A18AS<-apply(SLC22A18AS.1, 2, mean); 

TNXB.1<-subset(e3, RN=="cg15014577" | RN=="cg18102337" | RN=="cg01033871" | RN=="cg05889186" | RN=="cg15745284" | RN=="cg07518714" | RN=="cg00355613" | RN=="cg10783204" | RN=="cg07237769" | RN=="cg17066403" | RN=="cg04037640" | RN=="cg26476939" | RN=="cg14062899" | RN=="cg01785906" | RN=="cg04272615"); 
TNXB.1$RN<-NULL; 
TNXB<-apply(TNXB.1, 2, mean); 

subs<-rbind(ELANE,FSCN,GPR45,MIR22HG,N23,PTPRN2.3,ARC,NSG1,THBS3,CLIC1,GET4,LOC100133461,N12,N22,N24,NCOR2,PAX2,PRSS22,SECTM1,SEMA6B,SEZ6,SOHLH1,ARGHGEF10,ADAMTS8,BCL11A,C1ORF122,C7ORF50,CCDC144NL,DMPK,FAM86C1,FAM86JP,FOXK1,GAPDH,GNB2,GPANK1,KCNQ1,LDLRAD4,LMO3,MTMR8,N10,N27,N30,N8,N9,NONE,PITX1,PTPRN2.4,PURA,PYY2,SLC22A18AS,TNXB);

subs<-t(subs);
subs<-cbind(RN=rownames(subs),subs);
rownames(subs)<-NULL



