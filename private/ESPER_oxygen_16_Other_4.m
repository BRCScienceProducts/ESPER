function [Y,Xf,Af] = ESPER_oxygen_16_Other_4(X,~,~)
%ESPER_OXYGEN_16_OTHER_4 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:49.
% 
% [Y] = ESPER_oxygen_16_Other_4(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 5xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [-0.999999984769129;-0.999998793562952;-77.961;0;29.715];
x1_step1.gain = [1.00003298043486;1.00000060321889;0.0138606862425759;0.000266418009857466;0.193068829037552];
x1_step1.ymin = -1;

% Layer 1
b1 = [0.33943852875701607807;0.25512200033730353388;1.66184616679586461;-0.25886454315162532591;-0.45609606101821614788;-1.8814689049459809578;0.52485053446175244929;-1.750967385059926551;3.6113150955830257693;1.2689120237060604879;1.0005738903517409355;-0.38454085244194163851;-0.12928773908570193041;8.5624123965171552442;4.0768176947871745952;1.3424001838390837715;-2.8233384263840752837;0.41012084153764277739;-2.9341016542318612004;4.1158179514142112509;-2.313138588592599465;-0.054891419597085468196;0.05285408620348170522;-3.3152114904063898493;-2.8535139173736099316;5.7030253046381096382;-0.4627972594778008153;1.8923465554737146643;-1.2360136676536925826;3.7197901486396300896];
IW1_1 = [0.4508028450381865726 0.27395926014167137907 0.39113343258367472277 1.2449481065655811918 -2.8099579752605734484;-0.049303075394644638174 0.10931523578250394724 1.2673399587171920722 -1.1061012413723694259 -1.5884747349765497848;-1.3297650026402565437 -4.6637451626359078816 -0.62719429656706970899 -0.6577490384889594921 -6.1073324167664626572;0.93301087596608922592 -3.4477366026296016877 -3.0086626361908965777 -1.4906005630462764167 4.3004631592087765313;0.011968305387372757398 0.054423702099185435055 -0.30234796504842609277 -0.57615436848483492227 0.28069764399764940421;-1.4241501115620180951 -1.3210615323079357708 -1.8782179697046701428 6.97727989878478283 -17.083610827861388515;0.66283879766229425456 -0.26706604241042097847 2.2605700631256810951 -1.1218758934833246155 -3.9635276449447447433;-2.1403385717784413345 0.86377678337266228237 1.603949862884904265 0.11331965212715584823 1.8223169833117351946;-1.7168911781275020267 1.7007407315560805205 -4.8532648376750326946 2.3460823852017380631 7.8072468216684454134;1.2837246034202483003 -0.40450118700459786192 1.9436370810768215378 -1.1959536699079971189 -6.1407285567229541456;0.13491282778526053621 0.80736918144829405986 -0.41485806519381823732 2.3392483245350126353 -1.3246819356604213613;0.022365421636632142749 0.037857184273623875614 -0.13228594163776408177 0.037664076627819155496 0.04500848572326843211;-0.66845666695228633802 -0.65868414967925814629 -0.82102691129365190648 -1.6759952117081755585 6.3420084351154715208;1.4765369881501428928 -3.1073868367001833413 5.7093800523529774082 8.0815766607081460648 -0.83245732645750136758;0.23128443504718068646 0.82634998982303431436 -3.5737602882253240999 5.4560363084327665462 -2.8294418510518588583;0.88492861051936988481 1.0550245270547349286 0.082326361001779341242 2.0780006498319916197 -1.4372528927022869549;-0.8376193616644284079 -3.2099551694700223514 -0.28941830238688043275 -0.24341326400606325131 -3.861319903241711593;-0.37387220868133075324 0.4240794602841743699 -0.41961078307025762024 1.2366227192574985594 -1.3551070816630699234;0.15474350255516042263 -0.2948658757505458472 -2.7796571070382256607 -2.5146558991289955642 2.012258268305521014;-1.5553235150544091336 0.36156489055223162143 -5.6967138801437489093 3.6556981905342857964 3.3733755977915316215;0.46919674532102773057 -0.012830599771910559601 -0.093347384085313428459 -2.6510414877848118564 -13.012364711292701003;-0.14763476149077300881 -0.36103624940249129383 0.34538373445673170581 1.7800194744454322926 1.9932083927470372053;-0.32389905995172030284 -0.85066807743704964118 -1.5214617066263651513 2.3735659260830344053 14.636051948225720309;-6.7130102130662248072 -1.751609453944041217 -16.181557770356452153 5.6137452110783065962 2.2949736820958728245;0.049679434093271267192 -0.24189835576515184012 -2.6229779960378514225 -1.7588038541275887727 -0.93013342733156623154;6.631309912166295284 -2.086317321299207439 0.79499000997891611231 -0.25655421627562396969 0.29235582583639463383;1.2597514743893929445 0.11610231961160902281 -0.87515399182538189393 -0.84512803959316373792 2.9497718061849300675;0.65792023115706621539 2.3743441108711946796 1.5988160667651016844 -1.7350071071698023317 -1.9322858970863692196;-0.54004113027597711039 1.4235760061954698674 -0.80160955974372460897 -0.97404109709349495638 0.78726681107477014532;-0.64693370562295404724 -2.2894504255331162845 -0.89488879586225966722 1.4864370530621251465 -2.9492763572022209217];

% Layer 2
b2 = [22.647019763414181881;-26.683505139067573708;37.686613275194076778;8.3769054100057402934;-27.413473176310990453;11.456920397287253977;-25.788081207309531351;-82.110274439024067306;55.079676426343851858;-16.298046782458531112];
LW2_1 = [10.748387773443221604 10.021959659639369633 2.2368173479456805453 0.47073540407029751398 92.378295972968970773 -1.5483807786003833673 4.41017289217998254 14.951295081425817202 -0.50471446733017366615 -7.7190639544634889191 17.156935466783295396 21.193918668639668113 5.6918081181442481409 1.3116875777798571168 -2.3138714775373911969 0.77604500981377777524 2.072677328246944839 3.1066830113132204438 -21.770236658712175171 -5.2393113943354494566 -1.734079816274774144 12.820040638321497539 0.4855376328531640362 0.72745951198770530954 18.943475378631610795 1.1267562461138402874 2.3595932434547983725 -3.1222903372632040409 -8.2200123632654005235 10.246875136541165219;-4.7189459365288408677 17.736158467077942191 78.626409825074460969 19.752693107860782362 -48.203391429848338134 -28.041312187893833396 40.041912925132173484 -186.47102004476175807 71.685014912382044372 15.358265281077805753 28.192157484568898695 33.776515743679702553 19.21774654616876532 12.080972952811505294 1.744375888786042772 90.620260740088198759 23.369861889786427867 121.59060687781857268 -41.623430791146311947 -195.43839434940292676 -124.71471060587852264 38.149392811504547751 39.094258342997683542 46.365798786697638434 -66.357594877740453398 -17.549460386284653879 33.568555890361999161 -15.269472610923070732 68.694485993908443788 45.665287847077678407;-23.809221633078138325 -34.183103068437432626 -20.991489462744237215 29.120458423183048779 2.5092810752818266451 0.21611938106737504928 5.698979549395617461 -7.6901772201323845835 -15.02913471038609039 -8.772738755304558822 16.857197476932956448 5.3189894063093046128 4.9064334170998655793 11.567676489314667521 7.3111412779950573082 -3.6924502664777496541 -12.019443697097116797 26.82040627465210747 32.106435227792623266 -22.334791207902995325 6.4255346328808702339 -0.68901777083487203424 10.73168962682514227 -6.9085967017942468971 -21.559737900380348208 -23.655059643711261685 -3.0498736806429351809 4.9882774940601439795 25.747831262366581484 8.5480319613039270621;-7.8847652252512716586 1.4272703852460535412 13.715805268653104676 6.6564667075344461367 4.1717291192048540083 29.326817461225246575 10.163045514442661243 1.3091545505185648857 13.600763784543563162 -13.264959490616737625 -58.714795326625129235 28.554818024527442333 -19.26636788989925364 9.1499648755228033536 -18.592426556718308461 41.675302334096180346 1.8622136609371624516 5.5131626094432730767 10.271786893410855157 5.2750814825676144437 -0.21165587642361527454 5.4885926103327244974 -31.460788467667853752 8.7544543051162548863 -4.5872822384542031315 1.5132232547809121304 -8.9153282472938890635 -4.5478040155573582481 -0.22100305149229099166 -11.607945686771465432;50.941527163573098846 -9.9364596972158611976 1.3758539195267771582 -20.837246078398699467 26.430803642433261302 10.116421319833055037 -1.919073540551871293 2.4705229162688970845 17.526905500975747287 22.047598402116314276 -33.84930146769282544 6.331789652544848046 31.412761135199417595 0.47688721899429381557 -1.0701615948108791354 -16.801153371456628349 4.9861429377496975235 73.251017493357863941 6.2580415516864027481 -23.327895679481642333 -5.3941203643171160564 -24.278665102623499195 -8.4816103238904645423 9.1259018836580327871 -0.17958353925577533183 -4.5843414760115512863 -2.2489838929440608695 -7.2336115237378439957 -8.5083226814982566566 7.1425252615162184711;19.710761458343448282 -11.610803582875519169 -0.79928650025219827313 -0.30951631044263500092 48.713853700419427639 -1.0866312212239257473 3.0919307831579998513 2.6585093629815288452 0.46505731856379906031 3.0935172914841175817 9.8801568965460546679 -1.653721345557652711 5.0036545377926522349 0.35017058564254532893 1.5891253992146709972 -6.9449427531209835252 0.60448911392737003645 -5.7193125196726217752 6.5372935656895876377 -3.0620611466080100982 -0.39420746876212042764 2.5546095706374294387 0.19096782153968186457 0.34764446560695555499 -9.2029733489088219045 -0.95867212620582242799 -6.0926390266206977842 3.6580812882584163859 -2.8309860076680330998 -3.4460544409845126346;1.336493757588652409 -20.203060229194829134 4.949712186178485851 6.9623023366701151105 -113.24252461226592459 4.9026280079822228686 -42.146258381848696217 -11.175263578627342653 -1.496300742616730739 10.936374839078821353 -44.255039265357659417 -19.111451051134711321 15.731245396102188749 -11.088076735338542989 -18.069623484144472059 40.727494417845420571 -6.5675177352337215098 -30.703132425027558128 -31.570039582034489456 -4.4532775927881154132 -10.47329621859267057 40.437187036965504205 -58.315625365291218429 -9.3985636038295616856 3.8518320268925245742 9.6882802756111967568 13.232257601057398233 -57.22485685614007167 4.6492406403872408305 58.57675008612839207;-7.6975489750925820687 -23.054543445812218039 20.073647298074391188 15.031089411290667002 -73.555191525166719657 -2.3740018583899771265 -6.1828058349618810752 -24.140435100718779182 52.790320902947961201 1.9918418010038174693 -8.4060317187561519603 -25.733890709630301785 -20.486345773535937553 -4.8707149584689766186 -7.7497912312027770199 36.0535647010836513 -4.13445046844273989 4.6503680003535201593 -4.0872794448364828668 -37.065357585921240968 17.064726528734102118 13.934556354585833304 -30.956197909326949258 -15.598078900279066517 -3.3241773931720590696 7.8044133369448349669 32.93401236842396429 -13.589406318548723718 -14.510729581537580302 34.050010849097077426;6.3533820644152969592 -10.601720832684167206 -0.98850027655418293282 0.85736211305967402474 72.702995206520640181 2.1079006920868237351 15.013129900512135251 10.763676452013681839 4.4308603701945097342 -11.070583662307187822 -5.4178415601294114268 57.023569272015514287 -7.1346504388149574183 -0.63215565377508897704 11.118758604270555068 -18.087642299569829163 4.9843661713522182666 16.557975865932075266 4.4571195257232343323 -9.9334032228467155079 -1.3097422985766156156 11.600310230204557982 -3.1096450275646350114 -0.57294167096405468342 -16.508036332407812097 2.1321510674298314036 2.5919901795545761125 -4.5559290832599890209 -4.561462211870969341 -6.7736482049341084632;14.324461697066567467 -1.7165911048799651351 -0.44487943201134638738 0.19773703969340905573 23.623528454576909752 0.18152871887325061628 -0.053250634712149684524 0.35370784447887870794 -1.0053570642604165997 0.092498787332536705486 -2.6528794091141238987 -63.604713297541330519 5.3065370307322172749 -0.085267641943316499487 0.12217610422724929642 0.99968898693336250005 0.54803700968107327274 6.1303253652936779972 -0.75644315449383603411 1.386431710761753866 -0.99309720469363227391 -0.26597595621182013037 0.63147379264007552635 0.0086664965730662273796 1.1720776255301676994 0.11482286628118992811 -0.58981108946226545875 -0.67228782367841999346 -1.5555883965503611854 -1.1884407554351650305];

% Layer 3
b3 = -0.21086741008359002891;
LW3_2 = [0.11853119011010813943 -0.013669044994238403398 0.048516385136892326013 0.018855329932780030833 0.0320774095279539595 0.26103740390865698417 -0.030349889333698414073 -0.027857396065111492134 0.10335493996866930433 0.29719292628849702798];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.00454442172233583;
y1_step1.xoffset = 0.3;

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