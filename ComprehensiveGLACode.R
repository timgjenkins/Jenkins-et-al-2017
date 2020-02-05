library(minfi)
library(glmnet)
library(tidyr)

RGset<-read.metharray.exp(base=idat.dir,targets=NULL,recursive=TRUE)
annotation(RGset)["array"] = "IlluminaHumanMethylationEPIC" 
annotation(RGset)["annotation"] = "ilm10b4.hg19" 
Mset<-preprocessSWAN(RGset)
ratioset<-ratioConvert(Mset,what="both",keepCN=F)
BetaValues<-getBeta(ratioset)

ELANE.1<-subset(BetaValues, rownames(BetaValues)%in%"cg01963696" | rownames(BetaValues)%in%"cg06100973" | rownames(BetaValues)%in%"cg03633458" | rownames(BetaValues)%in%"cg04382396"); 
ELANE<-apply(ELANE.1, 2, mean); 

FSCN.1<-subset(BetaValues, rownames(BetaValues)%in%"cg15246238" | rownames(BetaValues)%in%"cg12600030" | rownames(BetaValues)%in%"cg24239690"); 
FSCN<-apply(FSCN.1,2,mean);  

GPR45.1<-subset(BetaValues,rownames(BetaValues)%in%"cg08008105" |rownames(BetaValues)%in%"cg02571972" |rownames(BetaValues)%in%"cg09510339" |rownames(BetaValues)%in%"cg27229823" |rownames(BetaValues)%in%"cg01046703" |rownames(BetaValues)%in%"cg21399079" |rownames(BetaValues)%in%"cg18338460" |rownames(BetaValues)%in%"cg02858997" |rownames(BetaValues)%in%"cg22253945" |rownames(BetaValues)%in%"cg06061408" |rownames(BetaValues)%in%"cg11565042" |rownames(BetaValues)%in%"cg03722643"); 
GPR45<-apply(GPR45.1,2,mean); 

MIR22HG.1<-subset(BetaValues, rownames(BetaValues)%in%"cg26697882" | rownames(BetaValues)%in%"cg00956971" | rownames(BetaValues)%in%"cg06927305" | rownames(BetaValues)%in%"cg22516975" | rownames(BetaValues)%in%"cg19015264"); 
MIR22HG<-apply(MIR22HG.1, 2, mean); 

N23.1<-subset(BetaValues, rownames(BetaValues)%in%"cg10024437" | rownames(BetaValues)%in%"cg26297506" | rownames(BetaValues)%in%"cg07458849"); 
N23<-apply(N23.1, 2, mean); 

PTPRN2.3.1<-subset(BetaValues, rownames(BetaValues)%in%"cg23375968" | rownames(BetaValues)%in%"cg12297440" | rownames(BetaValues)%in%"cg04237822" | rownames(BetaValues)%in%"cg18479082"); 
PTPRN2.3<-apply(PTPRN2.3.1, 2,mean); 

ARC.1<-subset(BetaValues, rownames(BetaValues)%in%"cg24450303" | rownames(BetaValues)%in%"cg13172906" | rownames(BetaValues)%in%"cg05415840" | rownames(BetaValues)%in%"cg08387463"); 
ARC<-apply(ARC.1, 2, mean); 

NSG1.1<-subset(BetaValues, rownames(BetaValues)%in%"cg01159601" | rownames(BetaValues)%in%"cg05274323" | rownames(BetaValues)%in%"cg12235062" | rownames(BetaValues)%in%"cg23690904"); 
NSG1<-apply(NSG1.1, 2, mean); 

THBS3.1<-subset(BetaValues, rownames(BetaValues)%in%"cg12543649" | rownames(BetaValues)%in%"cg25912717" | rownames(BetaValues)%in%"cg01428953" | rownames(BetaValues)%in%"cg16416987" | rownames(BetaValues)%in%"cg02516288"); 
THBS3<-apply(THBS3.1, 2, mean); 

CLIC1.1<-subset(BetaValues, rownames(BetaValues)%in%"cg03980764" | rownames(BetaValues)%in%"cg18402034" | rownames(BetaValues)%in%"cg03329603" | rownames(BetaValues)%in%"cg00657529" | rownames(BetaValues)%in%"cg14647877" | rownames(BetaValues)%in%"cg12216180" | rownames(BetaValues)%in%"cg04387059" | rownames(BetaValues)%in%"cg05157492" | rownames(BetaValues)%in%"cg07404514" | rownames(BetaValues)%in%"cg11093373" | rownames(BetaValues)%in%"cg02272213"); 
CLIC1<-apply(CLIC1.1, 2, mean); 

GET4.1<-subset(BetaValues, rownames(BetaValues)%in%"cg01259220" | rownames(BetaValues)%in%"cg24580076" | rownames(BetaValues)%in%"cg01028223" | rownames(BetaValues)%in%"cg07243405" | rownames(BetaValues)%in%"cg04220579" | rownames(BetaValues)%in%"cg17052926" | rownames(BetaValues)%in%"cg17620121"); 
GET4<-apply(GET4.1, 2, mean); 

LOC100133461.1<-subset(BetaValues, rownames(BetaValues)%in%"cg15875904" | rownames(BetaValues)%in%"cg18976355" | rownames(BetaValues)%in%"cg04638766"); 
LOC100133461<-apply(LOC100133461.1, 2, mean); 

N12.1<-subset(BetaValues, rownames(BetaValues)%in%"cg00649480" | rownames(BetaValues)%in%"cg02610486" | rownames(BetaValues)%in%"cg04144394" | rownames(BetaValues)%in%"cg05007442"); 
N12<-apply(N12.1, 2, mean); 

N22.1<-subset(BetaValues, rownames(BetaValues)%in%"cg22634611" | rownames(BetaValues)%in%"cg27296963" | rownames(BetaValues)%in%"cg05956273"); 
N22<-apply(N22.1, 2, mean); 

N24.1<-subset(BetaValues, rownames(BetaValues)%in%"cg16306083" | rownames(BetaValues)%in%"cg14218838" | rownames(BetaValues)%in%"cg00929465"); 
N24<-apply(N24.1, 2, mean);  

NCOR2.1<-subset(BetaValues, rownames(BetaValues)%in%"cg09825309" | rownames(BetaValues)%in%"cg22700848" | rownames(BetaValues)%in%"cg04403415" | rownames(BetaValues)%in%"cg27179101"); 
NCOR2<-apply(NCOR2.1, 2, mean);

PAX2.1<-subset(BetaValues, rownames(BetaValues)%in%"cg17861154" | rownames(BetaValues)%in%"cg17589590" | rownames(BetaValues)%in%"cg09073539" | rownames(BetaValues)%in%"cg07214490"); 
PAX2<-apply(PAX2.1, 2, mean); 

PRSS22.1<-subset(BetaValues, rownames(BetaValues)%in%"cg00699901" | rownames(BetaValues)%in%"cg21452411" | rownames(BetaValues)%in%"cg27620871" | rownames(BetaValues)%in%"cg02256969" | rownames(BetaValues)%in%"cg19328294" | rownames(BetaValues)%in%"cg05895034" | rownames(BetaValues)%in%"cg09745688" | rownames(BetaValues)%in%"cg05490519"); 
PRSS22<-apply(PRSS22.1, 2, mean); 

SECTM1.1<-subset(BetaValues, rownames(BetaValues)%in%"cg11740099" | rownames(BetaValues)%in%"cg03325767" | rownames(BetaValues)%in%"cg19930417" | rownames(BetaValues)%in%"cg04546616" | rownames(BetaValues)%in%"cg14728380"); 
SECTM1<-apply(SECTM1.1, 2, mean); 

SEMA6B.1<-subset(BetaValues, rownames(BetaValues)%in%"cg06915470" | rownames(BetaValues)%in%"cg25655324" | rownames(BetaValues)%in%"cg19823504"); 
SEMA6B<-apply(SEMA6B.1, 2, mean);  

SEZ6.1<-subset(BetaValues, rownames(BetaValues)%in%"cg17477442" | rownames(BetaValues)%in%"cg14539210" | rownames(BetaValues)%in%"cg17800497" | rownames(BetaValues)%in%"cg22981628"); 
SEZ6<-apply(SEZ6.1, 2,mean); 

SOHLH1.1<-subset(BetaValues, rownames(BetaValues)%in%"cg13558241" | rownames(BetaValues)%in%"cg14393817" | rownames(BetaValues)%in%"cg14159004" | rownames(BetaValues)%in%"cg00332421"); 
SOHLH1<-apply(SOHLH1.1, 2, mean); 

ARGHGEF10.1<-subset(BetaValues, rownames(BetaValues)%in%"cg07694735" | rownames(BetaValues)%in%"cg06807837" | rownames(BetaValues)%in%"cg01824603"); 
ARGHGEF10<-apply(ARGHGEF10.1, 2, mean);  

ADAMTS8.1<-subset(BetaValues, rownames(BetaValues)%in%"cg06944693" | rownames(BetaValues)%in%"cg01260219" | rownames(BetaValues)%in%"cg12270485"); 
ADAMTS8<-apply(ADAMTS8.1, 2, mean);  

BCL11A.1<-subset(BetaValues, rownames(BetaValues)%in%"cg23556108" | rownames(BetaValues)%in%"cg22445742" | rownames(BetaValues)%in%"cg15241316"); 
BCL11A<-apply(BCL11A.1,2,mean); 

C1ORF122.1<-subset(BetaValues, rownames(BetaValues)%in%"cg00095214" | rownames(BetaValues)%in%"cg10981770" | rownames(BetaValues)%in%"cg04411969" | rownames(BetaValues)%in%"cg11136250"); 
C1ORF122<-apply(C1ORF122.1, 2, mean); 

C7ORF50.1<-subset(BetaValues, rownames(BetaValues)%in%"cg06458707" | rownames(BetaValues)%in%"cg08973950" | rownames(BetaValues)%in%"cg19254152" | rownames(BetaValues)%in%"cg23498771" | rownames(BetaValues)%in%"cg16689048"); 
C7ORF50<-apply(C7ORF50.1, 2, mean);  

CCDC144NL.1<-subset(BetaValues, rownames(BetaValues)%in%"cg06633402" | rownames(BetaValues)%in%"cg18251984" | rownames(BetaValues)%in%"cg08458692" | rownames(BetaValues)%in%"cg14560110" | rownames(BetaValues)%in%"cg22516161" | rownames(BetaValues)%in%"cg08288433" | rownames(BetaValues)%in%"cg06809326" | rownames(BetaValues)%in%"cg22570042" | rownames(BetaValues)%in%"cg21980100" | rownames(BetaValues)%in%"cg25893857" | rownames(BetaValues)%in%"cg11633473" | rownames(BetaValues)%in%"cg22282896"); 
CCDC144NL<-apply(CCDC144NL.1,2,mean); 

DMPK.1<-subset(BetaValues, rownames(BetaValues)%in%"cg06710981" | rownames(BetaValues)%in%"cg18511790" | rownames(BetaValues)%in%"cg08332594"); 
DMPK<-apply(DMPK.1, 2, mean); 

FAM86C1.1<-subset(BetaValues, rownames(BetaValues)%in%"cg10565270" | rownames(BetaValues)%in%"cg04310266" | rownames(BetaValues)%in%"cg24620338" | rownames(BetaValues)%in%"cg01490535" | rownames(BetaValues)%in%"cg05097696"); 
FAM86C1<-apply(FAM86C1.1,2,mean); 

FAM86JP.1<-subset(BetaValues, rownames(BetaValues)%in%"cg18994377" | rownames(BetaValues)%in%"cg08610802" | rownames(BetaValues)%in%"cg02633309" | rownames(BetaValues)%in%"cg03500585"); 
FAM86JP<-apply(FAM86JP.1,2,mean); 

FOXK1.1<-subset(BetaValues, rownames(BetaValues)%in%"cg04160501" | rownames(BetaValues)%in%"cg22218709" | rownames(BetaValues)%in%"cg22846826"); 
FOXK1<-apply(FOXK1.1, 2, mean);  

GAPDH.1<-subset(BetaValues, rownames(BetaValues)%in%"cg25252598" | rownames(BetaValues)%in%"cg02971381" | rownames(BetaValues)%in%"cg15350627" | rownames(BetaValues)%in%"cg00252813" | rownames(BetaValues)%in%"cg02519286"); 
GAPDH<-apply(GAPDH.1, 2, mean); 

GNB2.1<-subset(BetaValues, rownames(BetaValues)%in%"cg27369641" | rownames(BetaValues)%in%"cg03324851" | rownames(BetaValues)%in%"cg17854981" | rownames(BetaValues)%in%"cg16177440"); 
GNB2<-apply(GNB2.1, 2, mean); 

GPANK1.1<-subset(BetaValues, rownames(BetaValues)%in%"cg08502159" | rownames(BetaValues)%in%"cg11569933" | rownames(BetaValues)%in%"cg08566449" | rownames(BetaValues)%in%"cg04477431" | rownames(BetaValues)%in%"cg16220567" | rownames(BetaValues)%in%"cg06473363" | rownames(BetaValues)%in%"cg06670599" | rownames(BetaValues)%in%"cg17422460" | rownames(BetaValues)%in%"cg09314434" | rownames(BetaValues)%in%"cg26467528" | rownames(BetaValues)%in%"cg00171725" | rownames(BetaValues)%in%"cg27105577" | rownames(BetaValues)%in%"cg27323011" | rownames(BetaValues)%in%"cg06518831"); 
GPANK1<-apply(GPANK1.1, 2, mean); 

KCNQ1.1<-subset(BetaValues, rownames(BetaValues)%in%"cg27491887" | rownames(BetaValues)%in%"cg04608933" | rownames(BetaValues)%in%"cg18729298" | rownames(BetaValues)%in%"cg07824422" | rownames(BetaValues)%in%"cg02258534" | rownames(BetaValues)%in%"cg05898618"); 
KCNQ1<-apply(KCNQ1.1, 2, mean); 

LDLRAD4.1<-subset(BetaValues, rownames(BetaValues)%in%"cg14825976" | rownames(BetaValues)%in%"cg25374649" | rownames(BetaValues)%in%"cg22454011" | rownames(BetaValues)%in%"cg14846965" | rownames(BetaValues)%in%"cg15056105" | rownames(BetaValues)%in%"cg00737978" | rownames(BetaValues)%in%"cg24404630"); 
LDLRAD4<-apply(LDLRAD4.1, 2, mean); 

LMO3.1<-subset(BetaValues, rownames(BetaValues)%in%"cg19016652" | rownames(BetaValues)%in%"cg14905657" | rownames(BetaValues)%in%"cg26575637" | rownames(BetaValues)%in%"cg06528626"); 
LMO3<-apply(LMO3.1, 2, mean); 

MTMR8.1<-subset(BetaValues, rownames(BetaValues)%in%"cg14961598" | rownames(BetaValues)%in%"cg16251458" | rownames(BetaValues)%in%"cg26122495" | rownames(BetaValues)%in%"cg12312457" | rownames(BetaValues)%in%"cg16718054" | rownames(BetaValues)%in%"cg14247154" | rownames(BetaValues)%in%"cg09406238" | rownames(BetaValues)%in%"cg05462236" | rownames(BetaValues)%in%"cg03817616"); 
MTMR8<-apply(MTMR8.1,2,mean); 

N10.1<-subset(BetaValues, rownames(BetaValues)%in%"cg03765260" | rownames(BetaValues)%in%"cg17037018" | rownames(BetaValues)%in%"cg20945221" | rownames(BetaValues)%in%"cg16411683"); 
N10<-apply(N10.1, 2, mean); 

N27.1<-subset(BetaValues, rownames(BetaValues)%in%"cg00744791" | rownames(BetaValues)%in%"cg11384481" | rownames(BetaValues)%in%"cg16459276"); 
N27<-apply(N27.1, 2,mean); 

N30.1<-subset(BetaValues, rownames(BetaValues)%in%"cg04426109" | rownames(BetaValues)%in%"cg23412820" | rownames(BetaValues)%in%"cg13895409" | rownames(BetaValues)%in%"cg00090521" | rownames(BetaValues)%in%"cg02814552"); 
N30<-apply(N30.1,2,mean);

N8.1<-subset(BetaValues, rownames(BetaValues)%in%"cg22111527" | rownames(BetaValues)%in%"cg03371384" | rownames(BetaValues)%in%"cg12889594" | rownames(BetaValues)%in%"cg17007896"); 
N8<-apply(N8.1, 2, mean); 

N9.1<-subset(BetaValues, rownames(BetaValues)%in%"cg02992762" | rownames(BetaValues)%in%"cg12837463" | rownames(BetaValues)%in%"cg17698366" | rownames(BetaValues)%in%"cg13421062"); 
N9<-apply(N9.1, 2, mean); 

NONE.1<-subset(BetaValues, rownames(BetaValues)%in%"cg26654358" | rownames(BetaValues)%in%"cg12722935" | rownames(BetaValues)%in%"cg03830712"); 
NONE<-apply(NONE.1,2,mean); 

PITX1.1<-subset(BetaValues, rownames(BetaValues)%in%"cg18606375" | rownames(BetaValues)%in%"cg03347590" | rownames(BetaValues)%in%"cg21614303" | rownames(BetaValues)%in%"cg02213684"); 
PITX1<-apply(PITX1.1, 2, mean); 

PTPRN2.4.1<-subset(BetaValues, rownames(BetaValues)%in%"cg26689848" | rownames(BetaValues)%in%"cg22730626" | rownames(BetaValues)%in%"cg13900349" | rownames(BetaValues)%in%"cg10754395" | rownames(BetaValues)%in%"cg09017928" | rownames(BetaValues)%in%"cg22530232"); 
PTPRN2.4<-apply(PTPRN2.4.1, 2, mean); 

PURA.1<-subset(BetaValues, rownames(BetaValues)%in%"cg00079023" | rownames(BetaValues)%in%"cg00534655" | rownames(BetaValues)%in%"cg27111970" | rownames(BetaValues)%in%"cg23160717" | rownames(BetaValues)%in%"cg00042246"); 
PURA<-apply(PURA.1, 2, mean); 

PYY2.1<-subset(BetaValues, rownames(BetaValues)%in%"cg03924483" | rownames(BetaValues)%in%"cg19539519" | rownames(BetaValues)%in%"cg25191725" | rownames(BetaValues)%in%"cg11231143"); 
PYY2<-apply(PYY2.1, 2, mean); 

SLC22A18AS.1<-subset(BetaValues, rownames(BetaValues)%in%"cg23335134" | rownames(BetaValues)%in%"cg26874323" | rownames(BetaValues)%in%"cg08222610"); 
SLC22A18AS<-apply(SLC22A18AS.1, 2, mean); 

TNXB.1<-subset(BetaValues, rownames(BetaValues)%in%"cg15014577" | rownames(BetaValues)%in%"cg18102337" | rownames(BetaValues)%in%"cg01033871" | rownames(BetaValues)%in%"cg05889186" | rownames(BetaValues)%in%"cg15745284" | rownames(BetaValues)%in%"cg07518714" | rownames(BetaValues)%in%"cg00355613" | rownames(BetaValues)%in%"cg10783204" | rownames(BetaValues)%in%"cg07237769" | rownames(BetaValues)%in%"cg17066403" | rownames(BetaValues)%in%"cg04037640" | rownames(BetaValues)%in%"cg26476939" | rownames(BetaValues)%in%"cg14062899" | rownames(BetaValues)%in%"cg01785906" | rownames(BetaValues)%in%"cg04272615"); 
TNXB<-apply(TNXB.1, 2, mean); 

subs<-rbind(ELANE,FSCN,GPR45,MIR22HG,N23,PTPRN2.3,ARC,NSG1,THBS3,CLIC1,GET4,LOC100133461,N12,N22,N24,NCOR2,PAX2,PRSS22,SECTM1,SEMA6B,SEZ6,SOHLH1,ARGHGEF10,ADAMTS8,BCL11A,C1ORF122,C7ORF50,CCDC144NL,DMPK,FAM86C1,FAM86JP,FOXK1,GAPDH,GNB2,GPANK1,KCNQ1,LDLRAD4,LMO3,MTMR8,N10,N27,N30,N8,N9,NONE,PITX1,PTPRN2.4,PURA,PYY2,SLC22A18AS,TNXB);

subs<-t(subs);
subs<-cbind(BATCH=1,subs)

final<-subs
final<-as.matrix(final);
prediction<-predict(model, newx=final, s="lambda.min")
colnames(prediction)[1]<-"Predicted Age"
print(prediction)