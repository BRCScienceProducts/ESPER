function [Y,Xf,Af] = ESPER_TA_7_Atl_1(X,~,~)
%ESPER_TA_7_ATL_1 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:02.
% 
% [Y] = ESPER_TA_7_Atl_1(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999996490807;-0.999999999390765;-40;0;11.29;-1.99149636107278;-143.241523403244];
x1_step1.gain = [1.0000000017546;1.00031699124092;0.0153846153846154;0.000310077519379845;0.0705602618858232;0.0604107502911417;0.00458552991639557];
x1_step1.ymin = -1;

% Layer 1
b1 = [0.5664569642210476319;-9.152688173156150242;-3.0235096115927651006;0.25890787093777906103;1.8117833428943470597;2.9320151031291632471;0.98918568589300537308;2.1684681222029675851;0.10637376346197431609;-0.57282043791357806217;2.7748145693030683567;-1.7774859704894443446;2.9542053884680909981;1.7040662551269276648;-1.6676684166230943962;8.5414040666957102843;-3.0663343332912234018;4.5358688063737577778;0.19617566496016539124;3.0840896549293375095;2.0974689290084684856;-2.8928668547150917512;-5.1965923084106293572;-1.3818540139482209383;-0.092552025736037379922;0.56275674940264519552;2.4013284734358539829;-4.2772840227143920089;-3.4768578148263600269;5.0902184044092937398;-6.1112811217483553605;2.7025699338171551567;-1.089584273912101775;1.7760591812502035669;1.5415322133630036117;-2.9414243384748237631;4.044888010513746579;0.74071756133526189814;-0.98762125590568139444;5.8905497319306094894];
IW1_1 = [0.24730454908015497839 1.8454851159074801004 1.3902665844087462865 -0.40922967375505953092 2.5408982816082272826 0.36542415415170109716 -3.9425232557789078314;5.50467412012376478 -2.5117115244021022136 -0.87771672343197137955 -0.47076507309948878444 7.0724421676441018292 0.0035231104560588914765 0.44923900114258846772;-6.6383454228228329086 0.023762072423730910137 -1.2685095556717500553 -1.1696267138268245933 -1.5942107947405219637 0.97502945063383661406 2.1948255359720212354;0.60109082866422536284 -1.1033070573916379242 2.1473992551434606391 3.2603023164289304248 3.0664943320797535264 1.4588305413179298853 -1.9386243014750710323;1.0098854142499711362 -0.31143595720265920823 3.6814555271739468623 -0.41513588347378604926 -0.66561237981137577613 2.314191129314305595 -1.8697064489979204893;2.9242933145002338868 1.299527333318311495 -1.1093235153259213277 2.6122823276455160446 -3.4727558873418495899 1.732810686064715 -2.7870992291680023456;1.761996272107000383 2.0570376026913415046 0.2480192679822762758 -4.2604899019823792017 -2.7907339478748616202 3.7342415936197799198 -2.4903749843483917736;-1.7166225277294260287 1.8846308647111482681 -0.044401196956931857085 0.62262139036517250013 1.2216734324418605517 -0.72052079230697652079 -0.92123612612945759981;-1.3672694285346538301 -1.6059940322799099999 -2.0108458944099916188 -0.49484032176033537764 1.3913694749803369177 1.0145699743904259549 -0.51831749619940903351;0.87739019038451049326 -0.63193830909301373921 -0.34015681643539547041 0.16650432300414688691 -0.38540286514196331336 1.55540861025004995 0.26178188887426295794;1.2284668213931959624 1.0899621509303698552 -1.1672015161276108053 0.28601626230531440598 -3.3826205298379337094 -0.27565940567058999644 -0.20579148433424024334;1.1752679208290166546 -1.4377094355780697388 -0.51091828001776162793 0.23181941961969787513 0.34435940361033723356 1.1962142665771107186 0.15681639034457189874;-1.4349032467713755956 2.0675439923155001232 0.59413125298802649255 -0.1674864451028049428 -1.0470157608680876749 -0.86327061187931064534 -0.17163651506877145025;0.54690674819147389041 0.76043334665365736047 0.046165590715945552247 0.23829907837519065383 -1.8001055204785731956 2.3619394849316099894 0.63499722075721976022;-0.68064005117207193596 1.4105478203881023358 0.42747730268827127675 -1.5309796015319967477 4.8642130447295173212 0.076468761900407827836 -1.2586210821473906574;-2.338065058175187616 10.061735910547435324 -12.833205855841219645 -5.8962670260884904039 -0.38996434090221854252 4.3603755632019041144 0.24024806977516591222;0.97247209496193287581 -2.0889214806646201339 0.53192398689581876781 -4.3845574534026559022 3.9884014686669040373 -6.3090587921008189909 4.8100894754972731704;-0.64691250221460960823 0.32102436744273865621 0.33285365071621747513 0.23349603288723616568 -4.5187122862290625136 1.3091206892529745343 0.68145520225933142733;5.4277808338355022499 -7.5966932754725533528 23.800839699629271706 4.6774600021725865062 -10.798526700635193265 4.6894870467805640502 5.3574641328256324968;1.0528801237656777445 5.1950368608594148512 -1.1963481460711167248 -0.36739769657619431031 0.33896221572600065963 -0.27190254256834855973 -0.2985655453221618405;1.2828693598836118372 0.87475758876420006693 -1.4584103722353380928 1.4861597861317259461 -1.2917024719314860182 1.501739988988561203 3.8429374673856515621;-2.0226919354771530912 -1.176474956327625998 0.089777394683784525475 0.12441511416126643796 -1.1855679665626346342 0.56118305617138120045 0.4072128427826338104;1.4233372985247412235 3.2518291167850832402 -0.048502085153435882392 0.15700577395298018213 4.4383206567744224458 0.57533638839142009491 -1.6133142279976617761;2.4871056354300704605 4.6572307639268695212 -1.4472612341647235201 -0.85187904778223377811 3.7513058340168465854 -3.3008442035760467981 -2.228169687417037359;-1.2288482638499560462 0.091393856409783993944 3.9386936794581046684 0.19249128448225602539 0.95395640994782149313 -1.3333902853485330997 -2.330468897195476341;4.1846692325626557718 2.7529225919295350344 -3.8352128820998769854 3.3274048817988206572 1.9180752114441115275 2.9341336969414100189 -3.934018936130626809;-0.5273969545909423795 -0.027666594422754712396 -0.50767665289345620394 0.61756594388898289338 -2.906822352969189005 1.6103153018582825329 0.50456817442103729654;0.60581262193830331952 -0.4669372751696493351 -0.26625444670840647809 -0.22805509725360603723 3.9218135538709399945 -1.3675646164749122313 -0.55087439383009939586;-0.12182386777588112559 -0.089499333486500382007 0.5816223134542835016 -0.64319414719986700568 -5.213233831760307524 -5.3845270427254563472 1.1222239713147408313;-0.22625414702613372286 1.042370373499536873 0.74867296673968697363 -1.4073477606684190455 -4.6889004828782328005 -0.90524878527765806346 -0.57232658527871482779;-4.2380061627125256152 0.99787993622527826343 -4.7306225351717934302 1.2946191298424312155 11.221520807176810663 -5.7139981228284018044 -0.18873529268220443078;1.1181076910338625385 -1.7771455300525860199 1.4972496189930746269 2.2212879364741997534 1.8137373440885049547 -1.7058427451711972722 -1.420611023872137002;5.7489153148778990854 -8.4148644379953818628 -2.981888107300979307 1.9897555417215688767 1.2765127258425454926 5.6914682487447745274 0.99594625780486578659;1.4652069328867109999 1.2425308720576422328 2.6175543984026723443 0.69044448801695945672 -4.7046635197496682324 -0.82447224973999766462 0.87187089880716772683;0.041782978034354677221 0.13132911366254598762 -0.1616850307934141473 0.050455050256815334175 0.87438347383272985169 0.45746897606844943995 -0.023411454197421868728;5.7130920111036358477 -2.0756731671908235093 3.2248599620713598313 -5.267926686983280149 -4.1160326073912374412 -3.9358262543947732937 0.4333688810669635294;1.4863103790080789413 2.0699700060256644996 0.77658097375336343493 1.980128939079798478 2.8643941838647064557 1.4027275498995066538 0.62627709304620471364;0.8933212439335981303 1.3545121555285470905 1.398461899709260825 -3.4423606493257650207 -3.5403323337359187128 -1.4678097916247718757 0.88052054252065004025;-1.1512289832516646726 -3.015876075303000281 0.45806810210444781628 -1.6498025262111073452 -3.2514238234831012164 0.035271099434284372554 -1.4922316212074100417;-1.2254734014007999665 -1.0948499016126231886 0.51385735634197071686 0.072678961155809046479 -6.7378255882145419164 -0.10101390854794570218 0.36403742620797818752];

% Layer 2
b2 = -0.69966067973057610718;
LW2_1 = [-0.006410310226004938515 0.010275388482612012736 -0.015657147072399183602 0.0085968650856490316792 9.9120503648442219403e-05 -0.009893318295478485333 0.0028763090067258265635 0.15310939652118929488 -0.10299648101234844255 1.3045404103807118901 -0.051604089686483702037 -1.8445507051717839886 -0.96000815744815537478 -0.22931321834527823578 -0.028682124224496990256 0.0022749607464726600767 0.011275025087709006008 0.7821700819670118765 -0.0016688402880078838115 0.020703661565549077994 0.020861898111199320832 1.5189509132456271434 0.057993950482622666498 0.0069633391560090110786 0.0157908430573478753 0.0045012329825152332108 -0.11213205711407947529 0.81000100271282793329 0.064658959704843213534 -0.12613130533743990846 -0.0070070068080194574181 0.45116274400510281151 -0.008212531013749808928 -0.07486122727042521241 2.7456527619731776468 -0.0053343211535870288867 -0.062721510943264724425 -0.0088711128060771828746 0.010808463469091601425 -0.10940185958588435899];

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