function [Y,Xf,Af] = ESPER_silicate_2_Atl_1(X,~,~)
%ESPER_SILICATE_2_ATL_1 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:38.
% 
% [Y] = ESPER_silicate_2_Atl_1(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999996490807;-0.999999994516886;-40;0;9.1619;-1.99149636107278;-0.03;-0.28];
x1_step1.gain = [1.0000000017546;1.00003626070655;0.0153846153846154;0.000309885342423303;0.0656325902039552;0.0604107502911417;0.604229607250755;0.0470499670650231];
x1_step1.ymin = -1;

% Layer 1
b1 = [3.1121070621437421089;2.7688257425809665868;-2.5981444627439502781;-1.1054124020714994892;-4.9369957075134971447;3.8835414737919529138;0.91269198592544764637;-1.7251142716125782428;1.3589508736850426374;-1.8318689064709632319;-1.1513371631037785381;-4.4132998137280967654;3.2598245716267690852;0.37524463091251852864;-0.93622715078069018713;-1.0428608899335629623;-2.3807818534773823593;-1.7771405979454453217;10.338781451920386445;1.5679604244695699578;-1.4721128354423089757;-1.7338285904810835092;6.6769764707378822521;3.0166508870239372442;2.6480882750063123865;-0.055493370620495960366;5.2670501397749651673;2.6925088679188551311;5.3583601720225146892;-5.4794036177297558154;-2.339189212528750339;4.2859700075848969902;-1.8931865807066294849;1.5153387749199602741;-4.169515887877789595;2.5483376856765835861;3.4698382278560493397;-1.9175573782365968878;-4.8399646822211757069;-7.0038388168829586178];
IW1_1 = [0.24218053235222727904 -0.23492001600278122897 0.35004298832486330229 -0.67298904780690849137 -4.7872215292064508319 0.20320021483162709064 -0.84847316972563047166 -1.2895646558438136342;-1.9179945225420789168 -1.5411180858100999025 -0.53699385901684437705 0.02006460891165837146 -0.31057087981053121961 0.21052284323864028925 -0.57821091811048241915 1.3448155708723328328;-0.021973476162786005628 0.0074715852407740970462 -0.22255110430871102856 0.75123955800314934361 3.8819730318423766313 -0.3033311973669317041 0.77214304359090357721 1.2400721495904258873;-1.0198374972025887608 -1.0841373888216916388 1.3385025933534242526 -0.80799634028148314968 0.23760212348755832545 -0.40427450184844737624 1.0142948468628165681 -0.76114919064990116393;-0.99862941285141837433 1.8822379548815058037 0.53898672612231113277 -1.9285582400872154363 -2.4095698100361517824 -1.2023573073444810966 0.54104522353238193588 1.4885569877237667669;-2.2914944454413559427 0.15197669712120390195 -1.5158780853035367375 1.4639258779130566168 -5.5795000128384675264 -3.7784426948513503142 -0.77093164843256967167 0.31419137913799061179;0.383275451723627536 3.6139679389661876208 0.61187098843805909354 -0.0036687947307064176436 2.5335611718660051572 0.2629390669458644969 0.44083547488464619457 -0.0061509617712292297131;0.069687488935948713187 -0.59504593748862477653 -0.60384047106272831229 2.5368024036643568309 4.9361865860239628745 1.2779295780458410636 -0.6108271919791848914 -0.029709597307605715988;-0.097192788750282380072 0.12483442767716562694 0.076479103142241058877 -0.87383676046172065188 -2.2435659986069254046 0.24945154566152411002 -0.69295564313956281577 -1.1958610441116301892;1.0909756442454592307 -0.9277899250522294583 0.0080078876855191570561 0.64095953064365129848 -2.6300476525727041199 -2.8934669247143216531 -1.1456036590256339913 -2.3265894458129379174;-1.6822568559301418478 0.63748880079708480917 -5.0827457096151773541 -0.45650688891865526253 -1.2002859566032750838 -3.5469953892103811555 1.0055418078548814531 -1.7067438124456695281;0.18683446160660291402 1.2603014292131731189 -1.4722667305694820961 0.24364352093094854279 3.5235169051695489628 -1.3025280910726175776 -0.17208393250807668684 -1.0392298665675450131;0.6639163799436762492 0.64731219321141131307 -0.26229111567638724312 -0.47925272956911268984 -2.577670470158416105 1.3796823187902418351 -0.97966497852135547841 -0.78068770587975078179;0.055134628393980214534 -1.5155730722140077216 0.27927813627091074844 1.5034824151549401883 1.1530777300852905753 -1.5037895688984976861 1.7870795818892397655 -0.26791053676473086664;0.14830949814381874652 -0.18943297073085235693 -0.19021280684505442737 -0.2362039369566832081 0.85138897400667989945 -0.03711867834092843349 -0.61113830048426021069 -0.87711153602253089101;-2.6342039302936899325 5.9664856445498681836 1.0962834014061448862 0.2791348654241639915 3.7096493419382290391 -3.8150628643618791358 -3.0647082835227976716 -4.1503406090902306147;2.5801098093712759862 -0.94100076709065272329 -0.46410689072523336751 -2.783236554544749719 3.8190413936050533472 2.5355706064083811668 0.71461587534004133992 3.1249849032952834449;0.24999879149875373074 -0.45721519139497968087 -2.2851686238613555524 -3.3565473459813945922 -3.9575243128561901074 -5.0979744141321301498 -1.0152426223409345418 -1.9690174466333656422;0.0096029490855233812924 -0.31617908570370123478 0.20181336400736171743 -2.6722205543562655983 -12.431156063812814239 4.4165088329425836733 -0.45527614524774762117 -1.6935284167995849902;-0.57179285281625602533 -2.1538312624455482336 -0.523103231043195116 0.8365129483584498038 1.0227187158874093686 2.3424295487603896682 1.2273935887760025754 3.1016689494231397539;-1.8244345585767156592 1.2618945844830429248 5.5922447016733691783 -0.31762458534599141702 0.24532550731270810762 2.1778146472237889242 -2.1307341196950213558 3.8418014749501319116;-0.79866946089381674057 0.061669139275752404838 0.11045608660316373617 0.99827576175741172815 3.2006065928992253333 1.3227271389365684584 -0.21441125555234824551 0.51144659159970518036;0.41782904884692123604 0.039176061056324158749 1.1528873603303906314 -0.31532365792381866765 -1.6542856955037670286 5.7719844484334856816 -1.6725961703817788795 0.088619965045655627045;-0.70033525986144540276 -0.96824196698911724202 -1.4592729450262311719 -0.50368360974958248377 -7.8373784461410576085 -2.996769945708328553 6.0491986536647841532 -5.1535192965370875129;0.82449433257377879869 -0.69873751650307580618 -0.91004899988767851138 -1.225991350695180504 1.2592442153695677654 3.4454165225890878155 -0.86044811104050755723 0.36719062427103998925;1.7162603706470396236 -0.4675934965269678556 -1.1530250815834799383 -0.81296643856300632169 0.98755757321193016196 1.7901799748061699713 0.83457258286401059255 2.5969620862393636429;-0.11889483430768360561 -0.90641600403861632973 0.32715170690238959406 2.3317704340834501942 -4.6450350985699504491 1.5684400334751942285 -2.2899041857778388298 -0.43460820465579713678;1.2315228647375238147 0.76881387454884897448 -1.1266273016164773946 -0.1506070940500505162 0.57897004026279075273 1.9732586343897637882 0.46768090098441361668 0.00024802304688884002637;2.2011797493074496401 -1.4672693269047687448 3.220358885613266775 1.2024608091877155847 -4.8905216201823940025 0.66478999774106439791 -3.8695481036850170042 2.8278560116459638962;-0.81999145106071136269 -2.7942202376313485246 3.9106879353885584116 0.39156046484356366033 -2.8305651913372953388 -2.2362880526776360846 0.93312586508700690047 2.46356290892789076;-0.98004352723761745114 -0.75780264828118393261 0.67914282578550266845 0.96313201906702239352 1.2867122220156996804 -1.4499729594776256114 -0.54247021851543120174 -0.071341085690677666364;1.4557699323701120964 -0.35787488299767067357 1.7236060002306623495 -0.67138695975307116637 0.84942727689998809293 5.164120132877371816 -2.710358883138976438 -0.30980700653972770287;-0.2381069496547998654 -0.20383000779615914611 0.27924992488211086705 0.51948008458180083835 3.6683600321296578883 1.9539653074486404982 0.45085538668807029206 1.0685481319588299165;0.10196467955538889016 0.75776195253846834188 2.849687531894296022 -0.42461358603693122316 2.8935697099981272373 1.423622910134577646 -1.3680369572767356878 1.8704242750951032281;0.28308472929126821116 -0.57736153305791593215 -2.1071224318204819781 -1.37470285515489965 -3.7207251362901647695 -1.9800220356240088027 1.4333423558834856859 -0.15258789324334906534;-0.64914384763241350651 1.2117789793800952669 0.88485824271530144625 0.26448381834634238086 1.2592147679046057362 0.46428064317837364205 -0.28175525205323059819 0.3226569291386195415;0.94372458602835762598 0.57967834737081425089 -0.13717522901660403334 -0.40388701568344709258 -2.6448897145159118161 1.5926157382250314409 -0.88044439539101404524 -1.1904860758359747663;-1.2097750697527898112 0.089273233741460567003 0.094055834043352257168 1.3053845795753602488 3.7584471000119803463 1.1811850938980068548 -0.68629946494509275201 0.81539283219363756228;0.23422732219475961291 1.1448030258217631872 -1.5194258750467191099 0.25685813548708241738 3.8370791555787340243 -1.3041108112346246894 0.020049973334030409683 -1.3492301650299698412;-1.2305624250691142851 -3.3586224007210527809 4.1365194461400243142 0.42768282373595267742 -2.7758457849930224803 -2.98375779757932591 1.0548390102454245909 2.4870124162617202046];

% Layer 2
b2 = 1.6474272809926233663;
LW2_1 = [2.5533513821777695796 -0.067091238764722171961 5.4147556840566704039 0.13235506365329879896 2.3095573331471905831 -0.054856515517826422157 0.049731651423243532217 0.09198134672434857273 3.1877515045532871518 0.098942343133675017541 -0.055981024030558268478 0.80393851306812835755 1.5106080983868559464 -0.07801938442939597429 -0.93639190397321825365 0.042574931946995006604 0.041421817576392877536 -0.026072896351293478601 -0.094554980889744455474 0.076660915481032487762 -0.045494725084076946542 0.65606102925587084229 -1.3740949696005155811 0.04822336740438123992 0.16139900919429583936 0.12272990183272686204 0.09282359918108100405 0.18042296045869496424 -0.17394341175562719193 3.1107143559601246885 0.38347268572572346113 0.48735878492842232834 -0.30998394064534245951 0.39131400601610200063 -2.5509558528104943065 -1.700004774423352627 -1.2516934317823860123 -0.39542626293341498478 -0.79107933037976985169 -2.7463795385650251468];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.0145232735458572;
y1_step1.xoffset = -0.52;

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