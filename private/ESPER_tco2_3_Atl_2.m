function [Y,Xf,Af] = ESPER_tco2_3_Atl_2(X,~,~)
%ESPER_TCO2_3_ATL_2 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 12-Jan-2021 17:03:53.
% 
% [Y] = ESPER_tco2_3_Atl_2(X,~,~) takes these arguments:
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
b1 = [-12.940793681733286;-0.43668301940539594;-3.2432268958051695;3.334412085253172;7.3251176975022974;1.2297788617417995;-2.6917391318405008;2.7933644881321031;2.5510139893829655;2.5041834351303138;-1.265360607228843;-1.1199948524891035;0.31340571292531155;-4.157033559108994;2.1173329542494237;-2.5915006151704052;-1.2778487977420181;-7.230785039739529;1.6788767698245279;6.5464319391812449];
IW1_1 = [-2.5507221978638768 1.7564523541255099 -0.073753932263299155 -0.99955817271116298 22.626593601400426 -1.2132773778212771 -1.1358156916756417 -0.37502561882132801;-1.9821807047075146 0.95930145766405717 -0.29139338950619159 0.15041049059751957 1.179019706857515 -2.6346588985203105 -1.4734981004049104 0.79140575609841768;0.15363275531352111 0.059673382403897482 0.14539340637906281 -0.5826161286367757 2.9006690117321923 -0.29456726179980758 -0.81043935221874408 0.58597158909404456;-0.27254773937019011 -0.94121400627369012 0.83028908745866237 0.10183270059563125 -0.89925641506877185 3.0407526593858463 0.72416044008255676 0.60820157495698313;-2.943528599164837 1.4959931792330141 1.9611579251955291 0.82402768025576523 -5.0024385139249796 -0.81048748888345357 1.4288286376495272 -1.0573715293550474;-0.30393433083718024 0.10300624973792523 -0.57787863761124658 -0.11353261176101112 -0.51614768861353522 0.29982527660391134 1.999052706037693 -0.28720204912375702;-0.063194202934565305 -0.41417411743217586 -0.06412468506946617 -0.18100525395198785 2.2249708014376677 -0.65525073922465626 -0.62455469001682551 -0.0043079470104056342;1.065844198520896 -0.17807872153183185 1.0894199925047356 0.23408862396520991 2.2945935810565623 1.2657082187400222 0.22994643598498113 -0.55122375853186989;-3.0124650250702816 -0.11758915378885794 -1.2411245749192046 -0.34435652674111461 -4.730611944368575 -0.44518964119236532 -0.88891521253421679 0.9226664009893587;1.1348601823741022 -0.57776754558017585 0.28915965340956118 0.53094527712017137 -3.2010386107084514 1.0416543742006181 0.65834839091643449 -0.93438252650527187;0.59025616568228256 0.042466011419032793 0.061215763429534983 -0.15175665949907458 -0.1842705213736156 0.33643009052564682 -0.52076686414914397 0.044873649141899993;0.94003289717399519 -0.69344151790522979 0.32659291145450248 0.33439482866576931 0.98379284678782808 0.23581240308534887 1.1142357436797694 -0.84659877462178479;-0.12170834849716107 0.010717552438060128 -0.0099502385026056205 0.094633873343436828 0.32656555500488693 -0.063249940006752561 0.68165249210696965 -0.063359585500265964;-1.671036951333954 1.2537776172798301 -0.52769820822327618 -0.12215361052586962 3.2280911005434061 -3.9174340687517026 -0.76990233455146928 -0.24049722262254317;-0.22294054036646449 -0.24728895604220469 0.16859726848575934 0.37628723540073133 -2.2092246083538383 0.1933571909543137 0.45972055234994053 -0.33002729829282762;0.98822186398943734 -0.53125398865480522 1.2582577938724326 -0.084813476570145749 2.1942947603267862 -1.8122113301156391 -2.4614289087171786 0.96427320912061032;-1.7206474106455338 -0.59381582600096772 0.073407962374258354 -0.30921055939789938 1.3692068454336537 -0.77510053404779167 0.94238788543275043 -2.0715122678067468;-0.71162096971393607 0.23759844529475416 -0.40552207723334449 -0.57023016133552329 9.1063287415700476 -0.9893981052644425 -0.8862159057565645 0.20148965889140621;-0.21877865081390233 0.32915670310642992 0.34653396670163095 -1.1102379868288748 0.26954132389605306 -0.7641208849111879 -0.34961416949930996 0.36378542915265749;-0.59759672208795844 0.33601464994047775 -0.6961150104755357 0.89161264153229625 -2.7117579054650744 0.54707215033038203 1.7020373947082856 1.99827144737319];

% Layer 2
b2 = [1.5826101262757875;6.9047149607788851;-9.2342793726923098;-0.43756472737580415;4.6465913768178249;-0.23530506816037536;-6.9336817379118401;-1.6466514133721994;11.579271724814506;5.9584293991462332;-10.543867576149365;-8.6604176403349182;14.487593163563325;-5.1535692634125949;3.4374296549776671;-6.4527305284266889;7.9983138358784922;-3.155349185361914;1.1832829969539862;5.2633628068434852];
LW2_1 = [0.19116895808529863 -0.21898721929155177 0.90487582528208188 -0.078493875871295887 -0.20296579615057192 -0.27932376827708388 -0.53100591427955102 -2.5685167380607066 0.16695419707717843 0.30128929661256409 -2.942244870485363 0.0020182235598009517 -0.88094599099747695 -0.18078781824573498 -0.17280064784811891 0.11488994920329387 0.15706267247307162 -0.30107291106590578 -0.25108018985447528 0.24371003045776526;1.1753383352179114 -1.4467663024182946 1.8589819789741013 1.3465682846483158 -3.3683164165063348 5.0384427989784379 -1.5682879470177535 10.542536975302253 -0.43925931456093986 -7.226972674102468 3.1322051556642738 9.991859657843623 -7.370434448659462 0.18257897218526986 -16.728811114416541 -0.046570641726221329 -3.9326802705228667 2.3217474416630615 -5.6303759864677074 -0.50071102594620842;-0.32906468263473115 -0.49747006288117679 -2.3404984437023324 -9.9797680774462272 3.4448323096046609 -3.5201408929576989 5.4187960606190755 -0.81824900814003299 0.027630182313604607 -6.6218369222491242 -19.939915593518066 7.8125734439846797 2.084518264091145 -6.4609527132863942 -16.338939899822382 -0.63698649212771286 6.4129368301515655 -1.1773372340400912 -10.228677419144706 6.7576005850797918;-0.30533234618148797 1.4859562738265941 -2.700887778281738 0.69095574823837225 1.0843498135526426 -0.53889407761423203 -0.8619965623669974 -4.3264914831081756 -0.57716171136086547 -2.7644063807544916 0.4477488005187048 2.6761446056601996 -6.3367088251942514 -0.42060150728934798 -2.7954518182012489 -1.2550149183975565 -0.31967209775283745 0.024484118315364598 6.0352781357280199 0.36444780919594799;1.2535948671817154 -2.4004436199439683 3.3291781946910115 3.7807034666925095 -2.0523148333715242 3.6271493031032853 -3.7303875736931298 -0.63988887876053446 7.9497437055320157 -6.7816545057984632 0.037085379365386244 -3.7391349511850791 -1.1552649951644276 -3.5128711909088519 7.9248912769320281 3.1313464065398109 2.0818756635025784 1.5402992551283887 -0.16412738120423481 0.63535240789313618;2.7020120866291295 -4.0397234060756757 1.0611436669001753 3.8392965413848548 -1.6140577335792081 -4.1466297001079395 -1.1680767376236341 -11.789429762483426 2.020338947284896 1.6606683803168396 -4.4508920942228762 -3.1666944656188063 9.5788549848050835 -1.4665136612741596 1.0799490489073389 -2.5379055929460508 -4.3862263549403417 1.6452177646605051 -0.17151862745524654 -1.7674308634260978;-4.295165697011158 2.8713737855296118 -2.6127078213211332 -3.0367534615746696 1.4456266556423765 6.5660730051292617 5.2302199380937031 4.9077490971650688 -0.93919881567785235 -0.66294255912678535 -5.9067583377232591 1.8280947309716304 1.7469706425624296 -3.5419812116990763 -9.9443778974427044 -0.17762698277693645 -0.24104187553737275 1.6230819373151135 -4.9541956566722058 0.55957812928485573;1.998493554283497 5.1341402001784244 0.58190321670004053 -11.520388014398852 0.94032096012884525 0.11731177481415944 1.1155812272701522 3.6374935790761778 -2.7604252666208549 6.9781291882103167 4.4202179262723371 -0.98300938476714284 5.0195925195349735 -0.51527555886645426 -3.9457063315814964 1.3871326973650135 0.58786757728361916 3.3499858710675539 3.0610478355960744 -1.9654510140897843;-3.529550203353133 2.108095488447602 3.2004057779706332 -2.6936229929040643 0.62194363200160563 -4.6180515754671942 -13.221956191915506 5.3443571751049168 1.4954939866280705 5.1654816489644828 6.8175875956988943 3.1961481059251606 0.80220841593825665 3.4695820127446169 1.8367914933378211 4.3380412897527716 3.7814851893198074 -0.071249509393893087 4.4306061704296003 -11.007651446874139;6.2702795886205021 1.2627646505794541 -4.1776770617372323 -4.7014282498144313 -0.98663967096781369 1.1538418260460344 4.2873092109083304 -7.7025257278308885 -3.7988595427504901 -1.5569704567980136 0.62382176650958354 2.0623720490596464 2.8289252975904144 -1.5481238550154863 7.990934629525257 4.3083172713138058 -3.5516727179517016 0.80804499730911372 -0.87906207483886289 1.3744826751015884;-8.8463985391956523 1.3817788859303228 -1.0370687096615561 -8.8353840541233346 -11.417040746701693 -13.448107307664811 -2.6786248998515956 16.020519581776053 4.2835648907563177 -3.1546130074382868 -6.922709166640499 3.9559833519521024 13.72169217922491 3.5049195732522636 -4.3686244001676302 -2.0861075015370103 5.7251756627789643 5.9218723424439714 -4.9826904457707464 3.2600928971140428;0.41252595237076095 3.451271653752813 -3.1741750109788707 -1.0881899384516858 1.9642680550961893 -1.4037583712418531 -1.3280694114894029 -0.81269257351272139 0.57617583434286512 -4.2743014530016481 -2.6334313904891458 -2.3910328480674581 8.8654474917163846 5.2673449187308439 -4.0210759633658562 -1.3975172910229126 -6.7419078519735764 -0.62065208806600958 -3.3194731721027178 0.71160747331449925;-5.9656528174529679 -2.3874794911100152 1.0687662035888961 1.0640764838200307 -9.4483668716089202 -2.6639380043982523 -8.7899574052775975 7.6357317451294584 -2.4732133175390967 -7.4663986262580471 9.8121823844783087 -4.5277897380335981 6.2743327100120174 10.99082374068883 6.8293463305739843 -0.29253963838201047 8.2359488667462646 2.5887997955413113 4.8424219778169659 -6.0568822329202492;-2.0587564219135701 -2.4820654774182094 -2.0611843353847576 7.0740979194488398 2.8891968010667801 6.2933837709428007 -9.3121552218067407 -11.426756747228731 2.0280096213738004 3.0953904811322772 -10.042373942417248 4.6334776749459943 -4.987139372570911 9.7299179689691204 -5.569724501366629 3.15880293117038 -0.017833868248851959 6.4650325575188123 -3.9112570518133847 -5.2105287605592672;0.63775250754439239 -0.64152071048217585 0.38740644818415176 -1.7088271400067443 3.6403812822026347 -3.1129913763653905 5.5036808932109302 -6.0643702460995819 2.3050743579250987 6.5797346838733715 -5.0446024842415085 -4.5387882875202799 -0.17872968865364486 4.0324352889305874 0.012403114191062593 -1.7127136926904591 0.25990117211230529 -0.4322355845272326 -1.9686593549325861 5.50245508392769;-4.9947130347301592 -0.51629193909508031 -2.479640526297441 -4.423256085453966 0.75673591303106758 -2.0088396236941848 5.5319183162721703 5.4712058276874806 -1.6367498478493694 -0.52435506731243753 -1.5891507901716833 -0.8214685850145419 -1.731503193678652 0.86544709902847372 7.5151778980849118 0.51069514483175615 11.878078068182795 -4.802715571985666 2.8925489171287131 0.40193211633947157;-12.272946736056998 0.56417541922325165 -3.1534258853245936 -0.77425844506776165 -3.0161607257730347 6.4122156657803169 -4.3291606247276064 5.7951444855626351 1.5083263708480699 -11.819594216276688 0.94418410053336621 -2.3186246827199537 -10.389545681706393 0.61079575145811993 -25.571487600750512 8.1361544363470681 4.7490844439900384 2.3682186987807752 -3.0603638014250212 -5.1243715780618295;1.701285179486939 2.4648407146177287 -5.1142990125766206 11.673331446875327 3.0719768920025734 0.80185732405047239 6.7791386566728171 6.2746363089285531 -4.573534323357296 -3.6477827818765718 4.9567554771242142 -1.5993175881274362 5.957905590772504 12.753696530916919 0.075882560604157309 -1.7198919275184554 -9.2204045562738006 1.5171888241222091 4.1461242973606858 -7.4609053861299381;-0.15700139579187167 0.23432855553159457 -1.4966576992046414 0.071080607529427867 0.064175241439896155 1.0011084379300548 0.16956490268857952 -0.55021795490912484 -0.18922270982260547 -0.17706241109915943 2.8503049952947852 0.0075115871879057414 -0.19877427307289097 0.3568867830061494 1.0577149618926638 0.085801176203158788 -0.2504823078742307 0.5914033634653828 0.066019514194663925 -0.88513644792957435;-0.85417937579287495 -0.09738652628089077 4.7758189071028303 3.2988925747808557 3.2343442672437361 2.0390332328595671 0.44654638543825925 -9.3081566962951019 1.6559469494507406 8.6651735932719642 -2.6505071045106274 3.8148616863382951 -2.7217048844848883 1.4215703607861465 2.5592889426682999 4.2074196290403414 -0.87087185474651385 0.0065958537232172765 6.8281824955148149 -3.0591719579713814];

% Layer 3
b3 = 0.61002606538914572;
LW3_2 = [-1.2771867792141851 0.0028707177635323078 -0.005079769405177223 -0.11865049973036292 0.0060812790414908812 -0.034861018372307435 -0.0033326238268326538 -0.00057458887065903565 0.0085147960853402989 0.010486567700487824 -0.0051165696315173329 -0.011932757969732106 -0.0021579187425156197 0.051744929441439949 -0.0085576823188874655 -0.0042559000606585285 -0.013502234065382208 0.0061040808870440125 -1.075112671861252 -0.00055421795557515446];

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