function [Y,Xf,Af] = ESPER_pH_11_Other_4(X,~,~)
%ESPER_PH_11_OTHER_4 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:24.
% 
% [Y] = ESPER_pH_11_Other_4(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999984769129;-0.999540494077341;-75.751;0;29.715;-133.803853032615;-0.1386];
x1_step1.gain = [1.0000770825255;1.00022983623563;0.0140762793578401;0.000302617642608564;0.251952632905014;0.00432440760873659;0.00826143816767911];
x1_step1.ymin = -1;

% Layer 1
b1 = [-1.4727216303990426916;-3.663039772524247617;3.4866770492449510321;-2.2368595803622977058;2.4202276898492955937;5.3296432164855911395;-1.1565949022802588519;-0.34833837417887753007;-3.1012937911747506803;-0.62181216517270931909;-1.6859289959667007608;-0.40800224532490153573;-0.26044395920719315418;1.0608994637552338069;-0.18442737253006327713;-6.325326453035618357;-0.39849103552739517653;-0.2759109445494876689;-1.2811523012031433844;0.5957716594379068864;-0.17354269137994668415;2.9006105643033830432;0.78186737247400794892;-4.125801668885869411;1.5090832288809310491;-0.5526548772864002812;0.91522582910808691903;-0.32678214267577782026;-3.0345003605450799888;-0.63390923249525799044];
IW1_1 = [-0.56821110435160759877 -0.25065788972818342506 0.62200408511453608718 -0.91039312255256632511 -1.286101559073558942 0.052590015741142213945 1.4761830234350126201;-0.11079612001321952064 -0.30850403374825663416 -0.58599884331240503776 1.7031573308606717809 -0.076848709156984287838 -3.3948066595190633521 -2.6267535834813706686;-2.0230920162279071306 -0.66304383436751279657 -0.32737492894362935081 2.1139862223784651185 -1.8196672760363745702 0.3628915288283418028 0.91846280556347370538;0.068048385050029108756 0.16335505314281498213 -2.3912320594095901605 -0.38874051657338792864 -1.2027908901422150745 -1.6952355737703033167 1.0542614996821226825;-0.94925156711266589493 -0.42989188938108319205 2.4887074610028632193 1.2690384199825444078 2.222233050566822854 2.187076462751929018 -3.2860952991166847426;-0.23356704196817881791 0.4349708637595069427 -1.0160031437922252273 4.2878582459895069334 -2.2781013248529737858 0.071580856586883845338 0.1756824430327562081;-0.28478063341856951762 0.29653529818245843996 -1.7704183237026265285 0.04277904669814237143 1.3621715116760899633 0.79020690013768468685 -1.047702882265625357;1.3181328037862332092 0.4757530490068291873 -0.012569618078365351818 -0.39065778650061450117 2.3398355766824430191 1.2246038630469853192 0.095730013295539720386;-0.25576459349265495691 0.51923605330024158455 4.1284329735676479345 0.93395312438798971932 1.3781188949127682886 0.43643273835647267145 -2.6635462239871974255;-0.041414625979593402971 -0.41141490884792081273 1.048532605514477245 0.39039586874151077645 0.55881845891335257814 0.18426676557905330434 0.40017836589835109606;-0.0040330453643319819773 -0.5070174781352893012 -0.62881667623898618302 0.20052015885433280284 0.43900412056190785126 1.0089435751617648052 -0.46644026446824704557;0.14150297003578907185 -0.5299528595539358955 -0.91480708089260664995 0.66983253808269904717 2.8700288319958682237 -0.12626113072652675462 -0.67603516698779542171;1.0168606794160841567 0.74367900822176469244 -0.052890928407804412015 -0.9263439813503556719 -3.0596994635942418306 0.63215984047973738935 -1.2126067254046806188;-0.02242563704452780679 0.86690865158812580038 0.47119309919510038442 0.98361793551949772141 -0.23586445139202097399 0.36200417088120551146 0.52852536119562598671;0.98380110735904013897 0.60611927295836831586 0.37471569979975283271 -0.13430203283459116181 -0.53277329347571789064 0.78012740478651509957 -0.90407975143524399453;0.012412119303828534483 -0.21391333583807659036 -0.60358497910503328132 -4.40583566090398282 0.016315723332256570205 -1.9725297239686929718 -1.9486272230393626437;-0.28405058158588913919 1.2003782581506852178 0.51302507046225742648 -0.88725770178373342123 -0.36305275187900659661 0.82264294426395390136 0.25674397259469361465;0.087647845905690274781 -0.51562673989835972055 0.28412482255589016633 0.66647598046911038505 1.5478021876245640076 0.88289524506085936828 -0.1355031734553988898;-2.0486754681456775806 0.4458679802882637988 -1.7825577061944231083 0.11287585982903630688 0.59469566734715961775 1.0381534336617830316 -1.783542622116884635;0.34194870115269060395 -1.1791508336813729674 0.32936869476736058138 0.41530389274928708465 0.44284949233111486899 -1.6390202635735711123 0.22356966634061142818;0.062624635326905334076 -0.052165436154629006571 0.2100103927494485212 -1.3034547823957980395 1.2355005834531593845 -0.81461960969447655412 1.8343152804918922971;0.044115656615938025897 1.0120235636395735757 0.85553889338011257504 -0.021935106600986721548 -3.8192088236190215866 -0.7317546932520599956 0.67150207689317276127;0.78729626314121659014 -1.1041438952109716709 -0.92761940749454585564 -0.60441046236738993347 -2.7349094180231556805 1.7366792171318403692 1.9391710787384908166;-1.1012708584373251952 1.3851306821914726175 -1.1064480521060289231 -0.47895040485034717781 -0.12663185018230449508 -1.0708748466004947009 -1.5166964121272115129;0.15392001165150875908 -0.018633116013199609723 1.3141343188572969236 0.29883993890408006022 -0.37086588250101509834 3.1399125004260572958 -1.2100033936096412646;-0.4785378282415697071 -0.073677113483163941821 -0.11623195968831114 0.4779023504585108717 0.76184443748155006304 0.73220216857437159241 1.5184346180333125886;0.76963256238595667558 -0.011809010491011143196 -0.32224392273808216691 0.057097759668918370013 0.030323230749514488297 -0.27171305519195976252 2.043169628585742359;-0.09984958337998761646 -0.12738967769024375776 -0.03067293665062694602 0.76577232361757519019 -0.30129825023105349935 1.390092108603075749 -0.18601957950822167742;-0.30047341671468108526 -1.6280496727303992444 -0.5178600470890702967 0.067216509915683231302 0.57695465594582129309 -1.6148574616122930436 -1.523033693814924483;-0.33569779421343970416 -0.69600164677317410966 1.1735269871457725266 -0.13617107415613272092 -0.33668352968575521178 1.9036719471100882473 0.20656284166644656164];

% Layer 2
b2 = [-1.1987673390492992187;-1.7772634403156712946;-1.1093175422661696317;-0.29454687794653472421;-3.3811168250982377437;-1.7760956661655964428;0.39514725254273413979;1.1235529912767070471;3.8172346033335853299;2.1744263780392203422];
LW2_1 = [0.1473190872297750198 1.2297684620275834977 0.30648559535356462158 0.1032371297107685798 0.43296399670354257516 -0.27926765721121354913 -0.25663722610356426435 0.098908692606059792074 0.26569496432564893018 -0.76637289899428850948 1.539829643868334319 -0.25462395639492729771 -0.16948963148906726062 0.26556186504546763771 0.10766459978599958458 0.43797476913662475306 0.036496804197087319432 0.5043004154479714396 0.15194410680809247727 0.023874735522558702266 0.14887831419981664705 1.0343672429180359451 -0.083387434284163397535 -0.045300844086173644443 1.0418057744440947232 0.016190409190994584088 0.42431866795269007619 -0.45889745749548405129 0.21471032996328037745 0.077368997431708455559;-0.45212689964942187615 -2.1891097993050760984 -0.47545175747748241735 1.0698260329207835984 1.3247030028712534211 -1.1000853153648602056 1.3315842240824347087 -1.5861130653755912689 0.42493300859574517636 -0.16625099301803614171 -3.7901813019504144719 -0.7871170985649872387 0.17432351568380660689 0.9371650589132778375 -0.57476771028877660097 0.028132485643556769117 -1.1566189811754032934 0.042657166603364833624 -0.17386143611441914891 0.1952596928610839111 0.4832169316659503111 0.26245440824939425539 0.16945406040603544495 0.0089126072358529703082 0.040279687293499913392 -2.1390222619648069369 0.56357578682030740058 2.0343640208058682006 -0.70336112444490994644 1.7827661981304863126;0.79307521376311007621 -0.59677413707096549356 0.23342964377790750841 0.5849996565479484989 -0.20369454784237006617 0.5673902356859961138 -0.48178861910480746955 0.058976951687681265779 0.43342943205538597695 -1.4328337591913700155 1.9923536194960720369 -0.62463716501223820465 -0.33692627869801694551 0.088562492619382870984 0.1336143401939053621 -2.1197796442862792965 -0.049327636054911083718 -0.18858333568671892255 0.11690081453753209395 0.29071779702331723705 0.36386143322150077406 1.1925873503730179959 -0.12356108995303741183 1.4232764477232413558 0.1413324415026552261 -0.10974703391149433218 0.46255109641283209676 0.78387950884042689736 0.83173037805802985112 0.25680812387662821372;-1.2769042878679470743 2.7404538006167773467 0.35948452610416842257 1.5862665554233579268 1.3691358707406549033 -0.5795341408064993427 1.0468431501758705959 0.47750405174599697133 -1.1038287284795214038 -0.51952947508393765297 0.49839881881087244597 -0.70264418420692431599 0.60227119987920230137 0.085887643556377221699 -0.7678061912401225042 0.037379632999195652743 -0.21807162470666369147 1.3533101578098853945 -0.0029709012877700462577 -0.4975462318608392942 -1.0550260613786279773 -0.47680395612343107192 0.39666741510967185036 -0.24439398872322082301 0.35846192934328613422 1.4324219089686331952 -0.60675493773513056173 -3.1027251396676822637 -0.53514102719586509327 -0.13821550931152337682;-0.96079234276213332233 -0.002766676634340398816 -0.40752329376492729685 0.79806576667490802812 0.36693799395047066447 0.022174125434178220545 0.44855913325153978777 -0.56134776319200918593 0.20638821927073094931 -2.1942208293756961801 1.0326103454236861268 -0.67383021471813864256 0.38349425079655324877 0.52783275694991782512 -0.12763996597893295659 0.39548548481761081064 -0.24479780421793193024 0.99635330411099110037 -0.25184230908364130253 -0.090360447330154761159 0.74423206055507040713 0.31837018696238605919 -0.042773039663738493532 -0.99098377826801575807 0.11933422609999838615 0.0206176292941027961 -0.33575688405388043334 -1.2139753001405266808 -0.54464942620787948346 -0.37243804233859917341;-0.38310265877359339637 0.41308633498582336685 -0.24330530728293348064 -0.62870778373581981402 -1.0116681614356883845 1.1606604469436501148 0.35163962921225344616 0.50903065465362917763 -0.054369482441488058144 0.035833774552985406259 -0.95903719723359648341 0.13235005099778698878 0.89865818187374968407 -0.045698149299746991525 -1.0268715984209582093 0.11373411414007644771 0.40503383405529930217 1.199425183969401898 -0.098744345380393519496 -0.036740963554519390222 -0.77666744166739287714 -0.79966849789483207545 0.035344349120655801921 -0.54544162335625567817 -0.10944443292230228437 0.87369190255307260795 -0.44651289590310588862 -1.6319616836611476884 -0.15785500116828840578 0.50666476904275037363;2.2637528507023749746 0.50034912886290228151 -0.18099273941719540293 2.0814739841997860204 1.9259031817443144075 -0.6307161442868625123 -0.046804144117269685932 -0.96369790126735788149 1.0635528675672771826 -3.2085685574461395575 0.80577523633845260509 -0.91943035998498157113 -0.15756672451179609684 -2.5511774749008333529 1.6170317691218030198 -0.21140633885944795645 2.1621979641550899132 0.98601983161108597287 0.5175240072262573543 0.44852404782502836023 0.85709575871414800385 1.7922533111635212677 -1.3748103813263721218 0.54646347954338603259 0.12487059849287714119 -0.63174502672457777397 2.6551715343155719573 3.1815911255756512688 2.3700835016038834802 -0.92880732143546695934;-0.67189340857639134885 0.19302956987294472846 0.14330611214366725803 0.32186034972498062112 1.0442733771740388971 -1.5319808869522542061 0.10994364598967003299 -0.29325519533120714133 -0.0067096266879496276048 0.51276171942388737435 2.0882291085215123339 -0.84966399547574611439 -0.40577478677019868103 0.080142705947628206653 0.53272104171931478067 0.19372010111566123625 -0.69960415672731579573 -0.53023292992289816628 0.082726499690703503287 -0.50463481004602017688 0.61574725805543573109 1.120754773608287902 0.081996409158479249824 -0.12948582835275765368 0.21931864162043096522 -0.55838846675091835525 0.31237292436801616935 1.0920834552303551046 -0.053519030918402821229 -0.7411573980099680492;1.8082847665750216848 0.13809241336573735426 -1.9496112467716955052 -4.9404024837955420324 0.98845890495042654234 1.7690641550392971482 5.5636514013318887351 -2.8013416137779003634 0.19803672535532612642 0.23539572950973453036 -0.55197042229440018701 -3.3894428448994169401 -1.5707266579502776604 0.14790914712860905866 4.4466705502328318644 0.22820824276196163827 -0.41956817047757183348 2.3181017434221895535 1.6058990231025369599 1.6580644321078352732 1.6421794995927718741 -1.1356609875774841267 -0.18171616448494326557 -2.2158853820753203756 -2.7448157177512557681 -1.2541373123422314695 3.4503574373483032467 -0.71877430417468646251 1.1282994106115418198 0.55836442394090479713;0.32994614839699643039 -2.8145819325495629037 0.2435477664557718358 -3.1111583271036522547 -0.96901978983058567607 0.11898518766583432438 -2.0774733401665783639 0.29360001833573529106 0.43587174773630232849 -0.21673044429134469269 0.27157770454680962846 0.74848554219963236989 0.20306713203145954072 -1.8335992022164133708 1.032505168812724694 -1.922754558711539552 0.36518349220664941823 0.17760954840099951735 0.55363538125202138573 -0.60832958059898978309 -2.3834868133233162446 -0.86242981452264222408 0.22123591445957885293 -1.1531511030508410087 -3.6542581165857574987 3.592060870628668745 -1.3820876719238439634 1.2280671469857655786 -0.63254816451609008343 -2.0463219602325710689];

% Layer 3
b3 = -2.2757932439557477799;
LW3_2 = [3.7781080286160384496 -0.42324852517354838444 -0.82544087927300280327 0.15497629982442293062 0.35768487450358227298 -0.65432782309474701865 -3.227477664759264453 -0.60320397278977622157 2.9763168466399898549 -0.86684781622702755666];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 1.90239167587468;
y1_step1.xoffset = 7.36300175998845;

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