function [Y,Xf,Af] = ESPER_nitrate_9_Atl_3(X,~,~)
%ESPER_NITRATE_9_ATL_3 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:35.
% 
% [Y] = ESPER_nitrate_9_Atl_3(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 8xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [-0.999999996490807;-0.999999994516886;-40;0;9.1619;-0.03;-177.232103709389;-0.52];
x1_step1.gain = [1.0000000017546;1.00003626070655;0.0153846153846154;0.000309885342423303;0.0656325902039552;0.604229607250755;0.00425400504498441;0.0145232735458572];
x1_step1.ymin = -1;

% Layer 1
b1 = [3.6986042499326501343;-0.99215582380344680136;-2.0265959034416329843;-4.1119432135899360858;9.4919294677187551201;3.3931661883850190442;5.7319843873019538094;0.9761988657485765053;-1.7761193132226764657;0.67744617464161227538;-1.892995531011496313;0.010948498137909195432;-0.85805766054566334766;2.236245814967487977;-1.4640997686045544857;-6.4859271739406523238;-0.51416906192815103882;1.4192564825122633287;0.26147429890498902205;-1.0697599487342750457;1.845372797182095681;1.911142612920515349;2.2033556483444192153;-1.0398110145283696593;0.19901322728066547785];
IW1_1 = [-1.5563970819353982744 1.4049888949973583507 -1.000409382362583921 0.13183757695919892661 0.29577162380808635911 0.54622573660186291011 0.65744619271971860286 1.387847879465450962;0.050275351292038715501 -0.22427514278334551023 -1.5965151510540094293 -0.86184640171537596487 -1.5950439736290924486 1.1975593929034935581 -1.6199636302155722145 0.02818803223044864803;0.64031397689049851518 -3.4480714118206541308 1.5173288754697422664 -0.32336990778248680956 -2.6966482880807984834 3.0675505200519785909 -3.1431290871129871078 -0.51879778429711997934;0.51421965958064352886 0.67079101545959540775 -0.83021307262076504685 -0.46646277322234025453 -0.97553457818914990352 -0.040900163784420934254 1.6768830153839893171 -3.6708083121861445619;0.44485551559187819226 -0.43424519271382050478 1.9719043225944794528 -1.1479052324315022204 -1.1840870649609014365 -0.68948435326653112476 7.5828257602724731257 10.411333758009309491;0.69479431542477709804 1.9427364937012283619 3.16057539798659759 4.26251629415796085 1.8051740877795436901 0.66641422698170371675 0.33749782746093592856 -1.8291824391439133191;-0.22016864623749546337 -0.37179957364407939524 -0.12838990063625455029 2.4104616992513312468 1.7599192475894644971 0.90410127655964067639 -0.17055904540839678107 5.3083328375058309589;0.16860646599086817621 0.67713413944206035655 -0.39936322001519175551 0.68357987379795814853 -0.97229190029879364321 0.11954736069111983332 1.2670992054524832238 0.11332753369702772139;1.9095925704685863256 -1.7714919900004433284 0.40212229530226234475 -1.2943458760785875317 -2.592582472312701114 -0.7285339965502672932 0.55440405763644484693 -0.14926091091494339547;0.48144608968362012646 0.23584826774273667804 -2.4683262908005252356 -0.76804899341838317461 3.0417766609749388174 -2.2030799339804221226 0.26188131565879380069 3.1063340222230810816;0.12094582798020958592 1.4028589769264998566 0.62923805764214046921 -0.37604259653311139511 -0.14722355643299661621 -1.9225552766616109679 -0.3563901244033526039 0.51740507361750098791;-0.29861201173366253014 -1.2317844798453676525 -2.4315467573050861816 -0.31934349384652366277 0.30385039264320251595 0.55148367670238118698 -0.76101674260822105289 -0.59877282947217891351;0.49573425122506342699 0.30733006598477902171 -1.0772437600029776128 0.75350248794056440271 4.8809874429748907332 1.8118842336818490324 -0.92505197501890534806 0.32411850188434876419;-0.60022794367347931388 -0.21460973873456901106 0.25363103831410055422 -0.15735306341367713556 -3.7558779199276983718 -0.064428121714580496859 1.1600245076926705146 -0.14692359752507846982;1.0790648242471543305 1.6026454089108310708 -0.3395728208225677891 -0.81164186682289629626 2.398074355992560136 -0.27500279925554471649 0.97422249392181559102 -0.24119429055767213632;0.1045754915030491089 -0.35707321712204054265 -0.098394406420322516604 -2.0920736627690414977 1.7330067260858708078 -1.9399676687723350632 -1.4975913731572987331 -0.2185328679677006336;-0.32507030365844696851 -0.55912129621305339811 1.0706629884156912969 -0.85691627926320512731 -5.4903361408089894624 -0.63171008399310735193 1.4137231588681624661 -3.3593759351087575382;-1.2592466924689442731 1.6874170117630074017 -0.46513634572948625578 2.5815442214186639092 2.7789903773798094733 -0.77680303388403615372 2.3223923023830925771 -0.50958924400088168039;1.0196360201377270283 -1.2918851733236331736 1.1624587462994848686 0.087890676065826775498 -1.77712617983784682 0.45317051960124510313 -1.5733486266402816334 0.63979574189902865822;-1.0989157871578625336 -0.92396535662002199363 -0.65045110020943353035 -1.1287056744157937249 -1.368806496699193298 1.3516516148398631803 -0.74126011591862439598 -0.42753933843800839831;0.34737469404489129676 0.19462357327057513978 -0.23246869498716868363 0.17303336793992760145 -1.54650484182284087 -0.82733112765786220866 -0.2676167274830530407 0.52584865187340934511;-1.2134491907076030426 0.30328968939558276219 2.2264780221972979568 -0.75863272672291548471 -4.8108495976438288011 -0.76234127216630132029 -0.3914797395483798903 -0.57045674487918140994;1.1047222067471365037 1.7406137264183401125 -1.6552352915457599902 1.044256755357614308 4.2607946224910051569 -2.8229768666073189465 0.10636085932335610782 1.9309233952371360754;-0.78373045161495424882 -1.0282511624526389227 1.5031247596570811442 -0.74565592730179131031 -2.9203588349974314298 2.7345983746592121832 0.69695678484196643687 -0.5617114361708579473;-0.14504674201621636787 -0.22927180723143722463 0.19132886315429209478 0.223071710530939743 0.33996018424606561092 -1.5166976789420445471 0.041626243915985461364 0.068705538760920947805];

% Layer 2
b2 = [2.2236689203864377085;-0.92354055842492355222;-1.1436916753090398124;-0.010866736890152411954;-0.24290140256004805197;-1.4267323022644222696;0.23427951037199071238;-0.85512562900392385945;1.3995735318391757662;-1.4152147589576307141;0.85310862143539323288;2.4320068709430344711;-0.80523756165216997527;-1.137244843781477055;-2.0527869146559023505];
LW2_1 = [-1.3970793365186935375 -0.41128936107068664318 -0.20585404329075784879 -0.3850721120503262096 0.55734130532330949936 -0.22786355487172632595 -0.76704137602228594783 0.45783708650753696112 0.12551527367653872447 0.43439861310349126011 0.95030861957424550557 -0.23909735800109105375 0.85835856032298929463 0.92384875118628861923 -0.47225157598474098997 0.26186516107301893719 -0.018046492124093784643 0.583302716598178006 -1.9970306960087078618 0.46719582568584366866 3.3279430131260259174 0.89042147857482900619 -1.5983487991714264709 -0.18301665403990979852 -1.1105564271521015662;0.6774190214725683834 1.2609667756906575153 0.13825416638257501112 0.13424371563276515928 -0.46272444143053359511 0.032965922892951741996 -0.59276394767103379735 -0.2494506433690803493 0.38106440107264588635 0.52190611930019636944 -0.88519380049473250782 -0.035191352623580203496 3.1658781294912667903 4.2237971972551449085 0.6975322833809556311 0.50893585653950856873 0.52081051233896169528 0.87837501656357808155 0.38053150363120136213 -2.2789635415076436864 0.82284530166058245104 -0.012112500861719006917 -1.4190806850545027995 -0.19472666025259469103 0.74572234036958229275;1.2820452349981574791 3.0181515657535027408 0.75817924141542714089 -1.7719706169959179576 0.22305370366020574324 0.96476927620490371407 -0.40257487035667011144 1.6341463912387013124 0.59272007503428758568 0.41541893197748352984 -0.47267863263888815206 -0.44347698253012868275 -0.98726231880092818471 1.9943996515298492156 -0.14423800948248519105 -2.7212549513288517566 -1.8616605754625363822 0.57025426273767454433 1.8877023173486033869 -1.3356758443168830208 -2.2385893217944090594 -0.9683095539569228638 -2.8375858406879967966 -2.1034850035551437841 1.6169688137966164998;-1.6113172605290597694 -0.19696514272399762158 -1.3637583064902460972 0.97139652710327684115 -0.14859106480790237881 -0.19403052743588955487 -0.46963144671770623573 0.3585777999353190193 1.4566360806725515697 -2.5128304951934881117 2.054553876255170497 3.4499357505708365679 0.46576578702043830438 -0.49861940402745424938 -0.10314799507220409613 -0.56836636688780783899 -0.37090385788332724815 1.4332354338249642112 -0.41014201198630573231 1.5240899964935041844 -1.0549978507148136675 1.0672392751533454902 1.2867486747258845003 -1.1892777894984247755 -0.72911545534616983844;0.22981527164110512884 -2.042856768526774669 -0.30623426039243600849 0.50536866534724855793 -0.014133070109172782974 -0.38021717849545111356 -0.13513184539934114392 0.37602217331443710258 0.52419881457856543072 0.21255011992232530904 -0.27988489176053432672 -0.79892772882982299176 0.34625548929602251169 0.24311990930187288296 -0.5719384570471081064 -0.22570832247189578923 -0.16254610846710193517 -0.26244338319983379071 -1.4377028123212283184 0.68992595699320624636 1.2783256026980611697 -0.22156427331902620037 -1.1542563249241746259 -0.088410388259462943661 -0.19204800112832082215;2.7428470633756631969 -0.28370392272621614005 -0.99134404692246436142 4.2980538215492822829 0.16777937138115642246 2.9924894302361493281 1.5912320322355271163 -0.69748363612425401392 1.3120500289782102143 -1.216758402992374366 -3.383112705272182108 3.2854604003052676475 -2.982609242858790477 0.55478739395005671753 0.33570329024492484571 2.5433028788755174254 -1.8667626506006158582 -0.25769877480275998893 0.46551952218515513238 -0.92606246427562588508 2.8845925935885197156 -0.82180938429821925872 0.9935077235501331705 -1.1020531200930026028 -1.2603361863191124836;0.71358617870293339358 -0.23531569467180374344 0.6616025387852721984 1.1865808544597260532 0.21906761872429936222 0.083901894131481358219 0.31588921630347716052 -0.014269854692329050211 0.51520016737995666389 0.46782669478752181291 -0.67229594314961371726 -1.4399742086681550646 1.1730342284423842525 1.6475146629713590674 -0.11913781963709561829 2.2994592904829738167 0.74819505387949991615 -0.58846746497124668984 -1.0094060850032746668 -0.046510076528374494353 3.3489248896251337939 0.66187419787998946763 0.5042743039777619618 2.9816718905979819887 3.2262355907949471501;1.6158143249706997668 1.1647174536555424673 -2.0356368397759925237 -0.62671466665606112567 -0.02995041875272118001 0.7827669347918942977 -1.0752660788468737518 1.6187879449619002603 1.7949881948568380263 0.0765471646013455298 1.5872832482225338602 0.95784938488201110118 -1.3100458769516862834 -0.36553520276479117834 -0.50582912176452543562 0.95955778099899646794 -0.97477655528002193908 0.06952852176832101383 0.42455496016543264881 0.54063089397981889395 -1.7645407819169851571 -1.2633617873535425424 -0.62940390617781705185 -1.4924157523837355832 0.19978036390326059379;1.1110453714888572918 0.42594744347440549603 0.24462858515574284479 0.5009378367910097829 0.010330804304103149635 0.75171405288809600709 0.15704450229401165084 -0.8871925601666522665 0.41623166274482048532 -0.23680116038147663859 -0.027376602678245903766 -0.55957673591631784671 -0.2601722088195079774 1.6327157297026968497 0.33663923437073695055 1.9067222148543503391 -0.34439304106600437949 -0.11102845626039090088 0.17720738838338734311 -0.10863643236033156125 0.88268405646408876208 -0.81671179574482888341 1.2525430016771048614 0.44424717209456093814 0.30318843440403880907;-0.84083393905952918956 -1.115492880536571807 0.43972286303215307735 0.35087642798402912669 -0.27460160135839012385 -0.454745323451188177 0.11814965936182875161 -0.51372187777906874739 -0.52810332673746573917 0.15126245781974323457 -0.69462047344615951427 0.01643518324872031422 0.23022034331969468135 0.33628612886490322209 -0.37394557477032724924 -0.55289661102905740542 0.50309514349539286027 0.34047195977767663599 -0.50276482789991072675 -0.094633128137356137266 1.2692809667517015448 -0.26133302374818934144 0.64897856009769305796 0.64084266496463171414 -1.6809719408248369188;0.58747886146163097454 -0.013673004230607315249 0.24941590819843195703 0.30777537674975496973 -0.071309563375180753941 0.42518992477208678027 0.28526014530073701136 -0.43210684776053920331 0.032610697378340401664 -0.39885789929077469784 -0.088900117611853873845 -0.21926218031518043827 -0.47507512486682701436 -0.10382304982498109791 -0.3537543811919894865 0.10879066108697697801 -0.43157382663739840556 -0.11291000182178360933 0.20102616862564581801 -1.0095063458742135065 -1.1739748642713372373 -0.82960277946587235309 0.034749132824687736787 -0.70769975935264783917 -0.12440340768674076899;-0.79301869612254216602 2.5534492559783208421 0.30182641010133914872 -0.19340124152786875023 0.087329949838156062381 0.34120299478636600954 0.1481339750015040202 0.54472828123134520162 -0.72890710976587036463 0.99153601518209821819 -0.33695443779992495514 -0.78807481387386824068 0.91806456953712034519 1.8285362807257115048 0.23164896520520078527 1.216642899813684231 0.24238119720786080458 -0.51725188535366084519 -0.4226439918667577178 -1.7142872595316394069 -1.1934750887449714352 1.2642959276411638303 -1.3666880133552856691 -0.44289837103374823934 0.13711478074078287115;-0.60215649981320462647 0.05236255815834565952 -0.50168471583465301666 -0.54122374854832500102 0.09352864211818130713 -0.5293897953079083063 -0.28101855169389206024 0.86328358587201514673 0.034245775865732339116 0.33372026908134910794 0.23688766027641811052 0.5790838036000791611 0.68873562037608337949 -0.59012113353261363979 0.11348626981455615936 -1.0614603533056372608 0.68261613009310251332 0.27628093013065796457 0.23536279105749130514 0.81600968896687187115 0.51842589314292375491 0.87264912817057627148 -0.59014445778810387111 0.32379956522262470786 0.089783343382128219523;0.26836265470953329926 -0.72916083546930643422 0.97442032643956444371 0.78844425497233905364 -0.17927000543064056104 0.14397753534910856521 0.062276542653047300968 -1.3582958984880975084 -0.61143624047563061019 -0.24107635066654176104 -0.59491676450220976058 -0.69448386705738707203 -0.22519588874810067547 0.57128150489531415168 -0.3024516726745332118 0.7550608463030642481 0.46266013662319116495 -0.57847850135045997266 -1.0212857554740910615 0.013125472192162455226 2.1657547993280727994 -1.5430220300239834152 0.33592801445292319595 0.77693111690734051322 0.1546940456772063488;-0.97018071537853300956 -0.15567518451988915373 0.28137060274530600879 1.1892548426628373193 -0.099197247015025899475 -0.31956550417125223484 0.014811885617807031557 -1.4965570177645868277 -0.13435938980700115608 -0.68891499723264104649 -0.015768515554830900283 0.3194098067385308104 0.59657639734984813096 1.124095953586914387 0.91570228581379098376 1.9998691689557730466 0.43567997181378687044 -0.29103489234097540406 -1.7636238685695708739 1.3536002515349461195 3.3227890167793709963 1.0513072365452191814 1.3766965405400835021 1.7913686045523919965 1.6302334870369956654];

% Layer 3
b3 = -0.90249357762957982398;
LW3_2 = [-0.30791978740751285715 -0.19793768638703576612 0.16551098376326137118 -0.15331302179214331693 0.35474507115721204409 -0.041834463876112115699 -0.34419157268468242306 0.27475651645451187877 1.0949301881990227692 0.51960646052363856917 1.798305164272402612 0.34508224021179256802 1.5019510447690076482 -0.37114393629750658254 0.49636035352780172314];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.0470499670650231;
y1_step1.xoffset = -0.28;

% ===== SIMULATION ========

% Format Input Arguments
isCellX = iscell(X);
if ~isCellX
  X = {X};
end

% Dimensions
TS = size(X,2); % timesteps
if ~isempty(X)
  Q = size(X{1},2); % samples/series
else
  Q = 0;
end

% Allocate Outputs
Y = cell(1,TS);

% Time loop
for ts=1:TS

    % Input 1
    Xp1 = mapminmax_apply(X{1,ts},x1_step1);
    
    % Layer 1
    a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*Xp1);
    
    % Layer 2
    a2 = tansig_apply(repmat(b2,1,Q) + LW2_1*a1);
    
    % Layer 3
    a3 = repmat(b3,1,Q) + LW3_2*a2;
    
    % Output 1
    Y{1,ts} = mapminmax_reverse(a3,y1_step1);
end

% Final Delay States
Xf = cell(1,0);
Af = cell(3,0);

% Format Output Arguments
if ~isCellX
  Y = cell2mat(Y);
end
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings)
  y = bsxfun(@minus,x,settings.xoffset);
  y = bsxfun(@times,y,settings.gain);
  y = bsxfun(@plus,y,settings.ymin);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n,~)
  a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings)
  x = bsxfun(@minus,y,settings.ymin);
  x = bsxfun(@rdivide,x,settings.gain);
  x = bsxfun(@plus,x,settings.xoffset);
end