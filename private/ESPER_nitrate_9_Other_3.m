function [Y,Xf,Af] = ESPER_nitrate_9_Other_3(X,~,~)
%ESPER_NITRATE_9_OTHER_3 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:35.
% 
% [Y] = ESPER_nitrate_9_Other_3(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999984769129;-0.999998793562952;-77.961;0;29.715;-0.04979;-138.904784718693;-2.02];
x1_step1.gain = [1.00003298043486;1.00000060321889;0.0138606862425759;0.000266418009857466;0.193068829037552;0.568038194888224;0.0042772329208737;0.00819772922900357];
x1_step1.ymin = -1;

% Layer 1
b1 = [-0.75678948599199002967;4.7134167838763723068;3.9261141087641693304;-2.0554213429890912934;-0.73377809283510253557;1.8929537638409121847;0.67438187006092142894;-0.22885653460981458807;2.0444031069069352746;-0.45293160188780612341;1.1984493974714804931;-0.084156781812114972441;2.0131254755787786337;-0.67959316273254422036;2.3877892348428289004;0.66918293479293033954;3.8671130922940268881;-1.2545570742691873889;2.440479250260824795;-0.17799644485105448055;1.6091046350815858546;-1.2533901385510757276;2.2122934325592802374;2.7135530787832795596;9.477306610778317264];
IW1_1 = [-0.10101489108521023719 0.34249932383698827865 -0.64365669543411230258 0.18692415228462477828 -1.9270710544598990133 0.66553722643749824162 -0.31165416457260136651 0.6748690889129199677;-0.2895527934641120571 0.24523349027485125129 0.86851814873865673672 2.2401625595028105131 -0.95793687413707184763 -3.5961797679401859007 0.65289513536768584157 0.72055915095079536847;0.16612319318061055662 0.10883477595897741996 0.8097462231782432962 2.6703717562175257605 -0.64312924968344542531 1.2446422727561956556 2.1372471037088227597 -1.2017670538713196571;0.25656743128878511939 1.0175758732390685068 1.4302333224680672252 0.12530429393380487779 -0.77887445031156643527 2.0717479784329406733 -1.5248366063642355694 0.34230635123922348306;0.059744927139317581533 -0.021230453306376177725 0.053315921976728727905 0.098274053237891137447 -1.3661151666390745074 0.17703869086084156326 0.26755092259505453001 0.90454277806626903757;-0.27511890600052868461 0.55455695394691795208 -1.0984835405157464816 0.21578360078359976049 -2.316383863816822597 0.39529742645364684961 -0.023600497772985694345 1.3324691282167953066;-0.39003234590381291591 -0.2364168774347063795 1.1123123216811261482 0.065382123144068229892 -0.6515446914576150661 0.5123743252939833015 -0.16286706079767715449 0.27373832697480704468;0.66991954942408815654 0.83015360941816063178 0.87215006374174219861 -0.1742779304762730741 2.8326671982045770193 -0.31097072635531736173 -1.154392951556185043 -1.0667248309953480945;-0.07329784905235714465 -0.079322649217075005823 -0.35175479186921293495 0.93637094848634017108 -0.82258740426141085944 0.25991536850755836419 -1.3206798477384864565 1.3820628493574400597;0.25683954815925480464 -0.24889976932648072427 -0.012738754112664320284 0.11605876153780030069 -0.73506144524726879652 -0.36322268126043394387 0.83335926073564048355 0.94561187561332571416;-0.1840971674097206523 0.62659083158641049049 1.7411133547260837506 -0.16787310599183560833 2.2504460512727462174 -1.1506173513360329341 0.87505755424348441451 -0.19355157824142399381;-0.065132649656498814439 0.094993725073419021943 0.85145773849759032181 0.038577509715125066214 -3.328490608660983785 -0.24871849662728887087 0.43595016582545742523 0.4597755297473991587;-0.0015660826621270084943 0.14200107634331129991 -2.0450251004767237006 1.9613335467967019099 0.63385876924121187237 1.813758495235009649 -1.0855335478554049011 0.89996130023972098488;0.35540506713742742173 -0.10364238620329797869 -0.80139473626748447543 -0.20007734473862498481 0.92894933568992821282 -0.3922412306322262121 -0.18445032020020671326 -0.6815727881255017051;0.0063007341929230322591 0.095316627915339763311 -0.22711542939828566201 1.2240620040023335591 -0.49357760461551092313 1.277003501371545946 0.32832254426280366166 0.36706353871140184886;0.29547138139839534965 -0.56300889008762844412 -0.80634192736794896295 -0.11610732109711831284 -2.7702324370352582328 -1.2457333986803387216 -0.51451247471698258185 -0.24275375724825992707;0.070715890719875912351 -0.079096126993337428912 1.3941468145474043006 4.2953253018373258598 -0.1505496344571725098 2.0589631458194812552 2.5528275899660277659 -2.9536386124778699624;-0.77847592807589915953 -0.14476995150144109092 1.1735872109948455311 -0.11849124731919265241 -1.2234917463538264037 -0.26657696777568012925 1.599444842489393892 0.14969967473003639724;0.087204247381508129267 -0.37571152302673771484 -0.099738329825708613163 1.3815583407865621446 -0.87204492347268180996 0.88144439949444131077 -1.4822575676710658676 0.61779481496584487399;-0.034236636937053283036 0.030461619287702260128 0.65725664459872135126 0.043092607212407089967 -3.9996837957784627804 -0.76247654968744671411 0.4075564860924882904 1.0241101596371509075;1.30072157848080594 -0.85835221806051176241 -0.55503934031330504073 0.42918882540203012743 -0.13762202647154522794 1.1801357534307679309 -0.863016973102569529 -0.84560116608542379435;-0.7289844864482137865 -0.34637443442184101539 1.7750334519623423013 -0.10810531797879209537 0.11164268704613804217 -0.23543594852145285912 1.7953732279967731245 -0.16751161615266216276;0.099217409889610905238 0.9395625544984205213 -0.44684420251506101751 -0.031762050435102266721 3.4888483749868242079 -1.6564538645891135893 0.53852213815602956171 0.82420992312936092183;-0.49576846626362486292 -1.1204275987566709727 -0.95124838718127113779 -0.484770023186174015 3.5678953347563955312 0.043095941719790462066 -0.14605952176724573688 0.84054078295681955435;1.4570273075878465985 -0.42851788485710712306 5.712863665169567895 -0.5188321397331342455 -3.1459349584737523742 1.5584092331021157651 -2.9381847330353423331 8.4094986154938595746];

% Layer 2
b2 = [-3.2302461000841713457;-0.22048209284133690744;3.1515724137024738738;-2.0010271568859874236;-4.2311784899113238367;-0.94314471722887960325;-1.8877228358909601269;3.0524127392213378229;-2.3671568464560479583;1.842412055150120187;-1.8730455120042281969;6.039339389996549734;-1.4137323081487733756;2.9411112006816502173;-0.81963791018336529248];
LW2_1 = [2.3130316722745289937 -0.71931998258793738987 0.37613231801255092579 1.0863047149344464692 -0.12417307402514735082 -0.14944112028494968558 1.0727659874234054538 -0.41647588252530248765 -1.6222575810333317303 2.5032971105882793061 3.7173064512780387147 -3.425814250735530031 -0.18276790414587312794 -1.7865261728255164009 1.9112209707665186453 2.8988857616031822317 -1.8187823998943040138 2.0188610722064410652 -0.94832522091300630596 -2.6205245637456302532 0.047166076122305819474 -3.1787974387014839017 -3.0413959390974905084 -0.89914054312404012581 0.40542815341019078357;1.3870039078766416285 0.099340505317627114668 -0.7125333507428595059 0.51917369440940053238 -2.5031928813601296291 1.5475237198461631039 0.47788408832842727003 0.52169348510402246966 -1.1122327472316766439 1.5530404320353048409 -0.46277255684300505623 -1.8883274518936621345 0.5401553538370996721 0.35073452843811475654 0.46340525304934732098 -0.45742770946833721801 -0.15340879450853481258 1.0492184630322964889 0.53064840881899610903 1.7774100818706137783 0.26660460713139011446 -0.4891663374857967983 -0.49819357178668099984 0.80390567524548206535 0.24654105831570016782;-1.566149754201261235 -0.89393192514769093115 -0.70153648648435618096 -0.42328500835616233999 -0.51304404417161608709 -2.8439966551255593252 -1.8731266220256959087 1.2196754186299938461 3.0815818415213636072 1.5353737991145712805 -1.3650678136595277845 7.7957679742626302399 0.63203762651066319744 -1.4028100418089273216 -0.84759767956139131506 0.61510065748522102513 0.019692084829255881301 5.5095348333260663054 -1.9248752635582180304 -5.0913588763595658548 0.05605056784301163525 -3.9949067248100127436 -0.48440921725306324008 0.58109797126015994007 -0.72453197735190522089;0.51002930810357904878 0.030489237377522029893 1.5675015629956214891 -0.19817111046378541039 -0.18645235251098282725 0.1067333059802283296 0.53330942797930158683 0.11113742086960289035 -0.57758969816324623459 0.72862139081553045639 0.35638234697854020983 0.01535126421662167534 -0.0038917436373188062614 0.089582907906612108118 -0.49211486168114282336 0.045686765085718117341 -0.38415487106434809128 0.74832088168918453608 0.17287289757262525036 -0.19229077280797562954 0.24386738528825219197 -0.87125764351239087802 -0.072688949584515022417 0.21758525693807867496 0.25524478339718037478;2.3701863204024977705 -1.4103169505405945827 1.2872347039052065565 -1.2352904644502569198 -2.338523813837957821 -0.27820559310169207246 2.0557407361326287543 -0.12545327223927255078 -0.51786136854083475445 -0.73781433395091644556 1.2167362887412096484 0.22557752247806170387 -1.1278185960482034478 3.3041412982480946603 1.4951146059584321524 0.1184534359246129237 -1.0725089483860530404 -1.0444557820319388952 0.78333287780314841964 -0.48897999741100511839 -1.0324142167442815765 1.2854795980670545852 -0.37971977801438167033 -0.37439372878094678843 0.026129170352735979488;0.11896392500691015115 -0.15463746362473568263 -0.30593791898574929089 -0.5237905755432030741 -1.9675554097135021792 0.29873216267782631839 0.11380993509787348805 0.022282529061112388291 -0.094774465517273032145 1.1409105042145679665 0.5752097231377246711 -2.1167290136570118264 -0.28983208929192488812 -0.24941406584367545318 0.35295172732909219082 -0.2798652808643861678 0.465169723850745509 -0.31823452190333229028 0.65187739230219543529 1.1092683472118489707 0.20340169636841784473 0.5789176632513961529 0.38402828960316837126 -0.75973088361567620019 -0.093392437026843938552;-0.93406508944760890945 -0.45326682730095430029 0.98192501314656033262 1.7845599253435804332 -0.12459671845557609982 1.9973815483146639682 -1.935623601856388154 -0.3581988997748817849 -1.1238313950770053573 -1.6861782370559714739 1.0904469949213113633 -2.1449102284554113496 1.3563022769166346304 -2.9767712323741584157 -1.9355389836405696435 1.3921123465734328573 -0.57296199269152880973 -2.577883596974360092 0.72294847711521015299 0.81829113092208516367 -1.3555882712136426704 2.4895407179515638418 0.82842135423754881263 0.88511600668504231137 0.16256640625316537418;0.47204818203564624657 -0.26665190045196052182 -2.7790748555281328258 -1.522385224804895687 5.1662945775603104082 -0.86486791673932328361 0.22935056467138503766 0.32801553293186463955 4.6274450809528193673 -2.2150446195544253314 -1.0594088255305966761 -0.23845326876892358747 -0.99870835008275160583 1.2222772606135374751 0.45675020749136374665 0.45178988208587145259 0.31521821823737017354 -0.26793217406151109694 -2.5413431141909077482 -0.048240434780325289199 -0.37929671646317980604 0.036253281279820595562 2.0362195251630259563 -1.2942566063535680954 -0.061589504198726392759;1.2288985635774374305 0.072106010457891292487 2.5278082377817034931 -0.15479582422163376543 -2.4336118373900452738 0.42189907059142361945 1.0441239500888557235 0.23173900627285581866 -1.1059707951021202632 2.4341593350622865444 0.4512314834132028496 0.40602251877963879689 -0.13024639640669091745 0.59036889494387945199 -0.73215915367715822537 -0.3452859346696969256 -0.75724610737488950996 1.535033464282151705 0.60621637136023209802 -0.47792632123969724933 0.030369535490535465999 -1.7383307460950676582 -0.25454783857902846256 0.24421344600155148186 0.3885134488840343292;-2.9605070221479858894 0.091447253038857229113 -0.86295284112349457395 -0.34085902235240916891 5.2766555777559833729 -2.5575410113207945884 -4.7025961718351627638 -1.4159498657141436073 0.82780075640228156786 -2.6627201259069050998 0.33109998396535988974 6.4814534344276708566 -0.88914824877925702218 -3.2495928027218639045 0.7363124821825349775 1.1632937268389174079 0.41025778724457201418 0.014890195409356165451 -0.57733685289247860251 -4.7909451526539301724 -0.028066960544380344794 -0.99199604263914775704 -0.82990193591436511866 0.14978413919542304944 -0.56340969695083986668;1.6198832089117896071 -0.021267182012639572475 1.4030388955750996427 -0.22939703903721764267 -6.1890052805964259619 1.0530720386455498794 1.2454270847591877303 0.26127013455183750734 -0.6306404422168122581 4.0181735550474773078 0.3528999909120070777 -0.56131592093581628156 -0.25981050839607372493 1.4551586216992884459 -0.86380746436914379593 -0.99887908666048563777 0.051191487306742465557 0.651472595933028642 0.72386837561247441286 0.5597469984573035795 -0.19743091153130745696 -0.77201935410120814396 -0.3134144476830995063 -0.17861420372281108793 0.10221952510557348603;-1.0669442063132770215 -0.46982066333150812598 -1.6038953927589858495 0.54972097516856777144 0.39170331140162423234 -0.077235481640698516737 -3.3296669226668567099 0.01826802694527076415 -0.48669627154556022175 -0.12410652039602015906 -2.7253493881658785725 0.91697201267550154657 0.57732721091121752544 -4.2951090341251028093 -1.7019625454167921497 0.21736796574569389184 1.1979402743933367237 1.2918169575130116211 0.3801214606996788925 -0.1823249066051008116 0.8737381254252903906 -1.5179831483341017506 1.1190069550055516956 -0.71842609071007834665 -0.20185871913317682269;-0.88802031577888140834 0.46803118198244392234 -1.7758931004292222156 -0.0069282379645277392122 0.34776635694619573158 -1.1131707291096981649 -1.5800083541037044377 -0.25586343714582288067 2.2328119467731259995 -0.53739553669168627081 0.071084203148309016429 -1.5452481702834932609 -0.99472078110145123464 -2.2639007750092789983 1.2659908659469105707 0.25941653192935559824 0.040429984831025680969 -1.6376129100802929717 -1.3556289621714554539 0.52721318325034771668 0.2388677276692095508 1.24980617614656353 -0.014589565460812223968 -0.085535263533664251945 -0.11276735118990977025;0.049310999421864933068 -0.09684739952291371301 -1.8788931909007062782 -1.4416037529737684153 0.53886769257367916897 -1.9340166427882312661 -0.77826596595827524094 0.83996409334419741555 2.1227226651584691908 0.84250905906005357782 -1.7677278376592158171 5.4641345875606326388 -0.88836840761104540753 -0.50256285856027249626 -0.69034113604292901556 -0.52655985217303991064 1.3967423294633622977 3.6436249955022810276 -0.68470541582241462031 -3.3353805897239179323 1.0030041028175817885 -2.760999189580464197 -0.71394109662349414247 -0.45755913007621623612 -0.62556625959943013005;1.9760597767059997487 -0.63062610382344941318 1.5416371088794462718 0.15554211098855505457 -3.2395286801253195819 0.19941634583829992433 1.6303213605237927286 -0.019741711020668198384 0.59361589368674316791 3.1785533533135215123 0.54299281828556611451 2.9905404510066548873 -0.75378476583325570992 1.6683149956630956012 -0.51763963202807250497 0.26054860564751225471 -0.2172107704287645491 -0.0061556202303558495148 -0.44871020490295782102 -2.7727477700236540237 -0.37912023118313525893 -0.52820192354360950837 0.20133568967950976614 0.90389912283547924066 0.38341317789543599703];

% Layer 3
b3 = 1.8166367298084997728;
LW3_2 = [3.6160355916073214644 0.62011182079567594982 0.18553875189765370313 -2.1335339388453262721 -1.6772037768698941917 0.70381274039440566703 -0.16946292355697614718 -0.093463712756974529072 1.1590367344653593751 0.19832361034477508088 -0.79314070493399935202 -1.6059020077216568101 -0.57735667430397252797 -0.32911953931149734442 0.43031482385681302238];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.0415843642790311;
y1_step1.xoffset = -0.9;

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