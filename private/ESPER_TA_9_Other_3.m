function [Y,Xf,Af] = ESPER_TA_9_Other_3(X,~,~)
%ESPER_TA_9_OTHER_3 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:02.
% 
% [Y] = ESPER_TA_9_Other_3(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999984769129;-0.999540494077341;-75.751;0;29.715;-0.9;-133.803853032615;-0.1386];
x1_step1.gain = [1.00000001035699;1.00022983623563;0.0140762793578401;0.000302617642608564;0.251952632905014;0.0422119037568594;0.00432440760873659;0.00826143816767911];
x1_step1.ymin = -1;

% Layer 1
b1 = [-1.0987808328943891034;1.7939424508407386671;-1.8582692315629256719;-3.4266143185200887977;2.7377463672421162855;-1.6769240813995789363;1.8557655681041997919;-0.76304749338251198765;-1.2117114078189135107;0.88421164231335902528;-0.13916683873485904965;-0.010242297375490035799;-0.37740688903046076819;0.50370786474021955748;0.031031239908932539001;0.11212891992837474564;-0.54183881435412273309;-0.68756048689013371522;-0.53492214736255616625;0.96346795641748406158;0.38510194676503084477;1.3316767277650860546;1.0343608414594636091;-0.067945095851140502319;-1.7471325654979286135];
IW1_1 = [0.84628915455000897072 0.44352042420549608881 1.2526634322306029468 0.057728788159114287348 1.4339960295414804214 -1.0070341292041862236 0.19411785783369611691 0.83104064731650406639;-0.00067601009463278067049 -0.37573676058829147406 -0.33139969245894473904 -1.1091901258952563403 -0.7867574364463744141 0.043551667954834470675 -1.1297288486697936172 -0.70462347317557050275;1.4070705710426127943 0.64983230200972019741 0.32772655246659737616 0.55650976682423169972 -3.0815149610311252104 1.2870454461374583044 -0.36840746320464351493 0.50786540245070344035;0.29996791431254726801 -0.36779792983096204484 -2.3078005612038716698 0.10405142651185293745 -1.1502924616529459634 0.32283322237094980167 -0.20152315003758172751 -1.1965089140463831541;-1.0031360302647520655 -0.27109494309956100322 -0.55373900212639481921 0.23854340104479765383 -2.2605464117030904525 -1.4068059978580906844 0.92411424306312384136 -0.51160264973723801329;1.674587852087915385 0.54129977046833566146 -0.34515948661110423812 0.38107495464956048226 1.3403159647711677671 -0.89262763411798651259 1.2732148346302802899 -0.078449418029475956327;-0.16385469641783298456 -0.13875943035865676012 3.6352603594506764928 0.37726287519437073925 0.67141488271335059146 0.42693493372612972836 0.94808293000638055315 -0.33305364256741398776;1.6666985040591100198 0.98703601574166444088 0.77072944702781931436 0.50974419056786435256 -2.2261530979356281001 -0.80542402430196846641 0.86699394524314965516 -1.4229985323257496876;0.24285611088928385493 -0.26059771766596578901 -1.2368115208496368584 0.65198790069879108966 0.91413930473291193923 0.31961970026006791823 -0.32254478849991841116 0.4618925069642149106;-0.24518790217569486067 -0.82155886976425107626 -0.41769228343613296062 -0.38228957251672318618 -2.1253205856536658835 0.62967894309052629964 0.30883506882061689813 -0.32742214903425781447;-0.17688844902048786456 -0.01781886719858939705 0.058520055193895255397 0.67511765116372723927 1.9104818423949376793 -0.64635081458190979387 0.52453771390048353762 -1.4081775574639776583;-0.19069268685222168225 0.12107545419257474684 0.17854628160394686587 -0.27735429892239354954 -0.73156406404492757556 0.29818006178940825723 -0.45227065313770797861 -0.20003581991801164253;-1.1391394821657305769 -0.5100434114176890521 0.045233501243777937684 0.17081078356272341723 -0.83385949581022067445 0.85838087268506169103 -0.46328779655039731278 -0.48000154945939971229;0.38047121353186785786 -0.59147472670832945685 2.7883445217822999673 0.25649208710572912739 -1.7820184476850273736 0.56625619326513387808 -0.66920457096355490112 0.5373185222341007039;0.074966716357231177881 0.066549550602450088799 -0.57102338976516198166 0.25079477110997761002 1.6424348621205744347 0.79884855693693335166 -0.90738536160947025344 0.73409680446440817025;0.13179342602176713495 -0.25923016892228750718 0.34890245525760993361 0.90314739720624448438 -0.49205675505476970111 0.098345533465130724471 -0.20264234335054673308 0.10598643002467036944;-0.57325903142321876782 0.042645297759157610451 0.73633424352896292842 -0.29000676538008929306 0.23858364604007417653 0.36701475599166172303 -0.55932907747236959572 -0.33896427911832860413;-0.82402204063540995804 0.84266374283832412573 0.017814929101672205558 -0.23281621443562255935 1.1515893135512045298 1.0221594893584422525 -0.81115479148845659463 0.14576556429826767469;-0.07101723872311448138 -0.021801704742699472978 0.21537005395615405057 0.8822687668043256437 -0.42732809846926755881 -0.059806494463406960349 0.59492717242683457179 0.62755202863380055156;1.2442316335057430621 -0.1090578723406974565 1.7637475187177129587 -0.066273943350362116145 1.3048442402912330262 0.59711307376937960978 -1.1291645131080161324 2.0862212096563403918;0.38854845110855951162 -0.20104992981389174789 -0.16779860050775505242 -0.19203109395356521283 -0.085961650494870228689 -0.4093374078103221847 0.17472261303279509881 0.47396482282584823098;0.086068436867962186398 -1.4752040828819166229 -1.7798464346995483965 1.4610907853751469165 0.16409097084925505783 0.9583136805474623543 -1.4190311025390469624 -1.2216051379557577583;0.56303630912463842328 -0.34771898586495492145 -1.0513338289114113611 -0.46349202967980002166 -1.0485993210637238882 1.2321758129159439132 -0.013890713118641810631 0.51325794925777223909;-0.096646682679168871566 0.089173311565126173184 0.44582174796698126329 -0.96590050493352486161 1.2203184906734183546 0.54909221937604424379 0.34041535226684505044 -1.392583206983726285;-0.9267999568655141962 1.7761034700692432953 -0.44680008377052937707 -0.47141988222787195584 -1.9155560139938929698 -0.25045881483691206926 0.80707219292801535282 1.0412178557796978318];

% Layer 2
b2 = [0.32038251165962261524;-1.4612464717944091408;-4.0635806397062745887;2.6691628719335662723;-1.720820750923289344;0.58672014742497413664;-2.236311019935528499;0.52611068410637895632;1.0798835802481714374;2.1195818170137319392;3.9221791791245421699;3.2897185933209280861;1.6729882994704152743;7.1174405215243439216;-1.0291562067868935682];
LW2_1 = [0.47652651738425783057 2.4274525322979920716 -1.4103000335533226739 2.5920943260555966425 1.1547232457980169951 0.26080009039840568175 -1.2981549117967543516 0.2497558880664583203 1.6265355586421730294 0.024607300524587916862 -0.27185958898395407024 1.1016047164182081186 -0.80818456836471097571 1.5400337375640393844 0.032523886526181398915 -2.9616893306589204826 1.2536132582387633505 -0.49182857104894572853 3.8708051489359887043 0.10610642212045709454 -1.2716914562937104982 0.78187882019346943707 -0.64768855447340067943 -0.45502230471093163544 -0.24170284024370011777;-0.28834555089396174399 -2.4967273851597702183 6.0624845927168715676 -0.32348144076980261952 2.7863014211895333894 -1.246852431829562402 0.55705195367515392135 2.9302122666277310437 4.0706075180561773763 0.075627913509088359745 0.79148393337329181474 -1.4533348057989885493 0.037097160478207893974 1.5420424610881342531 0.50186206461679128132 -4.4135677627508842491 -2.7389185390710113488 -0.00032193956768228164378 -0.57558889090106635233 0.38965381086594774729 0.008566261979930791387 -0.069767489037842855826 -1.3603767487475244558 3.0478011382312892863 -0.012185415844558148898;0.6013868167452680602 0.19568468345810577369 2.2939888012608307122 -2.1261604778882188249 1.2245261540909879727 -0.42137883847027080009 -0.19305747131750841672 -0.28625717998734312442 -1.8713727023669302074 -0.52978433454925799584 1.2970688647937262949 -1.9376066937535851853 1.8809540386923864208 0.82687154431187381842 2.1524812454112778326 -2.7333280443509480051 2.2223008991877111207 -0.86804322956471158257 0.28763503204875889852 -0.37791542710618447609 0.74048557372632395346 -0.95183628062837233319 0.75698343545619695139 -0.40081501161696581059 -0.42712685212314543959;1.2741746891621985593 1.2307750684369935801 -0.92734348012644063353 1.6319784491311635222 -2.8200256643797807499 -1.7697160427636693392 0.010266019309386132524 0.59588988891781557999 1.280449449427173203 -1.1977999981541018748 0.14322673273760305745 -0.47774070285662451063 -0.71492526666941280666 0.085793675383801962231 -0.065374763640911742746 1.1600842396939976542 -1.1081437144819421547 -0.089435483772271381908 2.2915957825602113473 0.34479829906219028324 -1.5998828553424364607 -0.51807408684573152957 2.109824931635970291 1.9219108054059124147 -0.70161841936784707929;-2.0063524033766344523 1.1491464276894440832 2.398248846947997226 -0.27643515900223486481 -2.6874136957405587722 -0.25501417248243501978 -0.032916639102882394585 -0.25583182894977313238 -2.8236165112112039388 -1.4172972249777298082 1.7934670079029710887 -1.1960594686693974964 1.8215533595091668584 0.96627161307885867103 1.0542750115883712247 0.10635023184102439242 -0.53700779772651019428 -0.35554351431410685658 -3.3693317712252919272 0.67834915724831523764 1.8311574685635736426 -0.07615827275851863587 0.56872880392722680032 -1.3897516568252810121 0.45727512171044898404;-0.22028392402133051275 -0.14424937713605182066 0.13894943499369510898 1.3244888631395199674 0.72718827841895439246 0.20148087147226417803 0.010007702937322272146 0.050204042137390610112 -0.01030068904140720755 0.19909959742556401774 -0.87875949593236890589 -0.48408807704832695906 -0.63692520168337407593 -0.21429465746565001805 -0.038227718964692881942 0.076452681177849771132 0.58458167127411375663 0.17759323641871507804 1.0019147159274748304 -0.024281170141219048098 -0.98725454174681948061 0.096545896966719488286 0.020000260536797251354 0.33734846270928964262 -0.39353264690035566487;0.12348923214410860438 0.90033389006705355495 0.49204835493578968908 0.0090251309753591468787 0.5106272132220384119 -0.08590730521618779314 -0.052331857165747168448 0.033991827194774726362 -0.54310119343924190272 0.09013661167965647536 0.36862131449297819152 0.52784827512378484915 -0.18830217206685714859 0.30049525383456232586 0.14041400638972237336 -0.75667466460618648671 -0.11442796998195765845 -0.03301051661164990797 0.84440638854750371678 0.14518701151216703571 -0.22374753650858353327 0.027785624005619211779 -0.10758383355833947559 -0.48984216665196389506 0.057281273897804768636;0.12281933599467041718 0.45081086771050271622 0.98635569693259328439 -0.31920988813817247065 -0.18604598555874196641 -0.036286736753351991891 -0.46956360962094240152 0.23866306868725942203 -1.4062375684577310686 0.77916793392602401447 -0.39130379972177720127 -1.795223976554942924 -1.4227465324191486129 0.41338329984973143372 0.745702718768977868 -0.59665992784898691514 0.4270794249663499853 -0.115650212017517795 1.0564575794293360467 -0.1042641997937440862 -2.8163369639385860133 0.071950691995061211159 -0.40002738436992735238 -0.27700050577957779918 -0.18445804949119001814;-0.72896162542621922853 -0.75353726673830245808 0.093704008414312298103 0.76724136198184023083 0.20582351037856025378 0.29485912561398747167 -0.32208978719196251772 -0.49961373602469894006 -2.6160522388171636443 0.55389619202480755433 -1.3134593450848504048 -2.1525685809192536269 0.31692355869673649593 -0.54093036206405220589 0.026676527809745605863 1.2800064088245115546 1.9017228706532045557 0.59671328004808976697 -0.62405099066950120434 -0.16287156900999757991 0.5595146960076817777 0.27269140145741865844 -1.2936760859781857302 -0.41559314885448928045 -0.4864791690105311206;-1.4977532832122486539 5.0337128547797096445 -5.5761398619548332434 8.5966240208355131358 -1.2542416142970760351 0.4183225749253922654 0.044886154251682339189 1.5869345715160825261 -3.8050277422664153804 2.7999873905236554172 -3.8706957437500113528 -3.9259882998384263431 -0.62360741106495043429 -1.506264146775039503 -2.3395115079959318827 5.5979994013931797525 0.081532795756168618961 1.3616653401512288646 0.079060017283832217938 -1.3303475915587086309 -0.24394442651010639356 -1.00513468110660531 -3.8844742926592212839 -1.050436386272946887 -0.41168694882261058776;0.064360883342179459055 1.8937309524083976164 1.8353306269316249644 2.762245992176758147 -0.83957373176702709827 -0.51287721930962293371 0.048974693334240676501 0.00064877766951442015358 -0.65458684021582058676 0.60451393387621810138 1.0183865932350653072 0.7212399772985748081 -0.9088301537235458083 -0.3640663665616599709 2.0315406722244544468 -1.9302420404696392087 0.47788172402328316091 -1.4345367336454828422 2.2047601360528927827 -0.070759208492956596204 -2.1852634376509691982 -0.19139489169436393889 -0.30664801609929381865 -1.2792854331374023946 -0.61774859080857524862;-0.53979485538461102756 -3.4670812738091876248 1.7447374814437972557 0.12202992478468835391 -1.7622442572437542196 0.67135068894184191102 0.61090967113644756292 0.19360518325730163847 1.2246277773272871148 -0.44929377012345184106 0.049663167522396710341 1.4253692159149791152 1.2502456923068312467 -0.26933661690526150556 -1.2072125310261514475 0.90657475588942781908 0.47807553717862860676 0.74889096182432846049 -2.1314003399398364635 -0.2779036010910133081 3.6560802794587963227 0.033319574753607902884 0.33913054477986731561 1.1485761056533823066 0.29219616225073541393;0.086424750102583255962 -0.080550689386212834253 0.76248613422095523617 2.047219241744726137 -0.38092715433126211888 -0.45955843474216379052 -0.39153579453185832771 -0.20921077694813006165 -0.96635740443090978324 0.98578626951748715701 0.10564842445407729432 -1.4584834429778874565 -1.4732353506323541126 -0.54278029901017321723 1.5962756033873897188 0.081932879790849205692 0.59320314706399523974 -1.7293128025588102581 -2.4611981150762676229 -0.32779860970578494905 -4.4913961980135805874 -0.31413245107628440245 -0.60151641746304340685 -1.7042287248782521658 -0.60746512544662567556;-0.36390040073661461539 0.82438772892696976502 -2.8374173059462983737 4.1427336781487928974 -2.5035140301517402328 0.88460053126131488188 -0.9005275166522445085 -0.4363972871953752386 1.0237898141785677364 -0.75124476159257758123 -0.32950311903761742016 0.88475193440328714356 -0.16347775964819158401 -0.90936014092068617742 -0.14235746314365962939 1.2470696351203787167 -0.45287922120329626718 -1.5104729570932375893 1.0701424279884208524 -0.62836201180425377277 -2.1674238427308565313 -0.18354272629002857387 0.49437522337893036184 0.86448297561596154637 0.3839470657062394876;-0.56703672872309274222 -1.3783768187810088168 0.63075814510039862615 -1.8598917757900250702 1.6355553845852406347 0.60736466770498076517 0.62305627285601083987 -0.2486072372474285308 2.7288090293311313417 -1.1457038132551053966 0.30035223449960363196 0.85358162612488464038 0.040792886542032405495 0.017079616467040027034 -0.5136674165036296813 0.35027593638401216536 2.5325266994368154094 0.56457441404925901018 0.62096747883867731144 0.0013850891765285972337 4.9346911436906752968 0.42037185306473590085 1.0766581356171058825 2.0114819785259707707 0.91839613354330473793];

% Layer 3
b3 = -6.6745142295756387796;
LW3_2 = [0.32988180131985894716 0.45190505714700207607 0.070327624304306432523 0.10142203052478002134 -0.16067112426982407825 -0.84986617150776033736 -7.3748650460110960481 0.40412960605286929461 0.21167219080862653691 0.030806717227521061842 0.45649604307942159842 -0.64346653547907850523 -0.40689381597448248673 -0.36070507506795068675 0.22223069709578147091];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.00492610837438424;
y1_step1.xoffset = 2075.6;

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