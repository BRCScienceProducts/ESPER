function [Y,Xf,Af] = ESPER_tco2_12_Atl_2(X,~,~)
%ESPER_TCO2_12_ATL_2 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 12-Jan-2021 17:03:58.
% 
% [Y] = ESPER_tco2_12_Atl_2(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999996490807;-0.999999999390765;-40;0;9.1619;-0.12];
x1_step1.gain = [1.0000000017546;1.00004398834998;0.0153846153846154;0.000309885342423303;0.0656325902039552;0.0145655815308426];
x1_step1.ymin = -1;

% Layer 1
b1 = [1.0618743074851367;-8.1408906047804432;2.18516298188645;-2.1944637251476165;3.7285266054206905;1.9916642153925659;3.5427923154259671;-1.8688129902147366;-1.572103185842826;1.101597789380464;2.1814472832743714;2.4915587759089783;-1.135796654122738;-1.5034951236045289;-0.3085352346040498;2.7644258527402066;-1.9434516515421612;-1.581786424524444;2.2784445345180711;3.1980179408376848];
IW1_1 = [-0.35301334953065994 0.31679449859061792 0.02975306341011397 -1.3563182621505978 0.39899522891251565 0.26453233329570069;-0.42899819185958976 0.047092810567721445 -1.0170851170706798 -8.4036596148008389 -0.74088054531723968 -0.52575174988384188;0.18285874969312998 -0.24125262581555304 1.4670707845464479 -0.94237812326488068 1.4486032047793558 -0.090557879662465604;0.75800452614280667 -0.51884785966337688 -1.0487791014831034 0.30242353750280554 2.2612485533001765 1.0687492813298263;-0.80510572422934457 -1.5200591945734769 -0.34490029184751286 0.84866248559552038 -0.18212993850985126 2.6781957635456242;-1.5805670547815758 0.71740312887972346 0.082851625418971633 -2.0844432199482159 1.9961447288289635 0.87296718119360495;0.35864335296947009 -1.7827768750012478 -1.0959873979164869 1.6747927419234618 -2.9146206354790714 1.4544815755488021;2.7249905360849436 -0.21587343579888532 -0.23081361079947271 0.44107893977044821 -1.3273854867139754 -0.46281499326990544;1.0886208972415057 0.039858813888622495 -1.0775870128255265 1.78800504737996 -0.30199627498876902 -0.73136717740276003;0.37369698780763838 1.8095941264646931 0.71346299447923711 -0.03025808575927267 -1.9161962264897734 0.58557327642424939;-0.37826875319996223 0.29109679158079305 -1.3968922436872711 -1.5338594877424778 1.1965875048917267 3.6050763319067163;-0.51284531206073669 -0.77684305421519084 0.2220734437666205 -1.6912310506004058 -0.52375232970284136 4.4719983285613587;0.089185455823152307 -1.3601297072761838 0.12792201047844831 -0.22611957163580962 -1.2265514432271796 -0.92938668276070868;0.023644035471378829 -1.0489188070909266 0.15853281958529253 -0.48688309527309814 -0.16281748624068254 -0.57872278463553684;-0.1694458500357946 1.9992810973423052 -1.6627149063007323 1.2751048083696819 3.9077722103430927 0.17050415869803709;3.6031039320414533 1.5424754443624926 0.3003645306896145 0.086460833767858264 1.5586415284827051 0.25123662817558595;-0.48439282705731168 1.1175403140556888 1.6853278038378108 0.4441608178200861 0.78386983372955832 -0.51032785997578456;-1.2641283696321308 0.32869944596457895 -0.69976993950978006 1.4408661773852924 0.71769415229122113 -0.61684957255336348;0.16824685592938768 1.1997507132126379 -0.29338209925542413 -0.43241559028784926 1.2654634479714266 -1.2559405410324875;0.035422066584255389 -0.65415041441530108 -0.92763381326244365 0.59057367081963408 -1.9579343400052427 0.26907849672237416];

% Layer 2
b2 = [-1.9285152430185224;-1.5158142055277137;-1.4438449956302311;-0.54635534640120753;-1.4151253108208779;-0.11895667483218691;0.17058307187985125;-0.084008974879969764;-0.52700323114215986;-0.35340299958899091;0.31712279711890445;-0.11440737726240527;-0.098720498634252224;-0.76253717811802579;-0.31281495328072229;-0.8955444275523512;1.1722217448682732;-1.8394794971352537;1.6291049390974603;1.5145264789541213];
LW2_1 = [-0.2505236158648162 -2.3575343718198876 0.19850264569287784 -2.2011505006066723 0.82092500249246492 0.16345412531115608 1.7687403423668988 -0.084210872295870695 -0.86720050441152874 0.27107599934265725 -1.5611296845429681 1.7580333732509406 -1.5949779655184486 -1.6956841562350256 1.3732015977686962 0.75874537792551355 0.66043723135484522 0.65703824278892287 -0.2926576750083329 1.3477985623339379;-0.40061844632714994 0.80849113787198235 0.34065915179532347 0.10370912400916339 -0.84641307297859858 0.14100063188568998 0.81234222387080357 0.54451157003905393 -1.3854724108329388 2.6990036836458069 1.2452428494072629 -1.0427485436723858 0.4239014411896988 -0.51575945832796799 -0.34207841306369885 0.46493791976711069 -0.65397933164373645 0.18033590621798243 -0.22398902193595591 0.72605383254361977;-0.10927656023477265 -0.75353425225349135 -0.023772597922375901 0.39226737325323691 -0.12505399610455115 -0.74330548899697912 -1.669492990858763 0.17838591903522744 -0.69336870172826826 0.32454705253351307 0.48721876190724273 -2.0826310212490622 -0.27629938658911457 0.075287514799728741 0.18024737595787105 -1.4942534011477093 0.42230180140289286 0.14164404817177986 -0.37191995127827865 1.1747022163118093;-0.54870005203152927 -1.8230726056334798 1.0118957729807749 0.52725072527342209 0.99796509590533133 -0.23255730990911894 -0.73730149705613501 1.2663483817981105 -0.97757383565134737 -1.0776746369546464 -0.48108457555130085 0.41435769608180589 -0.4553713331493256 -1.1492804182143501 -1.405295430665398 -0.51178266684105345 0.28073308277429448 -0.60139541831931254 0.90192130738567045 -0.4914742732535346;0.2699147735491873 0.74579752882014483 -0.76685909268741526 0.46055059802714926 -0.62595589443116795 -0.65317641019242689 -1.5404967715032185 -0.9396399725800515 0.33857797970063153 2.2320450262234539 0.15264310061132189 -0.90503108592057879 -0.0049487379294788809 0.44074949962009469 -0.41305633883272247 0.48457469375826295 -1.9616643872194717 0.70948712817523474 -0.77652516135396377 -0.67102740601973987;-0.76917011020998716 -0.96523288731773582 0.0030061958137116308 0.50117502171011052 -0.13610513754387768 -0.33474439988938809 -1.1310106526192312 0.73755169796217834 -0.19068622821368608 -0.4018041943877288 -0.57578980134286151 0.18776973596456373 0.79249666774747951 -2.181499519539472 -0.95613860935903217 1.3685297961066696 -0.18622036647436122 0.087593306601624468 -0.031125273346584999 0.095958571506445572;0.42153297844262094 -1.2871962336510749 0.95990860397524957 0.42580735799551173 0.13081200997757678 0.20016084857058783 0.96377905813451437 1.100220914137485 -0.86976134416976991 -1.0356761675561894 -0.69492196827944785 1.3213857658692805 0.15060599050172335 -0.38822207074618736 0.67467774580277962 -1.0386976773947523 0.8214348464037512 0.15481769354356517 1.2654465350807584 -0.73778774313984374;0.67466809614978474 0.2324519860970079 -0.31167093972433357 1.213777442614101 -1.4112492418936005 -0.091650041253585557 0.58229352462035855 0.63008289977100651 -0.36047200692654285 0.23885747989534631 0.0092753447209383416 0.96376141520950553 0.38194798219111636 -0.46412382614527997 0.22445915347808693 0.069514227188534616 1.0742817644859319 -0.30742051676531124 -1.368377096093935 -0.66975330195670113;1.3091993357790914 1.0377976201166808 -0.53385500186272061 0.0814352178433813 -1.0057156961187819 -0.74176896093448264 1.8982443440358787 -2.0964727246499835 0.095782093749924843 0.77540683059768245 -0.56230199162018224 0.12106220861589402 -1.3798962655844935 -0.97645434912313656 1.3331687512624524 0.79231880984792891 0.033150601843780832 0.046952160282543974 0.20528567621502111 0.22069922305839579;0.52523468445019605 1.1079074387382035 -0.68094647346649884 -0.066860001150067003 -0.075205898105730515 -0.82236278496042936 -0.84606116044002844 -0.66593582960903908 0.6589768966572459 1.4757414775898512 0.67438608950719481 -1.1485221096574252 0.45528285382167355 0.10518937490570603 -0.52120280182466661 0.62405521755518856 -1.0019902530368361 -0.12004467662920927 -0.57145997166350504 0.092021369479297094;0.05039350385515505 -1.8566264046244765 0.32923580307957878 -0.21671682205995024 1.7894113679579131 -0.21718195887062663 -0.71123826627020681 1.3321321409138789 -0.5385970625452875 0.11663802376946451 -0.54179466407305477 0.387208127936853 -0.60757593999718384 -1.1814500672711628 -0.98816526076184663 -0.46995965164549658 -0.63475533757599489 -0.36851717791186445 -0.05856293018574258 -0.43212545662203417;-0.46886582234746299 -0.64052451457844206 0.17225679153265275 0.84405183911649484 -2.0275155927726942 0.22986676484701285 -0.47059862673338265 0.22203043082070775 -0.0080290617829943539 -0.0228513762689437 -1.6170262185040738 1.0189952813855656 -0.67641971721500327 -1.180536892693397 -1.2548374004168545 2.1296298485824363 0.61333155600610101 -0.22350906691024977 0.42065456050272015 0.85887079309954661;0.28881160872097983 1.5564234039374438 -0.97034669145090535 -0.57476354698641097 -1.1302590991589001 -0.46008742927639562 -0.99805756393063294 0.073659888428811618 0.55952505849628309 1.7102557850940685 1.019668143102151 -0.23233609238917816 -0.57350551865274502 -1.178943657434371 0.52508758235185682 -2.6122483746228795 -0.85984223690612238 0.50627067805305714 -0.14008295209877367 -0.62035332614802519;0.1617962174781245 0.58574960476845428 -0.33461236284169155 0.29060455206466046 -2.1861497918265522 -0.83198600689975044 2.8082293237731535 -0.18497387904037527 -0.94355362361622563 0.59918532806279445 -0.69334282668452529 0.69643385968566351 -1.210606394755404 -2.4314372697594071 -1.4570600743495237 0.92322250896856861 -0.90650706454319963 -0.72446160659394354 -0.61383141328786872 -0.31324500794501725;-0.35672901385358669 -0.50547187152748896 -0.045065032092917345 0.27483127685788872 -1.1250853767105755 0.23986209963553659 -0.12304231065573641 0.42177287571993216 0.43725048780429876 -0.46528949622122023 -0.609477852075333 0.99681711100631754 -0.35556248319112865 -1.790124116978592 -1.4309110885734666 1.6928463333382391 -1.0752251901397678 0.49968272875743813 0.6222586568193289 0.44836322998268541;0.26098051880564305 1.5123101524782452 0.18812170300009182 0.38590959404936065 0.10592182634131889 0.069844794889902376 -1.1152138924062711 -0.96615103821805592 -0.35992540917634758 1.3677585508296073 0.21652068536585958 -1.934795287344113 0.44087408849893717 0.058868670908714109 0.8131672512859357 -0.33075988742312906 0.34286128489334805 -0.72405417445116904 0.4564444564854615 -0.45732498366705487;0.32264605943783825 0.98076848099158787 -0.27599208077859472 0.52754954055433889 -0.77721121533003057 -0.30044362340839087 1.8136304969510291 -1.9100184025478368 -0.3408660319544668 0.9632557663566067 -0.63969582129857294 0.1633950309406515 -1.6616915544649786 -0.1187699053426331 1.3013980696365137 0.57419791955628285 -0.11690942453107116 0.26786464125574277 -0.44772188165378268 -0.30230926446649325;-0.40645460868055744 2.1130270267758018 -0.64560691621202004 0.51189035799250027 -1.7964813141846454 -0.41593967450072949 -0.70644032255671363 -0.20183246022143858 -0.69712194050371279 -0.52712872149271262 -1.1636258310285172 1.1228033159282469 1.3844975162164901 -1.380174755289175 -0.29466024089497361 0.68254800872802646 -0.63949283268137114 0.063907535429048992 0.021407701795777598 0.62536530540820945;0.46982214095457897 -0.0053179506761009323 0.63954664447545029 -0.19283438044399681 1.0519553521329117 -0.087901175282489863 0.34600155526799131 1.1614619707608684 0.33295366009805394 -1.1063766628304939 -0.57868438090009378 0.78249679195340283 2.6503258797284808 0.17352934885442503 -1.9146553515162796 -0.36681609820183936 0.13954305902167299 -0.19999108022824663 0.035398482042469731 0.054586092497573832;1.2875240023462429 0.8151152283742884 0.47501295476039845 0.14254575055651372 -0.22412265895821659 -0.20313677395988941 1.1190306643118035 -0.49134803325380627 0.046184316971116315 0.62195820615738628 0.26200898390867261 0.061235499963626684 1.4766758021948843 -0.030936375043125765 0.69303596273532075 -1.1970752324675686 0.32125886860782576 0.48308921141479344 -0.14429324167652832 -0.34168125065626309];

% Layer 3
b3 = -1.8416709237147435;
LW3_2 = [-0.13299063204042372 -0.22335973156483011 0.11528676484385748 -1.064470240815981 -1.6458634786545281 -0.35836681495460948 1.40182671246656 1.2773843179956978 -0.56064589793081698 2.5498698051923023 1.0109205270797545 0.13020613058421587 -0.59299061063022673 -0.054509872846977954 0.12837347148130943 -0.086282247841111562 0.61778450170188326 -2.6343132822312856 -0.042930036759768739 -0.27023004520656341];

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