function [Y,Xf,Af] = ESPER_DIC_10_Other_1(X,~,~)
%ESPER_DIC_10_OTHER_1 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:13.
% 
% [Y] = ESPER_DIC_10_Other_1(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-1;-0.999998793562952;-77.961;0;29.715;-0.9;-0.1386];
x1_step1.gain = [1.00000000274156;1.00000063368067;0.0138606862425759;0.0002963841138115;0.248478071810163;0.0419287211740042;0.00826143816767911];
x1_step1.ymin = -1;

% Layer 1
b1 = [-19.590625736676258839;1.6904381711122178356;9.3955757796766654621;-4.4793580164412594158;-5.9828377829993888426;-8.54435188646543331;0.085170061264413163271;-4.9989066852381176531;-0.11311371883390922144;1.9522677005620259205;3.1970358100749782793;-3.5889979151645703404;1.7489268911894422232;-10.474970577392271665;3.4094126277177840834;-0.93603854539995301476;-8.545112903697956952;2.0466837894143368182;11.346490964880677765;-0.35256629620454077445;-2.2314412945727113424;-1.6195165654274548128;-1.647565520908512271;2.5244117444224780655;-2.1420165899665826181;0.25071931746129494378;-3.0675570535845366749;10.171727889664042621;-9.0450578978703912725;5.4568532705837657915;-2.1454001883599458367;-0.75950210358409342426;7.6630122060020573471;0.74697921144354095802;1.6839779756121173726;1.8281644200406954592;-1.090019372735063552;-1.326233628299434919;3.1574344350997232134;-14.861022227708447829];
IW1_1 = [-1.4191413539707362634 -18.211293495527712594 0.084626248105999168914 0.085245573725334852777 4.3826189770917070021 -0.69682701295539140052 0.085301649454678732387;-0.23599307461358495774 -0.17217744994377087719 -2.0175622327231921282 0.11654572486180091173 2.0469758231910972768 -0.40230239228925385175 0.71321260533964458972;0.18605157647716438762 1.6215004963892218903 1.5845504528136624689 -4.0946993131349396222 2.0587795037692337985 2.6156465231369732116 -0.0049963492200024439693;-1.1188987631502227416 2.0021496340424418392 0.81656258721715868631 -0.32714372720843482023 7.4281561381371785657 1.106965065528995984 -0.056679346370738660499;3.0888446290960338558 -0.022831444110119562124 9.7984450205055093619 1.6876119311859751893 -6.337471616261992402 0.60806568418040951585 -0.32323491629515871404;21.707158737232528978 -2.099806202396766075 5.7034807552409709785 -13.803545074412424398 -9.7615596517388638631 5.5544358626749996688 -9.1613275438630950021;1.3177633598784523894 0.17567055357086522327 -1.5497047390700162683 0.55269666881976264872 -3.8597057320521006574 0.58909293194575251817 -0.44070925156661017175;0.059765793065284240904 0.75821687369555512692 -5.7290638482304192536 -0.75704661935851769172 4.2167741223362389391 1.1390311637235044362 0.12908023412183450285;0.29779115386203219851 0.91583936113378205945 0.41467274834777928527 -0.083872177728710695099 -2.7920291485855268654 2.4801702012637742989 0.72421977770814460751;-1.5644477235165539231 -0.29250015943820195652 -1.7438797041015550171 0.50305361621724609122 -4.7202098122185782714 -2.0188966122710763074 0.85648387683944193771;0.048757278518799511413 -0.016117617544876613328 2.2016391069296674665 6.8554411453031862678 7.8792025716740843322 6.2456224430689344373 -5.5616919011902492542;-0.024306143951961598632 -2.189586593511072099 2.404411463876386712 0.19854957958126248641 2.9813994849817251342 5.4823738465682039234 -3.1959788214290827391;1.4447301910179768392 5.3853633611361164668 1.5658896027446553845 -0.70541880945413615311 -8.2684690048541167329 -8.3906666186266960494 6.8222411444458099794;0.0081836283023711681173 0.11214748626481081673 1.3095959429829773235 -8.086774207178105911 7.6382457662107121621 1.0768385302274989801 -1.8463402720453603312;0.85796683446741106582 4.0710806527372991326 1.6462812562966897545 -0.29620870358373341258 -6.9290913756850969207 0.17076761099382992137 0.83805801468343776861;14.036145122760718351 -3.0423974536922546719 -2.4730877953859828899 8.5085174726422678759 3.0446785442506207886 -0.67893337621002769477 -4.6281648806159791931;-0.0063009389837002391724 0.55044865435178647051 6.7411041117425343216 -7.4568259387547000117 -2.2691199680893534563 -3.9013649843575000098 2.1287606943064369958;-0.04127158067952257231 -0.14193135577325610708 -2.0833635441955076217 0.57976088535923397949 1.1663391151157489478 -0.24328095366551291678 0.71060469429901595984;-0.18563352749745520853 -0.55594679148036829641 2.2927997004925289026 6.002184748705595041 -2.9408079586858586474 0.38975815395597174229 2.3380865197325713112;0.12691526613168713222 0.075463836874445314185 1.6225879994418757057 -0.65253926858558941593 0.97156556599501120441 -0.026934058341183796798 -0.51935127567368954971;0.31634108563367668854 0.45808956994451466294 2.4387131440347160627 -0.41789027052846411392 1.9040776276349256069 0.20403954026377513209 -1.5668300996202277897;0.043702654599042302375 0.15010448490402497623 1.4837373740094961239 -0.45583088842723379353 -1.5280868708110595389 0.29190053696353768231 -0.39077750425374463417;-0.36007558658457144984 0.33110796002459902398 -1.8305823045431406371 -0.926194315695894832 -2.1637208776666203569 2.5213726043104420782 1.88535537308524348;-0.37933215768993849837 -0.56950774240822643613 -2.9517881369276692816 0.32047484800080972001 -2.0767720568687519922 -0.23456652698329871765 1.9797369512517535295;-0.088841204388058439556 0.055614923525052324671 1.9266941414336100635 -0.85951615105416279139 -1.196251727711213908 -0.17938458668331958012 -0.58601281351385847707;0.023251161796580564756 0.13776308992190011704 -1.9634750399067855131 0.098819956604293240909 -2.4355454125934059562 0.64030099316716659885 1.1717636884577113943;-0.001460328395213961487 -1.0948912761465101617 2.661442152880720613 -1.0280671228973168319 5.4890368802507536472 2.1171059550813704497 -2.2170957834208580017;0.0014581189837346811723 -0.13093278722151999172 -1.3135354274942845354 7.6958101395330524852 -7.5951193545652131434 -1.0446179045146577469 1.8953079156318406451;-5.2077291023723493169 8.3865931155215260873 -4.1702670385719260437 8.8246454779271132907 11.275098577791521137 5.0004358491536811115 -10.280122463073830374;-0.2488843120232927808 1.1148096023370666074 -1.7268076553407034623 -3.3496795191399573177 -2.99182623990890173 0.1242162880602605407 7.9692191993415706364;0.15921092113288129455 0.20695678477605092271 2.5474215711753713798 -0.28266346164466937818 -1.3789482181149967932 0.40860492004907633667 -1.0337368454315536415;0.19306865873745696072 0.11329941994327438759 2.1970279708944624453 -0.82188953420075416822 1.8544667281946898285 1.7069479370118461059 -1.8382979224193678469;-0.094915047370831659435 -0.065925141594777858511 0.26232506226827917439 6.3529553955268180943 -0.7758699672371736078 0.85303965021054894979 -0.022689482709693471058;-0.19738268218911225738 -0.07646943310708367858 -2.2887238733828501047 0.71752611987277592487 -1.6890997065869395311 -2.0724677840778729099 2.056047240801404552;0.076113012297610818657 -0.62993668035481564793 -1.3016080063236621367 0.36230593167163632762 1.0867467352506359202 -0.67899952843758071275 0.32722097866187271897;0.15077429710886264269 -3.293446830354871846 -0.82758777809031536243 4.7972572729062541441 -3.1419089281352499121 -2.4390418852020978591 1.4741523627770620752;-0.5612405516019172147 -0.28153651491057796186 1.904937168396813929 0.14162564703847407843 4.0089952304042180131 -0.308128397401635723 1.4356309140367258248;0.44662878369626168862 -0.0039551062757015760518 -0.69551041627499243791 0.382342879023362614 4.0729156727354673961 0.31888148106187663711 -0.23614366629296329458;-0.00047875570495362686522 1.1627796845855113972 -2.6561507484020179248 1.0851494287415239803 -5.6604893302832302027 -2.203013248051395756 2.2530143786386549465;5.0184130968905966697 2.0831711449465908359 16.306245038216829357 -13.691800842548575545 3.1209366555923163666 7.0270934522667793942 -1.5274630970390652429];

% Layer 2
b2 = -0.62875809966172480081;
LW2_1 = [0.072302046071964345964 -5.2822285690235917244 0.1427647067432616379 -0.071866997942127253118 0.18242048993729373385 0.0077625727161483035546 -0.1100546507502695448 -0.043451064095643393559 0.051051540110657558924 0.061681501336240396327 -0.040594854610137814932 0.022098711153607526053 -0.010943920652306709726 1.9633360689165277879 -0.019125234748877031205 -0.0030517880451460120857 0.067064256908126576584 -13.708591210405945304 -0.39201166167859946565 0.92432223328792495476 -1.8159147476704491364 -10.287397476065402557 0.059781222627178408346 -1.2802529717003290344 -2.8092379188466112261 0.37227818010630375767 0.957395892748234556 2.0176067877206507184 0.0073942554198862869494 0.15916599188786922925 -7.5676406295599969454 -1.1549748926583860431 0.63997054086793592198 -0.99336948068556663038 -0.90448823103586484251 -0.011459718356067629189 0.092716214367183191758 0.27484755403366367688 0.89747931873930286706 0.0095642240525207321972];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.00314743155299998;
y1_step1.xoffset = 1774.26765577007;

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