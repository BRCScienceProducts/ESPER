function [Y,Xf,Af] = ESPER_pH_6_Atl_3(X,~,~)
%ESPER_PH_6_ATL_3 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:22.
% 
% [Y] = ESPER_pH_6_Atl_3(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999025224415;-0.999999994516886;-40;0;11.29;-1.99149636107278;-0.2178];
x1_step1.gain = [1.00000048738803;1.0003169936794;0.0153846153846154;0.000310077519379845;0.0705602618858232;0.0604107502911417;0.0479365703301392];
x1_step1.ymin = -1;

% Layer 1
b1 = [3.3669116180350724399;-2.8671446336876065253;3.5204441762015488138;2.9300972116964740799;-0.88411985449074337318;1.6500665101692975067;0.42661599676347772281;-0.11468054333863583749;2.3972385226473118536;-0.06793134346382757871;0.054170858049542067181;-0.84587748218229275032;0.23592519302858172559;-0.64385316300374928478;-0.53468093145646089503;1.828349576445484681;0.51778407130826831217;-3.8828886732887402111;-0.54727743955491559014;-2.1555029255041384673;2.22371209668779235;1.8077438810425212612;-2.8436480607808558574;-2.3058203349100812041;-3.8464999341378898201];
IW1_1 = [-1.6104336004798520676 -0.14141533476601589325 -0.13200732271823686914 3.4306157896485189873 3.0244850416885045163 1.0181586294653257596 -0.67526885233632116812;0.20928772731618941472 0.64897287159710037585 -1.4951821818881383397 -2.2897717511546877844 -0.025326206557310923517 -0.9642317253048491299 -0.97224380433502233245;-1.5519987619069293139 2.0473267154568928206 -0.98919360623544205779 0.10082495063318551443 0.58113728166929312646 0.016608442744842681627 -0.14782217748209849906;0.013768364459390915883 -1.5325871417602503488 0.056596623895893788392 -0.0085882440980803095854 -2.5394503989768630881 -1.7147199586480301736 1.3974263422726300732;0.01862061267415812682 0.073627761098599323053 1.500468342372827335 -1.8629432159033822991 -2.5298851309883816363 1.0195599051307537852 -0.74373105106983938839;-0.57998228398476214807 -0.89170442989499609787 -1.7691564499470144867 -0.52901481096776248325 -0.75243229914060161256 0.40385996378011695951 1.7184903566442362166;-1.184626251818271081 1.5490459781179810594 0.11497399974653774168 0.99630864359485316051 2.2630466091081795632 -0.038500455106262362892 -0.4045971480039582957;0.2499939317428716834 -0.65691150559093125505 1.952022495932418833 -0.67330746694625887017 -0.78585409342513556918 -1.7544272692749904863 -1.0779776418497937218;-0.078450404241427795782 0.69177552908574468926 1.8662547729243299521 -0.11703878239926698845 -3.6222383069911896492 0.83849739101008702313 0.49236577170001860626;-0.29107623380505687205 -0.15315524961025492323 0.10439492254560255036 -1.3416342853153269132 -0.51971220748280866353 0.41320276747622658453 1.1931848845430332862;-0.46827789281518783504 -1.7650591179457317814 -2.1884438443002163233 0.18660524439797787633 0.8460087446292859914 -0.037408328488483980068 0.17453379593682841198;-0.7444033696934999611 -0.82799905701063591934 2.1884752922728250013 1.656271710589082069 -0.2781147439439114466 -1.3436354874183233932 1.2418881733208426699;-0.069689764349522023701 -0.42120883130276309814 -0.08720778399986271745 -1.2814759361885279532 -1.3834181998474508468 0.5568072684350535706 1.7178221145313969931;1.850488523007157049 -0.15419869257594970291 -2.0920307595859823913 0.12373251355195727386 1.0834780493081077601 -0.41562150712218565163 -0.13755664736396971959;0.65124812370116602622 -0.37080646633636776821 0.42875485157418435911 -0.80370718391291728899 2.6138418856882243979 1.1188820208160508152 -0.70070774423352899518;0.8666247510111803054 -1.3716842205900343643 0.77309791771437841312 2.2206146692742767534 -1.9324365200594753045 1.0071891328182922543 0.32482536220416352579;1.5023364296684798003 0.15930460517382821761 -0.0054226898760789650836 1.0976117988059614916 2.7007165036808760128 -0.90329117539515646484 0.93913034133517592217;-0.41503644522485971802 -0.058208705721791993704 3.482830763453097056 0.55905824054448349791 0.52627438793685465956 -1.2676045662465318387 0.051073964621279659137;0.10694325568071184895 -0.20405671716799206328 -0.90196475688457755648 -0.92269123131811781047 -3.3659992777401432917 -2.284476930993354582 -0.77630606024721326985;-0.093753288386857008829 0.74009776232067092661 -1.5054666395253319955 -2.1686675118331497636 -0.40130734802582185283 -0.71452570736560205855 -1.0853622744332076522;-0.14969404653956647211 0.68104102875962990726 0.89967121414352158038 -0.15063931682889600272 -2.5386026803236010352 1.4280299628767982867 0.45177480193831048849;1.3127635871289073943 -1.6293316538938911187 -2.5590233841447140861 0.13991345887770156864 -0.57777024309898017407 -2.7150968353495441576 1.1686389355542536883;-0.5855864551483770386 -1.325593561642940621 1.2014669687940546794 -0.065499504573685488062 0.87161688945683046814 -0.24767155818899716513 -0.39929100050582211345;-1.2918896804294661695 -0.22054296343741072728 -0.81662443215077396008 -1.0179383399062023052 -1.1806894964259064817 0.10156906302844453949 -1.3720202031610864157;-1.4983813357907687092 -2.3543451716493928316 1.4799524821380527495 0.57682490789607743231 2.1463139934401902487 -0.27439987979946023344 0.34989242091169958648];

% Layer 2
b2 = [1.3965073437062049955;-1.3551282160369437779;1.6843816042148025414;2.4104001659801062019;0.13838128817600270359;0.29950377975412845188;1.9821881470600661856;1.7532668966168072355;0.99590351496387907737;0.072804440509574658291;0.070980186849230214596;-2.2166850613540152182;1.2597557162856143353;1.9250994934406941983;-1.2068026733692465147];
LW2_1 = [-0.088026452041596897624 2.7703753970838325138 -0.016041279550724187042 -0.54153114347552588903 -1.4700551673561577104 0.90116807711596158548 1.0793807254462488565 -0.29411763735357915328 0.98925849439718416267 -0.11424183522474143371 -0.56277538463940857127 0.64134748919171458148 0.78961866279878711872 1.4700168225412240108 1.1963051448993389236 0.20431617172865729204 -0.70817910190551547345 -1.9582094693957703413 0.47363073183623632945 -0.80334774001354036788 -0.46762465688257109919 -0.58537996889891885655 1.8403653323215092286 -0.91295775806396428642 0.32010635058600594993;0.46802245619060384163 0.23036201863665761724 -0.17767414575731407811 1.1889581121327139623 0.99232886827846389366 0.55784901401821118672 -0.18268263772704779191 0.88152568828960620184 0.4719766981724582422 -0.28192879889526101245 -0.04084407562969652461 0.46152012162314570709 0.14869640976576700697 -0.042966231270421317845 0.14412546442061788254 -0.80649480056033773234 1.2865703772820351602 2.2062984189161105597 0.065681517220053303729 -0.076615675560571222524 -1.5025821775594061513 -0.56394521565621102965 -0.30815598012120376525 0.82864337929178988329 0.18451504138175214842;0.58926406066506675785 0.63506050464599417271 0.93117083828478586227 -0.05162649889288838112 -0.022682215860150001935 0.17863336599019591366 1.2943236691005064465 -0.11552196776531459266 1.0450380240010528343 1.9297430837102966805 1.0647692548388827394 0.95429698048719791004 -0.1485422868617119474 -3.0486010036767150488 0.42251796868066432422 0.044820203923109383504 0.61119896692077813061 -2.0056643468349082404 0.59876971456209904243 0.090820129124773746332 -1.0347616004349704522 -0.12975849762336441606 0.87002938313622490973 -0.39930054572439810379 -1.0536534650344937525;-0.16368627375472377672 0.0087686596800697486076 0.99289376980615728918 -0.042048718649403245273 -0.30661362313134682411 1.3030681491831623831 -0.39096394711477511219 0.54142035571570679142 -0.60750541189533957542 -0.92819653511393185319 -1.0325037642805006133 0.10089013583454488343 -0.021155935607644182211 -0.22907486947628674656 -0.87542797420497453498 0.29381166612403264438 -0.1240719264005821082 -1.0855894969476103107 0.8726429888662620149 0.71187556299989696029 0.5993779588092265076 0.54780529232872898771 1.507895483971621875 0.1974936899647487254 0.59897104798695099959;-0.68785833714643440651 0.90630941811158494126 0.30880670104176694002 -0.12141694207731851263 0.46030768902114510555 -0.22060909005246887027 -0.52677191746303253517 -0.023368951886805405804 0.66328734848399251156 0.16398190287681591037 1.3892099688761967435 -0.14580293126053722741 -0.35924203261524767505 0.18660550896119812436 0.029863926898029261037 0.1537319382597666928 -0.20869148518728622421 -0.0395833595964635368 -0.082433538042938306334 -0.58542447189138879793 -1.0348712271070110713 -0.61053337664761253567 -1.1213595210453244366 0.73968946177151095878 0.46425252053975873956;-0.095295873269659589488 0.58350549708686016981 0.18558435971589776203 -0.69138769471922523202 0.31133907099711377597 -0.20998314618415367394 -0.83888191319245286603 -0.048798529535394534473 0.85865721718996823597 1.2762992096097165451 1.3331837744007781765 0.24550289936316208039 -1.4731258850447357389 -0.018851641743253613748 0.1383648675444012488 0.060296707828656703754 -0.58389681776050716966 0.49365387706305008386 0.66604887701319748228 -0.47741621576942960825 -0.29528750514029156182 0.41712129646428142138 -1.930652885285344178 0.6969868222704017624 0.56656011253431814989;-0.43899602707822615866 0.054798617331256363472 -0.48746049971196708794 0.5979959958470300041 -0.81077952772575934137 -1.3761200162174807016 0.5672717949426138162 -0.32060038324629824835 -0.044328264066047722014 -0.041642574651812182263 1.4006172633100841818 0.3151957444788414664 2.2138601474353789555 -0.25694011743454320262 -0.068368705940839380464 0.12465366919940323864 0.96473299384032418224 -0.80752031321595585389 -0.20380862395555007782 1.5910242115077528613 0.023065677745698121015 -0.13120570747120846589 0.26859333035421995017 0.30477314014781803353 -0.64910223364176322658;-0.12796985022844459268 1.5107542538797409382 0.50034617224899924359 0.32174939894546555896 -0.98105207402166139108 -1.440891460278009184 0.41607511851577327899 -0.38640101279778493737 -0.0061230314695312065831 0.40744214269786455107 1.1636807654061780415 0.29356058749443669775 1.7577657730391627044 -0.06963376970039231173 -0.098476064372825036775 0.24144583521224610712 0.53758570972954378142 -0.70113582110257188784 -0.40721032453273059426 0.3429304888829784459 -0.20991360141325871025 -0.28549891011782346784 0.40816940073669838451 0.21485957168748404111 -0.59128289043481818688;1.0205655017926538175 -0.51386621856964576072 0.18291180445627211459 0.79315788448537449806 -0.20819899840136429914 0.58305207143840698247 0.44043045366321376122 0.81659905118205933228 0.93384789463817330368 1.1033193846632463053 -0.45219435359168153044 0.22238250558252392608 -0.62339544050504791528 -1.3178187602866822115 -1.413004309964695393 -0.19209738950675445124 -0.19936427300869352663 -1.5524774165056871578 -0.26982503514724720528 1.1944286637675396445 0.59237384543551963034 -0.11411749876219551281 0.61321062163161665914 -0.33333040019616044791 -0.23976940847026781412;-0.19961383024046924772 0.54437692513792457216 0.1205755460885562097 -0.39227735591650197966 0.3757381947044486914 -1.6553856643858499975 -1.3600890263406339997 -0.51652273282262817222 1.059179954601609186 0.4400796080065038085 2.1139815067248770575 2.1632456970244389183 0.67911410558715323837 0.48409758955082460297 -0.65503137705339053998 -0.29775133844841228381 1.2437272744299090466 0.93820692796868798702 -1.0094436432553604011 0.97031306259763583366 0.44479812946821117858 0.24363322151614474897 0.3226740125670813919 0.96963809870736761276 0.016549180446449450466;0.087636803954396921834 -0.63678058228170986155 -0.54999735133393368169 0.32564954974848503433 0.072708643083398000195 -0.14758618425808506247 0.28946732521350726497 -0.53616144928698739047 1.3235465209078278725 -0.045550904524059111778 0.31898661830060170974 0.16982540241560911687 -0.3440004093662943907 0.14362228615881353355 0.1626533857665364291 0.15722639703396315558 -0.090143478396136428321 -0.73982855034578853815 0.25726296532873021983 0.16630390654114862725 0.5402569859386019413 0.12762797919678831038 -0.28868582445241608436 -0.65991004445104928244 0.18115630140780752955;-0.12108080451556944845 -1.3644792381059576147 -0.863242572385937601 0.020663578573520496873 -0.72148484932289502769 0.048488904301728974477 -0.38367533319887059395 0.47744044918451139514 1.0494048811780440911 0.423139465619834787 -0.1116206710408586128 -0.57578287578176945427 0.12100669308043997263 0.088566446027321346635 -1.4032185437226074587 -0.80425154687059097203 0.72082271849459589319 0.8413311004215638933 -0.60930343952011067898 1.9583701314371135815 -0.67576986409715700255 0.63946274555800064476 -0.38075756359292040054 0.16849071369758375494 -0.4609422078509671783;0.45733410445432298719 -1.3423801613909644992 -1.211297450007930987 0.4848780491170227025 -2.0300426722327200579 -1.1415212214861523154 0.46333166791185048661 -0.32765597432267068445 0.25835095867163493377 -1.4152636587650080369 0.90009411377860015779 1.268689433096732877 1.2262942319363612231 -0.26214878408375641428 0.39003308517053719706 -1.0913880626157363984 -0.68050052879078548607 -0.11614396766351239854 -0.094628920618662737407 -1.0763482810756292984 0.21428355310300689629 -0.37461046533202679854 -1.8355241790204197549 -1.1153047294534574885 -0.032916611253536495751;0.076783247874980073422 0.077395836340050677693 0.037536606991425101876 -0.03591919722442881574 -0.89835051941389298946 1.0208722107676999613 0.16370945841219627925 0.28184472795010823143 0.93175928237284455502 0.13354321730393164946 -0.21532310320870709508 -0.33394496226392528238 -0.60635091057311429896 0.98336096922172189227 -1.9366027786417276957 0.030667682830146609368 -0.99139131651602951933 -1.4402622776590574549 1.3906792118912083556 -0.30992151861585082173 -0.17665318004674651631 0.025773798906287732902 0.70171027924858153657 -1.1075143092840329384 0.066540034265136174807;-0.031521435776588710431 -0.58776253822226232071 -0.89486404057323920558 0.6785831010093091864 -0.095497357674612912137 -0.2135675663769971977 0.48712854788274340123 -0.42515298060120049195 1.1863254534079097358 -0.3141864609858621149 0.25702631625317656772 0.059721263324460462096 -0.070868019152469333144 0.52210385665338088224 0.15570362168814563808 0.1763433670156035471 -0.12311836253108797423 -2.341744378821044581 -0.11849676410328115195 0.32562910856193866271 0.31013397963371547306 -0.18906923581769408127 0.24910239779204329524 -0.69689651515367001533 0.22295637401682352752];

% Layer 3
b3 = -0.003788307999096643397;
LW3_2 = [-0.23348234588717411975 0.96648867348299716262 1.4766071822172599504 0.62299499918772938134 -1.0234623224633789818 0.82038551424770678189 -1.63391086738754443 1.8691042716585017924 -0.41606381122447388954 -1.9907978261910248552 -1.5620435917651411817 1.415925216633496575 -0.97329910547304643309 -0.73753212707015558536 1.5889700538901783133];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 2.03830178109291;
y1_step1.xoffset = 7.47181919175367;

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