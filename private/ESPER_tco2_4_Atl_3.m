function [Y,Xf,Af] = ESPER_tco2_4_Atl_3(X,~,~)
%ESPER_TCO2_4_ATL_3 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 12-Jan-2021 17:03:54.
% 
% [Y] = ESPER_tco2_4_Atl_3(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 7xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [-0.999999996490807;-0.999999999390765;-40;0;9.1619;-1.99149636107278;-0.12];
x1_step1.gain = [1.0000000017546;1.00004398834998;0.0153846153846154;0.000309885342423303;0.0656325902039552;0.061098595529566;0.0145655815308426];
x1_step1.ymin = -1;

% Layer 1
b1 = [-2.1297297965961008;-2.1353748377725639;-1.2839295902156607;1.401544994207979;1.1542747862444682;1.8248980154492591;-3.6929280242052203;1.4114783831001705;-0.92283549627748551;-2.8459973810754069;0.53615750320279643;-1.3261157554595067;-0.76687089367151673;0.2911650694932742;0.2270483602734133;-3.508434277604803;-1.3692568037808035;0.12829986485933653;1.2673533605126801;-1.3732643242298206;0.77509332591560409;1.6365524898621986;-3.9431246002682183;0.57102112980986741;-2.8449732968983086];
IW1_1 = [0.50268683633101485 0.14028194804475086 -1.3051713866831731 -0.71907522295876136 -1.2451847614925464 -1.6783623792860209 0.23322793072054082;0.62185382807817347 -0.34322551237660315 0.8806876984301486 0.28338759160714555 -0.77195822853302654 1.1018395363906563 1.3813410478958339;0.42273933303856592 1.6771053846326811 0.63171274050278758 0.86194611571007673 -0.734047321952776 1.4576512873937022 -0.49464375542340933;-0.5407496162130645 -1.2616396100107028 -2.7446681676487819 0.72630290281588661 1.0325968019645411 0.26757377730066578 -0.29244973793083512;0.17192109530389579 -0.37939658804700688 -0.48100428774308279 -0.81989359631725212 -2.4210171084050263 0.25848008997482713 0.11425739281315857;-0.80596221823562653 -0.62938480859301993 0.15160132036180007 -0.88940040933781594 1.1647781307976255 -0.88930450130774408 -0.91195930121203717;0.69054828156665826 -0.405093888967756 -0.35922909883974702 -2.3132368899723201 -0.48119294281241975 0.41229030348235951 -1.5702889350215357;0.43951732712062835 -0.54371802813284298 4.1145633453454975 1.6206649799366266 0.40294698632244236 -0.009748426673250845 -0.36026550211522312;0.84009639326826746 -1.7008480883793116 -0.34110888379716681 -1.3528726825150799 -0.18815298846703563 0.027087128282808327 -1.7134708503555229;1.2712642459910177 -0.12063715213810342 2.8883157709277461 -0.22052984279324719 2.5624943746417497 0.9245203681834353 1.0893282278940497;-0.37614111599750821 0.26780233993630703 -0.54439019173190595 -0.066732082066662562 1.3366653846906362 2.3556099269296458 0.14471380783320764;1.7563805288973198 -2.7759312914916769 1.2574744358667862 -1.2794385876374152 0.39296936408416439 0.62012642900343873 -0.860845036286355;-0.23641180889562644 0.39728737264167335 -1.6573444762944098 -1.2260032273994883 2.6188651004052077 -0.23051580865538696 2.1292729673616408;1.7049900775231328 0.74162786963561322 0.8783091462086261 -0.31165352938728685 -3.0032792637671086 0.057545588612848288 0.44405152962364625;-0.44228546660466517 0.45127524543268754 0.83322523444049446 -0.39963891899915077 1.6939270316125457 -1.1789040120169842 0.81807887571195892;-0.03358535474467552 -0.63012077986054393 -0.40100972568269178 -0.090421583533267708 3.6377277582560494 -2.0684011729155873 0.36491086937232592;0.39425288257208974 -0.59671314855613211 -0.23477285809019577 0.19762203635409858 -1.0484526272275825 -2.3987423872625917 -0.11757871597193539;-1.248713138171039 -1.2321361638489225 -0.72883743383630561 0.46534655099343863 2.0334975863600842 -0.47492533751789578 -0.13704640200362106;-0.1880915730554942 0.69774602371097616 2.1850572233087044 -0.72622993318824536 -0.9913080084313155 0.99692773194894024 1.5031476609120404;-1.2472322646133058 1.0782427704122379 -0.90933831356342454 -2.3840842846164412 -1.0596188933187849 -0.21767482769787763 2.2251066682558491;-0.48454338977589212 0.73781014246532173 2.3928685111570953 -0.86647137590146528 1.2045287567844389 0.67395845621471817 0.22483400069629528;-0.8546687147424854 -1.6241019491899169 -1.7178067351572022 -1.6388582506261138 -2.1883924894045221 -2.2862021734252678 -0.56135482944133075;-1.0159970381733596 -0.37777676838618568 0.013338583904570279 0.29604539021964404 2.3079131591490478 -0.86750989114291355 -0.94062390222138759;-0.82282828571964362 -0.72770680191985759 0.74253946051717556 -1.450840232683452 -2.6496707969498181 1.1256046178468047 1.5219748653565037;-0.31135286052397071 0.53026910692364171 -0.32830220649512259 0.07823854821906219 -1.7703805453009474 1.0010259448774508 0.66988101100477437];

% Layer 2
b2 = [-1.5417337793710624;1.5517442319746904;-1.6700547832076842;1.1323622251370447;-0.83323636167370907;0.093980902548757322;0.083531148971913258;-0.060996319140073328;-0.099057757224616474;0.78942617934100823;-0.89472645165122833;-0.93923362257805498;-1.3361316641590828;1.4563080674813369;1.5457972555584483];
LW2_1 = [1.0243555680976986 0.01599198288362997 0.26161267905656632 -1.6577719429233122 -2.3260745912324343 0.57518318244923927 -0.77521096983251181 -0.020086933713002759 0.053149190515450306 -1.6325472492881405 -0.56403758759695721 -0.070787251533057594 1.2449368774657403 0.12792856837047856 -1.8504704009002846 0.81983842462580014 0.16762537916735204 -0.21497031805061029 1.4665609834226492 -0.18863311147254039 0.62646934569868751 -1.1716563503366166 0.614548125799251 0.03095549629038918 0.20209105425929041;-0.37264893748187417 -0.09564600879877487 0.28822201015932902 -0.17239559195729096 -0.38241683081666983 -0.83827380183534028 -1.1218606086302023 0.1008923252045712 -0.47819522384708463 -1.2673107108766977 -0.43990600909950539 -1.4650302211926367 -1.185283101299019 -0.23001832578402201 1.4346828526743554 0.43831823532730618 0.73743806212652052 0.42012977289001618 -1.2775806154727245 0.27209803003521899 -0.51868242651162577 0.34565469885407268 0.13205996075209994 -1.7112750407106396 0.49519007274373583;-0.71495502117724685 0.7108021361926955 0.81023558195809275 -0.3230047200587926 -1.1958166180437573 -0.77699506092027093 2.52824863783689 -0.23232687283163383 1.4431997545874529 -1.5598964294572994 0.37665161191688962 0.25914727678920313 -0.42623399313731447 -1.5846830044149725 1.4121249081895679 0.035863981712750438 0.76311354793251662 -1.5599615483927289 1.4402987080762661 1.5635055699277762 -0.62836021756061955 1.2997541944574369 -0.44347686882392817 0.18155587569564571 0.2431529830386579;-0.40651971933142939 -0.3944545690547771 -1.1228915644573778 1.0048680425505161 -0.90792875231295722 -0.52173543361012764 0.11837613141175955 -0.37445152800870146 -0.72229703155267255 0.99863373074633266 -2.2826195871709563 -0.13227551254129449 0.41199709060328771 -0.072334023083300072 -0.69755512612735049 -1.1416850389374051 -0.52308170833224665 -0.38712075642887611 -0.82087815066394543 -1.1438389911115303 -1.6181337117498305 0.49134557096997378 0.21890415356638102 0.036995097466453422 -0.30723785210253574;-0.51487456973693924 0.29687816282854163 0.15558081206896082 -0.88751244828922005 -1.5481137904759381 -0.38598991516101216 0.12958395361573039 -2.3219511823201957 -0.51934228509295544 -0.0045173627951475359 -0.12020141997965955 1.4791313060883082 1.434701886191625 0.040687966996015429 2.0324131655808082 -0.16694215003283086 -1.7015754110950194 0.44379164208037725 0.13373251462057603 0.57889667826809277 0.7115839827999898 -0.48369403697029728 -0.47061367534538817 0.13893708990605419 0.56877040440174387;0.31428042420899749 0.10562076330678051 0.65403829088846532 0.57105258131112946 -0.4378838435727519 -0.40829480288299286 0.81399789028790248 0.63646712327417099 -0.78430643953528623 -0.77881051395726675 -1.162349802796669 0.58325797620245612 -0.11092800271965893 -0.38091889161168591 -1.0663128332091654 1.2563955730298413 -1.5904930352842996 -0.16629730760748915 0.43853141627294223 -1.328327231620088 0.29161904965688223 0.68160404883830195 0.20404068165590913 0.76283452256317452 -0.1914276539632889;-0.015188609410555665 -0.58258576902423487 -0.56461322855315244 1.2108631331747124 -1.3776618079671523 -0.21847245434648019 -0.39019170263810476 -0.25698644417327982 0.28253845203293976 1.348154768988274 -0.92018828809525632 -0.26738375284301952 -1.2947880064758728 0.93692149844744133 -2.3815149089839687 -1.0832837575703969 0.46979200888102435 1.323808369637913 0.02593821776474918 -1.2860247331747179 -1.0890305399000699 -1.2264656093541986 -0.49803188202478021 0.94743809539916191 -0.028171934107851564;0.89053082113512738 -0.1037826260441659 -0.089325602035773499 -0.97360348452690437 0.34982509649637672 0.22275019393444731 0.060858659341735934 -0.85110375980562281 -0.40619989325431133 -0.80401939669936762 1.328550457929454 0.23571751259971702 1.0770379405827835 0.90764582450594133 0.56594003647143087 -0.50738041491973018 1.3320642116332517 1.0842594306503928 -0.46216875176745387 -0.53600047400742534 1.3674203736402746 -0.25506098168682534 0.038457609230207038 -0.67812160295194834 0.42333851781727078;0.2477801318680217 -0.57171581152508466 -0.61014412961293163 1.9451895505792842 0.70206612433337479 0.065161185425873597 0.39211030148099496 1.042406375302926 -0.39665209149610325 -0.094349867686504441 0.37319840221500772 -0.11430106695802728 0.67089818058104944 2.1285205934523672 0.98615140681585089 0.80543593378812561 -0.28959259182769892 0.8768550769406942 0.28034766315498799 -1.0797801844523547 -1.0150509165256472 0.10838589410480713 0.97132240641779977 0.87158844394873092 -0.23170660428531556;-0.33414740115011438 -0.049111911980373797 -0.75816072975313731 -0.019158183169768334 -0.93816593531283354 0.083782405743579993 -0.3603053351322098 -0.22183296974365113 0.62033907354674889 0.65219169305868274 -0.46069870478087083 -0.32604703881988906 -0.67027882804480843 -0.69388665128621085 -0.61874339236953613 0.16462862432697445 -0.59731889203976563 0.48935116130455947 -0.36574445324160282 -1.9165184223250045 -0.33542054193449128 -0.77712499553917447 1.1168026650579157 2.7268842988793356 -0.58420049272559282;-0.45450556807069969 0.31854907528378823 -0.040950164759963902 -0.30994723240001065 -0.77769990174457237 -0.29339909836606476 -0.11509611969374821 -0.72279306513804953 1.4240791514505433 -1.3338040547806362 -0.58417734943408206 -0.56378018731857671 -0.91145631973715979 0.17821755478853993 1.0998558078276215 1.7220250310138514 -1.9667826544123213 1.2708879182058923 -1.2281591983281488 0.82773231068657249 0.85913792862634086 -1.3639677903917422 -0.9778803562211974 1.2569557746470992 -0.12931651936245117;0.32937206069485814 0.24765866782911261 -0.0042495016941991454 -0.82387649681646025 0.38660443165620656 0.13801895339312983 -0.71541662668595107 -0.6386019303422541 0.40766633873938846 1.2000547606368388 2.0836606436932441 -0.61211033532828096 -0.66409633352715935 0.43609683096725799 1.7147885359512491 0.99962191117886634 -0.52251739361671978 -0.26106540297995173 -0.89250510539490169 0.51393089163307948 -1.2534773686007588 -0.51515150892832196 -1.3134732307928019 -0.89981923010026976 -0.3165566108808715;-0.35508417268154302 0.50085889625321178 0.13100421066756218 -0.48496552079307209 0.43739597556882331 -0.28995797506193077 -0.33018027696187718 0.46404750481732854 1.1561540930916021 -0.067530164812146784 1.369732833899747 -0.90166397497655149 -0.75679975000384447 0.070661564816651659 0.20080392374043921 1.2095589005750507 -1.8770058561923635 -0.71962468954740966 -0.28747406203888309 0.17340001341577727 -0.5759280907085067 0.76882423228781493 0.14399674030049531 1.0804326532666442 -0.047393758231039244;0.0087408635198061389 0.046951133291806106 -0.13108256414967831 0.34767471353531476 1.007402432027533 -0.11864093501268734 -0.177622393490414 -0.17434560829721885 0.6867382947759364 -0.26091833229504363 -0.047492220760401556 -0.45342897867152498 0.23787899391640868 -0.89422578339302683 0.4050331191299269 -0.16411867419775736 0.031612419714616258 0.15460105776095484 -0.22622823081362778 -0.11367534710971026 0.54036896298918302 0.21608961181147571 -0.58930963602799757 -0.47451929710342633 -0.56354676100915269;0.5276921125184274 0.3349627658183959 -0.43728098915172653 1.8234668040215236 0.53338292889000194 -0.2307508745855478 0.69589983657458054 0.71208075821763006 -0.28609724907211254 -0.47021337604626229 -0.62917701927824976 0.078700575106569942 -0.81449723695502629 0.6251132193439306 -0.54277326215219568 0.797558039174597 -0.65411329622508829 -0.58149936646721467 0.71292813111239228 0.57610111320803981 -0.52297311329398011 0.45493479850685714 0.10963358727307163 0.27466154779305496 0.10559105712570921];

% Layer 3
b3 = 0.32756327730974533;
LW3_2 = [-0.080889104970070083 -0.039449356599445436 -1.5201728798581478 -0.41519373868248977 -0.054323972720442461 0.19541563366313008 0.022370498360572547 -0.10059097475082561 0.11528407141163478 -0.20110435336073368 0.049429363658132969 0.11652237243802761 -0.32794302758735566 -1.0547163550150673 -0.23784929648545441];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.00115315130997576;
y1_step1.xoffset = 678.286531932822;

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