function [Y,Xf,Af] = ESPER_nitrate_5_Atl_2(X,~,~)
%ESPER_NITRATE_5_ATL_2 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:33.
% 
% [Y] = ESPER_nitrate_5_Atl_2(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999996490807;-0.999999994516886;-40;0;9.1619;-1.99149636107278;-0.03;-177.232103709389];
x1_step1.gain = [1.0000000017546;1.00003626070655;0.0153846153846154;0.000309885342423303;0.0656325902039552;0.0604107502911417;0.604229607250755;0.00425400504498441];
x1_step1.ymin = -1;

% Layer 1
b1 = [4.1056146094257961465;-2.2220821325256570056;-2.4048690273903603476;-3.3123217575499337428;-1.5794074174689849421;-0.025629107865468490207;1.7661617401989400111;0.31783726219924440803;2.2034545892188686089;-0.57787988948383139931;-1.5286163841098103777;0.43652131791697246221;-0.39112071865092340461;-1.5625668140198607503;2.1495072902077039245;1.676560211530832234;2.1749043470179136861;-0.40221595482633926144;-2.7170100998800554848;-1.7647256726304763053];
IW1_1 = [-1.4404289650320540872 -0.81020161801559298365 0.75380643267439106925 0.40707861072605894259 -1.1283156494038575346 0.009222046859597101201 2.1778595800706521679 -1.3023242310093297025;0.98701855101977853391 0.12622006825829076848 1.1114091107365831057 0.45204410152006901935 0.085019583752269131671 -2.1101275263279273275 1.3383976582703054348 -0.69011404650077656786;2.1322810232727755775 -1.0777375265119577552 0.69065866848668999722 -0.25936893426805246454 2.0945537921056578412 2.1929756887460123416 1.9776842608286469005 1.7977595087274678143;0.24706658101159106877 -0.46600915904729017791 -0.60624616192001956616 -0.84636425359843681093 2.4080187432910911127 0.0221882733919101377 -0.071489255560900466513 -0.37602201599121504172;0.68941898757640152073 -0.84235711347356878598 -1.2051131972074906606 -2.6457466779788560984 -2.1479144069056741451 -1.0492078875531929416 0.99203085007995495115 0.60834468310756328879;0.072528396364789304851 0.0030673591770495507725 0.044592009333424893758 0.74782168844011875919 2.9125017527789194283 1.293834031134252216 1.7330742053912595591 -1.3217702945501943468;-0.54175727023287800765 -0.53329315821920586504 1.2535301030631769148 -0.51809626482917026102 -2.4516707843686349477 1.0740619644245439357 0.36029283690489682934 -1.9212521945816087854;-0.13707168517282633524 -0.16660327482205336547 -1.2560843998708772773 -0.22916321170773162885 -0.68722447368496042408 0.76712279454462062311 1.5278021034184745552 -2.517931874599101949;0.22202907149599784842 -0.40938015603446664681 -1.7910445429932067007 0.012848794346915083653 -1.5997647906356211589 0.95929458700198477761 0.43555549407263821626 0.52585763551603736943;0.29479330546919590983 -0.68758419880085208664 -2.1333193298440993324 -0.22157378175085096217 1.3927139221122128987 -0.33842200412198170101 -0.57094148859508575544 0.89716274840178333871;-0.5090564585169231604 0.78839547180705382701 1.4262386638215083234 0.26610572704303675495 2.8410787724271013843 0.63851485672708641061 0.6288450077638522151 1.4464855606780087083;-0.44086738962571531131 0.86456958100016245705 -0.51807512817878154099 0.094901579250325718284 1.9270927511095272688 -0.73981354710436975086 0.25141538807071855954 2.6860652835086158419;0.61049106346651182964 0.20071240602834156119 0.94939914351654464131 0.92306435485870619306 -0.70550432430886000912 -1.1092203232218706965 1.5412664748232731693 0.25018814978035647245;-0.17739162475832376265 -0.19904554708183300193 0.58631425090093303165 -0.66158278009526150232 -0.2919953299949658021 1.5085807413452749781 -0.99127497264468611426 -1.2550755240385185196;1.0070296835332139818 -0.19102062421816484727 -1.0981360685978471814 0.38974956438255925484 0.45267148322480060818 0.42082582513438127059 1.5039214871186665778 -0.20816383320140532942;-0.16908427474580428607 0.15446879018510642489 0.35360999294655148795 -0.56210020462501841809 -1.4287176643218695293 0.47974999038848142874 -0.32940862186937153178 0.71060944989691987583;1.0915626849887349881 -1.4285724167481230751 -0.5090093265395740918 0.51457290794546373114 -0.98059437558611206587 -0.35763604068206561459 -1.5881566024141848814 0.34315643586107763552;-0.24318705138238413954 0.082265598825612504252 -0.021761132735865527238 -0.59933049014784378627 0.47100605887871160871 -0.091724117517769432339 -1.0445542338306057495 -0.003444464236288594973;-0.9696786782588858733 1.0468093816934354034 1.3509115103280850967 -0.79942942140664818851 0.084967993883890438611 0.85355396274309536242 1.5510018552717970142 -1.8136825368285411919;0.47891828942249442536 -0.43365399793349673763 -0.4676669591248648894 0.21819081799273393196 -0.79867662993663968152 -0.95468149588651207704 0.0384194249543128169 0.18131380488282342056];

% Layer 2
b2 = [-0.80536947801918379319;1.0230184196940665942;-1.9585911055264835223;0.53954758112918210777;-0.87100873861905703244;-0.96064064325175935188;1.5949275785090464286;0.074235968901142479481;0.71115271833538917789;-0.64745116439514738271;0.17382517935003793941;0.1535993378209110638;-0.54928127572953155955;-1.0335709279235398839;0.44816048152177401231;-1.1201985125305049529;-1.2755739351192192377;2.2466634936676848078;-1.5056132914715567583;-1.6378964872909742567];
LW2_1 = [-0.093533005650401471187 -0.94505186258557993817 0.25444215272491155222 0.29321810944325743531 0.26576520708703638141 -0.994360040412073376 -0.55053267150867157831 0.81291832310004008555 -0.29032536183209795011 -0.64320992588385772493 -0.81191137084615749853 0.058229931962533003353 -0.28008516639018349315 1.2892039552999037255 -0.38938115888664204256 0.2327103002802355658 -0.95779046523189725892 0.25853631531685583589 -0.31140465804930622662 -1.0596079199820502836;0.26892132783197170154 -0.41889367174120056836 -0.28950865274908821334 -0.27550328370338506012 0.011744724619050012429 -0.10111750622181028825 -0.92023584690987114687 -0.62319634739584439664 -1.1150603452772847035 0.24559689054878511283 -0.052017534271219467712 -1.0395249535891020187 -0.26925159897767420025 -0.021470524384358088271 0.43897071324925618363 0.51130856092491072662 0.434606232121437841 -0.0091145471231828326109 1.0353946415578101359 0.67101322059449064472;-0.48451226351914172819 -0.73930574388630476701 0.095102151973813872643 -0.86046366928635997784 0.236430713227931244 -0.94048309378305350315 0.75386110229942404626 -0.55968905152966730299 0.50886119481813585352 -0.34113982607721510254 -0.69185774730317461945 0.2811237874905491152 0.59162159787179624537 -0.48059037324150449821 0.083782443207877310698 0.53482245950699891512 0.038999831655208136438 0.58461605632731994397 0.19036240695299491699 0.44128748266803696776;0.1787535355919225577 -0.33685707342599924274 0.34822141607949186337 0.068538627328997958621 0.15408149984599006643 -0.21695401684488177518 -0.96031651482481727999 0.27199073084189456795 -1.8985509110174458858 1.0742263630014419196 0.72057621248727565799 0.59408345513396132453 -0.49449359826072347701 0.6154517890817707837 1.4475656802483407581 -0.59152038924829719591 0.21158689567113539431 0.47462767985441295382 1.2243368224696229429 -0.62875599929584669034;0.40976943376250468676 -1.0932125629459708005 -0.093012363574428047475 -0.38651382866180594711 -0.08897449615325317418 -0.46403396614199993175 -0.38678019693997517381 -0.83033362635677365748 0.064648888980289795358 -0.3049562470168281636 -0.13192640567734029156 -0.26455497509777059495 0.31132192617630066733 -0.46618073972867796195 0.1492633984521166135 -0.26426356394750938339 -0.85045039606841610347 0.17530579884835739701 0.18342542198283146027 0.015631989853217197195;0.7449523469402128395 0.38211596780246559479 0.031482033486968707958 -0.61518648447459622908 0.1560436149855533583 -0.67914634804284523817 -1.0930716354792966438 -0.79767270869384032661 -1.2420207314014009015 0.50298592747451487117 -0.90329517192795161229 0.36467108802174524884 -0.031705639231993945626 0.91029851549765350427 -0.48537014060755750977 -0.57933182120885207134 -0.7258723968149903838 0.62433614960708072594 -0.41492686237008535866 0.26237145569868997041;0.33202667782538602959 -0.38625977891342588855 -0.57422706747303742247 -0.0082112808458607890183 0.24486913910517016379 1.000659517607835669 -0.26116399434752896047 0.11349126732518394212 -1.2317425499316645432 0.48524245599038662302 0.25762303657631197007 -0.45812857014509972275 -0.45242876583677965607 1.1460918112583373674 -0.38871157648867155077 -0.13179191100402862236 0.3516717443322538994 -1.0040339244105018768 0.35534099442552063985 -0.96247305921248027527;-0.72892480638948309313 -0.59559728901266717482 -0.16245642209944358147 -0.92591691647138818499 -0.1410687900062105038 -1.0064035689269728024 -0.0034478413015427266525 -0.10043230465857745648 -0.11280991533173298502 0.39684066864889083748 0.14151666382654590204 -0.35006200435295498075 0.76625418964799607568 0.20977807517463167852 0.11908002499165587507 -0.27221550411900163891 -0.97967352020558662318 0.20572978861276450258 -0.53805545374003871384 -0.76535515565960443585;0.032505592007249235753 -0.75211040682873131491 -0.59767611614605931081 -1.4180206355952007513 0.14768114029210677174 -0.89615170387975395805 -0.94858010819835614225 -0.48361299733209944796 0.27499672372588596092 0.40322234641274545819 -0.086260561513807121337 0.43664835172305460631 -0.14032326247955312359 0.92313062533737255677 -0.43929433471869422378 0.22583578889631486519 -0.47635115134316913243 -0.54134025969094989872 -0.3652908605459094793 -0.69885780572920541687;0.10542843029272286337 -0.181677250024220166 -0.35212726548911682523 0.060968047830605165416 0.028148172029525273669 0.37073786045072720796 0.69661295710544335336 -0.34893740219923874424 2.1640393681466325582 -1.39677172800310756 -0.75696798983765378743 -0.56059208507428670565 1.118272275141073413 -0.93684634736984429004 -1.1730227321058286361 0.0046615049706607153412 0.19574955726392195832 1.5985061104818769628 -0.024013662079086565276 0.64773798011783634276;0.23299718948321948564 0.065738427364125717745 -0.06095357963131985829 0.78947121667852848681 -0.27483501933281456742 -0.30141291673020847997 -0.41096544781778288069 0.32213139613332641975 -1.1211804549548907151 0.058423559916491119015 0.62216938241189645442 -0.76300853341640006988 -0.34389336201630832379 -0.5833680483193495192 0.29201341954422360692 0.27651298577580646354 0.75657275135414125966 -1.0134403265502600622 0.10108624202487589971 -0.042131616361292936745;-0.1021977345873526094 -0.45546061563487216794 0.22975475189336927451 0.032573931299626268654 -0.27043445194976750701 0.017439628909045160748 -0.79424109477858784167 -0.19406756570942229612 -0.33025032776752172303 -0.29578182549301984539 0.10001190199028260619 -0.46172261846468204416 -0.51683759355876290886 -0.17939372123111438362 -0.032042182721728706962 -0.10500498322387860628 -0.22947152701110751227 -0.47973726433386271184 -0.031927319241257086369 0.14429825369485002606;0.52328750936327439458 0.4464585754246664373 -0.23702441533372925475 0.64971034537765692818 0.29296915526780081818 0.19749276373746171842 0.85847706997668671303 -0.024745315137977248049 0.095695407363843340565 0.17384311429186294351 -0.048194928810253584439 0.57345614285279222777 0.29633442907858947857 -0.19451058006955648794 0.31307728119684335999 -0.014681093371458413602 0.09901781227188069523 0.76476157606596817384 0.16915783339198631197 -0.047332226840913517452;-0.064656009952743370706 -0.99329722572601908404 -0.33707560257528534908 0.37563177933499974914 -0.24269966561494898949 0.24429833394981298467 0.27707190569866646523 -0.85995077293489974313 0.14847736349075349449 0.22344562418233471224 -0.4411865212656397861 0.35507935432638909612 0.5990444565958559231 0.18695009790972746955 -0.30836220789989243762 -0.3933046887900655264 -0.8419359380632790435 1.1021887927493649872 -0.24486646317024338138 0.43530240554360438709;0.56258163063506383406 -0.40568133853537152733 -0.13781539523344368825 -0.71324728580092799923 -0.20515660734720889136 -0.29473834618428146337 -1.340301937057607029 -0.87966686730206278266 -1.1601151557088866806 -0.53697165942913938075 -0.63950199605626023569 -1.0763052999907751772 0.1360879436898470296 0.36291235885470962685 1.0068410001006693477 0.4101822594438967462 -0.5848667723509857197 0.85956590821266809499 0.18918922902389848084 0.43873151736910676046;-0.15006311735560229348 -0.13845976335661613899 0.77639481219899231235 0.11312151207257700736 -0.50299930007853288494 -2.1482197036671668577 0.19892961344962786785 -0.22910372028439057734 1.5631202014284575341 -0.21070598620205521767 0.13461620610329111392 -0.046554993218382731412 0.89112826918541676591 -1.2321428163076977302 0.1891327961659474699 -1.2153122149414716802 0.11685412487910978863 1.2660439900574209648 0.93873969895682807252 -0.57715972262497794443;-0.11080926918042779961 -0.75772178507669873948 0.7243616172539144582 0.77936771960643014268 -0.71572189787444762121 -0.12648610223094330918 -0.03196913156804249978 0.38464716455291869668 -1.2424955797080403652 0.10170610973075686068 -0.10644304575671191537 0.69037568517249636724 -0.049930674189624497938 0.33221999880089697621 -0.37951611401411772251 0.76590896100697147819 -0.82186671098629349164 0.028708222957333551228 0.44669443610499437458 0.82003443409473186776;-0.60728209848536152116 1.3133592016888127052 0.46064698142690191363 -0.90571051853418915734 0.37352055469739003923 -0.40557532281134606178 -0.16239189384530888782 0.95617726961491034121 0.58521302953718168371 -0.47958053372384967794 0.072678450874727962283 -0.19201976310381752011 -0.28702422979225428179 -0.20279000931385546269 0.10242648808757863488 0.67360086834087629093 0.11166463776921706219 0.55848003958623060328 0.020070678648298173608 0.79305364343907691627;0.28772820831088968818 -0.051660728697518178143 0.49819802965737919331 1.6147657905605370399 -0.098628357669318600376 0.79921262136725357283 0.69531356933801558018 0.2924596952288917584 0.0045894459588047761822 -0.88678856730347488391 0.14476512264845048383 -0.32889073775465510474 -0.2974312187740913993 -0.89008199698221457385 0.84474913368945592218 -0.08660438622456456681 0.18743942132625809882 -0.28673579188732500889 0.35386330449030140022 0.16887370390488976035;0.31538720980622275691 0.20373423246967070632 0.33675761192696213042 0.5166096250765220832 0.011777750775190836893 -0.9880946543590738429 0.79061182310899746906 0.73459458447467584907 0.79942743203752242298 0.063345893319792678788 -0.31917611475889778871 1.008832757271497238 0.0032140636335878450258 -0.29283884457708014848 0.322683735391257831 0.20805972117079737926 -0.44776125963356638859 0.092627661418692511242 0.084352046169912528462 -1.1462418322090281997];

% Layer 3
b3 = 0.3358171045395570431;
LW3_2 = [-0.41933630357595941263 1.2885865473591477937 -0.58569820596187260886 -1.0253772771941844777 1.1040140325769696172 -0.27018942790222688632 -1.0332704423216143574 -0.75418468855358045122 1.0997948564029087493 -1.0895895554536860761 0.80611211713413766233 -2.2909376189352834707 -1.6413262924759852712 0.88822069207733811425 -0.56548906741218085692 -0.77210812671865469703 1.2672589747945415262 0.59596492084659913324 1.2277760356950435661 0.59907796008894242945];

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