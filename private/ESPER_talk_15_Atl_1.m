function [Y,Xf,Af] = ESPER_talk_15_Atl_1(X,~,~)
%ESPER_TALK_15_ATL_1 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 12-Jan-2021 17:03:51.
% 
% [Y] = ESPER_talk_15_Atl_1(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999996490807;-0.999999999390765;-40;0;11.29;-143.241523403244];
x1_step1.gain = [1.0000000017546;1.00031699124092;0.0153846153846154;0.000310077519379845;0.0705602618858232;0.00458552991639557];
x1_step1.ymin = -1;

% Layer 1
b1 = [2.3163269245846543;0.46318615929888635;1.8689346437218708;-5.763347244886206;-0.84532474731456853;4.9151778187603474;0.89540149011068293;-1.2216251309145423;1.9319241740898678;-1.1055327172260763;3.4848862612400087;0.93396137961846415;-1.4046574218713073;-1.4060961202514555;-1.4398679332069848;0.059356915412889302;0.43187822001670734;1.4015950717957122;0.43099072607008909;-0.64886024554308885;-0.25976303172903581;2.1018487444042626;0.29597426101111024;0.71433460158770823;0.29643462799411047;1.6207644033317359;1.3739667500003954;0.15313844413800212;-1.596319235908513;1.9365910487943327;1.6336360091778803;-0.68674171620511426;-1.9095437817685759;0.3886406149909607;-3.2540412088692099;-0.92253397342996313;0.87519480664040561;-0.97454570021195286;1.9792269554901958;-3.5455000281019564];
IW1_1 = [-0.58370276045526415 0.9418474422272739 -1.011624130662961 0.36455339244696766 -0.55717940345493977 -0.28434805161693122;0.11217244444968266 -4.8697601183588102 -1.3578507184631672 -0.043441437355047262 -0.8053587325005469 -0.70149212870559197;2.118053035500342 1.3725669344980436 -0.25613783649898886 -0.37315505298404628 2.534239572959216 0.24679445801104352;2.572802087393542 -0.056984338969750824 0.67166267494286036 0.1516130941722745 2.3152683819979436 -0.20608269944716179;-0.46554636925446263 -1.5277061292354654 -0.78735100841804828 -0.14550724295349712 0.85053212310438353 0.14344815187113563;-2.4363261955824913 -2.1650885552174066 -2.798216014062668 2.4819557208837963 -2.8465064861845693 1.9664667966247018;-1.7377947861693535 -2.5997073879855597 -2.792494940548627 -0.87189911389825647 -0.21034448929238858 -1.885094192372379;-0.50820024330480829 -0.1969732172592461 4.7230739199051595 0.56498764425491488 0.91023672671407785 1.51405599698925;-0.02810509374755998 0.94391368040321799 -0.81629053380091265 0.37543948368178492 -0.44994778984576905 -0.46591579808352629;0.99246857585135029 -1.3657324299708298 0.8451560471111409 -2.2997868004205997 -1.891050915925043 -0.5794720528171533;-0.435282503885839 2.1140142321068391 -4.0698112128357957 -0.54891139110520304 -1.2616439398990615 -1.4904874495939897;-2.312365702387833 -2.4057561643579342 0.95087977574745586 -0.90512282121142151 -0.47706526808780336 -1.499964913705182;0.99695022060322069 -0.52670723748517811 0.95631963630390437 -0.62341516337481151 2.5960350552409737 -0.68896611045665035;1.0672353842750275 -1.0611351733167693 0.49394099660716162 -0.081682142043509431 -0.37674166370048623 -0.057005677955834735;0.12301392154122809 -0.77042554431559951 -2.4283980694894325 -0.10201042175003912 3.2931892615037612 -0.23762572628779943;-1.1385275826478496 1.2626597218571041 -1.9419293195886878 0.001947851757874993 2.8490476291437772 -0.1332948847483412;-1.4014728259610001 0.89028733190020071 -1.1365258872202526 -0.11625858266624514 -1.8817943871603202 -0.38571980106078629;0.28681005519112035 -0.3473100969600833 1.9494128374882169 0.2720970107628547 1.10909885126991 -1.0275807259779275;-1.4419353121386651 1.2417561907934382 -0.60304896340349057 -0.08147258648393145 1.4781210752586333 0.50628997922008101;0.83101432637778716 -0.094619132467528108 0.60373544221903697 -0.3043604067724473 1.2493835138681879 0.12104819140109893;1.3569580340669056 -0.066215794134620573 0.89588577906424305 -0.062565152338756397 -0.66764872725659707 -1.0454604671240939;-0.6729397606852614 1.1771560010055013 0.23863530382939163 -0.024034702973427007 -2.8536385302376477 -0.12453360265103668;1.7898474744338095 2.3562882450451506 3.5063237066835296 1.1433763982589922 -1.9702178707425639 2.5316706597584946;1.0135661804635423 0.39715979350408265 -1.3082276714968257 0.3783435575218988 -2.9230071809270672 0.99466664977088015;2.0037955326636552 2.0102428960608525 -0.79647364099793316 0.82287467894001343 -1.2538892736524918 1.4144865383052097;3.4699479071213708 1.2488666614314166 1.2012337235308261 -0.42697116854533584 2.6244533130811729 -0.091643094891963331;-0.16443481651624584 0.92939260928373524 1.58199699891422 0.08964120261770972 -2.4630773334833758 0.051155355699005804;-0.76868488177532668 -1.6545107091895608 -1.2492051580757979 -0.3089398263478661 -0.6212191742465355 0.055355231052520291;-1.5259758367192064 0.62672142790706031 -1.0136961331982237 1.2004126467013532 1.7232838477600905 2.1494360041055236;-2.0670538249429606 2.6339821072016942 -1.0185445172878467 -0.16779331073439249 2.4096205030231217 0.076881409606611398;2.3185538107542039 -2.2302509886181698 -2.1591461076946614 -0.67603656607813367 -0.17376187487652922 -2.4994698433059392;0.61091129286796353 -1.3039530367275556 -1.4445167587373753 -0.049308165055788084 1.6299869798221909 -0.067268230196978127;1.0020080191497367 -1.1768049640016434 -1.7818472461929427 -0.23968648011156896 -0.5297013921375372 -0.51101410239342993;1.3575231190516541 -0.95122944721667324 1.5865800223158162 -0.044182727378688232 2.6055959998216882 -0.02376369768956417;1.6691784537073424 -2.5892121691297314 -1.9708388489676432 -0.24745325427655804 -1.1016877829632363 -0.449843336702268;-0.92749751850890716 -1.0344879003418959 -0.45111335931995966 -0.15671767700362296 -2.3615097898515214 -0.1127475302540976;1.1607346010522868 -1.5248874405329755 1.1340636660043657 0.3343547214897083 1.7392970358908084 -0.28083344727139908;-1.2538578321125591 -1.0688163360404181 -0.94538926463476203 -0.064820991025452607 -0.97989141952374725 0.63488930155137446;-0.48560411717076524 0.74312937524448586 1.7479401880366066 0.91295044643247347 0.034151269787431722 -1.8520104637387407;0.42663415814124539 -0.11435597553919223 -0.45470328572389024 1.8711144900598045 -0.10530227222668936 0.50075374660345229];

% Layer 2
b2 = 0.92505559247407565;
LW2_1 = [-1.6253257554342073 -0.030754899556712196 -1.8235926301352405 1.4271958865467069 1.3208673157522344 0.0060076517553487047 -0.10994020790805924 -0.11647448590723619 1.0948476682048656 -0.01957437565342823 -0.11396045219542811 0.10864657097006729 -0.52910356521595814 -1.9361263350610733 1.0632509584314895 0.27329872744559525 0.8135573621972122 0.24580459852567488 -0.53200967861029558 1.3831491170623165 -0.18033663797734731 0.56879746410931054 -0.074555036439606634 -0.11570376704865441 0.15475205117762766 0.73920827280041079 2.2319878497933359 -0.48332422097674516 -0.074164781986278877 -0.28430023144441191 0.025911517045628787 1.1806685696257895 0.28118969400105276 -1.5712532778739676 -0.21190862772513766 -1.8385324785671027 1.4566680900384052 0.36490757078146824 0.043090999958587881 -0.16804332103578101];

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