function [Y,Xf,Af] = ESPER_pH_15_Other_4(X,~,~)
%ESPER_PH_15_OTHER_4 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:25.
% 
% [Y] = ESPER_pH_15_Other_4(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999984769129;-0.999540494077341;-75.751;0;29.715;-133.803853032615];
x1_step1.gain = [1.0000770825255;1.00022983623563;0.0140762793578401;0.000302617642608564;0.251952632905014;0.00432440760873659];
x1_step1.ymin = -1;

% Layer 1
b1 = [-4.4283564377895610065;1.6802581303933625811;-1.0325859637131302726;-2.8998199933165524911;-0.79810975743647971647;1.9080243671118337634;-2.4301194545262667646;0.11867990300998274011;2.3222313966556220599;2.1054449609386112208;-1.5652212564809628859;0.81789601561943003905;-1.0899204745320294485;-0.68411052556855900253;-2.4363754320210393445;0.015812905561753423656;-1.7228770147118936951;-2.3020826642182132815;-0.18048488315319619057;0.91234649799255373992;1.0241973307897418444;1.1984152249206574403;1.0660921772741025482;1.8201721884707284804;-2.2243901160299022202;-3.7170514128357416972;3.8630968353737649146;-2.6142202572766861657;-3.1222255291396452392;-4.3935494911079198133];
IW1_1 = [0.16083073792299032445 -0.65746201699826734011 1.6669888151965437384 -2.0211142183899739599 1.3500172479721450625 -1.5256507501678506777;-0.94334773292443541148 0.68435025477156086193 1.4167003197810634774 -0.26174059647219544145 1.8685538264234584638 -2.6902915898387007587;-0.40336224060164549421 0.31579706921377409534 0.28800765245168707951 1.3052270644423471513 -3.9589030315595330478 1.7486811059011808656;1.6689531609979080251 -0.92937157019214089448 -1.4523447620364924315 -0.50434276389819776565 -0.11788119074347933046 1.7950869809211897898;0.36025018302407568749 -0.4019052680916166409 -0.37838456362232347763 -0.17160131960750626967 -1.4441744541493912735 0.22281329203726513155;-2.0603432655803799456 0.71903445219169337399 -1.4872110268442306769 1.366061798970410468 2.882209058561711057 0.15076744828651561514;0.8404468884829336961 0.45165327962268408957 2.560677281570057584 -0.091938315668633571742 -1.6431715494348544393 -0.29843302473299698763;-0.043004540577094338416 0.67090187255940803013 0.98557885703457570603 -0.61222671803026906812 1.7786911203746234023 -0.75477898065106296954;-0.11040931397985036255 0.042471412811342146298 1.7632596359450130041 1.1800746158551604914 -1.4508353161843530188 1.484697342526645425;-0.82720358806888405478 -0.88502125887379623492 -2.0299519923288835699 1.0268634571617667461 -0.65455398122440033859 1.2844248182650797041;1.5858029414455623307 2.3795650985418221879 1.6830799032886600841 0.57694035399009702125 0.64131285096277701463 -2.2613844101426452404;-0.33759735434091203699 0.55379972046438441513 1.475062525471253938 -0.75796983260959083228 4.9319794083934471729 -2.4608033785314504804;0.68915741403034080914 0.55533382662786234807 -2.002695271678171185 -1.3576277195834756117 1.281655303848091787 0.66005451890935062931;-2.4105175747751492743 0.81568349424483121979 -1.4117034620460204852 0.63253779269527121709 2.2834721388857617264 -0.045441327085615643155;0.84242183587890828722 -0.23635745436733252012 0.1462058527592992041 -1.3887279575294368961 1.0110506427355869796 -1.7317580006120814051;-0.34875246543558091616 -0.31951968719203027725 -1.1932925559553522188 0.62602555259615066952 1.9346396219867409982 -0.77461152536332389396;-0.63061541457676395517 1.7273197640670017172 0.26486930415429688068 -0.60292910820414546968 -0.69604864057045534587 -0.88893476157120354664;0.69413562623064872792 -0.1252007097315297468 0.47292386703623995325 -1.8315565026654845315 -1.3927967239393690413 -1.3621902008780486515;-1.068055020142570033 -0.90941336936846262073 -3.3550102479556302981 0.072239499270928431152 -2.5636500428300847965 -0.59573534109929804359;0.33704906772543402615 -1.2136257971696118307 0.68863204709333680764 -0.23077347553949173475 -2.1572583221149383981 2.2804905946077465018;2.1386367984017482513 -0.30151497425171547295 1.2212396674504173433 -0.95151176896060996047 -1.1826358724159384828 -0.95358039145548978421;1.4214726350332551608 0.34070644686302631321 0.080070584734053137921 -0.30708103455564111917 1.8135153282645803952 1.1601600067578297093;0.02573921854996632369 0.40064857189287589323 0.36015105369891708964 -1.6720212709264938855 0.081273582885537390408 -2.5221081115152448326;0.99412606641532497154 -1.0522098579399470353 1.558877708521530403 -0.22734280321318300899 0.56945649495991645939 -0.42775243746837005032;-0.8016654375552322298 -1.0213551288845315046 -0.62192331320528415617 -0.24526354184665788427 1.1768098734387755222 -1.2625475535083168221;-0.044136196798181641376 -0.82570965286721376142 2.5363664391922400299 -1.9152922179776150635 4.8654395054003298782 1.3622680304887533342;0.97540454894599371016 -1.2167208722524951447 -4.7578544015728443384 -1.6219967406728834636 1.2927667481400360039 1.4310596762548011274;-0.46336409099873449025 -0.54887150684748342577 -0.045651483781628428293 -1.6336986927639656209 1.3092661741610733817 0.65480524617441426827;-0.51673558391475971074 0.55049645070988362239 -0.33092617026565668281 -1.8883837387800039842 0.017443315399824244061 -0.98850192743745557422;0.16474993886577080082 -0.32006003771105046019 -0.38905527048512150712 -3.5025711915601855928 -1.6748181734217790773 -0.6371505100730030513];

% Layer 2
b2 = [2.6249036484668337721;0.47166144942905924298;-0.97606761840643330164;1.7292571692491209845;1.0313746694241019419;0.014347263238464014884;0.067781435444121712619;0.34632575590905917418;-0.3900220346519543968;-1.3061951679347063582];
LW2_1 = [-2.1112066335257497762 0.34365981834227210534 1.2044614829607132034 1.0466429692196641543 -1.8128616976114169113 0.46539233664570367477 2.3438642324556555607 -0.54017759451144298222 -2.5463526768555455604 -0.29249666797787987615 -0.038707018637238729819 0.4207688128287250251 0.36038440305218821802 -0.016983684570045853163 -0.82103294689412031904 -0.18860062766359986242 -0.12891630459604000447 2.0651362296011503972 0.040647860934817356404 -0.016156941299320298766 -0.0029690660939022291143 -0.41569264107289310983 -0.78762549475357801487 -0.23924899443270852828 -0.68709483362200751699 -0.41046696004461591389 0.42093418216142947097 0.74279176362603027695 -1.8602086471858858552 -0.51782071209284064039;0.54159447053052589549 0.58694845229187653235 -0.38148637837957322105 0.4993566050290466074 -0.047797945049826179309 -0.10990749652264336644 2.0128163758567327868 0.3396063062795161569 -0.25766456339899379557 -0.0037991090860910008142 -0.031830216144826270486 0.60039231155849714927 0.53956361743742986548 -0.32398910111617301721 0.68869892791361153606 -0.90497560374403906991 0.46326362452892527743 -1.4995852289855498007 0.42962461131757928579 -0.10174871260872807299 -0.33575853644054942659 -0.55619090032204776541 -0.94213497650010702422 0.88636803630391625131 -0.31916170322340792209 -0.24394845662599404235 0.67706408459145006606 0.39509536129615446809 -0.291836266933184596 0.81833448450123691398;-3.000256509604072086 -2.1093955203287704236 1.0560884204876803683 -0.54292163686507921572 -0.12008631879422257405 0.69584029924603241213 -1.5698682120597724499 -0.60212746586973209251 2.1075808116940111248 -0.28164418003308677729 0.028626981472012758001 0.13955704483372202707 -1.2661162164108132888 0.45804569136944889296 1.8825961301732134778 0.25469827694762686709 -0.073236718270702744205 0.43840054858759619494 -0.39874315621691208689 -0.3190761039910587904 0.11583905710332857708 1.1595742970890776657 1.4641475650101154482 -0.73296224854419722572 0.91967185782164728725 -0.13702248331497224321 -0.37729006006543497342 -0.10952904834212531804 0.64568487374585614713 1.2844004296469475612;0.4537429422200196516 1.7619975936518041948 2.7918168692273130915 -1.1226729560028594346 1.0475566835290133216 -0.46307382784893735828 3.0956163239321417002 0.78024955871567724941 -0.17183389231280812859 1.0676864748536911698 -2.6254506713128278328 -1.8751138327490621815 1.2019879235219952385 2.5354645054788651493 -1.2865571689137431655 -0.57778597125751351982 -2.1317615655677242259 0.81034889611715621438 0.65537114583328648365 -3.1618281692738623434 2.9935499801502900574 2.5797849617462937921 -0.87672131864932389966 2.7754039968263808369 0.10710484195077113467 -0.3585328068266644963 0.34787469929561393167 -0.97966887159098470228 3.3215541237643275707 -1.9040697587701840288;-0.28076008119974071864 1.1894954452102470821 -0.6010503138910705534 0.33012928054415124901 -0.033357297458902451792 -0.46058125240345837437 0.22734937934908661106 -0.66637304877444714091 -0.23886502523846883661 0.27686345201373430136 -0.041289076480483924425 0.015385025985872310961 -0.032352453273152399771 0.069589462425018691616 0.08051183635245269532 0.4659684887612471349 0.35239654470870768188 -0.98716753789684985598 -0.29603020817611791493 0.18130021056458031636 0.29096611115993764596 -0.71772044933072931538 -2.5210449456121417633 -0.16569103268416035535 -0.66539778883560529721 0.17409557717889201367 0.065373055224616838377 0.19446795637209346452 -1.8221135028476866946 0.62288180357010736188;0.98661447016643843977 -1.3892426993661977086 -0.54612367540299533442 0.043261468211562070785 -1.6743704124607061701 -2.2216452255973910823 -1.4387084592996728372 0.65844975363944746594 1.278253002832360874 3.3552681513485533848 1.5313605858541163851 0.46077569618237812499 0.51473636623074903174 -0.56824004069431865993 -0.061483280023331490782 1.134854872383086688 2.9465767328667928915 -2.7716745667189677249 -1.1026337744998184753 -0.87122933190175411156 -1.2155681849973667408 -1.1229324623107144188 1.37806961706275799 -0.40604574363457668351 1.151831513838511345 0.19437975407454127774 -2.7384774518935244281 -2.1888202352224204184 -7.5652161660574952506 2.1175428845279058443;0.33414862891387825394 0.86419230539226188359 -0.15042104478999543393 0.68975430807146920209 -0.16910501359308824365 0.16709660284943211872 0.40173254990045620394 0.52256998540355659166 -0.025186301096434663555 -0.10927512104804916471 0.063265013035461115098 -0.36048527147383846447 0.27347689182815460018 -0.25153460866861337974 -0.054391255443646077672 -0.24682464622350730465 -0.054839568395216718721 0.26965303902484860643 0.12861306154625501419 -0.045925852185811202877 -0.10425703522985606264 0.090058754215969774592 -0.18322013055882177546 0.25970256958063830943 0.0389558593312833365 -0.099436478172801476272 0.1542553437895259616 -0.051352286721558532134 0.25739232709959897205 0.36847930528309297271;-2.6988756270057536746 0.35335645153126560292 0.73954344007241756831 -0.84247992967183082946 3.217777051641850683 -1.0875492363762460091 -2.5912988495086435314 1.6806885530509707571 0.52025957824163571175 -1.3407802348036776952 -0.15408219654227220397 -1.0869386831284812978 0.48561971070105058867 -0.46736197301775034285 0.47891147784177873215 -0.75975234322612772431 1.7682822252785685979 3.4057869225268024849 0.759139901080423396 0.29884642118453186299 -0.5170624341333170948 -2.5266537840296425799 -0.51755203654005388358 1.1047492825670159888 0.068759547349812100148 0.24156723894952258913 0.75444188773730458397 -0.17230883284020040436 -1.1805865831278175015 -4.5992634015754427779;0.49956411066094330575 1.0026293140516069347 0.00012148476743824776145 0.76603180904728152001 -0.88496569154759230358 0.13830775866085776027 -0.016687052724576885432 0.18817882248130515799 -0.059978511477990471834 -0.00046429407469425997002 0.11842652723331408005 -0.59196956320423510522 0.27812826190515538283 -0.25261144316736366955 -0.24592644603249810831 -0.1767815591079660853 -0.17449578928418651991 0.7717559949742255343 0.02104240288068717768 0.0069389160010001598583 -0.010537926556515229276 0.23871870041787740524 -0.016436208686237470389 0.060052085236147773051 -0.14162388733108280392 0.011281263850721427039 0.049000730352928109634 -0.026852003108497436018 0.074551406826622604318 0.24367487008969240803;-0.79518389918676990469 -0.048104492202010476487 0.16180946677836888226 -1.362837232985166569 -1.7480813084259436696 -0.22389697448780848665 -1.0797549592038448996 -0.4514549213760292723 0.38140662783190282248 0.34080897433643886352 -0.95450780962130377105 -1.5069805104127851347 -0.026227958988678908708 0.94089701296472982861 -1.6650576729364034989 0.78476232260413225639 -0.93719128534668838526 0.62204465352092686015 0.10519051656464417643 -0.97867442546329763697 1.0604086822792506695 1.812529696891179487 1.02955357566718253 -0.65200951327513290146 -0.21416572919666190811 -0.10616349558709790857 -1.2300882647926985047 -0.98560013371434274099 0.87478404504128315367 1.8703601406507788241];

% Layer 3
b3 = -0.8466718341567565087;
LW3_2 = [-0.46318017616833168093 -1.643964529204329672 -0.22748637012403427615 0.2441161982269988151 0.55170724624334377406 0.96522672847024215681 5.6154795784094515554 -0.17463239959587056882 -3.9720605969497766452 -0.50742826069386626209];

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