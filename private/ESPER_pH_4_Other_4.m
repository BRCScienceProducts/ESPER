function [Y,Xf,Af] = ESPER_pH_4_Other_4(X,~,~)
%ESPER_PH_4_OTHER_4 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:21.
% 
% [Y] = ESPER_pH_4_Other_4(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999984769129;-0.999540494077341;-75.751;0;29.715;-2.05132667284751;-0.1386];
x1_step1.gain = [1.0000770825255;1.00022983623563;0.0140762793578401;0.000302617642608564;0.251952632905014;0.0588888685539285;0.00826143816767911];
x1_step1.ymin = -1;

% Layer 1
b1 = [1.0894473867360108255;-1.0059831062680411051;-2.7710359704383287216;-4.5933617346809363369;-3.2830673770822462743;-4.3467268266809195865;-0.69733757148396524617;0.74808050275948212438;0.76468235998728373293;-2.6980804389114623199;0.81351308726811299987;0.48583429620128293358;0.97285071900862907235;-0.56213112845906265669;0.53148575645535378609;-1.1427550348912278722;1.0327422427370307467;-1.198293590224327021;1.0771391188757359902;0.50184435265408566806;1.6702482150626563051;0.97256321764529130025;0.5617262318563779333;-3.5876825612459395387;-1.5152639918779851058;-3.2526589897123496797;-12.077299380894341851;2.6241131686072902696;5.4768423099967682433;-3.8808566441704379635];
IW1_1 = [-0.32954000010767359186 2.6326336070616878082 1.1967940379639614434 -0.27916725249879908999 0.42364538408230734134 -2.329554994768030074 -1.9409136458449745;-0.027313393569787926957 -0.080602650980826529015 0.0075229939670389649187 -0.39119482983380060581 -0.47225825007435323633 -0.30392762368967074504 -0.75040309669132032599;1.4729630010173997423 0.20847547741510388808 -0.59157596832372749684 -0.62695556080823156009 0.2495167881441399671 -1.1722315492766250955 -1.1253887853447068768;0.2538687206108476424 0.15653353482715273715 0.35193771903321524608 -0.046990883525115441366 6.9236534480527103241 -3.2670309554329026724 0.042265278050526940146;0.85949714594405290935 0.76097977929784843543 1.414637551662241588 -1.8341821557280324484 0.39938607155040956043 -0.71142659998485502371 -0.45268328601924717747;-0.65808392553516514845 -0.32167291518847168641 -8.1802073606128455907 1.4258463059092318925 3.3093003685647484069 1.207612690392103838 -4.1802325432091418378;-0.15848048802400452328 -0.94176455040765527649 -1.5020115459775071898 0.9191585673782305399 0.96912243527954788913 -0.46206549731462021047 1.1869164113168919616;1.0831669435852471217 -0.90595512193453442418 -0.17339803412230930801 0.42611890182472006439 -0.13175616669296424943 1.7513753553237139116 1.2257844806235957957;-0.25418582514779264336 -0.09442932566174425113 -0.3092539010111078901 -0.22005017988709799082 2.1014139134486478078 0.64630808606520007142 -0.55515728175550504986;0.067850083874809508089 -1.6059486044545987493 0.66348085679033208528 0.42459705912185063958 4.2395538199250557554 -3.4240136069169788691 -1.3726091393307631172;0.16640711562557564118 0.016202333504084738547 -1.0414060169466481387 1.6186142791498352445 0.27073422742022151821 -0.6993521718099674489 0.18895849043715035043;-0.6041500113362539004 -0.55257138628454738338 0.15366876048679284361 -0.62438503046012960862 0.89768028541518063435 0.97621647353251050916 -0.15821569015937778091;-0.27889834428076343276 0.099948375484287768633 -4.0215830857635985751 0.19402850174586364074 0.79258399886120922684 1.2201795439553408951 -0.28676231620585312942;-0.5314377643543392038 0.54535963449631141842 0.14366976929258865048 -0.17428077385946563749 1.0230245021598787236 -1.5613182871650659322 -0.64016853035692011797;0.086331114034091438469 0.012257316620104390451 5.9264954871086592547 -0.5115381914517335149 -0.60660083791662688935 1.4490318290533550361 2.0121478653544504489;0.062986869487185459526 -0.91247601415835555283 -1.9240140490618680147 -0.59206661145423555848 1.5188005724791895368 -2.3259665505479123482 -1.3868876971617636329;-0.029950468173291600743 -0.071437795804547205014 -0.087629532211950272869 0.85574999697630527162 0.7980231668948558621 0.53299091863480752007 0.7415162082775809127;0.85266826464726563906 0.45426649364213383953 1.5810961057677790365 -1.584071818004510579 0.21846104052798820394 -0.36680309651283404815 -1.0901764826420501375;0.059596140431477255539 0.22655635808480126259 -0.6342366908867016484 -0.36404332049259979787 1.4016583532056507977 -1.4394502513484053186 1.325929370959136655;0.051271921400841080629 0.27236863960542462282 -0.69126631455002340854 0.065487440178441866379 2.9743156227050744356 1.2128645412212455401 -1.0523631562754760527;0.01869467189327493617 -0.61482599953846750473 2.7753109598652976331 1.1831008115200249975 -0.23296674414104054374 -0.11128719908080211831 -1.3936793135528082743;0.62139717482035028429 0.81755030767653247281 -0.065456511926550511871 -0.28924625650043350733 0.41899750627725845797 3.0476033965054174502 -0.71760527578503219281;2.384276263575115351 1.6014069388765517221 2.3349717110747696402 -0.26301922279973100061 2.3650119826223781061 -2.6400461075167394043 0.13874416866903771517;-0.32131499017096576409 0.0616873138894447684 0.28193489114103303939 -3.3402784651253960568 -0.86605756981312298493 1.6341625875608969398 0.17944581026952979852;-0.091773112031460074567 -0.27742204205201659306 0.12242964579752106669 0.18510798635134564916 0.76362197866858927409 0.76440035007499940178 -1.0517144411745189547;-0.32578969532379892238 -0.13338077099756948107 0.43715467670575403059 -2.4365779773777491712 -0.99960705576967390229 1.6778434017801941991 -0.41621009220691468355;0.073107996301491048885 -0.64984781196065399822 -2.6621472335575560031 -5.603091455612098315 -1.6128814764310424046 2.4834154967714892059 -5.2355413613301582387;1.7355156615436373446 1.008638275399568407 -0.40134858330971845408 1.0337186735951737759 0.094564477367025556731 0.012415153748237173562 0.61474756670951202775;2.085698450790632652 -1.3280047784690349744 -3.3515721086821628205 1.6747276020942056807 -4.6903143683429417976 1.9825608736683977273 4.8937192654618870691;0.23010377407615517642 -0.48195593167821354497 2.4241156679299442622 -3.1671177753642694164 -0.63623932066298594101 0.65529093839970564694 0.3187641064504597721];

% Layer 2
b2 = [-3.3385716293886753547;4.3085060874580021206;5.0077387721487438554;1.6767969259392490056;-1.5367692965998616117;0.46517373253888472107;0.78964829993920016005;8.6753265432922681555;-5.0273008987791110158;7.5509680090572377509];
LW2_1 = [0.21664245850637145474 0.048562687653660147058 -2.4092564654758827913 -1.8453462648154319581 -2.2594286456479197867 0.023309962696561499496 0.21723470392632798776 1.3092740560678541861 -1.7597513211723290194 0.69103418198444888088 -2.1829946163608355825 -0.98344662981340313923 -0.13261822798146410962 2.5157149161130387682 0.00045815967533500328093 -0.60336259409402204223 -1.2830640284084013913 -0.43740734143761700325 3.5997854396125892329 0.080264212414757757363 -0.079772262739980795421 -0.30027639142992490484 -0.57611617664252978699 -5.3743893242326139514 0.42688055697964238933 9.2016009434504741904 -0.16361125065558876357 0.75311510473314147163 0.31106338243016767864 -0.16592123482149725988;0.03431575461935926219 3.4816967908195870507 -0.12283196081560580903 0.39311817957964334536 0.65287632349374891128 -0.056745960532446161617 0.61713534282995319291 -0.23060471808841581653 1.996488080590805847 -0.032924585398227616817 1.4462751902215587041 -1.2103220051744432162 0.61882276106967637475 0.65947114288660546588 1.0458140427266509054 0.44437045522338680659 0.86714086226832176596 -0.39494936966051108485 -2.5079478323375656856 -0.86331494801000963069 -0.1427318436150748493 0.76902680909802623166 0.42033403769178906417 6.5723631990927735558 0.62457755656497626617 -7.4013311869001237042 0.9280448134530042692 -0.050464577754094186446 -0.14796176248698447719 -0.81284204054608988343;-0.050002719711239998479 5.0749331650333004973 0.060731512921071387212 -0.93886042201999286849 1.0307395210937861929 0.2361699572875405051 -0.71479234012329861958 0.87345199902213577214 -6.3758562107431178134 -0.34986021425704161292 -0.063114768242062468939 1.3641120007130307368 1.2823323009121938565 1.0984603426832961759 0.82236082074721339463 -0.32103670183011107087 4.2043933946864235907 0.63377659423898924373 1.4154480580870887341 1.5999197086434884252 -0.09163507235592537048 0.038900871784315803337 0.047419811650410328974 1.0311774265778288484 -2.7417784487208134436 3.0542842526859286245 -0.52448371789924674857 -0.39681503970628839717 -0.091879760237173035975 -0.77887289521561586803;-0.1481729540419291502 2.8799191679434956725 0.11758609556311223898 -0.29618502602271340463 0.30815144032766667026 0.17200163041702204447 -0.5650483923457055857 0.63875885635630891279 -3.388109837984818018 -0.25943148148115779961 -0.077012399570107872848 0.87552478281415002659 0.41335460053902750577 0.8347646879617550697 0.13850096576688700201 -0.32830121836915704403 2.2224191440722611546 0.44600180535997352438 1.319689372747927969 0.90151815674375901377 -0.035408106637711302123 -0.24611561024960171284 -0.23471191757754714113 -2.1151641965954359748 -1.8042979178860152345 3.9809423888005053271 -0.44509240017877166329 -0.37733115638559894256 -0.0072630826888284670539 -0.38777883148916308942;0.41423834610461507388 8.6284118749911726809 -1.2846638416071232136 -0.56809796444184701425 1.2742254026415078538 -0.66848541179460241324 -1.1780874579302804683 1.182445162470440847 3.0418094637263246582 -0.22996904597636175227 -0.16810854388547155636 -0.61268149227465840134 -0.47856249104268561156 1.0016085550180751085 -0.6912120606911907883 -0.09933556397131772242 5.9200266171424278383 0.73284336010004713646 1.2231132915951932194 -1.6051984579403182352 0.27709332688771509678 0.092716344436735834145 0.1856382212964704792 0.37869237673515809828 -1.1253350314363299578 2.1880741491624919881 -0.052726312264310196132 -0.35809365445563223762 0.061795802908296004752 -0.32771985737763620339;0.65124853474415766996 3.3080586460178071917 0.40687875641857401687 -0.8017300951315475821 0.82864078837037613567 -0.32774570971587502211 -3.064460890294426143 0.56689586404922964746 -0.59661467096336451288 -0.010644035553707596742 1.4656807850161499562 1.593365486583330215 -1.9294700421612447361 2.064859220910550075 -2.1061898454589345064 -1.6238324945138602473 2.2322812918754997291 1.4569332098621849969 -4.0845961014084268825 -0.40888281149494848377 -0.48387180949591196422 -0.0071336646231147035624 -0.13100712594266292199 3.7718715465178731527 1.9230965935527049027 -5.1139300484625618282 0.94262848026114320898 -0.57453792501984990437 0.065320086704350896478 -1.4470533950479662622;0.49508210337859320793 -0.58208793825420357404 -0.65781879671902787621 0.33056144499011219651 0.15035616875806273596 -0.60885693123104989155 0.27029823174454992163 0.92107195509401151856 -0.75991748435338990486 -0.081629043482796398434 0.8120441543280605412 0.95418598398352005852 -0.85672599060274490235 0.6291497689757642453 -0.77995548735978448285 -0.11834524689277856058 -3.1444103395164098025 0.3531650044278720757 0.57656803908730314134 -0.22152573618123433397 0.18947539486885289772 -0.061463132266215893262 0.056592437391249750256 0.46314753583333134745 3.0661370934451102066 0.59150319334980405728 -0.011977936029226924491 -0.14560995610305177417 0.012221175810959205091 -0.71122946071074488739;1.7661967264761715413 5.8029338139382602435 -2.7635641033460736082 1.8133744774062254823 0.66945960580890051528 1.2266834807288238274 2.1694068929150427394 0.5006803065376694839 -4.4581116089520804735 -1.3383543027203450571 7.2491720681391100811 0.11520883440759932537 -0.53327117170871596308 0.76207590175578243663 -0.92207739214917772141 0.89068899075664731413 9.4566498988584122287 3.9561552607178231966 -3.0411053241905379174 -0.81701706453605293934 3.3626254702301650035 1.347888682024767526 -0.43704470606999940019 6.3016980286074346651 -3.8857569671317291338 -7.7543895764271519866 1.9923712680922001095 -0.75653170063898300679 -0.86790357242793225723 0.79737142045102393784;0.1103204334920419305 -3.3410454550435049192 -0.21881436338033893874 -0.2818861532843168205 -0.32748905806969641485 -0.0050944413470342484601 -0.99839937933384814706 0.60978533094930631453 -2.1186638491144980101 -0.059242715345587657061 -1.0410822840995181959 1.8432309933167940752 -0.75827427062080354769 -0.65592601030699682063 -1.0722037472801075886 -0.40755733422515078024 -0.62110365881633811114 0.56244303783872062752 3.4388333921146068128 0.90532600994224576851 -0.037657310973545944643 -0.73050554350311880381 -0.49845168936726874653 -8.2655317246853829971 -0.87212615753291533593 9.6931674535220739841 -0.93109527327852192879 -0.072704511343115688082 0.13708209145292715725 0.7886883270770741472;0.3903304104060935642 2.3941418324902636883 0.95607737424465799592 -0.57755571026917740252 1.8848383432746480537 -0.82505631002014490072 0.27810298102609815052 0.34339414354990899225 0.33351465595151502663 -0.250703971935212655 1.0569915135144118956 -2.0078105692727876708 2.9608310141697087303 -1.0183622146638018346 2.6790389691391709448 -0.33296003434463411486 1.9798794316662313708 0.46620287829650436384 -0.38013229112844504343 -0.16761153529325989453 -1.0439441546464236499 0.86785826794013054553 -0.53976988285796767553 0.54224875529327554169 0.11034548514064151936 -2.8915104502735702319 0.41676144268248638269 -0.22639966391085986075 -0.26134043096427539421 -0.1352598274860742078];

% Layer 3
b3 = 4.9513800667981602288;
LW3_2 = [-0.21556079523141577492 4.4321451352488336894 -0.54841700280299099379 0.82673661976937318219 -0.79858109878851590846 0.29349581697020116211 0.86862360980037722769 -0.30758635980492016193 4.4011649220594453169 -4.491913831872707874];

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