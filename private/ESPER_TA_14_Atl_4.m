function [Y,Xf,Af] = ESPER_TA_14_Atl_4(X,~,~)
%ESPER_TA_14_ATL_4 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:04.
% 
% [Y] = ESPER_TA_14_Atl_4(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 6xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [-0.999999996490807;-0.999999999390765;-40;0;11.29;-0.2178];
x1_step1.gain = [1.0000000017546;1.00031699124092;0.0153846153846154;0.000310077519379845;0.0705602618858232;0.0479365703301392];
x1_step1.ymin = -1;

% Layer 1
b1 = [-2.7724477889361338612;2.6712747396551388412;0.069162456534429039845;1.1857123690841737673;1.5408987085424767915;-1.792576389969621431;-2.0573317175928504952;0.74989858272224141356;-0.035543695198636642008;-0.8174651136246118277;1.2706146948161962662;-2.1578992890596939702;1.550090447543523986;-0.052061401378656647909;-0.53288881772138685378;-0.21937901950672666906;0.92187862595921699072;-1.5720147758058284904;-1.6408863698769966533;1.7216251726490934271;-0.27889446306731602299;-1.2246890691379290761;0.67569153866450215595;2.9258076060871380797;-1.4411549379518986402;0.76052653761254329634;6.033043347384190902;1.0902342110260221375;-1.7340566037982376724;-0.88122147995898281181];
IW1_1 = [1.3141696979544550405 0.39578381750532898309 -0.62582414534703523223 -1.1666651800346745649 -0.22373982741122544482 -1.2344165176567016839;-0.81831430628792878323 -1.1040491805655301416 -1.9641717223373711398 0.27274524283885048792 -0.10734901634800236847 0.59933961484477626946;-1.3523210712930211486 -1.5937912827724249887 0.26180743496543912308 0.7471179151711326849 1.9362200892698973043 -0.53169686566059559674;-0.92369962584442899534 -0.78708426085018867724 -0.94447404205221263673 0.36416415586050232545 0.68254665196276897987 1.064606527287905724;-1.8708869958106193465 -0.8706418251871826941 -2.4441313871815601999 1.0870771746286695958 0.40651807494835284773 1.0211597676605421725;0.87640181323372268185 -1.9286397383470175182 -0.051692285422183861798 -0.26253047190463674188 -3.5019847614979169315 -1.4049541083527683494;0.81157130264787857854 0.55050868126577312545 0.094942157804544985433 -0.27421470720942126009 0.77153471703798393033 -0.85459219280946174813;-0.83046549545056713715 0.51726777598772788469 -1.3597603785718019864 0.38263348197797919514 -0.1850570519312404183 -0.12843852701461777599;0.41464929765426611352 -0.33039189655770817566 -4.0517293005690486751 -0.97098347087528491528 0.67448161642541304417 -0.4838836208928110616;1.7198880354846368679 -0.061675130476520637068 -0.59685393035347866775 0.030936244684893851598 -1.9774421664960244449 -0.054023233408738546846;-1.7714954866564569524 0.96787733028969824556 0.06035319724668553043 0.17877716869554363677 2.0943549501774048061 1.1182778941989672816;1.7975694501774028833 0.72148683956165171605 2.2933733025302394104 -0.85198591133488521532 0.56709857000148311545 -0.7371725005740219494;0.32797731166519322743 -1.2703038961324160105 -1.4619914043842852092 0.74507065630095792308 -3.6653690015619546649 0.057809941997503611066;-0.30113106350095808494 -0.56007388255313261816 -3.0789460737411853408 0.19168991601854235007 -0.36358815152077822441 1.2518863067062999672;1.7475752861301860897 -1.1921695248537054201 2.5504956445743780513 0.81385708616575236363 -0.91450895710939039684 0.33474962034819499834;-0.12995392723814730429 -1.7237468149792516403 -3.9266686112188846636 0.031376077115858679034 0.94377164433285209988 -0.45327857594631432159;1.0241377733037997366 1.4943449143251923417 -0.56168974372195856759 -1.0034311626336358536 -2.6001534286465619594 0.05719714719640342504;-1.5933487446520822051 1.7845348918084369405 2.8396713164310662947 0.60145842395725135354 3.2379576913227827717 -1.4669246633059334073;-0.80992734008470335105 0.86504102807826255273 -0.28871876076862773575 0.8324144261128758604 -0.46667455603182378399 2.9215297144706138255;0.22941630669995968783 -0.87507380000993706393 -0.28523909190298502025 -0.58039311409517158058 -0.044711901155268463093 -1.7212602601715312201;-1.3872423210603836985 -0.11570279702420453727 -1.2256843577181091298 -0.0060765164601610313633 -0.79587863468997277483 1.1458103836595394664;-1.0377464077636864292 0.052057385144634163443 0.043259970701297931206 0.57403472774394626033 -0.78138991350765218957 1.4725658370470087188;-0.95296029645978364009 0.5276474942540577695 -1.4918680320096329162 0.46175100427290549643 0.021879269140429549734 -0.0136268540356978482;0.13085296788265457502 0.10955842601743617792 -0.32005912470090736033 -0.49045242164729091483 -2.8507231837734514635 -0.274031553575097786;-0.53827178716174672868 0.20383908610327744482 -0.047409683668965960091 -0.70399427992537422227 1.6976687588184218303 -0.77744053793215406323;-2.4658741394449181783 0.3391181938284589803 -0.42918000871675499042 0.92052197505954458379 -2.836049600986519259 -1.1144710643656903226;2.4650423289935616822 0.99460215712925648113 -3.441393636227109365 -0.68701934220097138351 -2.9102470713584964734 -1.9435906691063371543;1.281894984123534087 0.84095522759598362317 -0.24250229758556549053 -1.0897702256340815463 -0.084875592814440792289 2.1478186611767338121;-0.9892824370258330724 -0.79747721702247342801 0.55508425604877809079 -0.18918984984295122986 -0.48811486638961820717 -0.35260306050793993604;-0.91593185123460252317 0.1324752865691345427 -1.2094063806828623253 -0.26201531050926302191 0.054710994649546845769 0.88059300746568458518];

% Layer 2
b2 = [-0.4424863510671432909;5.8975867747534511665;0.93827450209381391133;-1.4898629153980496032;-1.3688375498550393594;0.030706138342751709835;0.37683190361493013043;2.0752132989368394789;1.3460221573148469787;0.7639787631383132549];
LW2_1 = [-0.022904813710720235698 0.37562983138712058295 0.20097783546153283329 0.76694379239161081241 0.46168933496067626754 0.49038679421832442884 1.1931854689825545091 -0.73796271144257530317 -0.017852433688171014114 -0.18647678419548668893 0.46039821516064483031 0.5571739550328742574 0.046948970087111331628 -0.065391823594643461171 -0.23852233958289989491 0.090520922960206501307 0.13705804929503134781 0.1785612130726132174 -0.91551158494559703449 -0.36155140816287056893 -0.13648156217593659933 -0.019978898406366515234 0.74441504636960920127 -0.084730248238926886284 0.068637796650842852753 0.41150227258448029977 0.11709289029824636319 0.11583098774321019808 0.079492343641223123241 -0.21168881421323679226;-2.0982435728727359958 -0.35377131268117650853 -1.235763516069322554 0.079528254917572566152 -2.47751675730145271 0.31657495402438456944 -1.3828881660419847233 1.4487066784885820336 0.32247145851460240484 -0.60648526578089212435 1.5399237784885342339 -3.4040012638268528633 1.8495515796181798418 1.8679333315756938561 1.361544018035137471 0.16650842004783780737 2.1583405829300899015 0.49981614608037772118 -1.6216176617819872963 1.6427945315703864626 2.1103572640677312755 -1.3283781374502796613 2.3156139729754556811 1.1703913269275094677 1.0026853443035563807 0.68436122884033145919 -3.6716637072789328755 -1.5634803291981445028 -0.28049593519801951924 -0.67819111380777574727;0.12759569131612658044 -0.33014954288262149396 1.6329209989857251806 1.1496760752762098523 -2.3542408902104416946 5.6285237154318954467 -0.91615448431389334694 0.63876468724323021142 -2.9011634819634344318 -0.33312504856141078591 0.53486383226550404668 -1.7090413363999876761 -0.98891643618795699311 1.0042393698169109761 -0.11783760914129413899 2.1351321291549743009 1.4199686419482140387 0.99423392694153023275 0.0033729077894906773355 2.4312264773118799077 0.12436191361546146406 -1.0224094154143372748 -0.079815703345797489598 1.0271068550757327387 0.64445653637840805139 -0.51946805283603236791 1.2315978839204826389 -0.36328193404975056557 0.52661065533421880236 -1.2489175720451091145;0.49876516469671644538 -0.51853198680633272311 -0.9027907644672221732 0.73810072209211441407 -0.19439484165170908825 0.28923098543692327134 -1.8936069973292732893 -1.0470754581875174605 0.10479570079988784204 0.2250555727194454847 0.53072240823178706837 0.41645095718889507674 0.20898690158334948253 0.51801998462930576306 0.42278626289541343386 0.018482998077263227549 -0.48263235926415654076 0.17009850399083470407 0.42972412866565307121 -0.61156021438851793093 0.9423000045934429858 -0.57895213690700497722 0.32153972082196830007 2.2347307430745102508 -0.3704587860495912599 1.1992471372255368856 0.1266445737029802121 1.8037716615569041601 1.5158198708766408291 0.28760411480076097934;0.07313552643241383322 1.8369645165194199432 0.54176085801464879399 0.59377722773537311429 0.95818661078380296114 1.1399800956585401934 1.7637403237476951823 0.034610757432791683375 -0.23389977217813445742 -1.1152900090611130857 1.0051620231455704602 1.4595578571206606622 0.0049817746318033713504 0.13429529894425137893 -0.77931288368955953239 0.42269172106446639692 0.23437700740260861143 0.2962556326711554 -0.89401237114171949738 -1.7837449477566358347 0.16157870121547607267 -0.92048702709404739419 0.21524815744435632503 0.25787254802482112437 -0.3539500316937481128 0.83485252529898978935 0.1380436373570594899 0.32811958864764295685 0.31580467536442491383 -0.99153362269513567462;-0.97767676823545102138 0.61243254387613077494 0.89118711181063692273 -0.73382885455750668235 -1.1387879191724905592 -1.0967395688248002816 1.4315892077065672794 -1.3726785798271228245 -1.0844755828382863783 -0.28364509783924135577 -0.96597720300536960014 0.044092264797825436728 -1.2052047520745206022 1.0452915456228795144 -0.38169987222779366842 0.69020135662533510512 1.0429824130281475369 -1.3275964486211748738 0.012208225642339658526 -0.496470660386486351 -1.3478900974667817891 0.97737015728136111825 1.4331102516201612573 -0.11147103929214988161 -0.49787087484946684901 -0.79113228752354691764 0.28532083354470116898 -1.075578197686556603 0.041038217132301650636 0.52569371494932548572;0.8013404556096325182 -0.066797080370071648669 -0.57905027908761952382 1.0213810297526482174 -0.54757942113026780717 1.1909442055516412662 1.4863251555324519249 -0.10517361951056852787 -0.90015200915613369226 0.41091930066811260813 0.76684101389856318409 -1.4745922807059255177 0.63736496059574321293 0.40504751643812564321 -1.0642293018179072028 -1.0585701303274122065 0.25771124717164151097 0.054837431426410593316 -0.60351595734281326955 1.0400685946946992555 -0.34536093107466220298 0.21545584763806599482 -1.4042183438566662179 -1.9784481993158009594 -0.17597430275658587639 0.41529998754972174968 0.37246162713037866965 -0.39332273100356202056 -1.2692247067124204918 0.91893818066020727109;0.24699531766015264678 -0.63017077501287177554 -1.4525574885073950782 -1.2383513069343454749 0.37213777266339442829 -0.95977516907102644605 -1.7906877909070051391 -0.55157398967340243168 0.38597883248930070499 -0.40907849730997924986 -0.9877413332112081612 0.014549401727406093693 0.43531627430564845405 -0.017452599151245785924 0.00279823925383169839 -0.57907469226316177213 -0.93653601463373836733 -0.3581697431561135514 0.27358901749020680949 -0.19980853611184523633 0.428833932099701165 1.7484780078649364565 0.040704006567118006243 -0.45724082868448789885 0.01132324136842996834 -0.43428683606759677094 0.040716290283386066817 0.14818598464109297708 -0.30997047108651909486 0.67424774374239471175;0.98491344713224826535 0.33794141376562303325 0.025727700521478425594 -1.5010627384720907074 -1.7612628475931519922 -0.66183959145655035794 -2.6561837355676378714 -1.5872587406348537264 -2.2714614800294001817 0.62264340283505192897 0.62638348442668723148 -0.56953689486991265767 -0.45997320882655040597 0.86262585148747583652 -1.052311403787230093 1.819826793630727968 -1.1356534998589369323 -0.38770949528062720324 -0.4067467819131059259 -0.76501109565360003728 0.77146466340768349301 0.42423545793453903974 0.2995090325505985196 -2.8876490658577269599 0.26742594512410744478 -0.84051443331174668927 -0.071961697610990027485 -0.17234855938796023178 -1.539531082523005967 -0.06346476600385976552;0.72778269620766644632 -1.1144011994432498902 1.0524826696997282571 -0.66739096458143598589 -0.61691596240868395995 2.0250284844707890919 0.45455337083317282065 0.26571286525855936089 0.14256121644433988882 2.3842115521688600488 0.94404665569050716378 -0.31464735800660414977 -0.44145555187919494067 0.46278594772458714335 0.95620694452400045726 0.20872973467358391098 -0.83205287221907131556 -0.021548456321948485787 -0.54954604332085987828 0.28475875216678558921 1.0359314897213347528 -0.5018225256049815286 0.22780886592536631063 -0.64215675462317556299 -1.0645461215969649338 -1.0288317133592779218 1.7441349862899722112 -0.21092786841657196195 -0.5188421273696878222 -0.45504662544294088855];

% Layer 3
b3 = 0.51762176376192337024;
LW3_2 = [0.91003449353170551284 -0.011593718046158505222 -0.27297449841043314178 -0.090223196099841390661 -0.26647368864229359353 0.061916215567255669661 -0.19497888114810937865 0.22607596580524860763 0.064996736036813648751 0.052077733304824555538];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.00111018595614765;
y1_step1.xoffset = 1025.5;

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