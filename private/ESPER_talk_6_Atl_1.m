function [Y,Xf,Af] = ESPER_talk_6_Atl_1(X,~,~)
%ESPER_TALK_6_ATL_1 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 12-Jan-2021 17:03:46.
% 
% [Y] = ESPER_talk_6_Atl_1(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999996490807;-0.999999999390765;-40;0;11.29;-1.99149636107278;-0.2178];
x1_step1.gain = [1.0000000017546;1.00031699124092;0.0153846153846154;0.000310077519379845;0.0705602618858232;0.0604107502911417;0.0479365703301392];
x1_step1.ymin = -1;

% Layer 1
b1 = [-0.36276291092010321;0.97933156609893379;20.293757572278743;23.060698026436512;-17.008709649472628;37.518936663689956;0.75077112762213205;23.112027374885894;7.4934067389410037;-21.794495884810274;18.252230546343469;1.2054513465701029;-45.009576499924847;-1.6779553442595201;-1.6536439107266487;-82.072989783578421;2.474422419265017;-1.0023115556137561;2.8701669444449833;9.252875546915762;-17.969005757661936;-1.8174056401152723;2.2717792767170759;0.64299544267050213;-3.045730010040915;-3.2418320023897089;17.347206559124434;15.890534398166698;-2.4975874921901702;-4.9504044364784123;6.5252882697856949;12.187730487469526;0.6848795028407999;16.357987162266195;1.8452834013002655;14.365285261814943;1.5073783128693869;-4.2173552813431403;10.257470812518759;0.49868946670285752];
IW1_1 = [-1.0143920315322212 -0.16366585339834189 0.37003190569159816 -0.058486582565414093 2.2782684739178141 -1.1049147408604527 0.33279341260545897;0.052571360846935207 0.35826848232550484 0.16369606929529121 -0.58829814144352033 2.5452597569850695 3.1952442840096076 -0.24424587669847542;-3.8871791321002211 8.7899206776474976 -3.2030678998058297 2.5631060620851862 -17.634614214255159 -2.1085819775658967 0.035683914969085115;-6.1910721509606725 -1.6284099770188696 1.1987198746950778 4.2011685450578344 -19.627153160495801 4.5516413423591633 -2.990299754754326;-14.138616236082244 -7.8681583439023415 -6.6919677388025871 -0.67876087340387348 26.001861107390503 -5.7723525411396359 0.14601803163307633;-10.047255770581589 15.502946592843703 2.6701081777832814 1.6709472105747858 -29.069280521801737 4.4318240643050304 1.4047202168872708;1.2493663142310416 -1.7977816752597235 0.37054756405210482 0.5146344564591826 -2.7925247775048399 -0.1540068257697885 -0.53797488928752246;-6.2142510244130413 8.2526261855527174 0.1505403577016638 -0.80431299725496974 -19.788104091513151 1.6452013240613268 0.19798966898777653;-1.2361972984292466 1.2300808341301863 -0.2514505051310173 -1.9687097082117657 -11.525434391337198 0.45814196683372521 0.68345226777688128;1.2391657607859738 -0.15683659234282502 -1.3976812306636286 -1.0682618772428421 26.4117003628429 -4.9746749447316638 2.4212202920278085;1.870140450584628 0.73186878359180385 1.7116581933946871 2.6359700285453798 -19.379475057454229 6.1755390881496366 -0.11723389289880655;0.041794781217854689 0.37560347359495871 0.12463717363179833 -0.58655676359816045 2.0478689458896113 3.0727784785226122 -0.1740333032454511;27.833856262683099 12.059836761897047 1.3286081169934958 -22.534230494335503 28.019422329853821 -8.8073196679047658 -56.847226431346968;-0.87105495431830038 -0.98922628203953078 -0.42787979366360351 0.7173668850219449 2.8346791249480678 -0.42457649220825411 -0.42283999002335038;1.4844430235331336 -2.1815238157580663 -0.47052956381236555 0.0063867099958538689 -1.9051952285432687 -2.802398064423965 -0.95912728729692576;2.1951063346644513 11.659488403721671 -19.260289913241685 11.854671738379526 92.275229613455366 -39.186925032742984 -29.878397330694344;-0.83524456189278884 2.4197118120025891 1.6212652726462882 -0.66714180256573796 -3.7416895967815917 -0.46421928203030133 0.19806546306048115;-1.1717543029153081 1.628518296625211 -1.2320240685479236 -0.012823698198231261 4.8435143365037883 1.2926448182840309 0.16013698903510998;2.5823168552121407 -2.4101977579820724 -0.75875144816600004 -1.3092168108164117 -9.3793529703734624 -0.49455774434198174 -2.5310521327566811;3.9119396974995451 -2.9767076585410912 6.6267712676654984 2.212695535988578 -13.171651196515336 5.1557850455652634 -1.9425312118577873;1.1859683349457688 -5.7946760182889117 -0.96905071484988525 -8.1118777020888917 5.982443807276943 -18.25367666739692 -4.4002917642235593;1.8526277245084415 1.1906631908466363 4.4344081374395588 -2.7315206518003463 -2.1010970387602148 1.5061691084133364 1.2488239097813161;-0.77602324792365707 2.2821491984690581 1.6791136748790345 -0.65651649316156635 -3.7038555544725185 -0.5301843118126528 0.21177903783726834;0.85109808100427131 -1.1187371127379124 0.2869015550298315 0.44435070656362829 -1.3335592706020591 0.23541806141124585 -0.43344439000493939;-1.1187022745743254 -2.6129183161439253 -0.95051323041036673 0.37345701781229407 2.5380191380319328 -0.5432673370865656 0.0023947720906966619;-0.11326365697605871 0.37424909839536469 -0.061740186999233254 0.44454809625341785 2.4684904652162913 -2.724248796624487 -0.3091319247934991;-1.8449520741524776 -6.1315085281586734 -6.0502300843258476 17.489859175262012 11.269512846850212 18.48017427837377 9.2802635583425239;0.68706673123071627 -0.73566555082119456 1.6204382204782535 2.2571144411736781 -20.557349360433321 2.4372654049388554 0.31597877227537269;3.443028904072746 4.3330894835750629 0.42972014584904838 0.1129238829174358 4.2404569001360102 -2.1614148244245728 0.24851539457034322;3.6215135509924172 1.0101038517716523 1.2394407703865618 -0.90645517737939341 7.0217755249772225 -0.73024496264424132 -0.57600927342981345;0.085748348256803927 2.3349359158031193 -0.19733298329582127 0.33011272358589949 -6.6028742522648711 1.9069380025131097 0.23801999946726879;11.179058943675241 6.2269713565929159 -3.5745182055214828 1.566525312574125 -8.0695269206957203 10.577946717062364 5.8092216654549524;-0.4544731938980241 0.11474176636811347 0.11272304406904661 -0.18221319325926297 1.1930440899585122 -0.069263533242163611 0.24631318874088695;1.5479818034128645 -3.6606087916822605 -1.066007474791091 2.2989446094111035 -15.44843898121902 8.6263328082428909 -2.9297999624844047;0.49232849009159185 -0.45070564135438163 1.4999702333537559 0.29727134523953985 -3.9664727782467191 4.2886327009698872 2.1790447377655888;4.2060063245155934 3.2992901675251325 -2.6025754892537187 -0.52886899687188926 -5.9288178949824699 4.2279522222309716 1.5363175473141877;-6.2904578310731143 5.6109326003799014 0.62084920542105093 0.97558168608689655 12.287978112668599 0.06448351687995181 2.6342291513397162;-0.26053134044507126 -2.8590794938285624 0.59639782424142507 1.0598803086853781 -1.1368036698079922 -4.7070238565865328 -0.83280225033885968;-5.1727220398000773 1.551262365053691 -1.9998036018458556 6.4044419903357088 -10.11302021023212 4.2011551579411233 -2.7260319024447099;3.1878692226436689 -0.22380575410577788 1.1518257350523264 0.23170259852744279 2.3907070251249714 1.6644194913607906 0.30808853135305886];

% Layer 2
b2 = -0.83879933400445039;
LW2_1 = [-0.19108005412665122 -1.0981977598635391 0.0065592265578022684 0.0037468947029982709 0.0049473927157438887 -0.0088178493531743188 -0.25342033033217298 -0.016489571117354 0.037358005591889711 0.011604369983061785 -0.014140391026360801 1.2137325249627424 -0.00069800654924438395 0.10514517098824563 0.071099575431926978 -0.0020422044521733167 2.1604923595105969 0.088531618756446065 -0.028500291029995035 0.0046662981702611161 -0.005150295566461985 0.016463247869257108 -2.1228220384350962 0.43135325051945317 -0.084186128620938813 0.1493783040195418 0.0016718932517886984 0.025560295399043885 0.0090641517802363993 0.034613185541557435 -0.07396990796942135 -0.00050674009485997002 1.3680307221611561 0.017518527830897964 -0.043432884285630843 0.042076200360484782 0.012008966843695868 0.018987848919096873 0.0049504766666946766 0.046609966430626509];

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