function [Y,Xf,Af] = ESPER_oxygen_8_Atl_1(X,~,~)
%ESPER_OXYGEN_8_ATL_1 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:46.
% 
% [Y] = ESPER_oxygen_8_Atl_1(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999996490807;-0.999999994516886;-40;0;9.1619;-1.99149636107278];
x1_step1.gain = [1.0000000017546;1.00003626070655;0.0153846153846154;0.000309885342423303;0.0656325902039552;0.0604107502911417];
x1_step1.ymin = -1;

% Layer 1
b1 = [-16.863884676308625643;6.3763285934918707554;8.2328586986683838234;39.44140171039036602;-3.4754064550603285255;10.511722764512764883;7.2711137076975749238;4.8952888489980246334;33.703934527024905776;-1.4534968436734967412;-32.961085117291872848;2.370829747933122178;-1.8709598645805791683;-10.300585306728313739;4.6307652320502867838;-8.1057061719086309637;-8.5487325056480081287;-19.45049197163297805;-44.168645233455407606;-15.043215558120513364;-31.596144366224375943;-22.594137109241213324;-7.1902891034384621705;-8.0869590180854409311;25.956586157070745458;-15.047006204195048085;-9.3992686914933578635;10.031916258915780205;1.3069353452351104572;5.7350306455606299139;-5.4083552323869010792;6.9708017443220642306;31.757226392693382877;6.5914012042457255092;-4.5948365255978105282;-6.7291112556605767736;1.2507462097587458416;4.4030710519825948523;-1.9221055150298651526;18.948318930677984895];
IW1_1 = [-13.833135370243963891 -4.5516808542307938268 -3.4056987571190373565 -0.5167075883695736449 -0.24865766381142331842 -5.1040685106315937247;-0.028490000369843337946 12.79011661727394511 0.90558866026010753636 -4.573866573943998759 2.7264038708354836338 -3.5408801046020270675;-1.2862582928828398821 1.1454642998116126851 -0.83942639895440807063 -0.66967112451375410132 -7.3507310462637800441 -1.7886723437232137091;-17.890210482387704616 -2.1018691124077091281 6.0860163439635259763 0.45743022300845104233 -23.938756827121892456 -10.262554171620962506;-0.047166413618073513292 0.030500361289786309671 -0.1171183781529989143 2.4771617393553344577 6.3304231968498720917 -4.263222272434308735;0.53472798064203841406 -0.57134156679185532646 4.8055594634805753884 7.6473100229272805706 -1.1244347684377677954 5.5489315200946203177;-0.44655682694478615602 -0.82457252048957829782 -4.7661079852674319568 1.549312735001555863 -11.858665238894898764 3.4125182253513024477;1.9896002039287399299 -2.7791385848276584092 4.131914325358129858 4.5434123865054569791 0.22681223013466017546 1.4627885475877198118;-1.8703977016131903 -2.2439708391549060273 -0.76578353271030696892 1.112283222794810067 -49.274256063546040707 -0.92007305719525556142;-1.2379256289440274674 3.1778775928551752372 2.6318680178656634894 -4.1892431746859370989 2.8931107372041755532 3.0823041839507441253;4.7986434093964991376 2.1508175780647595943 -0.32545104450639811278 -30.966541897728017574 -3.9632488532551319871 -0.097147764524181501322;1.0662509210074999633 6.4038388979741007745 -5.9545734947040189766 -4.9173129222258378235 0.16717288427433252274 0.32889713218806426731;-0.85941987914331863241 1.2891513480770930844 -3.653759209807041497 -6.1020548217038301786 -1.0199207339428599806 -0.063665746164812603292;2.7728003389263902179 -8.2522557675924783638 4.0912058131674244876 3.1206608727241946788 11.903733751805766872 11.645673912704358699;-0.94971016716409839553 0.11222522177316709979 -7.4860048036443229691 3.6650579760154045061 0.61011486612245313665 -4.2492341053772921811;3.8250221038505909377 -1.5577802405167961997 -2.7150551929356341319 2.3312177373929259261 6.3677208597706727033 2.4686914282271272825;0.10435841893870194397 2.8888758261750799861 -7.3991114745056414392 0.81214266495488041109 0.3237309794630467974 -13.987633433434311314;0.020005349803591150615 1.8974761217763400634 7.6946200649873928157 1.5654756771829143602 39.918503313904615482 7.5181352838081672019;-1.2124794876885767181 -1.9175225436964633552 -2.4648429859789300345 -5.4062367574269343251 47.215316268674797584 -10.814190545203372196;0.50200912324550228671 0.20909192571258142235 1.1776560980938333145 6.9402704023377266296 29.710857922860316904 -2.5751388603692952906;-10.313595604743523992 1.6190470424038252428 -10.18936276680324049 -18.904267214614709047 27.809932584422362822 -6.2631957004087235319;-2.9883428056242111737 -1.4427045935535545151 4.8590394070250431113 -0.49076459883546258434 20.941810526439439855 -5.1776125955092364705;4.2722602904486723929 2.6065560839222707834 -4.7968412499532631088 3.0773419211527412997 6.9260823484771023573 -7.7231689727720977956;-14.790666443564241206 51.937350416874537018 -22.782430759221217187 -8.9727202425987275802 -19.521458722303577815 -6.4305368199774575189;0.55734115748815304947 -2.5942079524898278287 1.1048624529384130089 26.534090724187773702 -1.956558729586401979 -2.5883909997712573059;6.8583777874190205992 -7.3838380754416546026 9.0822682214451351257 -1.7238326816636728722 14.23105243126522268 -3.8755420148532344626;0.39151539349719721717 -0.31327088430945915221 -3.1336781105281019677 0.85605602020640680916 4.2027975286428489454 -4.977224806929597456;-0.099070937772667233556 -0.11196418409514727332 -0.53363192924809443873 1.795719849989196204 -8.0428504305328853974 5.8395050128001591005;0.57631889325687657433 -0.68722335311646043365 0.71780348785862302385 3.0477157254313946844 2.2378035558110727088 -0.77164676401483078827;2.0080121862966979762 -1.3735218800109558757 8.9532065374584686168 10.975357854955564818 6.5159692250658878265 2.1424979481503401146;-1.0660466639946342138 0.64854138320246623728 -2.2378945286914864177 6.7520594103231443839 12.432760589912051685 4.0049800253037179942;2.7119667140555381302 -0.20730863816650579867 -7.3577526651044946604 1.3673853144843406415 1.3848303291843375717 -0.069650474366318160246;0.49124340018347534276 0.4233789883073313387 0.38270235360583776396 33.122838073171863016 2.9821860027374613722 0.42082200333975250395;0.49450806346179265738 1.2710787295576098099 -7.5932469640984958659 0.29952970116506411058 -8.1240490978425405899 0.17198338712098507064;8.8349187957538770632 -4.9174358002788292055 13.436543253882017979 -0.88031863822156952715 -4.2545431946182983296 -2.2145386155252992921;7.0008106269663761267 -17.496156467114403199 11.535491499851563191 13.736069123875141784 21.335829208789579781 -8.2032455105995705225;-1.0097660883971990575 1.5755517592019485651 -3.8110666787401146216 -6.3594724499910064708 -4.069531957771584274 1.2427063483501512575;0.44315123520939098123 -0.077315863785127100782 1.6874611038749254277 5.6847237583200360689 -0.59156643542934461699 -2.2931251088921280612;3.206065540619488452 3.3956555282499101267 -5.2225117600074755231 -4.1797774908795126692 -2.6196781124548991215 -3.0525157538606579877;-0.44230972427418641102 -0.19070786664832620194 -1.7640255707498950777 -2.1026514680049568362 -28.325767293255101009 1.9988157820416077026];

% Layer 2
b2 = -0.22139184489199770223;
LW2_1 = [0.12507459700618916987 -0.023380031269204081673 0.24896556748802695092 -0.04343729612606322954 -0.37236662410505960707 0.096843675402943654729 0.18318332991368885265 -0.14095695355458537357 0.07315080282173173909 -0.086195311356877649112 0.093313406368675813618 0.047516116926363587136 0.40656590049563273714 0.034200315540235830258 -0.10019030627358417596 0.10567420388012419008 0.053857171824157973328 -0.026249863753067481653 0.030392077748325193459 -0.30442524105521978628 -0.011139173455879003427 -0.16050376691534121165 0.034767740978837627375 0.0081375933719142722056 -0.070841447365882187492 -0.032442288720059588025 -0.35261075278983750048 -0.25681744076955970169 0.81977268925332202887 -0.084755606068061054015 0.034384562174861306449 -0.14220248431280546608 -0.21579276359155552534 -0.10065799042839880528 -0.026937128706777110215 -0.024357832837449897023 -0.31090862997033069659 0.25224050062862185539 -0.048804991993426513619 -0.31995927706110993682];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.00368391969055075;
y1_step1.xoffset = 13.5;

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