function [Y,Xf,Af] = ESPER_tco2_3_Atl_3(X,~,~)
%ESPER_TCO2_3_ATL_3 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 12-Jan-2021 17:03:53.
% 
% [Y] = ESPER_tco2_3_Atl_3(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999996490807;-0.999999999390765;-40;0;9.1619;-1.99149636107278;-177.232103709389;-0.12];
x1_step1.gain = [1.0000000017546;1.00004398834998;0.0153846153846154;0.000309885342423303;0.0656325902039552;0.061098595529566;0.00425400504498441;0.0145655815308426];
x1_step1.ymin = -1;

% Layer 1
b1 = [2.5696477243762299;-0.58457747768060175;1.4880389504252751;3.3344686516254751;7.889781670183651;-2.0212337171761425;-1.1814345192047671;0.42375950146251751;-3.0034473487066862;1.7361400523424582;-0.87116545948294788;2.6829707419360007;-4.7137037101191135;-0.46414748192439559;1.9827233761716894;2.9487451125602799;-1.5348821022787695;-0.36959761888295833;-1.8212957244872716;2.1099452974775685;2.8702693090883322;2.2896442609580712;5.0637658898142099;4.3644028554673051;1.7399319729386113];
IW1_1 = [2.8706149408566506 -1.4390889644692868 -0.0008998847483641494 -0.044370160783304032 -2.9565070379499532 3.9692532001444931 -0.43446656767207387 -1.3930448921755467;0.27196802698137179 0.21536087823404401 0.32829279148727541 -1.0764339911700103 -1.004719631788759 0.98850736038649112 -2.1537795373147453 -0.096424031733219451;0.6022920179685336 -0.37192777826481199 0.43085213394472821 0.41266190936904001 -2.2064313892566241 1.0913237920305316 0.53781547734991497 0.3048543979869856;0.90451574056257278 -1.061371213583145 0.97369058680695453 0.5303410413689652 -3.4823175834451905 -1.8023750490778374 0.15627821926773708 -0.35220985071902533;-0.93226204985917016 1.1550962004121164 -1.1016994347981737 -1.0096274767207456 -5.0700755974088958 1.8234586513109374 0.28327112546280148 -1.2616244232974074;1.2327497893882331 0.48599109194608253 -0.76174014509180166 -0.36829329130946248 -1.4598078030767274 -1.4808681793903509 -0.1641265060308838 0.052148172835244838;0.6055550890918997 0.80985641871551506 -0.083644517734274573 -0.9332772252067898 0.99350040452380461 -1.0832767899439533 -0.47737346810300774 1.8013624706488234;0.28512994983399947 0.88295896632374948 0.69686306080270555 0.056865799120774267 1.205484954193786 0.92581287626247244 0.27154713281204396 0.59569414349946215;0.1408652212417531 -0.51755929778357668 0.52143865181786131 -0.21923384002732707 4.1265000370474372 -0.9573679697320876 -0.32244186508971007 0.66285340804763604;-0.87807756812256244 0.95300137924817552 -0.013327184304557061 -0.10992104781557539 -1.5817939339812659 -0.098323057163586997 0.10904162801837029 0.64558087489415494;0.34860796760197127 0.35210006918957065 1.9977205211948752 0.036538522034166368 2.6839942090981337 1.4975796553553504 0.66021042675252894 0.71921379852010425;0.21349729985077975 -1.3770448298015701 -0.35451484976103337 -0.043409536433010862 -2.8923465435861031 0.71223645955061154 0.27502328760542266 0.087818162218098322;0.76188311469246306 -1.7434456145382078 -0.28964900317129411 -0.23564614749592575 3.5812762885879468 -1.2191236436057595 -0.1319564191687396 -0.30041777853430301;-1.9626734330039832 0.036636368463217828 -0.096519567397860953 0.39672416567204399 2.949350273313406 0.093411504098590378 0.66036091560110233 -1.5858132489679688;-1.7539735473672118 2.4518813308511294 -0.22899089544300516 -0.24088642868684193 1.4331998325861073 1.0451556192038187 -2.0031331782010127 2.1892278756849288;0.72259092538012093 -0.95795296084269799 1.036327732638717 0.18008199594911167 -3.3015829067804039 -2.2393701847768601 -0.51433754223229111 -0.43288541364936428;-2.6916513362869225 0.58396863399180376 -2.5433077423887243 -1.0385735608943938 -4.3123356383773856 -1.6972884166760134 0.0057151169797110598 2.1031518170300254;0.62244454195578569 -1.6613481325747543 -0.031030167170135094 0.22426048244493668 -1.8547055020945178 1.0746333620716855 0.34685877770634543 -0.0086459105326770237;1.7485837972208216 -0.13213260586632913 -0.13794113049875112 0.16232719281679758 0.31296052531379931 0.7070930423538685 0.38072566361234034 0.063318846254408742;0.007814334631404761 0.090638375354589573 0.21668547204746882 0.14183024945490985 -1.9896659985092644 1.6633704394070148 0.39893670302769257 0.70966298806377626;0.18150165198818879 0.1974921430947327 0.64274503297374319 0.16351933685184977 -3.4195446971254828 0.61046921633537743 1.2747149527889619 -0.93482591811484139;0.24194030357970464 0.62351994748303197 0.58429565178037302 0.13508373242166624 -2.445709559644031 0.59946178898943214 0.44402539872665503 0.028933381679864725;2.3130107915216005 0.24723336213515695 -0.21938351870340794 0.56486712905397651 -0.50364118621343901 1.6577461365958566 -1.1195403032626396 -0.86953210002653425;0.79408039198993485 0.98057886555316309 -0.14389194690074958 0.57565169989681575 -1.8522005567536755 1.7260927809849342 -0.41329066874753745 0.49460245363916394;-1.3571196452864174 1.970636051184927 0.011304406860692505 0.19129827470345279 -1.3795967498375581 0.87465995095822446 -0.092995118631689647 0.055709293566548496];

% Layer 2
b2 = [-8.1722021267918592;-12.818370950637327;0.42502078315970621;1.5105414755346023;-1.8588616307098498;0.15799685049159432;-0.26064995612562203;-3.2471919556091673;5.9076840524839227;24.367366636775142;1.2220651304260286;7.3543705724385813;7.054037820512165;-3.9975694909211139;5.5659659587501622];
LW2_1 = [7.4635942248398335 0.93926412006894111 -2.5790535486015709 -2.0021327846600663 -2.0111781241013085 1.3978801187171834 -2.4238633413320043 -0.37804288343491005 -1.2713470762243679 0.76383326722314304 0.26561480450025143 0.9426609485907117 1.2353229768812353 0.44472010739476764 1.3284722375412361 4.6915085644094354 9.5921572123034018 0.67720220734544057 -0.10214562576362635 1.2898339370992962 -2.5810929644740512 4.0184658088897391 12.959719070328402 -0.36730846729119759 0.68844344454845352;4.8325059132117794 -5.3581947865987098 1.2252804537122604 -7.0823935877935149 -3.5074168273655935 10.260291395346991 -0.41682379601081687 -3.7608672422337741 2.1211621275776031 -3.7540545259955596 -0.55086410816415154 -2.4497186188236255 2.2733503083960547 1.638864927850558 -0.57091574764102881 1.9434052335094711 -11.201180217883614 -2.2670548052878936 -3.3233329025309475 7.9334115149835398 -4.1868698213346498 2.1802836825866048 8.685331821347237 -0.59797934789618579 -1.7702640699915517;-13.057686783955456 -1.1473399046233435 1.4021640509483222 6.7818887042329807 11.185294698131242 10.533038403860639 2.7183427640050444 -2.5490559980548868 5.6405693748858567 -0.54868199897804626 -3.6227670240801246 -4.0981475547235435 -0.30339954341983105 8.5564791647732559 3.1095664232972728 -11.896925039034805 3.7530850077720825 -1.1083057485831713 -1.0132381545004887 -7.1373785483087113 -0.49286190175414363 7.481543102698172 5.423626685267287 7.1413064824159092 -3.6571229068902156;-0.49420713722246379 -0.47186757863360684 1.5753013586028013 0.59744729179270661 3.1160345896845967 -1.1747880682942882 0.28082618877545229 -2.1829995961033863 -0.61058261022891425 0.64660267964659901 1.2056739325480212 -1.2919660923166487 0.64441175284249508 -1.0396111119129481 1.063953210826267 -1.8447420784286594 -1.7543662029285998 0.078791758413037039 2.2695067479865303 0.00075219143952195825 1.4653226257263612 -1.9392755816990335 -1.5773288241052332 0.73258949219160785 -1.3527494281389942;-2.0466002241282943 1.1917315218035198 -0.27258501555627029 -0.95964347773124803 0.45058426509109639 -1.3439807583920009 1.2000275688546795 -0.062470397231854963 -3.0344933985657789 1.8937660532166691 0.34191479376555128 0.5687375268233964 -0.17878920386119984 -2.0310880622977088 -0.79430794343303357 1.4495843464783802 -3.5916536268890806 1.2133455918637575 1.0175517864950072 -4.0421116514860884 2.173483270393616 0.21360772610929094 -4.9475662588230529 2.2240272527877045 -0.42102391614622331;-5.8155105042552071 -0.082767636830160349 -0.38708173514192901 0.93322277680112142 -0.016335066161414731 -0.70255789478653252 -0.7838024007453479 0.73886311016498518 3.117382422357843 -4.2885093248289126 0.70602354166582437 1.0909453802807656 -0.62618918502748833 -1.367659488609168 0.81078955188893354 -1.3476292207421439 -3.8724098736255428 0.12311833417461397 -1.7265625011141452 -1.352023228362526 -0.27739563996406658 4.3791348405500123 2.0031064275912662 -1.1463645867545738 0.66769490110425556;12.730543557388552 2.116334439120648 -5.0115204111448808 9.5177594330923263 -4.2592478105485334 -3.1293987086648585 -1.7026705696761582 12.172063482381139 2.0736828585229845 -12.936347957368973 -9.2584768350457747 -7.2292801119867001 -0.15092528247379663 -1.258264241391305 -8.6118259103567745 -9.3744644795971901 14.807915264134039 6.812461121805609 -2.1435987189302663 11.200544157347009 3.7218083910815527 -0.4330878317094119 8.2852390285940007 0.9093097521435165 5.8039347098586003;2.2446943080402728 0.95865917294178771 -4.416931442845252 1.199390041755954 -1.2094367083911812 -2.57026009351106 0.33518094801643461 0.66820248859071174 -0.84945804552644588 -0.29500119844015932 -0.15555638172588798 -0.79857581148018675 1.6835973477760446 -1.0233684377337453 0.30571316574745661 -0.54566299852457567 4.2869891109214517 2.327988253784778 -0.15736481576584774 1.9443892760133672 1.3403622370915411 2.4678296022388997 4.0461591854433561 -2.6806888052023972 -0.42053256734646577;2.4497041449865353 1.2733343797054399 2.0932238194755319 -1.8579024624680898 -1.8782255816051387 1.3916381409875078 1.9753361647922865 4.6034884352628085 -1.0941152752065351 8.2913119373139388 -0.7324866153916092 -0.44582842573452486 2.2421908852309547 6.4463867727298547 0.83035698366163646 4.69917091184141 5.5057041100740198 -1.2232465348309423 -0.012220573864199755 1.6953450304309405 0.23005222363630279 -4.318792142762093 -1.4818965260413626 -0.42288564641754434 -4.8576648250658376;-18.808538366936929 0.092923980500444786 2.601355572845697 5.4118322507153858 0.53468095277487993 0.852089156601056 -0.077468622044511104 -3.0579712842135125 0.42724938569603643 -1.7790403230413301 0.33011210614328529 2.0097902087084365 -0.9846664012248395 -0.29735716074754831 2.0312557073769031 -13.962295158526885 0.56204583760900395 -1.0228714766875528 4.1653263495845945 3.2645194524795738 2.0949808438732038 0.67488966409456619 10.122923907863571 -0.20403952420801855 -0.3272207756231067;0.75323691472803345 0.90159210169164361 0.00046768283653887032 2.4323252952352976 0.30185570353103985 -0.60369364002629844 1.0957179468337019 0.053682439794577513 1.2769016005678602 -2.1912095960824955 -0.84248921623672024 -0.96514910963720324 -0.015282109017141223 -0.57186005049849298 -1.124784212219299 0.21345074123656346 4.584084293675021 -0.45244281886297122 0.28837749995972806 3.0141731054480294 0.24753844218796731 -0.29972675935686049 2.0485768224301024 -0.93885912500569701 1.6542327488400279;-12.988690014873601 -0.093469527921373474 0.97615043988228978 1.3023349908625677 4.3320049301938441 -0.36822173500316585 2.1615194670205158 0.62178927427532793 -3.6002070788247735 0.36610958989006526 0.08707780232726825 -6.2775241829611446 3.7038460759116196 4.5286420429785359 0.21463483934248348 -1.7394101160725728 -0.046531455641607718 -5.6763781201668868 -4.3143260132684116 2.5649558421493772 -0.33413855697684613 1.4854180369772529 -0.36830043969572251 -1.0010905453104741 -3.2670304989074563;-4.5837211420371435 -0.096642878015903738 -0.98315284134392422 -0.51809057866052832 -2.5788951528049471 0.39481543090689186 -0.17667453812293507 -1.9489306419927444 2.1036753444060383 -1.0927840507621922 0.31545271346975928 2.015066497642541 -3.3594984191189541 -2.1829207392867334 -0.83228035818660639 -0.35960340486728215 4.1964494027616146 2.0166842201119226 0.76355547630943077 -2.5092038384341624 -0.12391989256242547 0.18200943045907586 5.1055132777153647 1.5867715494688717 0.21669551338852638;3.288010302615592 -0.68090998201378283 0.26819038307480825 -0.32421818556274618 -0.14657617520589841 0.80859032918895823 -1.0609049095584515 -1.3058566826361522 -0.70282670316113771 1.6454270936888462 -0.048667024745697215 -0.36686402684566155 2.2595773738004996 -3.8402765007948645 -2.2742640198390585 0.40250518801341179 2.6187459561161672 -0.16062014558992951 0.31455376019387538 1.6343930418995225 -0.50678325953719938 -0.40528908773744377 2.8939664806090821 0.53139756100196178 -1.307454693810624;0.50698092751458179 0.37398643541023302 -2.3563324812883977 3.200810485810313 -0.16113266967270373 -1.1788603699435256 0.72054823852555994 2.6744687022253482 0.95176646334047721 -5.3588806366961261 -1.2379530943040624 4.0338052907454491 -2.9978560616986853 0.31502999402904958 1.2270451124512645 -5.5526073894935646 3.8771547683235439 1.0991447702234052 -2.8407509529281492 -2.897059289334194 -1.6632684871745511 1.8367961367356793 -2.6622209277469082 -0.63732357211000168 4.0206252348074978];

% Layer 3
b3 = 0.33630675756433875;
LW3_2 = [-0.040889635313509816 -0.0068030889249087101 0.0010114556933549905 0.32065180729941439 0.019599767332610384 -0.00544823007539442 -0.001278300112019162 -0.40615975490547246 0.024153732342040195 -0.18201308278972703 0.034650308251657234 0.074276646269831242 -0.20165852792823624 -0.021974947589873253 -0.029566468765403371];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.00115315130997576;
y1_step1.xoffset = 678.286531932822;

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