function [Y,Xf,Af] = ESPER_phosphate_3_Atl_4(X,~,~)
%ESPER_PHOSPHATE_3_ATL_4 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:27.
% 
% [Y] = ESPER_phosphate_3_Atl_4(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999996490807;-0.999999994516886;-40;0;9.1619;-1.99149636107278;-177.232103709389;-0.52];
x1_step1.gain = [1.0000000017546;1.00003626070655;0.0153846153846154;0.000309885342423303;0.0656325902039552;0.0604107502911417;0.00425400504498441;0.0145232735458572];
x1_step1.ymin = -1;

% Layer 1
b1 = [1.634950568907721502;-0.82814894769719205048;0.60177800461876518323;-3.2993191972311861626;-2.8328591454269229644;-6.0246151581373927897;2.9117171365059624222;4.024594940612063354;-0.11389614850745619079;1.6252303528417653133;-5.5055806910828835044;0.23676510224425298401;0.59118135834757190583;0.23846288807917856434;0.10918349580544103872;0.43517960556867801847;1.4867128203739436998;-1.6029548535539044352;1.0941230028425339427;0.22933166130274598715;0.58324935847490222418;1.1588912162372293491;0.16758519372856914287;0.92642080280613570142;2.1821111376093336176;-4.3304060137874387237;-1.9454608506030859338;3.1237535079533023108;-0.43326030186433589497;-7.5435600424598368008];
IW1_1 = [-0.43714744374106878633 0.19974540342802968307 -0.77815558060389966588 -0.49148262760963501439 0.43573834815221645922 1.4999448648928224159 1.0692644296019993 -1.693189989709807719;0.64610188856660255574 1.2500079294182944167 -0.52425774041083206267 -1.5805402357829558824 -0.15179766473705860741 1.7778046263182065712 -3.7480644115577943509 1.3621113790732024551;-0.34853637808010862198 -0.68546372972846070226 0.0264926628579689738 0.3880942873216277067 0.47514509630660861639 0.25477914576954385772 -0.43818632283661212989 -0.41137978406255604202;0.45637223925735709296 -0.0059815521023866757497 2.6207609982966033613 -0.64702533158379782474 1.0346466408480239352 1.4498936516057663315 0.83459905588445715274 -2.0510659866793767847;0.68540049584011419892 -1.0137315973376297418 -0.4284957087357518235 0.23215731606704104184 -0.34736525254761585479 -0.71877333587858183162 0.51593018134101464867 -1.6391246143659772283;3.7207870713248580863 -2.4669143947919414117 3.7848655959938324322 0.64834453856522222814 -0.98953445793577043954 1.5659813098326258451 3.3990439011665980473 -2.6692215677237145499;0.34311571151518249767 0.32919377295059498723 0.36279415344173349123 -0.23108104832148582131 -2.7972208588479485769 0.43696479494819895351 -0.86411643579364505463 0.67408200131425055623;0.28740304468518995673 -0.21962308560257551293 -0.52664368301756958601 0.047585267235135009223 -6.7555436664954777726 1.2857147379520867947 0.60065683080078069445 -1.1216968131092677208;-1.3501361479160030044 2.7103084917172926005 0.11555779434265205097 -0.84289373257892485913 1.2943031594422675923 -0.4471098096849519532 -2.1344016471443296723 -1.7176752582613268316;-0.8343664266475162572 -0.48565536095877720468 -1.9417973216518609192 0.60379687996583009113 0.29859189258700308267 0.19808830177812977724 -0.78015073088231745579 0.010033420710900558398;0.36463279925714275898 0.738086670302391612 -0.41162996705867882508 0.15196389333442547609 6.8144244223966126128 -2.1484169088923419366 0.098053742983553321411 -1.2884518122032244669;-0.2752891550657866615 -0.32787536559905439137 -0.29509789871610370149 0.13612403571052200668 -2.0488836995031398658 -0.97700690436600279298 0.057085188053660473884 -0.2996302020703677238;1.4991527752606415014 1.4189429945335705341 -0.92094280693032792851 0.57685068112505177851 0.48615789271632914303 -0.41770633094445253075 -0.57646237615286366474 2.3581783220440857285;1.3885192062972897542 1.5956259420873339927 1.3175686497659759855 -0.094260636962332736144 -0.18659052336307480058 0.49432091989290977141 0.24456616558651056437 -0.89992673922306376522;-0.58224895152910383089 0.19261467378298219311 0.13031529536435695893 -0.36844668917374073791 -2.0434237919994067134 -1.3696774073183433096 -2.0209688224325783601 0.89649974244513841448;-0.23936613328188913186 -0.67879866530014820736 1.9945249873026291709 -0.59695702497801017561 -1.5760136635909531844 1.6832368239737529603 -0.72151565412648832609 -1.4313872289495928047;0.46387287258794868139 0.4000019648555686036 1.3533314904081490404 0.72862372683224763126 -1.312601441955388637 2.1972413210916070803 1.7400799873320740296 -2.4054405561810985326;-0.87319402875250407003 -0.92002036626358285609 0.69383789156702024847 -0.47385406429639032044 -0.0778416953620138935 -0.97198831297603871526 0.9533407017529678118 -1.3239997335360025321;0.23994307990588686907 -0.38790682725839065181 1.6293279661274164827 0.31196907272221346963 -0.43182797077349649451 1.6757573759485373532 2.2979419112879870823 -0.15328664612203904416;-0.34254702843206707996 -1.5201772288847419379 1.402488414215361745 0.16709319685954029944 -2.545242182406957987 -0.62816605259157443086 0.74293768957681938225 -1.3349643058501230453;0.61865598675013400154 -0.31535262222101323459 -0.8799747725108991725 0.87698936993777698579 0.11619638515768809794 -0.070428723140085039423 0.92080227767493338931 0.34418166762940261005;0.60708995178671809612 -0.61558258856010328319 1.0794598275239657426 0.061532777481260562957 -1.9960136750476042966 -1.1097295868612935266 0.12043652997441980923 0.40416877193789640943;0.86159976794101444941 -1.5993234885058933425 -0.24445572305880602926 0.333908704534044809 0.17322409124208773545 -1.1009624937530979594 1.6544215264358250739 0.90966091082723554706;0.5739260062070802304 1.1858099194109599228 -0.6208951842718353209 0.31296360437761311379 2.5810111452206232485 1.1524638245709077911 -1.8769679394442320142 -0.80868731225906353988;1.2734285197464716433 0.031235587386437425883 0.0084845855411448262151 0.45432788246562888501 -0.2141969809952163073 -0.24455146458233981144 1.147005125373707024 0.59087519526028575712;-1.8401986617503225396 -1.7074539305170233217 -0.32028534446129669488 -0.28452918747220601325 1.4060761270665853573 -1.358415272793040085 -0.63677295168589631569 -1.4021396144152813434;0.12206102728404792657 -1.3867276065307094779 -1.3656953488240739514 0.51365610635884439983 -0.57861600600093410218 1.3768314890422643781 -0.1354249497407256364 -1.456734141052984377;-0.72036453877987072225 -0.20338945901392030402 -1.1434560518987975097 1.2878635377473817147 3.0050812365652594949 -0.84981730615072514912 -0.37342403555607150967 2.8917966235318308676;-1.935038992432562388 1.7305954493251225479 -3.0863163283153101091 -0.92124599591194566983 0.41310212901358722704 0.94037382124993307286 -0.36036679536888621689 1.7885585565208501624;0.01946574994748625359 0.64412294289241500689 1.1814396368130026804 0.19884679459685772329 7.2828648399742696995 -2.1687671041986349429 -0.74565700314042926422 -0.46007635579218314481];

% Layer 2
b2 = [-1.6956158405269097234;1.0443877151679479276;-0.46022928699191184565;-2.051366885628295389;1.1492752870067153292;0.9583539741159634584;-1.0642234238382335398;1.8743342587521760745;-2.476681128657209463;0.13455505059689223946];
LW2_1 = [0.82763264891222776409 -1.5996103596818904702 -0.3972133526861320596 0.25291074447100553302 0.36555911785188333063 -0.051269311336090840625 0.43708550047025074292 0.048799869061187731156 -0.524053236911945719 -0.55393362474471719015 -0.060506655326660586935 -0.44953693092436919354 0.60039725323237347343 0.054675777413328560672 0.029799006813589778292 0.14213115317312954855 0.4147338358300438621 0.3352882467265378974 -0.32465874227193564083 0.14451817218181103875 0.31860907934778348594 -0.52478492980334423557 0.84582997735334974898 -0.40558943858901125301 -1.9284279044703496186 0.042073077847286845243 -0.082193463566602023573 -0.0062803972483201110644 -0.092122472026943291734 -0.2541607475851335729;-0.06389084692320698422 0.26296043618201153658 -1.4276069653966971806 0.11868010112125412792 0.51558979241596780696 -0.034076062227442485697 0.62284864900948766486 -0.28993668553035112367 -0.017547782347989527435 0.39475994083935028733 -0.58763477361098481744 1.3461798048088202684 -0.67757478743303978241 -0.5145323797513688957 -0.044931053493565860368 -0.15432360553274993009 0.047962266116889085144 -1.3226724185014004931 0.12728742339836243702 0.96696309471915031786 0.31775318595798707211 -1.3486970993678915054 -0.088292900826765233213 0.24000602063330572777 0.41853400813625873944 -0.39864517243308961181 -0.74207587736516900101 0.35898393306836612338 -0.31498948123264114418 0.35328030090239526118;-0.19812371864111638642 0.13399755573446611723 0.71903680028631355992 0.68644872248618749033 -2.7568685050036956241 0.25491444850846817216 -0.057401426118503420803 0.37935330777066400554 1.0888001287477595547 0.75638781343357774922 2.0711106455784360492 -0.88698271327707012279 0.17995400754691592837 -0.75471087606231734846 1.1799951867685753992 -1.1086865124314322362 0.61444272644597208721 1.4559716743550574769 0.041008161069662520115 -0.72775276599408289524 0.12985106036844096256 2.7575623286143997603 1.6907656576710947682 -0.5045642917533380567 -1.5085817710722058127 -0.23953981085132752815 2.0281137439490652952 -0.78661929433490640484 0.40560980248885508681 0.17908775324409487162;-0.3362876586993756578 -0.13497208814721009529 0.47045486566473360135 0.77592773417071581044 -1.2722761005724620986 -0.36055501432780856508 -0.2547183862609859184 1.9928838501114076731 1.0289091149999638475 1.0375563942004772944 0.92030726557909314778 -0.30795777271311991496 1.0793303282048620773 -0.020013980797608927481 -0.39188878434855123345 1.2161476309898144876 -1.4332220347136874761 -0.82814603125400965133 0.61422783935967206759 0.17321743520138654926 2.2149000514374339588 -1.7464766075257134315 0.30395720562772488016 1.1632487417308274846 1.7286044539906111339 -0.15448253423070623658 0.062887353628526460048 1.9035919139287920121 -0.8553420695298636911 1.8920819653680318595;-1.5915154873720964712 -0.089375772007392592644 0.22376091800081648886 -0.47014660440741246061 -1.0167447069526009962 0.18403401135518279719 -1.8919170705845143043 -0.56962525306599331998 0.17831721964714233875 -0.10961130951417150103 0.25979871850941460565 2.997571994651151428 -0.0067121959847979374356 0.47376705456661666327 -0.75262751543536499099 0.36936464951714070848 -0.15436602658768797114 0.026284941110040167117 0.55263782353743218234 -0.75259072779046876089 -0.039810986835061623612 -1.1307748964428181448 0.50288529483216115601 0.94957384028276647925 -0.26849383234227452988 -0.35929455118172176631 -0.9876352076219905296 0.057831563332160648705 -0.24597834245275768117 0.4712537020299072954;0.68641497573959120437 -0.45752123983549430886 0.45737556565880688186 0.50674339889837016759 -0.60657447670632413939 -0.14928096569402141136 0.80571892809017620074 -0.94260081755432834072 -0.25427852909717540975 -0.41613054979533148359 0.75751817837388801813 -0.56596026519923947617 -0.42520249252275371665 -0.54600589943870248 2.7411623002233893587 -0.42231826012450418562 1.01006005472236704 -0.24093169706707137645 -0.45225961518339335976 0.16824688646798349745 1.4720722686726845918 -2.2533136492459675537 0.92276879392269173241 -0.23588834242916961736 -0.46439194059146726712 -0.049479028105387908021 -0.76922792873003642544 -1.7280894769894106222 -0.54461531297836252019 0.63889580505709575586;0.31635606289518986012 -0.64786842804986777278 0.13171195440657329501 0.17018983120071018433 -2.0497018783254215002 0.14760291318906948455 0.45020344772233128472 1.4156596352828025864 -0.63081153476242146638 -0.23125774738287316334 0.70642224008639453725 0.73316160033260346918 -0.059939153666280504951 0.14418695337475093132 0.1514012557949949711 -0.044762112833585873672 0.63414422362954303569 0.49827263686461525927 -0.58590303083659034389 -0.70696481093684793162 -0.17057038899025003809 -0.36076397384235153742 0.43560854045467939377 -1.1312749871010685521 0.054758033363868266474 -0.029922534358791982867 -0.12738650429418302279 0.34596382215745452582 -0.20368111405634498068 0.35047667398511234138;1.5915670968901634019 1.2871207661191021998 -0.26138688105041762988 0.07843251605228575285 1.3131669626436943688 0.95777929198842737257 -1.9350219341977761278 1.4305283154445960214 -1.5761512545064384483 1.2576743444535769534 -0.2298351186688697978 -3.4621736723346656639 0.64842389327423732848 -0.75448109210372316102 -0.18352022281326740849 0.22662813073704293765 -0.8126201895973153011 1.9746398669596381126 -0.38337352421352388632 0.27538587880086196069 1.7846549148436894328 0.7273194000703734341 -0.86570036522199478313 -0.62624821314259038196 -0.098729210805502384818 -0.75809915254879112201 -2.5467208515155550508 0.35852717912610437834 -1.5998099267705978566 -0.088142252978048979406;-1.0476321437671998194 -0.98633571069689063293 -0.39570316456606835498 0.067918737983747590192 -0.21338212387420740779 -0.83695573162080882934 1.4008247171037178092 -1.2516834507351037864 1.1140412090101337039 -0.90705477499812525721 0.08025881341576363015 1.9585755834061087111 -0.85842505061830676194 0.56407632755144687664 0.83267037716813618875 -0.69396952077709417317 0.70484817377119679538 -1.9936231747999981767 0.44027970144733208357 0.12809455713569131707 -1.6458623229563573709 -0.48822153465747031298 0.88673633749831248796 0.30682232885849586301 -0.42675467102299685651 0.44330565695553464378 0.62606214118780634248 -0.32053592045842554947 0.57353346118028381007 0.24030771060227407165;0.348022464170722301 0.23293682109179303374 -0.14970052078067933032 0.42791513182300533469 -1.1452494952284824059 0.17811354263916404084 0.98953215986919185188 0.53003184657559099247 0.13797814850293471656 0.52015322974456434935 0.18772943850284531941 2.0565113455825190236 0.17186239359765148604 -0.12132559668212976323 -0.95291613029800270596 0.058435266067054819628 0.040150781003738360286 0.3333030508209287035 -0.2954523951920972058 0.13938812819156082279 1.2192727061202774941 -1.0507834686500336918 -0.10605615112788623067 -0.14987626246704127686 0.70556272479800286046 -0.093442217474772465424 -0.40492016585114865013 0.43688162574755012857 0.11019463587072586552 0.52165038788953976834];

% Layer 3
b3 = 0.87116267682820236473;
LW3_2 = [0.96897815591854974393 0.93228631694682295716 0.33865416179612944925 0.25869335908317619976 0.42532989826953349066 -0.38841421434490253084 0.48878790013941131321 -1.426639162792229687 -1.7984996124788183991 -1.7444346600684632609];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.604229607250755;
y1_step1.xoffset = -0.03;

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