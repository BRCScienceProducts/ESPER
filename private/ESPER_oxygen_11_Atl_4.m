function [Y,Xf,Af] = ESPER_oxygen_11_Atl_4(X,~,~)
%ESPER_OXYGEN_11_ATL_4 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:47.
% 
% [Y] = ESPER_oxygen_11_Atl_4(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999996490807;-0.999999994516886;-40;0;9.1619;-0.28;-0.52];
x1_step1.gain = [1.0000000017546;1.00003626070655;0.0153846153846154;0.000309885342423303;0.0656325902039552;0.0470499670650231;0.0145232735458572];
x1_step1.ymin = -1;

% Layer 1
b1 = [-1.3438394390079768659;-2.7698298096089000175;1.8923019635976821018;2.7676643453521405647;0.57810773520337144227;8.1442283333106022525;-2.9414660107629595487;-1.5964803752393224023;-0.00062622145853995919706;2.8464817548131224889;-1.7901862425573051851;-0.97475597822543469384;-2.863847738696014833;-2.5465025263508920261;1.0639708118739079623;1.3783693106847929588;-0.84938972179404481633;11.825478963528786025;-1.5848026924720040043;4.2458931113814362135;5.3857568075487689541;-2.0759373624324171104;0.38080466702330584283;-2.3223421505320063218;1.386225941678687068;0.05788686538551243016;0.47456836667284763021;-7.2503548823735615159;2.0001847605052542889;-2.8250574205083784918];
IW1_1 = [0.53504231464917828553 -0.095914932566110333578 1.1746104841633921989 -0.1716570100508938157 0.63926870325354556712 1.311787471168057051 -1.7945627963384624959;-9.6579808909120643534 0.19220031234705242662 1.4676495409978393969 2.4917251946508423011 -3.1130639450748938124 -0.92410829415911799334 -1.8864726460727838653;-0.44018028221398386446 1.3809136498890102196 -4.7843376136668274157 -0.14302426801485607077 2.9014710560416463458 0.34265029332434598919 -4.0418815854817893296;-0.056707105686340283923 -0.040798163301750275944 0.41382670019501549552 -1.2635477639297147956 -0.32681397116714605566 -1.8080924700130260874 2.7318359213994467538;-1.3056895370855114979 0.66327429199142606819 -1.0765010403042987175 0.46212917600225927872 1.7208193107505427299 -0.68533478797962188445 2.1423500113515085985;-1.2630073350260400122 -0.6512887733068356555 0.60641452357037073373 2.1153946503539362567 -10.956739440856649637 -1.8818374175118808278 -1.3002899147115642986;-0.55532224679661990052 -0.7007188868957362482 3.3808405976028499396 0.58518276172198313567 3.0854719426927910142 0.66194784448934484988 -0.10307745804427162484;-0.33474229369228053477 2.0806460014602201625 3.7117242664702434496 0.38184784859145298741 3.6097954298046595056 -0.73083207961917195927 3.5898510586997298688;-0.052176016086026323626 -0.061028204663703400357 0.16178613740137459676 -0.98773646239330270546 3.4465222392003580509 -1.4090734060521297177 2.5025760597928070617;-2.3143326105200778819 1.8278873770408901045 -2.7171579153125384742 -5.6446581454146551593 -5.6472534687787456775 0.6161862879294403017 1.725820102687169566;0.93205398185290555535 -1.5566497984311336023 -4.4319764491462709799 -1.1731294007244836841 2.3498051662309134002 1.3261061256978294853 -3.2836404678783135402;1.2225241449193720022 0.4301219836026728971 -0.75931232561068706666 -0.27061083524120110866 1.5347790251231001601 -1.3586723132842095652 0.14565822456946306285;1.3553115302433287326 3.1311535841465776286 -0.73668631213956059511 0.068514216588151072296 6.8963496505874841702 -0.69798325732438171176 -0.79306163980696342541;1.1682950535484397658 1.249322452203015521 -3.9020797849452208972 0.092315558790617827101 3.0870258361642388678 -0.55338042925429187235 -2.481685019308645046;1.0139251314925556979 1.9123789156256894017 -4.5183300730505102649 -0.2820939885272876757 -0.37638483149248358473 -1.0774624279532851734 -1.4153500787738535482;1.8809640328587895475 1.1093463785997426108 3.6422354869336714955 1.2932600230463757729 3.1619921398884400787 0.87944146812077683695 -1.2977849867645898652;-0.1247982832873893444 2.1215945567358143187 -0.15769292686015373706 -1.1216204037352635048 1.9089703345382602606 1.795035468977346893 -1.895452030823822076;0.048292680035053020537 0.60868846608637960927 0.91968371517605018717 -1.2913254393038451351 -16.811416464747228616 -2.9170210767736017843 0.57125450770211572138;-0.63099683794865091269 -0.29896773751747601766 0.2689730092641743342 0.78445843776385049129 3.1416419372860180381 0.97316388671191833559 0.31350361830948686448;0.078674703810401508397 0.79909307122187234196 -3.1647178903329304944 -1.0614780884525718552 -4.8756490019577967132 -1.7931091277588331323 -0.3756952190842055006;4.856239443354002816 -0.79721189025053162958 0.6730123577897428877 -0.19226538265235312841 -0.28047046219076082751 0.35403316162321718519 -0.68161200201306126889;-0.99205008388960647103 -0.55084071354597641257 0.17707918580252934859 -6.0599812640079067094 -2.45082043988348941 -2.7397255699419935659 5.0861427312087386099;-0.20528321828442661068 -1.1340506372266971891 2.7570373545167923268 -1.5019770646998564789 -3.0199661193057001363 -0.99222210944859956516 3.0747296733675075764;-0.87677815688265092753 0.56300308240378338365 0.096664476986373523704 -1.6185875397259421593 2.9215623647704247468 -1.324631366608788996 -0.93463811082315906287;1.8852515813009174117 -0.91690777717229721144 1.1519790663843567646 7.9300023514361273058 4.7926616186016959276 2.6973770951512658911 -6.1301396985881133617;0.30422075200732412448 -0.17372887962046609789 0.88937633827176154622 -0.56394058374191957661 -0.31567838908671452813 0.51844350565941688114 -0.34977130844305726054;2.1243429810485849885 -2.127164657773972678 -0.13777507926685017559 2.5879934789893268565 1.3540270474801143763 0.56440352255160153305 0.5488066922156618066;1.1211627515310473857 0.97651907065983978296 3.886662654009669815 0.0376980900029332891 8.473709942604589429 -0.20926874426679079044 3.4682857208991468845;0.25416700721800045137 1.5698634146575731751 -6.0241578101388579825 2.5396854065962854996 3.1602559729218802076 0.83799453851102501112 -3.7020172220422513654;-0.1969223499473515826 0.53150112335552446297 -2.3671611410942769993 -2.9973166084548932275 -0.65341186523380034856 -2.0130950432546921292 1.0106641364715081011];

% Layer 2
b2 = [4.4841057653709839315;-1.9808758537362236574;-3.5009519967808326868;4.3650157591850122785;1.8073368620033041232;1.0528764774110623836;6.8617839858088007787;-0.22664311498693831548;0.9194107808193598963;3.1984468012308528984];
LW2_1 = [-1.8714167457798376315 -0.17658295749673957875 1.8830350743889145981 0.73197319062809507173 -1.680351209272968882 -0.038645686098983264567 -0.6010821777824989498 0.79602892176401951474 -0.57731077214499659789 0.34383012766617032652 0.37008743789733344887 0.30111721578902450602 0.50369933877604222694 0.62886693939354676441 -1.4101087515037709075 -0.77269898255266056264 0.7930539233437525759 0.86250982768562700631 1.4690935075191891013 -0.29922240577828357333 2.9796874241490418633 0.36824275642837134281 3.6097516299183234345 0.36078534558354413697 1.358681719597547799 -1.8531931091504196818 -1.4075903681997130601 0.26370797753676011865 -2.8435989564571459987 -1.2699123263754810154;1.55372734138509494 0.31540375473274245843 2.6092895995231106809 3.3380789419965810616 0.023203095977450308163 0.044000255031100388159 0.12506511866703959313 -1.2118801816020383644 -3.4867255644321977215 -0.20422964547612076913 -2.5722306222233108919 0.1622780713929780072 -0.23062923185927977632 -2.374249645105356521 2.2943824077486527635 -0.25224310698525914676 0.17755031379523447677 0.91307765575001442748 0.21713303104498818397 0.49854771633817929199 2.4836658109018938667 0.2066823136933718108 -1.1061046641052638684 -1.0631524288986535787 0.50287552611630204069 -2.5954264429465765396 -0.077433628143251970188 1.2838333626952058708 -0.62520673804669524287 -0.42966461575300546327;2.1614757668291253445 1.491874647884159355 2.5880003922866676724 3.1250210587677336171 -0.5065679599882034756 -0.11426000125601935842 -1.0801567552811786044 0.68471556170527581031 -2.0352145942524093591 0.21176447265878423076 -3.8178817495897798828 -0.14643899828721756995 0.36507200259835964617 -1.4838519802524205993 1.8511588114109263081 -1.215791067489860211 0.82523428397305997883 2.2293331512291660879 1.3960718323264891261 -0.85073482518952669995 -0.64188799736901291926 0.2671738338166331217 -0.99228185673107494047 -1.3560163974479859661 5.3221223918769302585 -3.6673745878542591825 -2.1906767709603243155 -1.7257859187960318259 -0.1331114267489172942 -2.641194031277534382;-2.1173497618367034256 -0.48075845390651400502 -1.7427939823258769003 0.69819423440866046349 -1.1889721008667075708 0.082740574033743519156 3.2662259966160016589 1.6766483502504478942 -1.7193664991869281877 -0.49228507810917176979 0.39543304835656478691 -2.0157943207377009287 0.16111336660735106618 2.9150797128004164449 0.68310743735231960194 0.20648016122220003155 0.70452987868390415382 -2.0861326823889880799 -2.0395832737813579527 -1.033689979131282799 -2.9329236688822004631 0.45920408439652177224 0.57374406739699523872 -0.39762362215725244319 -0.099629491858982163754 1.5092971492092448482 -0.54481819988910296093 -2.6163324318805152302 0.15689988293885437365 2.0648430946693747678;-6.6101839491443472596 2.3957139161994698284 1.7072609777445189039 0.58683435199533084958 -2.5220531644575494568 -2.0150059029362217267 -2.832349148403142447 -4.3639998708481941847 -6.5809729260659040051 0.94902596701103003607 -2.6243687204165135896 7.2341859762160245495 0.15071684242892469108 -7.4023247469029591628 0.9256783536483926822 2.5055419675317476269 0.74323830803730384087 -1.6523171210725497993 7.0851025078686671321 -1.8073936426926071608 0.75643688605605674535 -4.9506287029751385731 -7.0084593874170959538 3.451134227233722207 -3.7749107227669798093 -1.0140600260199943428 -1.0939512572813674396 5.722146146760566765 -3.6817232245651290157 -2.1276403962329095698;-4.9676089217247261232 -2.9984761243423450061 -1.3415820797039155199 -0.26365126919504400238 -0.055896045762954288394 0.77026419782569077732 -0.33363410139504162677 3.2838682440698678811 1.694937592634512491 0.12232250114451091727 -3.6534566770846201855 3.6202778365522183535 -1.9237342921744708946 3.7072647660605899667 -6.2914405142241376367 0.15938173018571671902 3.1944321585466477487 2.2062046789598941388 3.7559117478939079149 0.23405686956680127331 3.6166631847501236052 -5.8956082885841647467 5.6606535847779184678 -2.5774317946746219121 -3.3784474949524327947 -1.4365810338882716302 0.26933369515598798438 0.70605594055394937936 -0.0073118775049768047758 0.37573454773092929138;6.0315235930204940118 -0.0966365346504527295 -4.2848271639496227081 -4.5417627948407606198 3.3171840982176061807 -0.39018613927187889567 -1.3225105716017593327 -0.057133983476798710921 7.0036027086681773568 -0.096949578016695001081 1.6670741825515891232 -4.5683397913661307754 0.66697521648991175969 0.25223944599759612339 1.5704960778277432532 0.34690811679884858698 -1.7521302667143210385 1.3822000339222308973 -4.7500129519231970576 -2.1536751709103425512 1.2176965805693276135 -2.2628128324394292115 4.5452639376860046738 -1.5192513991459311029 -0.99689023837006440765 -5.3502789507972758898 -0.16694708187689971668 2.9735830193053387482 1.8823355632040270624 -0.69015505357870654546;5.987129381192580091 1.1003220153162556194 -1.3046071448745515386 2.978554152043767278 3.5557165705538853473 0.80641266552792967293 -0.78561945667386612335 -0.71891588638240200293 -3.6676645030636949585 -3.3482965995357458766 -0.19643224378245521811 1.2903203914378911232 -0.05747392641543223879 -2.8752416674796852369 1.4220256999773739359 7.9968483424759684297 -1.151635921091735737 -1.4612976215814639236 -3.4335510827124879896 0.36652800943809771272 -4.1221342670500584759 -3.1677266723124031245 4.0889805103716891921 -0.29808239504690314803 -0.1077224862342472389 -0.71671071581426648578 -2.5447952260164989902 1.1047760945618869677 0.88487594451938944573 2.6954629402467986665;3.4287614771818302195 -0.61172819793781618714 -1.0422011895692344652 1.4975939651000147457 0.31348688406211272506 -0.70685401302454853312 -1.9331944881959508553 -3.6515299012739328433 1.5826859839186215861 0.44488761260866843683 -0.85244380439267009031 -8.2726410422046630089 2.0151549249275393372 2.3417490171711845548 -0.25882573832764588229 0.70938943699510437213 -3.6174418068271672055 1.6557831842543648815 -7.4011900323423285286 -2.0702046344688418422 -4.2980133151661181756 -3.3062784932220030676 -0.51921403133561583321 -1.0204600551804914321 3.0108017228527494957 -8.9021104884509885125 -1.8950138452566378522 4.3692737000765724531 -0.031557449649610443132 -2.7972062983816874393;6.8976165020067847777 -3.1458598617791948548 -3.4718540007252247648 5.2325361393116693876 5.8611298472642037183 0.593566267180268059 3.7895808742061607433 -3.9278805486013834702 -6.8781988170395607085 -0.80857635969664254372 0.28967211454577218577 -0.10742082554530676952 -1.9300719045253662554 0.92039382494162502724 3.931424552931418237 1.3156076975307327004 0.037415486883405388308 -0.9262799979361059366 -3.0203266441443221701 -0.72791377815309488142 5.9417772830541739637 5.1587360728369011653 -3.0349658290057908161 -0.75279268368826257607 -0.68562109965575879222 -0.30161038685135310722 4.8687599689556613214 4.3231837612741630394 -7.9553685600684831414 2.6912583017040150324];

% Layer 3
b3 = -1.3695614413559755729;
LW3_2 = [1.2711139204207657638 0.45168348530022994769 -0.10457203852570534641 0.14530022909496173589 -0.022631242286228259175 -0.030489665989973182419 -0.15554625080062098319 0.15126168858475932955 0.05554087675129610463 0.054111829358749787];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.00368391969055075;
y1_step1.xoffset = 13.5;

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