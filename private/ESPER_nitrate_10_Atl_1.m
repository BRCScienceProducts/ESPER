function [Y,Xf,Af] = ESPER_nitrate_10_Atl_1(X,~,~)
%ESPER_NITRATE_10_ATL_1 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:35.
% 
% [Y] = ESPER_nitrate_10_Atl_1(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999996490807;-0.999999994516886;-40;0;9.1619;-0.03;-0.52];
x1_step1.gain = [1.0000000017546;1.00003626070655;0.0153846153846154;0.000309885342423303;0.0656325902039552;0.604229607250755;0.0145232735458572];
x1_step1.ymin = -1;

% Layer 1
b1 = [-2.9555911507941150518;3.2573758504962198046;-2.0241139251042734593;-5.4045266028083362997;0.58023380903004861953;2.6189125801600448007;4.730155219767617325;2.8980998998853948478;-0.99581862142422128414;2.3213317388125513929;0.99337517062325719763;4.7964589609039371965;2.2661917206226709354;2.0694157794114858007;0.4368143311640109161;0.28521746285608123861;-1.0936102334663078128;1.2138728671984957419;-3.1859498233127507838;2.0325274672408744081;0.5915824677217911276;0.24053886810300423305;2.1936534685172177639;0.20935517707021211731;-0.55975451233805417761;4.4681886380492672473;1.327258058783916006;-1.1074298556712642849;0.089360416629402306121;2.0178859411091476517;-0.99819562945358797368;2.1708930971514561747;-1.5459662653392671761;-4.1440585464307293506;3.3776240752193649186;0.30260573889805769676;5.8889243052262045808;-5.3610434475710713187;-1.5738222560556305307;-3.2408673502367211228];
IW1_1 = [-0.07156194046222974503 0.39855594309976971612 0.32089098234691598721 -2.2456337746128638422 -0.23074847922471489192 0.32737071813268076026 1.468378040653839367;-1.7047467783932246377 1.3018902305899566763 2.5074989596010310855 1.5116588651127436105 3.1197450785429854392 1.95921606753182731 -1.2747942044635944825;2.43028880886056875 -0.44526415501741750669 -1.2490230698080400096 0.64692625122509850311 -0.8904108132419467081 0.092766666801592942426 0.071601964746203949908;-0.050768995225609812871 -0.23032097299037473936 -0.061665920377957442189 -4.1025116777716190697 0.38010665124032322337 -0.10010195828970443188 -0.62742388438330343181;2.0389415464177620407 -1.0842536220427805294 4.7080982464981424584 0.6198807813641561415 -2.0027031683933196327 -0.68899258409963515248 0.2941675402593447175;-2.255771636007636527 0.34399554437277307661 1.5271125458358421056 -0.85985571453811959763 -0.073356873203599903821 -0.30676300544464024656 -0.00095598196164083278081;-0.075888306569213748176 0.3715717126041876428 0.13799019952816721224 3.795762095045628115 0.69876036219120407633 0.29822895155844802995 0.90850204098974096656;0.19095827705695953003 -0.52791280168689491692 -0.79929148749117484574 2.1120179926141005033 -0.027004263279973503287 -0.70225202462715718976 2.0230282757208404298;0.59753441189618461404 -0.31236361548892388473 -0.73399665636023236903 -1.3517433524301549763 0.22788141589194002568 0.96239895134053066172 0.10083201169631922367;0.16028249992140483626 -0.48764275978093063468 -0.95183416644494012182 2.1836151074662297766 0.6522550034152384546 -0.50394249392431123002 1.6177003056646455104;-0.2043579561071238726 -0.24706850619536893654 0.59306314006700544539 0.014492751509384258629 -3.3939341001209877291 1.08209308201530785 -0.57772727661168099544;-1.5297076269588851805 0.45052351929473249958 1.8968768825265402977 -0.70795233226811149496 -1.4836130392421602586 -0.7208037395728263963 -0.051742898764824338254;0.0085366122256687448216 -0.036857788095359736436 -0.91418152440332078879 -0.17141247341936022286 -3.0485192752686312012 -1.3445261638270979976 0.13276707963173964289;-0.62697359924148376997 -1.9654067351600845726 1.8355918664871904156 2.0637934130954653789 -2.4076451991315406254 0.91302276952915284447 -0.58258160552559568046;-0.32568883385460745128 -1.0303624079605611108 -1.4800175377619881889 -0.32225235089462778149 -1.3277245079930319882 -0.91251924138456164126 -0.55164001724445554942;0.71484000765400301791 -0.62061960197148002827 -0.68188768411207245634 -1.1057919680031420562 -2.1648708947463051189 0.087276488377286381981 0.25027314744020978665;-0.00098927373256403865892 0.85311827787838989678 -1.5862417168399349787 -0.75971643135710531514 -0.50496325522339957637 -0.35685397079007746823 0.32801100467257376936;-0.291386072190822909 -0.28975950129671973476 0.57979279438799113944 -0.25277710578611278791 -4.0771906807249225224 0.87495580285239116236 -0.12645238513679457615;-0.90815335340075920012 0.045509638697494733672 -1.5632096421941075182 0.39898219760244230114 2.9445438746611545255 1.2065173409355260947 -1.292118533906491562;-0.13901510294947172497 -1.0531622296784666215 1.4853873244548030375 0.79399146590381397548 -0.75836714990015618998 0.075472628358132537452 -0.068592851068960639105;-2.504552421705126708 1.1834688312898351548 -5.4363731986095311655 -0.51927469003837889439 0.79746808372140709498 0.30965969694702660808 0.035953349620579430623;-0.21154453421561869586 1.4869193794691655253 -3.4024849554887657277 -2.3093266027934773454 0.57007145979439899364 -0.38514147526099401508 2.7778608265353392781;0.4981105583274962334 0.55438263407739840627 -2.6909363068163192345 1.2284376230733571322 4.0803187145384853807 -3.8217198230202966691 4.3818465093035090518;-0.29657548909746911381 -1.7965969198707441024 2.3814799563868036536 -1.026075594798479873 -2.735251263117087106 -0.62440548031957798791 -0.84025104022806307302;0.30959725353595773933 2.1176176902977443817 0.3030986588648106328 0.81012845801373856158 2.2183328851099961554 0.8251057002587297573 -0.40303992264777233068;1.0374372407344532032 0.51438748542347156878 -3.202468205156272063 1.1465129018127910854 -0.86845574370874878412 1.0158899725288068616 3.539744909205754908;0.14648724054814338258 1.0939032345856634088 0.37713723592551501307 -0.3966707817117703927 0.98238114296596368291 -0.72200045376033417099 -0.19008408912647914435;0.8731967251931140872 -0.22950667050912568201 -2.0357836995125215829 0.67296458806952308418 -3.236554969840379048 0.50447973271733426159 0.24169295753098965496;-0.010720144554612981436 -0.1486418694438749466 -0.4574237897287035115 0.33061501313543489866 -0.84194452154074639338 -0.031321643514819322296 0.38656524479225262692;0.091681713220695917888 -0.69992606073423035973 -0.59389797000073452082 -0.0140572073053606382 0.37601627354829864069 0.36613844897943731427 1.3493347284536885144;-0.16299467311881712939 -1.0628367850612796541 0.61911840962084707662 -0.59445755547004297537 -1.6785315505050915075 1.0531353284598841125 -1.5078178731832929671;0.4055128712767322452 0.56827878773134310464 -0.051991025028464858682 -0.61026748615871317938 -3.1850398110517073036 1.4789025367140897771 0.045019627285312800724;-0.81433131401059966059 -2.3210051432273042238 1.2240143269943231097 2.6466577709752927561 1.343784222099793757 -1.4480593115859308195 0.42150118228743738147;-0.046538248443828901524 0.091092735113054448814 0.13959359735714071959 -0.37071735555491974745 1.8113653760894146139 0.54790931596324365938 -1.9353963518776142738;1.1903770236292436913 0.10040234405325006162 -2.3413295982497106529 -0.98116445012703157325 1.9904979561115345721 4.4454489859230736926 0.39006885704192301167;2.3009859462080628489 -0.48350184095505982507 2.5193190642294220893 -1.4194452088139828394 1.4167598349037568983 5.9812334208606499075 0.21899061027888791497;0.39230741354789733233 -0.29376386380671704046 0.51554293728304978472 5.8100961480891273325 3.0456172492934934226 3.4238026991758894191 0.17601951482244113101;-0.1783999116911982874 -0.057776156431552212756 -0.036041534868115884804 -4.2518579269274177079 0.84675095233656660909 0.20307872558898934501 0.39275377077021517147;-0.17576454115513756582 -0.69783572845415176022 3.7430260334664309241 -4.6473461808505600601 -0.76238921732156916811 -2.7074291246564654578 7.7117104565074434674;0.086427712774608131396 0.71735221467597487521 1.8911602664638680338 -0.22101770204201204306 1.6561407560991809884 0.3212179254001695794 1.2387688289755929283];

% Layer 2
b2 = -2.8381374281490083789;
LW2_1 = [3.0710130183466626264 -0.39328292039894285903 1.6006524384618407986 4.2452190775069658102 -0.26633441308772903833 1.5817813092429895416 2.9481135671745852811 -1.5221874073941257244 -0.78591379954938567209 1.4411978978394686113 -3.4705448211014662263 2.8783644126670751007 -1.3367176854284854581 -0.10740597353612786613 0.43270131422524260589 0.98234499569690381104 -2.4707286800155530138 2.6147706979999645327 0.50597604067048973508 -2.1191029448616225395 -0.22962336398853069874 -0.066371249269861140596 -0.13605324042604466372 0.21133224920232485111 0.18992390710290885103 -0.079852044544136316362 1.1252498941440531866 2.4221653040483306363 2.023094853112551661 -0.62059619025494405786 0.57491365299314756143 0.2909482259443297858 -0.049343931777997104837 -4.0357252298943819824 -0.15006560226362947175 0.035108180509448756734 0.23742121294398119136 -3.3926763664716652613 -0.11307369893499881475 -1.0851230200092261136];

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
    a2 = repmat(b2,1,Q) + LW2_1*a1;
    
    % Output 1
    Y{1,ts} = mapminmax_reverse(a2,y1_step1);
end

% Final Delay States
Xf = cell(1,0);
Af = cell(2,0);

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