function [Y,Xf,Af] = ESPER_oxygen_16_Atl_2(X,~,~)
%ESPER_OXYGEN_16_ATL_2 neural network simulation function.
%
% Auto-generated by MATLAB, 15-Feb-2021 18:30:49.
% 
% [Y] = ESPER_oxygen_16_Atl_2(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 5xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [-0.999999996490807;-0.999999994516886;-40;0;9.1619];
x1_step1.gain = [1.0000000017546;1.00003626070655;0.0153846153846154;0.000309885342423303;0.0656325902039552];
x1_step1.ymin = -1;

% Layer 1
b1 = [1.0549255000845625396;-4.583986120214413873;-4.6945317435036786335;1.0805818374293070239;-5.6002434219130696746;-4.4692131294245198703;4.0096564170336765898;0.37639813119432996569;-0.61277522509812754059;-0.55083620306909675257;4.4180245773591728664;0.4295802111890665298;-2.7548198712609464067;-1.4191779854058894639;1.8553642974532922327;0.55565852931923942482;7.8367302323510141804;5.4177569876763929102;2.8245506349200275586;-6.3657600837841208374];
IW1_1 = [0.27894694200757813585 -0.12218246481399858139 0.18680314602932990287 -0.26699801516205423635 -0.5546797022275825606;1.0623967257495106065 0.18136052952960646234 1.5854191508752686346 -1.8024454320958054332 3.9038055479441284845;0.11829911440478652063 -0.42884520224170946667 0.25468067351113782282 -0.31038573039066796877 7.0508032347438760468;-0.54072797934901650763 -1.8992976328535833286 0.098963013102056421322 1.0763859265728688008 1.0877689772801475421;-0.63128403113586728512 0.26000168418704833195 -1.8506003878082091241 -3.4713371560231012225 2.9721048722360903227;0.42334707621158573776 -0.58256360733305756483 -0.45814639188410904991 2.6501794376607938908 8.9123806003141261556;-0.90533367546680898474 0.63156661214767728652 1.5310241534369486427 4.5850257201623589864 1.4908737738171664589;-0.084808483736146203502 -0.80113779191780798428 2.5444972785063306731 1.3969543079854871426 -1.9769190438601431659;1.9177340235802675661 -0.73219591765148539508 -1.4693458564744896755 0.2930658772163871606 -1.2530591744885413164;2.7390801859165287979 0.48976115498583633334 -3.5889995454542589215 1.7226571802791836863 -0.75399816762652305258;0.1890690542520303552 -0.40091542644499877923 -3.8440755665474442004 0.57591437968676528758 -3.4955236361713377669;0.77717852607405568666 -0.40625596958318582752 -1.2661178073914425291 3.6862345733079462384 2.3616746390363676511;-0.92078573953656051021 1.2024848915880816946 -0.55679810944615182322 -0.86119159512319853889 3.2024074432902134291;0.95348497110325669546 2.6422687074788573369 -2.6416513952619591343 -0.25841847377372939576 3.6854761965557338854;2.5800416009485278579 0.47104546515578482602 0.34661877511486771652 -0.60354465611599183994 -3.9375861212613258999;0.5212627079945847397 -0.23126243407087893056 -1.7728845259277201674 2.9868748062966652412 2.676260032704309122;2.4925063170404633262 2.5333893159079856616 -0.093981219075720545675 6.7228709462881948156 2.0204632594844227356;0.38595641045521222878 -0.82208533605846401127 -2.8748143274985507034 2.036196204548615718 -3.8599045509876130922;0.11129982595097265285 3.8512152523582785513 0.98843870332721062155 -0.19466152078987236651 2.6675762207308046925;-0.22526934460652467407 -0.63867669528427661874 -1.1658180113976464032 -8.4114623657413645219 -3.3784965881277861932];

% Layer 2
b2 = [0.58929148825314392468;-2.800444471301010374;2.5083106443476843594;3.7315591241385472898;3.4101812361038499333;2.0942654022842295269;3.1994146209655731639;2.6112352352310526094;0.81608234894251518998;2.6683937614990234088;-1.8759868668184316309;0.80128179613019923089;0.7559332446310060849;0.88806166622965898583;-4.1912285306129293261;6.31909119312234413;-1.6345610941776915759;3.0625816954884399479;4.8742514114508601608;5.1442522147985627612];
LW2_1 = [3.4198165084628797672 -1.1367991283018723525 0.57172377205553281954 -1.5691137968891324395 -1.5088739206492252087 -0.42444256614554115581 -4.1919410796151712617 -1.6949825970668321862 -0.98063749362088481476 1.0478621197015360877 -1.4500378131775650825 -0.05141988995866194484 0.085158990643320858771 -1.7456444311201431141 0.17681923002233063125 0.031702066390509500704 -1.3295084162654096094 0.46861292675591670331 -0.82829729298345966537 -2.0347986520297722812;-2.6128591106781478004 -1.1887075188436790896 1.6383251097119722051 -3.2068064726669955888 4.3175445946119648255 -3.6939018489873478579 -6.8913846127008593356 3.7332079136568485644 -8.077165049847232936 3.5104356712742603719 -4.4161535080323375269 -7.0975276772106719037 0.77070772636650408671 -1.3049452031413406594 0.22879424973095602303 7.1415822993783368844 0.75463917309352912532 3.6424302048122418896 1.3431181767162505558 -5.9691210174457456361;-3.1318382934641877391 0.026904162649973341337 -1.3981806830335539171 0.27420877808476795678 -2.5036679512646795587 -1.6221912014373085498 -0.37159525137474502809 -0.76782573710436963221 2.957955277896769708 -0.76939080008717697368 -2.7420031331737853009 -0.5412354194782462713 -0.19863567695123049428 -1.0799660032279660982 -0.78203314886690622476 2.7333310957352159321 -0.79239583270630242762 0.44034563594108594442 0.28953519341752176341 1.0985564407439305512;0.98372799447221037639 -1.119335284958243415 -0.34501827513930877211 -4.9162041210798586022 3.2294459066212022336 2.2422879322641890987 2.2463043180285588996 -3.1128524392956382627 2.5706800909902813856 -0.49045316639844221962 -2.437775565328738292 -3.8803435543010351694 -1.8233069462294295704 -2.4143371235650334938 -1.2352701532995205014 1.0844107332869969973 -1.4637743261025017993 4.926223723782357844 0.70562597280354311113 2.2834351684832525642;0.57921847611916599252 -1.7213085643588306173 2.4779734016230317017 -0.32808332396043032864 2.1517639213888499761 -1.0929148697286255043 0.096396095962683892022 0.69037772908827110818 5.3368871995126969665 -1.6844635718191141027 -1.9307974769205746846 0.47730375943902458857 2.5888687589045678017 -0.4793432365439841969 -0.94814404972367205549 -2.902436861923752609 -1.3865274205286295395 4.2157199741723765385 -2.2198896733308033369 -2.3622064621525771244;-0.95711397274527976187 -4.2241315533060381782 -5.473695650844917715 -0.26335682041984254109 7.4920054389337016332 -4.1751487861388394407 1.760953189484763648 -2.6039349174318169311 4.2233092055389693797 -2.4176673880275347805 1.20580799451419729 -1.8300592295060984505 -6.2041265955501474494 3.7852023086217778669 -0.89123168149104758928 0.90326948515112859273 2.1778563753236497291 -1.5511622635468171882 -3.3647429462183366944 -3.449993126006224653;3.2949930944178529302 -0.7151074826551827579 1.6811018538110595877 2.9246312478875515772 -6.6774979492639587875 5.4216844044325958052 -3.7578773174813879798 -2.5396261877540560192 8.9633310632914628968 -2.4307778294601143365 5.1663484522213760641 -0.75517854460390299032 -0.37827068085080589599 4.0539215342133667619 -3.6115150042453882939 -1.7325724735891163686 -2.3316639702397976563 0.52908106921343944773 2.2322445436795819163 -3.2078899340102031701;1.3705903623508706168 -1.1726816859088098344 -1.3133704435945583455 -1.7605627912874606267 0.52172370410719703937 0.5088459544930881151 -1.9701776366730912038 1.8299861229009881658 2.9247417853727410986 -2.7463760814466904314 1.4454558018442569267 0.47677640793341208303 -1.5276798117550212108 -0.043386982571120280561 -1.967184339123992709 -4.1462021962798241148 -3.9731993238802294499 -1.1322631082389149615 -2.0493816948747278772 -3.5522803761805938905;0.98968687129360410903 -0.82040490420167788699 -0.94351290188266978554 1.4527954143547610055 4.6636416346800926291 -1.8215619702299554739 2.3038974512468790579 1.9035805840481314632 -3.2443592686852302798 -0.23386706419860958661 2.8935585560142405015 3.3404521374427065261 -1.4316153757726186591 1.6595679254500075306 1.2360714371136864997 -2.8582672426329938098 2.0447797204328423959 -2.1719371155337023893 -0.54848442650888906691 -0.2429599989834778373;0.82886907522162212025 1.1873701573569543921 -1.132576448188053142 -2.0369369431885373523 -4.601327502140304837 1.0657708823790381647 -5.6986201434456988935 -1.6939835181953426524 -0.074681603132672080836 0.47868053412798916568 0.076541469626397504178 -0.82166794530932174556 -0.49740084285593239022 -1.5520594874031550248 -0.17205598140094410797 0.40915046169330138159 -0.91222798137622418402 -0.077180091717418755626 -1.1484000865458761087 -0.55954169859276814414;0.27742621082234036889 0.84291451163170294514 0.72702834282715611547 -1.4219670115845677305 -4.4947564965236468382 1.7017100149785215901 -2.1957723037993588378 -1.8630152081600863667 3.4090581095849237236 0.29362117790914443738 -3.0226474167245265257 -3.7794640707181876849 1.5113123586194983083 -1.7682235856992196688 -1.3551429070985905323 3.2227711499620816937 -1.9436766802639238172 2.3413481153255943923 0.6890404726014228709 0.084860174578863994954;0.9901347188085615203 0.99619314821265225746 0.16278220869667961446 0.16368463992510681737 -0.45324708822208659154 -0.2517312435623478839 -1.2318014902037492941 0.23407700002914208492 0.026937540450348261556 -0.31560528424149569826 0.72121133431888362342 2.3230313484922664458 0.5562180284925960505 0.28062347281435773283 -1.329877461019093543 -3.5269916360670392486 3.2136439883868201939 -0.53549553599060228937 1.3439840859942480122 2.0216148483851124062;0.20886401264068865657 -1.1238077630793157358 0.9071185761802719183 2.1323549808009834017 5.3849104825653268946 -2.4210720763853621484 2.9319228159407750844 0.8132863588664895893 -0.38634276354645546991 -0.20970663783857015905 0.49416795410782010656 0.90216735385083746124 0.32002718867119678281 0.93560517965887934899 1.186930267386460347 -1.8993357084927098288 0.28266615848701881486 0.25092965417974921749 0.16172676075000236295 -0.85224493704668191629;1.4802200523197666104 -1.0262210526065809191 0.48074393733028714104 2.0015513371049586944 -4.0833052183779541267 3.3313830745469878991 -2.4305873926827192832 0.058758722191409124003 -1.0651209479737346886 1.4814018175370642361 0.13495349394205102822 -0.28413449600844881138 1.4675192464767303768 0.52064272163699854001 1.29681669517553666 -1.1621506666657879236 -1.0012663959244378908 -2.0797281250064463265 0.25139055640813134929 1.9813288607213428438;-0.92233099540912522052 1.0687461157327613481 -3.7944536123168361996 3.6434198426516073432 0.15981809068289143383 -2.7718954803776103546 -1.6099032401404598236 -2.3625494463026757153 -0.47101467433792271189 0.093448670465177186006 1.4618064684530467368 1.0812428740945028149 -1.3538515426939281561 0.40235062641148144902 -0.37601527017273495002 2.720701647009541535 6.6993871742093435984 -4.0572947471321816337 -3.3395033066767711993 0.2744542869976365207;4.227567893808815036 -2.7451186796377160526 -6.6773858871998310605 6.7228312428626830766 -8.9595000288203330285 2.9070333770308298682 6.8305042985674448985 0.86702487758019586295 -0.54018886375302233027 2.3974605235263064529 -1.0001556724567424173 -0.64675610709585829028 12.3978049796569465 1.2591072691454174848 -4.4339291733708980914 1.2711758984659680127 6.2937574268069331751 1.8420119526726947967 -0.44627366940221246949 2.850328567607413266;2.5717194393165372368 -1.3930441287312307352 -0.66115122558525096785 -0.36451834412359468418 -5.4827772938252792301 -1.1097184575754395208 -1.0247931013576825343 0.77902405621683046277 2.7131877437909741602 -0.32867076652536769688 -1.065468939004782456 1.3244146620311236795 1.4467225736496556188 0.12697433046983228055 -0.6143101751457394899 0.62133389030405905551 0.61090924411098534996 -1.6760502482739290109 -1.1810768432086462543 1.091620159414944391;1.9424890694627554577 1.9599620772272967617 1.8406369655461962687 -1.7978997881795577563 -3.8949766535427201575 1.0239790063802332032 0.82046237440016112075 0.92022075158184035715 4.7751037308990795793 0.43887089492167663529 -1.0476109146182235321 0.87473817577518953037 1.8831825363495451331 -0.86044952280708353332 -0.25919391475843300832 -2.0444412961551465813 0.40866079794875531661 3.0307277957664395807 -1.4340319999398114525 1.1266416960449496809;-2.1723645450946968971 0.71631749196825134085 1.4018394339867747966 -0.44658197214781336637 -5.6873538318733682928 0.28816227288108742233 -1.6063932712388875323 1.2128572604997014395 1.0843764004302676174 0.94460375667899521002 0.39093836076384869127 -0.46311988276579452162 3.1749282853631815016 0.054073299444105445144 -1.1867315387928663029 -0.37613359735366869163 0.8384872218148008427 -1.9146847395184185547 8.6684891533756608384e-05 1.0475633824019952023;1.4712841861088663542 0.24680452759074719693 0.32816218969910621039 0.57973183261077954054 -1.4894160048482063541 1.5527226643411615736 -2.2188871757644643701 1.3175905785794352898 2.1105962692868418529 -1.987715108568372413 -0.71583295358513299167 0.47312004827184134248 0.92932110351727659214 0.0059518765453343142058 0.58686835297908390707 -3.1759467107714423051 0.35346387651333094349 6.9705110332940609652 2.95869586072821944 3.2101044090939105935];

% Layer 3
b3 = 0.81146086324281041513;
LW3_2 = [0.16286834704582633937 -0.29110390738418762124 0.23209000747744862325 0.080250637912703010057 -0.25689850600700986361 -0.060997676728370094079 0.060416606326523035475 -0.10619941882673389344 -2.8503943943263880811 -0.20500675778666102578 -2.5945321840696755622 0.52920327733617389399 0.4369353921254701123 -0.4159932056382911747 -0.20036409815070529983 -2.2232271242598091732 0.37526994251158335425 0.31260126822625344811 -0.32841943870049505882 0.86431644964731713099];

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