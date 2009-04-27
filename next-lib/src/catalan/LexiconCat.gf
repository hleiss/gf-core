--# -path=.:../romance:../common:../abstract:../../prelude

concrete LexiconCat of Lexicon = CatCat ** open 
  (M=MorphoCat), ParadigmsCat, BeschCat in {

flags 
  optimize=values ;

oper
    regFN : Str -> N = \s -> femN (regN s) ;
    regMN : Str -> N = \s -> regN s ; 
	irregMN : Str -> Str -> N = \pa,pans ->  M.mkNounIrreg pa pans masculine ;

lin
   airplane_N = regMN "avi�" ;  

   answer_V2S = mkV2S (verbV (compondre_26 "respondre")) dative ;
   apartment_N = regMN "pis" ;
   apple_N = regFN "poma" ;
   art_N = regMN "art" ;    
   ask_V2Q = mkV2Q (regV "preguntar") dative ;
   baby_N = regMN "nad�" ;
   bad_A = mkADeg (regA "dolent") (regA "pitjor") ;
   bank_N = regMN "banc" ;
   beautiful_A = prefA (regADeg "bell") ;
   become_VA = reflV (regV "tornar") ;  -- esdevenir
   beer_N = regFN "cervesa" ;
   beg_V2V = mkV2V (regV "demanar") accusative dative ;
   big_A = regADeg "gros" ;
   bike_N = regFN "bicicleta" ;
   bird_N = regMN "ocell" ;
   black_A = compADeg (mkA "negre" "negra" "negres" "negres" "negrament") ; 
   blue_A = compADeg (mkA "blau" "blava" "blaus" "blaves" "blavament") ;
   boat_N = regFN "barca" ;
   book_N = regMN "llibre" ;
   boot_N = regFN "bota" ;
   boss_N = regMN "cap" ;
   boy_N = regMN "noi" ;
   bread_N = irregMN "pa" "pans" ;
   break_V2 = dirV2 (verbV (trencar_112 "trencar")) ;
   broad_A = regADeg "ample" ; -- put it in MorphoCat?: like  black_A
   brother_N2 = deN2 (regMN "germ�") ;
   brown_A = compADeg (mkA "marr�" "marrona" "marrons" "marrones" "marronament") ;
   butter_N = regFN "mantega" ;
   buy_V2 = dirV2 (regV "comprar") ;
   camera_N = regFN "c�mara" ;
   cap_N = regFN "gorra" ;
   car_N = regMN "cotxe" ;
   carpet_N = regFN "catifa" ;
   cat_N = regMN "gat" ;        -- gata
   ceiling_N = regMN "sostre" ;
   chair_N = regFN "cadira" ;
   cheese_N = regMN "formatge" ;
   child_N = regMN "nen" ;      -- nena
   church_N = regFN "esgl�sia" ;
   city_N =  regFN "ciutat" ;   
   clean_A = regADeg "net" ;
   clever_A = regADeg "inteligent" ;
   close_V2 = dirV2 (verbV (trencar_112 "tancar")) ;
   coat_N = regMN "abric" ;
   cold_A = regADeg "fred" ;
   come_V = verbV (venir_117 "venir") ;
   computer_N = regMN "ordinador" ;    
   country_N = regMN "pa�s" ;       -- masc
   cousin_N = regMN "cos�" ;
   cow_N = regFN "vaca" ;
   die_V = verbV (morir_71 "morir") ;
   dirty_A = regADeg "brut" ;
   distance_N3 = mkN3 (regFN "dist�ncia") genitive dative ;
   doctor_N = regMN "metge" ;   -- metgessa
   dog_N = regMN "gos" ;        -- gossa
   door_N = regFN "porta" ;
   drink_V2 = dirV2 (verbV (beure_11 "beure")) ;
   easy_A2V = mkA2V (regA "f�cil") dative genitive ;
   eat_V2 = dirV2 (verbV (envejar_48 "menjar")) ;
   empty_A = compADeg (mkA "buit" "buida" "buits" "buides" "buidament") ;
   enemy_N = regMN "enemic" ;       -- enemiga
   factory_N = regFN "f�brica" ;
   father_N2 = deN2 (regMN "pare") ;
   fear_VS = mkVS (verbV (t�mer_107 "t�mer")) ;
   find_V2 = dirV2 (regV "trobar") ;
   fish_N = regMN "peix" ;
   floor_N = regMN "terra" ;        -- s�l
   forget_V2 = dirV2 (regV "oblidar") ;
   fridge_N = regFN "nevera" ;
   friend_N = regMN "amic" ;        -- amiga
   fruit_N = regFN "fruita" ;
   fun_AV = mkAV (regA "divertit") genitive ;
   garden_N = regMN "jard�" ;
   girl_N = regFN "noia" ;
   glove_N = regMN "guant" ;
   gold_N = regMN "or" ;
   good_A = mkADeg (mkA "b�" "bona" "bons" "bones" "bonament") (regA "millor") ; ---- adv?
   go_V = (verbV (anar_4 "anar")) ;
   green_A = regADeg "verd" ;
   harbour_N = regMN "port" ;
   hate_V2 = dirV2 (verbV (canviar_16 "odiar")) ;
   hat_N = regMN "barret" ;
   hear_V2 = mkV2 (regV "escoltar") dative ; -- Must be "oir". Add it to Besch
   hill_N = regMN "tur�" ;
   hope_VS = mkVS (regV "esperar") ;
   horse_N = regMN "cavall" ;
	hot_A = regADeg "calent" ;
   house_N = regFN "casa" ;
	important_A = regADeg "important" ;
   industry_N = regFN "ind�stria" ;
   iron_N = regMN "ferro" ;
   king_N = regMN "rei" ;
   know_V2 = dirV2 (verbV (saber_99 "saber")) ;
   lake_N = regMN "llac" ;
   lamp_N = regFN "l�mpada" ;
   learn_V2 = dirV2 (verbV (aprendre_6 "aprendre")) ;
   leather_N = regMN "cuiro" ;
   leave_V2 = dirV2 (regV "partir") ;
   like_V2 = dirV2 (verbV (canviar_16 "apreciar")) ;
   listen_V2 = dirV2 (regV "escoltar") ;
   live_V = verbV (viure_119 "viure") ;
   long_A = regADeg "llarg" ;
   lose_V2 = dirV2 (verbV (perdre_83 "perdre")) ;
   love_N = regMN "amor" ;
   love_V2 = dirV2 (regV "estimar") ;
   man_N = regMN "home" ;       -- masc
   married_A2 = mkA2 (regA "casat") dative ;
   meat_N = regFN "carn" ;
   milk_N = regFN "llet" ;
   moon_N = regFN "lluna" ;
   mother_N2 = deN2 (regFN "mare") ;    -- fem
   mountain_N = regFN "muntanya" ;
   music_N = regFN "m�sica" ;
   narrow_A = regADeg "estret" ;
   new_A = compADeg (mkA "nou" "nova" "nous" "noves" "novament") ;
   newspaper_N = regMN "diari" ;        -- peri�dic  
   oil_N = regMN "oli" ;
   old_A =  regADeg "vell" ;
   open_V2 = dirV2 (verbV (obrir_77 "obrir")) ;
   paint_V2A = mkV2A (regV "pintar") accusative (mkPrep "en") ;
   paper_N = regMN "paper" ;
   paris_PN = mkPN "Paris" masculine ;
   peace_N = regFN "pau" ;
   pen_N = regMN "llapis" ;
   planet_N = regMN "planeta" ;
   plastic_N = regMN "pl�stic" ;
   play_V2 = dirV2 (verbV (pregar_86 "jugar")) ;
   policeman_N = regMN "policia" ;  -- fem refers to the institution
   priest_N = regMN "capell�" ;     -- masc
   probable_AS = mkAS (regA "probable") ; 
   queen_N = regN "reina" ;
   radio_N = regFN "r�dio" ;
   rain_V0 = mkV0 (verbV (moure_72 "ploure")) ;
   read_V2 = dirV2 (verbV (servir_101 "llegir")) ;
   red_A = regADeg "vermell" ;
   religion_N = mkN "religi�" "religions" feminine ;
   restaurant_N = regMN "restaurant" ;      
   river_N = regMN "riu" ;
   rock_N = regFN "roca" ;
   roof_N = regFN "teulada" ;
   rubber_N = regFN "goma" ;
   run_V = verbV (c�rrer_30 "c�rrer") ;
   say_VS = mkVS (verbV (dir_41 "dir")) ;
   school_N = regFN "escola" ;
   science_N = regFN "ci�ncia" ;
   sea_N = regMN "mar" ;            -- masc & fem 
   seek_V2 = dirV2 (verbV (trencar_112 "buscar")) ;
   see_V2 = dirV2 (verbV (veure_118 "veure")) ;
   sell_V3 = dirV3 (verbV (vendre_116 "vendre")) dative ;
   send_V3 = dirV3 (verbV (canviar_16 "enviar")) dative ;
   sheep_N = regFN "ovella" ;   -- xai
   ship_N = regMN "vaixell" ;
   shirt_N = regFN "camisa" ;
   shoe_N = regFN "sabata" ;
   shop_N = regFN "botiga" ;
   short_A = regADeg "curt" ; --- breu
   silver_N = regFN "plata" ;
   sister_N = regFN "germana" ;
   sleep_V = verbV (dormir_44 "dormir") ;
   small_A = prefA (regADeg "petit") ;
   snake_N = regFN "serp" ;     -- fem
   sock_N = regMN "mitj�" ;
   speak_V2 = dirV2 (regV "parlar") ;
   star_N = regFN "estrella" ;
   steel_N = regMN "acer" ;
   stone_N = regFN "pedra" ;
   stove_N = regMN "forn" ; 
   student_N = regN "estudiant" ;   -- used both for fem & masc
   stupid_A = regADeg "est�pid" ;
   sun_N = regMN "sol" ;    
   switch8off_V2 = dirV2 (verbV (pregar_86 "apagar")) ;
   switch8on_V2 = dirV2 (verbV (atendre_8 "encendre")) ;
   table_N = regFN "taula" ; 
   talk_V3 = mkV3 (regV "parlar") dative genitive ;
   teacher_N = regMN "mestre" ;     -- mestra
   teach_V2 = dirV2 (regV "ensenyar") ;
   television_N = mkN "televisi�" "televisions" feminine ;  -- televisor masc
   thick_A = compADeg (mkA "gruixut" "gruixuda" "gruixuts" "gruixudes" "gruixudament") ;
   thin_A = compADeg (mkA "fi" "fina" "fins" "fines" "finament") ;
   train_N = regMN "tren" ;
   travel_V = verbV (envejar_48 "viatjar") ;
   tree_N = regMN "arbre" ;
  --- trousers_N = regN "pantal�n" ;    -- masc
   ugly_A = compADeg (mkA "lleig" "lletja" "lletjos" "lletges" "lletjament") ;
   understand_V2 = dirV2 (verbV (atendre_8 "entendre")) ;
   university_N = regFN "universitat" ;
   village_N = regMN "poble" ;
   wait_V2 = mkV2 (regV "esperar") dative ;
   walk_V = regV "caminar" ;
   warm_A = regADeg "tebi" ;
   war_N = regFN "guerra" ;
   watch_V2 = dirV2 (regV "mirar") ;
   water_N = regFN "aigua" ;
   white_A = compADeg (mkA "blanc" "blanca" "blancs" "blanques" "blancament") ;
   window_N = regFN "finestra" ;
   wine_N = regMN "vi" ;
   win_V2 = dirV2 (regV "guanyar") ;
   woman_N = regFN "dona" ;
   wonder_VQ = mkVQ (reflV (regV "preguntar")) ;
   wood_N = regFN "fusta" ;
   write_V2 = dirV2 (verbV (escriure_50 "escriure")) ;
   yellow_A = compADeg (mkA "groc" "groga" "grocs" "grogues" "grogament") ;
   young_A = compADeg (mkA "jove" "jove" "joves" "joves" "jovement") ;
   do_V2 =  dirV2 (verbV (fer_56 "fer")) ;
   now_Adv = mkAdv "ara" ;
   already_Adv = mkAdv "ja" ;
   song_N = mkN "can��" "can�ons" feminine ;
   add_V3 = dirV3 (regV "afegir") dative ; -- also: (regV "sumar")
   number_N = regMN "n�mero" ;
   put_V2 = dirV2 (regV "posar") ;
   stop_V = regV "aturar" ; 
   jump_V = regV "saltar" ;
   left_Ord = M.mkOrd (regA "esquerra") ;
   right_Ord = M.mkOrd (regA "dreta") ;
   far_Adv = mkAdv "lluny" ;
   correct_A = regA "correcte" ;
   dry_A = regA "sec" ;
   dull_A = regA "balb" ;
   full_A = regA "ple" ;
   heavy_A = regA "pesat" ;
   near_A = regA "proper" ;
   rotten_A = regA "podrit" ;
   round_A = regA "rod�" ;
   sharp_A = regA "esmolat" ; -- punxegut
   smooth_A = regA "llis" ;
   straight_A = regA "directe" ;
   wet_A = regA "moll" ;
   wide_A = regA "extens" ;
   animal_N = regMN "animal" ;           -- masc (sometimes fem when adj)
   ashes_N = regMN "cendra" ;
   back_N = regFN "esquena" ;
   bark_N = regFN "escor�a" ;
   belly_N = regFN "panxa" ;
   blood_N = regFN "sang" ;
   bone_N = regMN "os" ;
   breast_N = regFN "sina" ;             -- pit
   cloud_N = regMN "n�vol" ;
   day_N = regMN "dia" ;
   dust_N = regFN "pols" ;
   ear_N = regFN "orella" ;
   earth_N = regFN "terra" ;
   egg_N = regMN "ou" ;
   eye_N = regMN "ull" ;
   fat_N = regMN "greix" ;
   feather_N = regFN "pluma" ;
   fingernail_N = regFN "ungla" ;
   fire_N = regMN "foc" ;
   flower_N = regFN "flor" ;
   fog_N = regFN "boira" ;
   foot_N = regMN "peu" ;
   forest_N = regMN "bosc" ;
   grass_N = regFN "herba" ;             
   guts_N = regMN "budell" ;
   hair_N = regMN "cabell" ;
   hand_N = regFN "m�" ;
   head_N = regMN "cap" ;
   heart_N = regMN "cor" ;
   horn_N = regFN "banya" ;
   husband_N = regMN "marit" ;  -- esp�s
   ice_N = regMN "gel" ;
   knee_N = regMN "genoll" ;
   leaf_N = regFN "fulla" ;
   leg_N = regFN "cama" ;
   liver_N = regMN "fetge" ;
   louse_N = regMN "poll" ;
   mouth_N = regFN "boca" ;
   name_N = regMN "nom" ;
   neck_N = regMN "coll" ;
   night_N = regFN "nit" ;
   nose_N = regMN "nas" ;
   person_N = regFN "persona" ;
   rain_N = regFN "pluja" ;
   road_N = regMN "carrer" ;               
   root_N = regFN "arrel" ;
   rope_N = regN "corda" ;
   salt_N = regFN "sal" ;
   sand_N = regFN "sorra" ;
   seed_N = regFN "llavor" ;
   skin_N = regFN "pell" ;        -- fem
   sky_N = regMN "cel" ;
   smoke_N = regMN "fum" ;
   snow_N = regFN "neu" ;       -- fem
   stick_N = regMN "bast�"  ;               
   tail_N = regFN "cua" ;
   tongue_N = regFN "llengua" ;
   tooth_N = regFN "dent" ;
   wife_N = regFN "esposa" ;
   wind_N = regMN "vent" ;
   wing_N = regFN "ala" ;
   worm_N = regMN "cuc" ;             
   year_N = regMN "any" ;
   bite_V2 = dirV2 (verbV (pregar_86 "mossegar")) ;
   blow_V = regV "bufar" ;
   burn_V = regV "cremar" ;
   count_V2 = dirV2 (regV "comptar") ;
   cut_V2 = dirV2 (regV "tallar") ;
   dig_V = regV "cavar" ;
   fall_V = verbV (caure_18 "caure") ;
   fear_V2 = dirV2 (verbV (t�mer_107 "t�mer")) ;
   fight_V2 = dirV2 (regV "lluitar") ;
   float_V = regV "surar" ;
   flow_V = verbV (reduir_94 "fluir") ; -- also: regV "circular"
   fly_V = regV "volar" ;
   freeze_V = regV "congelar" ;
   give_V3 = dirdirV3 (verbV (donar_43 "donar")) ;
   hit_V2 = dirV2 (verbV (trencar_112 "picar")) ;
   hold_V2 = dirV2 (verbV (obtenir_78 "sostenir")) ;
   hunt_V2 = dirV2 (verbV (comen�ar_22 "ca�ar")) ;
   kill_V2 = dirV2 (regV "matar") ;
   laugh_V = verbV (riure_96 "riure") ; 
   lie_V = reflV (verbV (jeure_62 "jeure")) ;
   play_V = verbV (pregar_86 "jugar") ;
   pull_V2 = dirV2 (regV "tibar") ;
   push_V2 = dirV2 (verbV (at�nyer_59 "emp�nyer")) ;
   rub_V2 = dirV2 (verbV (pregar_86 "refregar")) ;
   scratch_V2 = dirV2 (regV "gratar") ;
   sew_V = verbV (cosir_31 "cosir") ;
   sing_V = regV "cantar" ;
   sit_V = reflV (verbV (seure_102 "seure")) ;
   smell_V = regV "ensumar" ;
   spit_V = verbV (escopir_49 "escopir") ;
   split_V2 = dirV2 (regV "separar") ; -- dividir,) ;
   squeeze_V2 = dirV2 (verbV (servir_101 "exprimir")) ;
   stab_V2 = dirV2 (regV "apunyalar") ;
   stand_V = verbV (estar_54 "estar") ; ---- "estar dret"
   suck_V2 = dirV2 (regV "xuclar") ;
   swell_V = regV "inflar" ;
   swim_V = regV "nedar" ;
   think_V = regV "pensar" ;
   throw_V2 = dirV2 (verbV (comen�ar_22 "llen�ar")) ;
   tie_V2 = dirV2 (verbV (pregar_86 "lligar")) ;
   turn_V = regV "girar" ;
   vomit_V = regV "vomitar" ;
   wash_V2 = dirV2 (regV "rentar") ;
   wipe_V2 = dirV2 (verbV (pregar_86 "eixugar")) ;
   breathe_V = regV "respirar" ;
   john_PN = mkPN "Joan" masculine ;
   today_Adv = mkAdv "avui" ;

  grammar_N = regFN "gram�tica" ;
  language_N = regFN "llengua" ;
  rule_N = regFN "regla" ;
  question_N = regFN "pregunta" ;
  ready_A = regA "preparat" ;
  reason_N = regFN "ra�" ;
  uncertain_A = regA "incert" ;
   have_V2 = dirV2 (verbV (tenir_108 "tenir")) ;

} ;
