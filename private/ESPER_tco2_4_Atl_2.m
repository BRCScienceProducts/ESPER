function [Y,Xf,Af] = ESPER_tco2_4_Atl_2(X,~,~)
%ESPER_TCO2_4_ATL_2 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 12-Jan-2021 17:03:53.
% 
% [Y] = ESPER_tco2_4_Atl_2(X,~,~) takes these arguments:
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
b1 = [3.1043003360448855;-1.6101649751517755;-1.9690529032606083;2.8808484151244773;-0.93882601868800275;1.7241041653374574;1.5181325313489826;0.78711320068910295;0.4533682666393819;-1.5773804623965872;-0.34540215848402966;-1.6628761584127709;1.4517340736418831;0.32601647954734536;-1.552700964493005;-1.8587981452766822;2.309893265246787;-2.0826418824428647;2.3201857094105423;1.8872707178449697];
IW1_1 = [0.10545442638308773 0.73908764588032416 3.8114494536751278 -0.38689419661968905 0.88194362142640514 0.56507303120261521 1.0570877322569174;1.0200992508078903 0.94135394492888158 -0.086248272773489593 -0.30165961060225865 1.1919893002719311 1.3563162311652064 0.82763431965222767;0.45508199032421037 0.58225918426506773 -0.70411418873058729 -0.82268011579893774 -1.317556638119417 0.16369696398181599 -1.883415898125691;-0.16288083520876911 -0.856844615388905 -0.77915764399747089 1.1415035665344127 -3.0498896729033107 -0.31299384981277178 -0.61661789882236651;0.14574495092328207 -0.47608849954689458 0.50884740776586423 0.51527555376041789 0.11210127954045815 -0.60280057641931162 -0.54198165373515972;-0.098066353110053545 0.075715524821010918 -2.3708369877814119 -0.31648835239620954 -1.791383168568403 -0.72031100585027308 0.75589512517683199;-1.2070509403784715 2.1723049249775017 1.1908774915049876 0.84593260676492243 0.24727530407024242 -1.0306533061172367 0.038155496740713349;-0.40360777871042308 1.2544364517978936 -0.67567600459168409 -0.0047392110103297008 2.2635921615039378 0.28083581775154604 1.0812196453381151;1.9701183812762544 -1.0600349199364767 0.6690796638656521 -1.2605421184018701 -0.069735187674544355 0.22231817485471245 1.1164958956102293;-0.0017177033223073816 -0.096089777431618811 1.3055325895729115 -1.5017818932591402 1.0087967814033258 1.8307638717402874 1.3982467064417066;-0.65047326402292394 1.7597180278397404 -1.5840255284016154 -0.67897238677906968 1.1168273587240911 -0.78207732211399206 0.31622029493311299;-0.32618160366923099 0.24991065257512923 -0.5572615742022976 0.48310204542293422 -2.3060782198837662 -2.4774775226967947 -0.39608585031800797;0.77628383507366217 -1.3442863137218506 -0.42193553855588672 -0.082149866776436209 0.51031959711586283 -1.1861932480211224 1.6192268014266811;0.89073354508719016 -2.3648758739978453 1.4836237905374297 0.066971445429061902 -0.71636530714559066 -0.72007743140354419 0.4983418171330104;-1.0768182071249133 1.2610894439817659 2.6621582866014837 -1.5571556628811427 -1.7136059838333477 -1.0023258026658597 -0.29716877925216129;-1.1496416044558408 -2.3329074808003099 -0.91965590916204676 -0.62604474027985424 2.3799751813709999 -0.86407435456898929 -0.35478567150273066;1.0801988667213889 0.030905553792548113 0.29401441965213132 2.9705222683613619 2.8469796538701924 -0.54639305297402696 0.69614895338424432;-0.78586199379871813 0.20944005371128202 -0.59566542341701678 -1.1868026585249716 1.028064470805448 -0.033256185599768499 -1.1000539544520944;0.38833235455713883 -0.2796546919575062 1.3346811158945697 0.48285819982012262 0.27323460234766306 -1.7389176968036353 1.4294563395793749;-0.18668737833975738 0.52902035431212757 0.22633862874821431 -0.91362252717401671 -2.2498966248377288 0.25949356244774907 0.15651325035566105];

% Layer 2
b2 = [-2.9968879382400533;-0.93654601914371516;-2.0328727596287584;0.80598259452063192;-0.49676455346136728;0.5929978214706294;0.90843336808051134;0.91251040712547016;0.18812328443221191;-0.20061277413057005;-0.16289937766011836;0.22067990857021252;-0.416522611936887;-1.1296547440169911;-0.54997985569952168;1.4804415822019172;1.5003535838883262;0.81474078247209369;1.5744024467217341;2.000813208109252];
LW2_1 = [1.2889182697229673 1.4029428979654337 -0.36890210665880069 -1.1461865317698485 -1.9781075989990646 0.97822703449941151 -0.50085734996807418 1.2272338735498558 -1.6181110269824153 -1.525166286595268 -0.18028100242257594 -0.23657562859059772 0.283097160753569 1.0918834899418732 -0.25549579577607134 -0.14427447276327804 -2.2774982693098282 0.1406294807070711 -0.4647744549922701 -0.74445226034561218;0.17574943450679259 -0.77397192841140794 -0.047176133075546377 -1.338823042887229 -1.2978231623598813 -0.88044936406089391 -0.51234136450931378 0.58430737683565459 0.11822795867489606 -0.71916179047627671 -0.12167909897553505 -0.42108204381053216 0.85109911097925472 -0.046826564701422366 -0.1299838031876859 1.0815383428419834 0.00089505086501120816 0.19482810968954486 -0.57914844291579559 -1.2853478227174644;0.082366310670527063 -0.69155695773197479 0.8780553902020336 -1.0278617697472829 0.3760985325152118 -0.14366487832719521 -0.36866142664673079 -0.33498021856276983 0.93119775426333495 0.97124397568807896 0.24378156820589791 -0.82663932876251922 -0.34977722700959202 1.6692890171451813 -1.1678781256463933 -0.044908322900820363 -0.12412048311575336 -1.2767540175886838 -0.23187252398022007 0.69469073992507369;-0.5271148739825422 0.96863958776426606 -0.76899595718761071 0.056770812265045947 -0.11994099264443557 0.68416839280207575 -0.29257910008444304 -0.156626217167848 0.88573342028332802 0.32610022134178268 0.19948068061777291 -1.0360429939679823 -0.19566250390062059 0.46382979788427708 -0.11900527303046771 -0.71324811040328751 0.8088377860357282 1.1135278070847456 -0.79492220703651928 -0.49738105295064161;1.7352300791725659 1.3687932006770698 1.2874340170982286 1.1339331613032613 -0.74894503829807813 1.7568285004975992 -1.4031574750884317 -0.13933499267120172 -1.6824949426249047 1.5113972508601903 0.014447020849611285 -1.966357899974517 -1.5063884687351738 1.2101182394561292 0.51674430574922103 -0.96420204110885854 -0.56374577967622319 0.15329888131556374 1.4485260164129894 -0.68696081769648876;0.39758323088848252 0.13406458362894572 -1.1528756946275778 -0.073059832649398776 0.75720461530535688 0.78202876444921532 -0.22385360248019928 -0.065762616137873403 -0.40967619385366222 0.13896791715396556 0.88294484872039014 -0.79518317118502246 -1.4650438832943842 0.23123375428542875 0.4870984398359619 0.66842492101251905 -0.50401527844680727 0.83167885778098349 0.31348057388536144 -0.25133260228948129;-1.8726800413368474 -0.55624435218390755 1.4923711612074102 -0.11491106325639991 -0.70326460885276554 0.020518488476139896 -0.30387984852301669 0.98690801932697125 0.28686198790949363 1.0284420085235886 -0.33130714289348651 -0.3351406042838721 0.20747191667575191 0.20583365911891516 0.59380870406160802 -0.38496034748394586 1.3524402449611781 -0.76763662381008568 -0.35821079678390239 -0.86319812406260632;-0.70211543058492276 -0.072145127451247015 -0.84723622576433999 -0.31496842570589489 0.2314995242782738 0.99579905886836395 0.99412137415569424 -0.034252816705507401 -0.25788361829602924 0.34810507208265029 0.2483022553978306 -0.38155780992759042 -0.52485212977688345 0.46185662259043286 -1.1490414909129472 0.28825890885258626 0.87085766325116709 -0.67253503418469718 -0.31030683466828957 0.84076592865137301;-0.046936301308137821 -0.24625491277659947 -1.3258150854647817 -1.543060099040181 -0.053750508658929171 -1.1133607414599442 1.2397837819210649 -0.18510903760069744 0.071085581468681616 0.58940443291448119 -0.166245153357897 -1.2993496193993044 -1.068854987941235 0.59921549544830321 -1.1161574878768055 1.1433552790139385 -0.62770074809586673 0.56700566917709361 -1.3226554980192819 -1.0557659807426243;-0.027230429035366679 0.26108908960938548 0.19976741639232964 0.92989194059736524 0.80507320204366439 1.3175473600201171 -0.44327940694354367 -0.16628954927398693 0.26541125065326748 -0.12717330146863082 -0.72614433611846396 -0.2291882100864869 -0.44191495180882279 -0.27561791471897823 0.046642848993323785 -1.7868228374454205 0.13245422872171161 0.17116431021493139 -0.051181555568424533 -0.49053248928694348;0.99118867885140871 0.42867443609413525 -1.2990815944573477 -0.86797462841960393 0.63939617106734614 -1.4719140367745431 -1.0292421903932887 1.5820781992919126 -0.88937422139552824 -0.48846489520911363 0.82627559660877092 -0.14152103564536617 -0.67835712157473627 -0.6349943711567736 0.24055686428802128 0.94083453717782117 -0.45321986221290356 0.96226517007196155 0.78982870445276188 -0.11703976102175619;-0.66804878609176277 -0.1514006207590734 1.0386577712176877 1.05631063749084 0.6181782340861014 0.017117445126475384 0.11699817239162835 1.4649272615931221 -0.62961627187930869 0.67997755882234512 -0.59541357819947549 -0.67086071876438902 -0.9801614686588348 0.26951221832307959 -0.43382686153205058 0.29966126044299579 1.0017474084917024 -1.4632843545733973 0.49019007950441351 1.4699029917893636;0.45988083439867888 -0.40401898424785282 0.24867413630668658 -0.041349299065514475 0.56621850794472905 0.031241030720840078 -0.21299482190667793 0.022552920406458399 -0.59431827840861573 1.1226482446503439 0.98446683037235616 -0.47040931666907404 0.40892688863863108 0.26663177737783916 -0.28133516441743223 -0.37999389656732169 0.44487446026468025 -0.85606012196356218 -0.56071892068168849 0.064142262966420727;0.87938189372849296 0.69432266737129311 1.3530375671566697 0.33719049516609501 -0.30925783693719655 0.45817695331754371 0.049353642835505245 0.28025313029309967 0.39186682175045862 0.39774482808277445 0.54139148640996348 -0.77503521667025466 0.77918329429578692 -1.3249921893678742 -0.57818054034664979 0.8692070993569847 1.090710594241171 -0.70064312990980393 0.19942436264816188 -0.36011222244222024;0.73106022393031089 1.592946869542567 0.61552569134581592 0.2092985949587565 0.1898162484053238 -0.86226070408330047 -0.50042106268334197 -0.068292289811334284 0.32064067904656207 1.7348065213129233 0.10977274435415996 -1.2508458287599822 0.19116594562970765 0.826398709402694 0.64219381983893853 0.77730886791731935 0.21482190096713483 0.8377149469380053 -0.42219610529113272 -1.4914447000298725;1.243360111406083 0.50425625469376434 0.27507965134231643 1.2213788316462661 -0.031152916261023518 0.33426077052862024 -1.1115875742532033 -1.0822752715730253 -2.1405638263239446 -0.5881927800342851 0.32622510236276714 0.035700851940226867 0.13875930278211113 0.24750291499750229 0.7441932313780546 0.10305507059563902 -1.5093696003590451 2.0238802571584862 -1.0326639730853917 -0.20757746238053465;-0.28628277688162457 0.07201665443746548 -1.3551582263819244 0.011847251991972832 0.79786441601306757 1.1091183930317292 0.17710512740465895 -0.51775238640439669 -0.16100736717688638 -0.35398480530226789 0.10995643991330119 -0.62897104967207029 -2.2106055605033541 -0.12675848605491249 0.064951121153044841 -0.13324313844261212 -0.47064297409299277 0.81298063434304413 -0.23438192149190543 0.082258111332730172;-0.63980334018910889 -0.54692284840753158 -1.2256997335015933 -1.2553282636032081 -1.0220239879224207 -0.63033695008762158 1.3574408393433346 -0.97933512453224614 0.18508864164936584 -0.95888653623747744 0.2482731078155844 -0.66894632752692951 -0.86211110325201834 -1.1701014774067222 -1.0483532595136984 0.63335977053346793 0.73322049605346118 -0.32094226910954443 -0.80849635167121103 0.078027708189784897;0.052520143410991184 -0.78877746789898417 -1.9143858859738063 0.8069915484800646 -0.88730751188912449 0.21189318765991982 0.20821815123630855 0.3292126671750224 -1.1259337705273469 0.23105521950581778 -0.69422821889124608 0.61415226039506754 -0.94321651452610245 -0.15130274856029005 0.48744616920324235 -1.7611939143565587 -2.0725264278679103 0.032744900578143589 1.9203721056370746 0.22624191724724135;0.031732696434546744 -0.14611411100713809 1.7535799488838799 1.5095492875977876 0.24470514135934349 1.7092523095920857 -0.50102922376486281 -1.1820585090990254 -0.6569912971192613 0.43984672825239152 -1.4840505311117331 -0.63803369086111694 1.6308670525778857 -0.51209629598452089 -0.062532242867315568 -0.61804977191219146 -0.16567123266608783 -0.010626133477819365 -0.9349499498959345 1.3319093565501099];

% Layer 3
b3 = -0.83445789586604513;
LW3_2 = [-1.1885234257339601 -0.09318154909579103 0.062707589266011401 -0.093792424856189369 0.1606101252955133 0.15040915065813573 0.079290711119508125 0.57260575412615233 -0.024561130659750609 0.071222658457360824 0.058630761914483548 -0.26714053802574356 -0.22105248225754887 0.094056650936887615 0.040045471548459673 -0.038335544131971259 -0.14403288618776164 0.31222624525657089 0.073917437362530702 -0.043650200254154572];

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