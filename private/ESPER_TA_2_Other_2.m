function [Y,Xf,Af] = ESPER_TA_2_Other_2(X,~,~)
%ESPER_TA_2_OTHER_2 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:00.
% 
% [Y] = ESPER_TA_2_Other_2(X,~,~) takes these arguments:
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
x1_step1.xoffset = [-0.999999984769129;-0.999540494077341;-75.751;0;29.715;-2.05132667284751;-0.9;-0.1386];
x1_step1.gain = [1.00000001035699;1.00022983623563;0.0140762793578401;0.000302617642608564;0.251952632905014;0.0584431850247228;0.0422119037568594;0.00826143816767911];
x1_step1.ymin = -1;

% Layer 1
b1 = [1.2854859797072324401;-1.134735887858823844;-0.065571192041260883965;-0.92771839069449879567;0.83207206053008986313;0.58990994334661239762;-0.24343682589545789785;1.03834054199276693;0.73474301957891441361;0.26091900320582561701;1.4622015892346271748;-0.38033597407375074884;3.0961320565243308778;-0.10243630382272218837;-0.14727054136525941086;0.069592124700848079222;0.79711204333026797197;-0.10560819526810108493;0.018631118441760276261;-0.90168255130573926603];
IW1_1 = [-0.6148906721132616493 0.83340985849295723398 0.3589026498580961122 0.34397541433700884461 -0.012887371245302538594 1.0133944579621969595 0.79264959141823265742 0.46959112560637922273;0.42576781850460743151 0.21862629849028591966 0.85041257515766710551 -0.42592691995261067195 -0.048929910695594505676 -0.88898853208902350875 -0.34587112387179130835 -0.011180979422195196082;-0.085377506558552002103 0.024322301799323230165 -0.34923205743782265165 0.16033285719190337737 0.85448643227772302922 -1.2511060734722201371 -0.79445229864176514223 -0.31357241655769130251;0.14737979728241629163 0.64858731459705787348 -0.29577591843474254629 -0.31636481045873354745 -1.4177880244785561192 -0.3892095864622230339 0.12541957126653052734 -0.46393526458492245768;-0.063938312407798916781 0.064559233320318404337 1.1809669282105459409 0.044621781108982641606 -0.85724355369015980965 0.23542523139407992017 -0.30042306862512691001 0.15522701501281380154;-1.2536990060880672804 0.73896637862842540212 -1.1355154818441342002 -0.4850566019967141318 0.37045824767254698084 0.4764530646780045231 1.1642796564105553081 0.37849179201427446406;-0.12819740914752583705 -0.038267003283622855192 -0.60129494376016501267 0.058502072978645409951 0.28520309472856208988 -1.1403306824874077652 -0.93053984640193121436 -0.51659217154877523637;-0.29929157720346810656 0.042306847730451450917 -0.54747425808510852274 0.15097365958660213803 -1.6289482137243067594 0.20325927718341660344 0.065264451307403562041 0.75562741643242803402;-0.56426187023807128362 -0.07320271827065284731 3.2710886883863934393 -0.651700687907971421 1.9144835819777277219 -0.0003068767749243479781 1.3933278767075598648 -1.0340132344024726141;0.040733422122454898684 0.13935445647196945118 -0.043945937306288040958 -0.021923001633454050618 0.65759021700853448333 0.40057682764978314038 -0.08696533705872275255 -0.38679406588343534512;-0.24346340557709339469 -0.28799014817816304124 -0.40644763842239844953 -0.87334734320318285761 -3.3899461494359219849 0.92321119914294558217 -0.33807772007326442054 0.22688640519010433438;0.97622767208749239298 -0.62223719113187769825 1.0295775259497896847 0.12776108699706509308 -0.11144026940931098246 -0.021591691094465001455 -0.72237244859053240109 0.1305564094384710494;-0.38011228452812761969 0.14324015905339332333 -2.1954009220192918228 -0.48837428258189635732 -7.26884300439677844 1.8905665546130676624 -0.77550880310743830481 0.21308713785072688762;0.56837660710818582732 0.30979401902810699276 0.040040135148789207653 -0.48379307834860801885 1.3737494475770506419 -0.41178526620189520591 -0.18256797868977889254 -1.0691432451645712653;0.40017150154243102955 0.40885665604968396414 -0.35742248293733891451 -0.68045819810263807881 -0.50702942101658676766 -0.97875659210619081474 0.019135768760153989282 -0.63006651678584857379;0.093609276838583777014 -0.012164646299945874874 1.9782371523200437125 0.12887372487472342764 0.10089893754293893791 0.4954248346141696957 0.55991593715866261327 -0.064215799046163882235;0.00053967454704384736509 0.1275594052472637796 0.16081336064765874849 0.030478530818404535319 1.0803996293770730119 0.21787108704480795396 -0.14875155139612111777 -0.16642942618950540279;-0.10806984632527714962 -0.670598292955693287 0.91055712961179968712 0.61027492776716563139 0.52523472622601241611 0.77028486106157123547 -0.11976833558630667342 -0.47920761447351839513;0.41007854791366887826 0.33545503280678640179 -0.21907983970099573212 -0.61228265978768126043 0.39043949138116168518 -0.53877501490322998734 0.153730283983076782 -0.21367269110440620383;-0.066303638064183448297 0.68859155486666834278 -0.69179099299913904275 -0.47153039420038073137 -1.822244664559030225 0.08380154416680653251 0.37312003337222970911 -0.092714987691098954548];

% Layer 2
b2 = [-3.3553958632105636006;5.1573784902862014334;7.9713039392104754199;-0.39978859693645985018;-4.4119817274626251802;3.6987112470368535;-0.78694016557488033481;-1.4555804504225851037;0.019218445679018741207;-4.3283216326270927965;9.5711172458439754962;3.0880078844071499056;4.6756782905606790735;9.1850459213392436908;-6.9131381624556835774;5.5764296553278072111;-0.94802115636404749033;4.0226981573478903798;-0.9604627424225582466;5.3649116699477081838];
LW2_1 = [-0.15802497918209523764 -1.1890776483345488757 -1.2411223157963633401 -5.7027734176924855802 -1.8821322414509995546 -1.9801749702918804985 2.1228182562854933657 0.87039439145961827737 1.3399118158677674195 1.5088839938704776689 -0.048067743777941797367 -0.076486853079112571141 0.5731420137819273064 2.7041395723150416508 -5.4877743693925209456 2.1960126902225760581 -0.012829856421139719178 -2.0980992113278165156 6.5385003993878036965 3.5750236490883589013;2.2293254883737847472 3.5016081565774959117 -4.390009005876542858 -1.8126407396327914867 -2.4363831229395280786 -2.5345086154323843708 5.8965300869931844829 -1.6320964512463640439 0.50178503248804329218 -5.3988390850250480568 2.2812614365943422179 -2.4916494797687214202 -1.6477794412951003444 4.6672288150407403862 -2.5727980942829695721 0.78513556216322089032 -3.6672339380427856348 -2.6110606302654835176 -3.7789077094666101431 0.79356807019435993134;-0.6102884954941449891 1.291091479412214138 -5.5725822952042820546 4.6703270644272389944 -1.8078736281375267225 -0.7354086696707683446 7.8411908536745116294 2.577237014536794657 1.2440612427488690894 -1.5389819250073850654 0.38412910084933521437 -2.2876268737524387831 -0.48144190273953635373 -0.50743882838953702219 6.9342088065985736378 2.3515477152721948606 0.97276063490637043607 4.2793545117988323057 -11.307956271508546209 -3.6064073776240932467;1.8835741407308677076 8.3355825276977526528 -5.3415817873002016114 -4.0200564783949950254 -5.5394050267339158822 -2.4463325109965481374 4.843260624865957098 5.3575235432317782625 2.2559048763229849754 6.5178214093654593952 5.4093628714200114871 1.9228748313332957309 -3.5202104190663066063 0.8100219916372919382 2.7005496480520214675 -0.26747323766675307199 4.674460273110945252 -5.0341343711165524866 -7.9243320099417680069 1.973148463514593498;-0.97836595454237240688 0.49155832167591662074 3.96363028263164896 2.3545054882520251027 -0.013929510657020237677 -0.33918234693308951799 -3.7451064312001012269 4.5004592760636121795 0.12051961572488600893 6.0577668330008860309 0.84090815207832236844 -1.329486717039682242 0.013491558404275700439 -2.6750143309541574155 -1.6956105641804208872 0.25463256449004234572 0.47430919958257011793 2.3985394650787541515 5.5648042672443054357 -2.7161325407042760105;1.8993742983142241076 9.006342503504608743 6.2481633325227932119 -0.11357951806491622948 5.4645549156472643659 -2.033879924725347621 -7.9549335275240142806 2.5972847922561013156 0.4118545658372188556 9.629511908051423319 -2.6131168628718346447 -6.0135888306768734424 0.97812194872100777232 4.2117439386160464565 -4.4192578781552853684 -6.6693625889830281395 -14.270092505486895007 2.0704093180580818156 5.741824976386034507 -3.763991591548601523;-0.55723936466108225929 -0.95437197122125794202 0.35587513588221791894 1.9870619516913350378 -0.088034458494449019383 0.72958331043768243074 0.86236742919297981746 0.38386573833521053789 -0.19336758440869117326 1.4746234698115971984 -0.11712029632973712523 0.11153563125019290425 -1.0271536210429130787 -1.8254744011456567332 0.90147132113966876865 0.65693259403696124821 2.351005181772313879 0.19886860059990121852 -0.75433174644654832353 -1.2283117996699528529;-0.49088572884940440133 -0.41765043125107276234 -0.12669360433891541096 0.82454502482767777494 -0.65448289625498778932 0.42617704686272261938 1.3021924986367492405 -0.03440383269620051615 0.074112871332626034659 -0.41294769968980798991 -0.29929157528498168128 -0.11331990096833885473 -0.64539040048969131824 -1.0473720068742178313 0.65747021951022466268 1.0136980880471995192 3.7894816465416312212 0.073782973977246868458 -0.60952429711448585792 -0.34567100136672590516;-0.37838091994807193652 1.5233896188347291201 2.3637303004629477421 1.8549795372298827356 -1.0321270576281273978 0.63518598637722656353 -2.2418305040901076453 3.729475202993755012 0.53125676229211538093 8.0116807365832212184 0.55301517285585133354 -0.077116819601216121671 -0.050363568759736201952 -1.9754311298123201635 0.90045149232085541779 0.79924152037611451149 -5.5880741092161629879 2.2700278475274098255 1.9344705477951558148 -2.4405864070340985705;-1.6543549158033838964 -5.4879939040445098186 5.1862872337039149784 -0.20710236586464803032 4.1127455043046863281 8.5677501558514190805 -5.5173138060324520282 -0.99671485908575752077 2.8259534426882835234 3.0933883033698350573 -4.1480394542757501597 11.384122388153931738 2.1047614528679923218 0.28104527882843899356 5.6614397850187625494 -2.0147097509563058892 -6.6065963242633634067 -0.19903999676216957426 -1.0456543996556764142 1.8546268795811426955;8.3256576356589562238 10.668553010692324534 -5.4915675524019720299 -3.2493815756684920615 -5.3314578000733252594 0.11730133923315878841 0.74291175381030394309 -1.7562419178244230711 -0.3476161667728474014 3.8277328260296354934 10.437027083711813091 6.2011143315982240054 -6.6863679474385833146 -2.4683880178396977456 -7.1502855935593752079 -7.5165393060377860834 -2.8997403401589059158 13.338253062253933479 1.6900617168473150986 1.8186279288599238591;-4.1954135944882171572 -4.2348425372812954492 -8.4866020250371061451 -4.0436798339493451593 4.0723240400971336683 -4.6774489650730064483 10.72905233905971123 1.3177991745673409696 0.89714286463485592993 -3.483528010567300548 -1.1448679853165522058 -5.2481912847311873449 0.77200211964897913486 1.6465644742185927552 -13.561209627075189843 2.2187337028265248229 -8.6908437180191882021 -4.900183575880839193 16.993929700094948743 -0.0031181740416631382497;-0.282842095753700562 6.5179704941524647666 1.2432249704787585731 -9.1643479507653911043 1.7061651902192969121 2.5265862510286107856 -5.5900006005516322816 0.089802270404777881363 -0.25367970145504492585 7.5302051845758128934 1.1041684849065476204 6.2515611282671281757 1.8201063267594790318 0.97097018146033720054 -1.0396977748861417901 -3.1813574600871756815 -3.7121106442265912051 -0.82431628478983576258 2.3026627976688134325 7.4306971002576327479;2.6042829569517600419 -0.19711304289201170281 -0.8075297808730963478 -9.4875691257678980151 1.7687268118550858453 -4.0729225902143584293 2.970071009832654596 -8.4517262114979700982 -2.7222840260916250088 -10.637579392219262076 -0.64274182185895145647 -6.2094419890621743718 2.974035701462879544 0.72627214151531538366 5.9925159778024292834 3.8641415395122966636 -7.9722005473861425884 0.58982258154770361713 -2.2160791127356707086 9.1322298861244295409;-0.9408016096970298614 -1.6104239682432679448 -0.77710514212354797614 1.5526949440703066152 -0.70993727360462788312 -1.9212333382812485372 1.9925131712806829487 -0.77647476378130497743 0.64337758022505897593 -6.3559447660618770826 0.937552150294173825 -3.5846053350182351949 -0.54053558872255147438 -1.0237772804755485012 0.88597708118481344197 1.6902267032557733994 11.454491444883210249 0.7173368806040999468 0.39890256448575855952 -0.24328164757775502802;0.96692317695391793997 13.518148201207980108 -1.1144278954678368265 -1.975573003164390995 -5.2764899099871112043 -8.5057200379361361797 -1.4223135185000399527 -2.1974709282430988644 -2.3429093547376877993 -6.2380353558309202811 -1.0927856529346093861 -11.428123264696795403 10.426624393662217827 5.2993215776760136393 -4.788127393128336351 -4.4342475246360679719 -11.385895327675832789 6.346369970441904762 -1.4587872987134253844 -3.2689835528830699651;2.3586347775723002229 0.430004478590494843 -5.1626562786129488458 0.96380814929394476032 -0.64620606517758150122 2.7803415568027656235 7.6413834893450447439 -0.3325598932973430899 -2.6726738680864539077 -4.3341008015430233513 2.1330386939456986717 7.2098666716089434559 -2.6086168466864823046 3.3237445583270228688 4.5602597749364361945 -0.68276540819107867097 2.6066627039269789634 -4.6381853286240417589 -7.3172336182068553612 -2.314412083286371935;4.2030738232558935152 -5.1851491356775705199 -4.7304215580067419111 4.1606259132433045522 -3.8213896129238493771 -0.21729879011092786967 7.4771439493517304342 -5.5661039717428302254 1.4125300262769555637 -15.292480683685560905 1.3768811306153334595 13.04764790561053367 -0.89429827183110732758 0.76127441747461299659 -1.0219579361741952805 0.12451349633392322369 8.0314237796362366595 -2.5242683223949518023 2.3966699649102620739 0.16892647047085268541;0.70698943927546209487 -5.223332454812052994 3.0491683902830097885 0.11738149756179815097 0.56768209298289729059 -0.36352008295380749958 0.27774098614493558657 -0.2820950545975549062 -1.0778441848063946562 1.2588044802664870581 3.5504104274430834387 2.4007189557838195526 -3.1572733385857731925 5.446515669440175067 3.2415194844600105917 1.2421828663576734986 -5.3862185134821425336 -6.3669437896118976639 -12.876723257985922544 -2.7434924265783831032;0.27215157950918483776 0.64633113684188048254 9.8757455715351127878 -1.8700256125126621942 3.2488397916825011436 2.4174087812657374386 -10.679029966339960822 0.15464589563461808575 0.53864746075566394268 11.061915827963547443 -0.29251459475124153009 1.9666229895968982966 -0.058867466574608715013 -1.4192082513628034857 2.6173987498196367163 -3.8650845891098168927 -16.327938243965459009 0.62373507066208833116 -2.3540980581415191786 0.70119374308560600273];

% Layer 3
b3 = 0.13183408687793229941;
LW3_2 = [0.056513582652450752852 0.079210561362681730646 -0.063837782280746047103 -0.015609392761487794407 0.33171875042607235073 -0.029713972044320798721 -0.49030845865908478931 0.77184802387144546554 -0.33068319511625327012 -0.064520410912202577625 0.0057290846012256514685 0.02752394001765588738 -0.017776292429615710156 0.02767122051757540252 -0.20522299479648675735 -0.021436929833662934225 -0.039934464659410084941 0.020593894581540719835 -0.027972486955673142583 0.106181431018969194];

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