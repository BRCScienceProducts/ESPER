function [Y,Xf,Af] = ESPER_phosphate_9_Other_4(X,~,~)
%ESPER_PHOSPHATE_9_OTHER_4 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:29.
% 
% [Y] = ESPER_phosphate_9_Other_4(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999984769129;-0.999998793562952;-77.961;0;29.715;-0.9;-138.904784718693;-2.02];
x1_step1.gain = [1.00003298043486;1.00000060321889;0.0138606862425759;0.000266418009857466;0.193068829037552;0.0415843642790311;0.0042772329208737;0.00819772922900357];
x1_step1.ymin = -1;

% Layer 1
b1 = [-0.79044912891701923918;-1.7881353440756320161;-1.84964945089649202;-1.4035070004924028453;3.9506444804681817295;0.2533835367442904829;-0.8958499050882569037;1.7371589303324579401;-1.5793780101599186327;0.64662068925205673509;-0.39229549595321644428;0.47363298966674660662;1.1102775624518324005;-0.044742975611351119836;-0.42702461387181672725;2.3340304827768449947;0.36337433372816030364;0.021798991722558825473;-2.3643207668395400667;-0.52127188123608203529;0.28079468250943317997;2.6064912863517553099;-2.8087240254229484115;-1.2462697031834391037;0.065009102702192830825;6.9840067818644184783;0.87506125942926038519;5.4271947798499331483;1.8508487821251338179;2.9436062260037871852];
IW1_1 = [0.038720798811272029438 -0.070221837015704599572 0.20373410314826814749 0.097459746504166056003 -0.72302937460035510142 -0.50413776001227905699 1.3596994823812760256 -0.59956823309207329942;0.58411708835284692487 -0.53975792070915007415 -1.5106131553484729579 -0.026268962649021791039 -2.3270086701851915301 0.20541865025223993158 0.41786529773124014842 0.59555950875041963055;-0.14371289110558632673 -0.17885612396437702842 2.2664792322561893023 -0.48539446925372209396 -0.82142128767151745272 0.48829204044322410683 -0.42734755416241648751 0.23210031273445491662;0.60509659464434928378 0.40880394496739591581 0.2803678940702296063 0.56902027270778321455 0.28511838411723694486 0.13629772899386835561 0.87798593072253261482 0.83160677298369478638;0.31327648676761710167 -3.4837960109372407835 -2.9746536472211628777 -0.96569564214751391074 3.3253280908764919488 0.51196809922079311583 -2.1416795933611543212 -1.1117244745145806739;0.40033364761799622444 0.15334613521496079369 -0.13151502164098946568 -0.12363179292763935846 1.766897847535044086 -0.7608466580411353819 0.66802973784141139735 -0.17097410587934189219;1.3395011988591614127 0.63169930451440248209 1.146299319921106008 -0.097388508772348128528 -1.1516428383489656362 -0.71529057441303767195 0.09513253794923058615 0.52454748023003616719;-0.46411865160864113067 0.33253982579870600134 1.2390290927746716587 0.047938697002683959558 1.4313997790039951763 -0.3492108159994406491 -0.32190662526538910138 -0.64744983698953118001;0.224410984825491433 0.16999784192521391613 -0.20274442262649153279 0.41650137230079264938 3.2109214133317474094 0.034224393949006004512 1.0498461435747072912 0.71372815705660053176;2.3762747084734150427 1.4911475088529186905 1.7517010011468829855 0.085690918623848047475 -1.2977575063551982648 -0.23642710815013387449 0.12300152281526809117 0.2371488023097208242;2.9181655402856883086 1.1178901811714281322 -1.9246522523557552109 -0.23453703512452511726 0.045722350471643843917 -0.066690766594015488122 0.52902750580022162019 0.1378793214981813009;0.077675911267988700937 -1.0362019998829008482 -1.5083649891065029625 -0.53132222501806891657 2.2664052742264457763 1.934073450650888315 -0.27008242134573490212 -0.88835872153644224181;0.12979772368779488034 1.4965651846840168915 -2.1054136775907457135 0.34567833110467505175 -1.7902643088834719887 -0.12029477158299674289 -0.50947467418082936774 0.5258878637290420599;0.48905892013967561249 0.93978770514585097118 -0.013623912870812441428 0.35799998776028363334 -1.168855660655934825 -0.49132334252945408792 1.230419645641258608 -0.41212693772697850392;-1.5838293517772217278 -0.9556352981236632127 0.87876208169531189185 -0.084468192527672569803 0.3320256813351252223 0.071375800101546010845 -0.53593581787720001586 -0.36572818006198259955;5.7055025074017082787 3.5081360149099856116 1.8659653754068958875 0.13951003058106950516 2.8891918142959531757 0.48528520570106548071 -0.1123591421282685715 -0.62351629825671484042;1.2694859297205776105 -1.4172112289428462351 -3.2455758647308137199 -0.62784370840905256994 0.34415723733692937802 1.4289462767286833511 -1.5486573743328335695 0.42038944657049548415;0.28270970003939893678 -0.2792902848480402489 4.1202349435375529296 -0.74305384961352649587 -1.2251905210133418045 0.17438570115235016433 -0.85741226735008457815 0.54228482902649488562;0.32783953189383713278 0.070857863393564299304 -2.5386166540498042998 -0.06380096395734854986 -2.9879012957701465147 -0.68659942720190281218 -0.46648573012364291657 0.92695667049481467181;-0.49566396115635574793 -0.088179393877581169203 0.40041461510151876713 -0.26481325907483943549 0.83650456147661111928 -0.33368158259837060742 0.91115044198512706863 0.17236039678188438962;-0.32184090742884008396 0.017468362970302825365 -0.36144017918650672705 0.11843604935065989159 0.51792454737517545915 1.0476590591648022865 -0.83943472163272447872 0.82727981648384441016;2.5853880870339800424 2.0404294332466919037 2.6753544089052123667 0.34248221643972964756 2.6790799695377400802 -0.56101513062620422811 0.31428545728214773991 -0.6801193311688077392;-2.1392141682524230539 -0.38973653011378167621 -3.5763062552749285139 0.074272052607792640733 -0.28099980685931941204 -0.84606141004197288336 0.43248002541140606603 0.78429580353790595559;-0.4372516913272945227 -0.20072881606928641429 0.0097055756096470231081 -0.19201023018994761715 0.60102842844496762176 -0.2845234479686836182 0.34532902200822640504 0.029580395003662489362;0.10016010507916990602 -0.17808753444068345373 0.21850584833235414672 0.1279394570729800451 0.13382507128895773652 0.36393215600955308719 0.15962058412710536381 0.30482356453121434159;0.36483743838086196698 0.17488822381517488136 0.51460779545644075306 5.39005677394511995 -0.35659748720579986792 0.95393285067122512988 2.6358830558809445144 0.030497955783323999618;0.60016416942076633578 0.10667640864808866641 -0.17083656137821262577 0.14589012502557893725 -0.43322782964880868217 0.073619060437782116169 -0.38669158285178717449 0.27189921152422957817;-0.87105449719642080719 0.2128839932473386154 -0.76117874795204187865 -1.0466539053679349003 3.0629167601066304982 1.8642556243965100471 -2.7984243559064818641 4.5802079441771637036;0.43620599727367437293 0.38613510648562610061 0.1900164251660421133 0.36818200366559855619 -0.51201571343818852444 0.56958411272313935747 -0.8388609709790967317 -0.14993846618139181071;1.6987050407051373924 -0.75189429951918085315 -3.6627216524221020144 0.70391479888432439971 -3.3213256207466947956 -0.11327680601782234848 1.1553496006688985798 -0.15002471413190388017];

% Layer 2
b2 = [2.9638837910396755859;-11.389807820337397359;-0.091722014719299430063;-3.7468169537034086147;-2.8117841127361313802;-3.1175127208082900054;-0.84485577591132865471;0.61563147162109344013;6.97216925474333582;1.7935180051398493806];
LW2_1 = [0.87780111765133472801 -1.6269550961336523009 4.3377944029134427595 2.2482510437808156389 0.18602008644737380583 -1.4966058167642695143 -0.13720407875225235084 -1.4484695132170277709 -8.9764109720504805523 -0.30013382242884167894 0.14327840289258145234 -0.32325572297297711089 0.26992477069406212165 -0.23457629993888862163 -0.86703556274016502226 0.0071564288118686116696 -0.20389386319190197505 0.033231010947108917397 1.4257511275389695982 1.2939764228157444315 -0.49386855509418092769 -0.095810893824250967232 0.56706258186270730448 2.0834531538678504603 0.81969885281230148166 -0.97144627600283217639 2.9031807000720433187 -1.7215448148386380822 1.1668898957495161817 -0.77653722547583592384;0.19656004460222797903 -5.5877605851624041478 -3.0591860795158041242 3.2435512190748925221 0.34569135695420000198 -2.5771536992038184266 1.8396798329978398812 -5.9820169973117032214 -10.09978832193578846 1.04700004808499747 1.0032454199230396164 -0.25790448467720561432 -0.11971799671130228804 -2.3647037447234007246 0.26880560331736352842 0.1329407965370035527 -0.56929235902225405752 -0.75369168675011155578 0.10512618011827967734 2.5617011180089650502 -1.2729575766936724879 0.82572955155552496542 -1.2501867178571315353 -7.1266794088281706365 0.28121611150169362192 0.27425479700126509375 -2.0639636834996486492 1.0569378650466187963 -2.9813337785377553857 -0.7173812030476296453;1.7748872295230562202 -0.32093237245143535485 1.021335839502680809 1.2063020264821535665 0.32009065898676053452 0.79931402456503819476 -0.15714887735182456185 -0.33968177533375498722 -1.0596133445121671546 0.21127114352392964425 -0.012972109191657966304 0.035384346020757878604 0.1133093180746702483 -0.70587547312665166466 -0.061448289972510360124 -0.09498028234876894349 -0.060446152616722356732 0.31232001522261948478 -0.0099310677332174294996 -0.73310051366377360083 1.1319332866866267384 -0.1439477673181618067 -0.12720656427887253037 2.8826365602533856602 -1.4219814691466734491 0.11049510860944189439 0.7995442749619415812 0.67094492267727723345 2.5184953442642865618 0.065963855711683686001;-1.126400324817106835 1.152913504404199152 0.31745578830398585302 0.72150785375277493028 0.68399220687445094757 0.22896142733628593868 0.81989371091499785305 0.97206949752706595103 -2.7375447605538445472 0.11657560318572318669 0.41011883606049054363 0.50923914799852554314 -0.6353359236347498884 -0.093180509563239422022 0.27504985914583990336 -0.15036011052505438013 -0.25889656243792374957 -0.3622768826212287574 -2.8417294510317110401 -0.11461495166743304597 0.35775446926656023772 0.16181004175963464853 0.10324302311581028124 -5.9303782731130656458 -1.7253981511068103849 -0.40328998230167284467 -2.0270998378910811688 -0.88791170391344831359 -4.6460563320408025945 -0.28011931803690909293;-0.039314762029337577132 -8.1322678108702586286 0.66040868786025930248 0.87628883135997337472 -0.060056997833114113272 0.22000632621199450734 -0.56936706348522958532 -8.5410682318062907115 -0.77327423213861512519 -0.60928554509934906847 -0.15185205481980595943 0.031736216510379090805 -0.55250349768111317594 0.9349934019842227606 -0.32399886380756437454 -0.14572630994695282003 -0.074557828221910510402 0.64823212747061076389 -0.7786818023365870145 0.44217480575477086102 -0.27318994204446950258 -0.2783927860866182713 0.011108639935706066462 -0.071746576761810176848 -1.0084303919963839569 0.067982774884732546927 1.8665218762509876438 0.1909516391413337566 1.1245863123613941692 -0.36807132583869228704;-5.3986278674667289579 0.18610410396685431178 0.39337220440248688025 -0.038080154413975025873 -0.41726487117454219566 1.5611620032263024971 0.54501540931138037216 0.39320314395284039488 0.17200650682418497373 0.12954827598771911923 -0.91432029207110099289 1.0187198894989522024 -0.3292677121533950646 1.115102548735736443 -0.49753774696691188684 -0.41532377810934556495 -0.2440520841980717559 -0.76661692231161138178 -0.67333050453967346893 -1.4096864099705597173 -1.5495649250182703671 -0.13646922583854712019 -0.64070357382722364914 -9.0419101013493214936 3.2162078002737173321 0.27757750890819971046 -5.7297137071681376597 -0.94475937338939230958 -5.0271762497230225719 0.55973898429412438649;-1.1813270211723641001 2.9240734547728841619 -1.9180694092834282838 -1.1505531139250952943 -0.11867758539940095885 -2.1282803836563126687 -0.31331960646711165541 1.8832017102797902197 0.96840778683905037738 -0.45759251558149283134 -0.32369096953448811549 0.25223076776243547048 -0.58279144027892781921 1.8877740820830908319 0.53739845515810868992 0.36099883114297826037 0.45868502270241423568 -0.16968680159844665156 -1.0370318553522643867 1.5349797117914447675 -0.68790527358976572003 0.66597654673129813574 0.0064709408956066648971 1.4923750158277331312 -0.42345316809065258745 0.026018513352128153082 2.4696852791463506094 1.0436760916808582866 -2.5193201331282613076 -0.51301866147808983243;-0.44128359131090338918 -0.61212496993037956994 -0.52873170023553384134 -1.3734507323710889448 -0.25009211779242024321 -0.85380563971984868576 0.53537660688089105943 -0.7674271363574457494 1.833269860904593207 -0.11169740001020087017 0.13969980758600392123 -0.13386549859332896872 -0.00013940896685640173473 0.28637956442858947259 -0.00025776620646922277988 0.10200881768738082056 0.010977717174561861177 -0.28424852629324665054 -0.0035205995105920214784 0.73092746963056953735 -0.56435853080543041393 0.024912920964388414469 0.13612657324391291835 -2.6095819916297351426 0.92434759224898699337 0.11558748613912832315 -0.67766130329073193117 -0.088575845463882640907 -1.742412567031529802 -0.14947492770043646626;-0.0781534407449192281 9.830655846969792222 -0.72306065904867711236 -2.5177754893224171262 0.061794590282972898521 -0.76396860356222373589 1.8966106367234212282 9.0884851723595261319 3.927234496275690212 0.70623100918421766181 -0.2578080516713686654 0.028996674696790132597 0.75075192724757755514 -0.90119926186336563045 1.0571132087633048346 0.82391342434250725013 0.58001390896639759553 -0.37007653126403372568 0.34429780409100063654 -1.3962964856090989141 0.8119086964998394329 0.63227417826859366734 0.32207150972299142255 6.6429458858961050183 0.95718796881655832109 0.12738466592762567875 -4.0335924873408988134 -0.83708311334326690467 3.4941651009825331897 0.72591829816351471916;-1.4209005711945066341 0.50813805128651634568 -0.42618046066786191561 -0.34521503050334961804 0.096645095253613005903 -0.55424297564768476576 0.04935534777664012801 -1.1881421200167778807 -0.52423071475647875506 -0.18608290084560447086 -0.22125607343507708302 -0.1271742383816995281 -0.12646525814953388234 0.21799088682285397423 -0.31749953896931881747 0.086491028758491850237 0.076408007647709955124 -0.048858657237039908317 0.61526237188016819069 1.0834981986584684144 -0.76848526437021880131 0.10467615494256615749 0.27806544200772448372 -5.0482180976156714181 1.7024676855763614114 0.052298124331371556583 -1.5072915486490960912 -0.27209535001889728623 -2.4596585601422398248 -0.010858171762830140863];

% Layer 3
b3 = -1.7392591434225861402;
LW3_2 = [0.25212860287364952105 -0.29972669601594215116 1.7944582038399090607 0.31122746527988032206 -0.96536363519018131285 0.20634694607327758176 0.40498766535405317235 1.6034701460563429709 -0.32752926489594819115 1.8345614509475109966];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.568038194888224;
y1_step1.xoffset = -0.04979;

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