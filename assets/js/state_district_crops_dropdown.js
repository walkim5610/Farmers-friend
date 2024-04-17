
var state_arr = [
  "Baringo", "Bomet", "Bungoma", "Busia", "Elgeyo-Marakwet", "Embu", "Garissa", "Isiolo", "Kericho",
  "Kiambu", "Kilifi", "Kirinyaga", "Kisii", "Homabay", "Kajiado", "Kakamega", "Kisumu", "Kitui", "Kwale", "Laikipia", "Lamu", "Machakos", "Makueni",
  "Mandera", "Marsabit", "Meru", "Migori", "Mombasa", "murang'a", "Nairobi", "Nakuru", "Nandi", "Narok", "Nyamira", "Nyandarua", "Nyeri",
  "Samburu", "Siaya", "Taita-Taveta", "Tana River", "Tharaka-Nithi", "Trans Nzoia", "Turkana", "Uasin Gishu", "Vihiga",
  "Wajir", "West Pokot"
];

var s_a = [
  "", 
  "BARINGO CENRAL|BARINGO NORTH|BARINGO SOUTH|ELDAMA RAVINE|MOGOTIO |TIATY",
  "BOMET CENTRAL| BOMET EAST | BOMET SOUTH| CHEBALUNGU",
  "BUNGOMA EAST | BUNGOMA NORTH | BUNGOMA SOUTH | BUNGOMA WEST| WEBUYE EAST | WEBUYE WEST| MT ELGON",
  "TESO NORTH | TESO SOUTH | MATAYOS | BUTULA | FUNYULA | BUDALANGI |NAMBALE",
  "MARAKWET EAST | MARAKWET WEST | KEIYO NORTH| KEIYO SOUTH",
  "EMBU EAST | EMBU WEST | EMBU NORTH",
  "BALAMBALA | FAFI | DAADAP | HULUGO | GARISA TOWNSHIP | IJARA",
  "ISIOLO NORTH | ISIOLO CENTRAL |ISIOLO SOUTH",
  "AINAMOI| BELGUT | BURET | KIPKELION EAST | KIPKELION WEST",
  "JUJA| KABETE| KIAMBAA| KIAMBU TOWN | KIKUYU | LIMURU| RUIRU | THIKA | GATUNDU NORTH | GATUNDU SOUTH",
  "KILIFI CENTRAL | KILIFI NORTH | KILIFI SOUTH| MALINDI| GANZE",
  "KIRINYAGA CENTRAL | KIRINYAGA NORTH| KIRINYAGA SOUTH| MWEA EAST | MWEA WEST",
  "KISII CENTRAL | KISII EAST| KITUTU CHACHA NORTH | KITUTU CHACHE SOUTH| BOBASI | KISII SOUTH",
  "HOMABAY TOWN | MBITA| RANGWE| NDHIWA | SUBA NORTH | SUBA SOUTH",
  "KAJIADO CENTRAL | KAJIADO NORTH | KAJIADO WEST| MASHURURU  | LOITOKTOK",
  "KAKAMEGA CENTRAL | KAKAMEGA EAST | KAKAMEGA SOUTH| KAKAMEGA NORTH",
  "KISUMU CENTRAL | KISUMU EAST | KISUMU WEST | SAME | NYANDO | MUHORONI",
  "KITUI CENTRAL | KITUI EAST | KITUI WEST| KITUI SOUTH | KITUI RUHAI| MWINGI CENTRAL | MWINGI NORTH | WINGI SOUTH | MWINGI WEST",
  "LUNGALUGA | MSAMBUENI| KINANGO| MUTUNGA",
  "LAIKIPIA EAST | LAIKIPIA WEST| LAIKIPIA NORTH",
  "LAMU EAST | LAMU WEST",
  "MACHAKOS TOWN | MAVOKO | KANGUNDO | KATHIANI| MASINGA | YATA",
  "MAKUENI | KILOME | KAITU | MAKINDU| MBONI",
  "MANDERA EAST  | MANDERA WEST  | MANDERA SOUTH | MANDERA NORTH | BANISA | LAFEY",
  "MOYALE | SAKU |LAISAIMIS",
  "IMENDI NORTH | IMENDI CENTRAL | IMENDI SOUTH | BUURI | TIGANIA EAST | TIGANI WEST",
  "MIGORI | RONGO |AWENDO | KURIA WEST | KURIA EAST",
  "CHANGAMWE | JONVU| KISAUNUI  | NYALI | LIKONI | MVITA",
  "GATANGA | KANDARA| KAGUMO | KIHARU| MATHIOYA | KANGEMA",
  "DAGORETI | LANG'ATA | KIBRA | ROYSAMBU | KASRANI | RUARAKA |EMBAKASI NORTH | EMBAKASI SOUTH |EMBAKASI CENTRAL | EMBAKASI  EAST | EMBAKASI WEST | KAMUKUNJI | MAKADHARA | STAREHE",
  "NAKURU EAST | NAKURU NORTH | NAKURU WEST| NAIVASHA| GILGIL | KURESOI NORTH | KURESOI SOUTH| MOLO | NJORO | SUBUKIA | RONGAI | BAHATI",
  "TINDIRET | ALDAI | NANDI HILLS | CHESUMEI",
  "NAROK NORTH | NAROK SOUTH | NAROK EAST| NAROK WEST| TRANSMARA EAST| TRANSMARA WEST",
  "NYAMIRA NORTH | NYAMIRA SOUTH",
  "KINANGOP | KIPIPIRI | OL KALAU| OL JORO OROK| NDARAGWWA",
  "TETU | KIENI WEST | KIENI WEST| MATHIRA EAST| MATHIRA WEST| OTHAYA | MUKURWEINI | NYERI SOUTH",
  "SAMBURU WEST  |SAMBURU NORTH| SAMBURU EAST",
  "GEM | UGENYA | UGUNJA | ALENDO USONGA| BONDO| RARIEDA",
  "TAVETA | WUNDANYI | MWATATE",
  "GARSEN  | BURA",
  "CHUKA | IGAMBANGOMBE| MAARA",
  "CHERENG'ANYI | KIMININI | SABOTI| ENDEBES",
  "TURKANA NORTH | TURKANA WEST | TURKANA CENTRAL | TURKANA SOUTH| LOIMA",
  "AINAPKOI | KAPSERET | KESES| MOIBEN| SOY| TURBO",
  "EMUHAYA | HAMISI| LUANDA| SABATIA| VIHIGA",
  "WAJIR EAST | WAJIR WEST| WAJIR SOUTH",
  "KAPENGURIA | KACHELIBA | POKOT SOUTH"
];

function print_state(state_id){
  var option_str = document.getElementById(state_id);
  option_str.length=0;
  option_str.options[0] = new Option('Select State','');
  option_str.selectedIndex = 0;
  for (var i=0; i<state_arr.length; i++) {
      option_str.options[option_str.length] = new Option(state_arr[i], i); 
  }
}

function print_city(city_id, state_index){
  var option_str = document.getElementById(city_id);
  option_str.length=0;
  option_str.options[0] = new Option('Select District','');
  option_str.selectedIndex = 0;
  var city_arr = s_a[state_index].split("|");
  for (var i=0; i<city_arr.length; i++) {
      option_str.options[option_str.length] = new Option(city_arr[i], city_arr[i]);
  }
}




var months = ["ANNUAL", "JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC", "Jan-Feb", "Mar-May", "Jun-Sep", "Oct-Dec"]; 

function print_months(month_id) {
    var option_months = document.getElementById(month_id);
    option_months.length = 0;
    option_months.options[0] = new Option('Select Month', '');
    option_months.selectedIndex = 0;
    for (var i = 0; i < months.length; i++) {
        option_months.options[option_months.length] = new Option(months[i], months[i]);
    }
}


var region = ["Baringo", "Bomet", "Bungoma", "Busia", "Elgeyo-Marakwet", "Embu", "Garissa", "Isiolo", "Kericho",
"Kiambu", "Kilifi", "Kirinyaga", "Kisii", "Homabay", "Kajiado", "Kakamega", "Kisumu", "Kitui", "Laikipia", "Lamu", "Machakos", "Makueni",
"Mandera", "Marsabit", "Meru", "Migori", "Mombasa", "murang'a", "Nairobi", "Nakuru", "Nandi", "Narok", "Nyamira", "Nyandarua", "Nyeri",
"Samburu", "Siaya", "Taita-Taveta", "Tana River", "Tharaka-Nithi", "Trans Nzoia", "Turkana", "Uasin Gishu", "Vihiga", 
"Wajir", "West Pokot"];

function print_crop_options(region_id, crop_id) {
  var selected_region = document.getElementById(region_id).value;
  var option_crop = document.getElementById(crop_id);
  option_crop.length = 0;
  option_crop.options[0] = new Option('Select Crop', '');
  option_crop.selectedIndex = 0;

  if (selected_region in cropOptions) {
      var crop_categories = cropOptions[selected_region];
      var i = 1;
      for (var category in crop_categories) {
          option_crop.options[i] = new Option(category, category);
          i++;
      }
  }
}





const cropOptions = {
  KAJIADO_CENTRAL: {
   Short_term: [ 'Castor seed', 'Cowpea', 'Cotton(lint)', 'Dry chillies', 'Gram', 'Groundnut', 'Horse-gram',  'Maize', 'Mesta', 'Moong(Green Gram)', 'Niger seed', 'Onion', 'Rapeseed &Mustard', 'Rice', 'Sesamum', 'Small millets', 'Soyabean', 'Sunflower'],
    Moderate: ['Cotton(lint)', 'Cowpea(Lobia)', 'Dry chillies', 'Gram', 'Groundnut', 'Horse-gram', 'Linseed', 'Maize', 'Onion', 'Other Rabi pulses', 'Rapeseed &Mustard', 'Safflower', 'Sunflower', 'Wheat'],
    Summer: ['Cowpea', 'Cotton(lint)', 'Dry chillies', 'Groundnut',  'Maize', 'Onion', 'Rice', 'Sunflower'],
	WholeYear: ['Sorghum', 'Millet', 'Banana', 'Black pepper', 'Cashewnut', 'Citrus Fruit', 'Coconut', 'Coriander', 'Cotton(lint)', 'Dry chillies', 'Dry ginger', 'Garlic', 'Grapes', 'Mango', 'Mesta', 'Onion', 'Other Fresh Fruits', 'Papaya', 'Pome Fruit', 'Sannhamp', 'Sugarcane', 'Sweet potato', 'Tobacco', 'Tomato', 'Turmeric']
  },
 KAJIADO_NORTH: {
  Short_term: [ 'Castor seed', 'Cowpea', 'Cotton(lint)', 'Dry chillies', 'Gram', 'Groundnut', 'Horse-gram',  'Maize', 'Mesta', 'Green Gram', 'Niger seed', 'Onion',  'Rapeseed &Mustard', 'Rice', 'Sesamum', 'Small millets', 'Soyabean', 'Sunflower'],
   Moderate: ['Cotton(lint)', 'Cowpea(Lobia)', 'Dry chillies', 'Gram', 'Groundnut', 'Horse-gram', 'Linseed', 'Maize', 'Onion', 'Other Rabi pulses', 'Rapeseed &Mustard', 'Safflower', 'Sunflower', 'Wheat'],
   Summer: ['Cowpea', 'Cotton(lint)', 'Dry chillies', 'Groundnut',  'Maize', 'Onion', 'Rice', 'Sunflower'],
 WholeYear: ['Sorghum', 'Millet',, 'Banana', 'Black pepper', 'Cashewnut', 'Citrus Fruit', 'Coconut', 'Coriander', 'Cotton(lint)', 'Dry chillies', 'Dry ginger', 'Garlic', 'Grapes', 'Mango', 'Mesta', 'Onion', 'Other Fresh Fruits', 'Papaya', 'Pome Fruit', 'Sannhamp', 'Sugarcane', 'Sweet potato', 'Tobacco', 'Tomato', 'Turmeric']
 },
  KAJIADO_WEST: {
    Short_term: [ 'Castor seed', 'Cowpea', 'Cotton(lint)', 'Dry chillies', 'Gram', 'Groundnut', 'Horse-gram',  'Maize', 'Mesta', 'Green Gram', 'Niger seed', 'Onion', , 'Rapeseed &Mustard', 'Rice', 'Sesamum', 'Small millets', 'Soyabean', 'Sunflower'],
     Moderate: ['Cotton(lint)', 'Cowpea(Lobia)', 'Dry chillies', 'Gram', 'Groundnut', 'Horse-gram', 'Linseed', 'Maize', 'Onion', 'Other Rabi pulses', 'Rapeseed &Mustard', 'Safflower', 'Sunflower', 'Wheat'],
     Summer: ['Cowpea', 'Cotton(lint)', 'Dry chillies', 'Groundnut',  'Maize', 'Onion', 'Rice', 'Sunflower'],
   WholeYear: ['Sorghum', 'Millet', 'Banana', 'Black pepper', 'Cashewnut', 'Citrus Fruit', 'Coconut', 'Coriander', 'Cotton(lint)', 'Dry chillies', 'Dry ginger', 'Garlic', 'Grapes', 'Mango', 'Mesta', 'Onion', 'Other Fresh Fruits', 'Papaya', 'Pome Fruit', 'Sannhamp', 'Sugarcane', 'Sweet potato', 'Tobacco', 'Tomato', 'Turmeric']
   },

   MASHURURU: {
    Short_term: [ 'Castor seed', 'Cowpea', 'Cotton(lint)', 'Dry chillies', 'Gram', 'Groundnut', 'Horse-gram',  'Maize', 'Mesta', 'Green Gram', 'Niger seed', 'Onion', , 'Rapeseed &Mustard', 'Rice', 'Sesamum', 'Small millets', 'Soyabean', 'Sunflower'],
     Moderate: ['Cotton(lint)', 'Cowpea(Lobia)', 'Dry chillies', 'Gram', 'Groundnut', 'Horse-gram', 'Linseed', 'Maize', 'Onion', 'Other Rabi pulses', 'Rapeseed &Mustard', 'Safflower', 'Sunflower', 'Wheat'],
     Summer: ['Cowpea', 'Cotton(lint)', 'Dry chillies', 'Groundnut',  'Maize', 'Onion', 'Rice', 'Sunflower'],
   WholeYear: ['Sorghum', 'Millet',  'Banana', 'Black pepper', 'Cashewnut', 'Citrus Fruit', 'Coconut', 'Coriander', 'Cotton(lint)', 'Dry chillies', 'Dry ginger', 'Garlic', 'Grapes', 'Mango', 'Mesta', 'Onion', 'Other Fresh Fruits', 'Papaya', 'Pome Fruit', 'Sannhamp', 'Sugarcane', 'Sweet potato', 'Tobacco', 'Tomato', 'Turmeric']
   },
   LOITOTOK: {
    Short_term: [ 'Castor seed', 'Cowpea', 'Cotton(lint)', 'Dry chillies', 'Gram', 'Groundnut', 'Horse-gram', 'Jowar', 'Maize', 'Mesta', 'Green Gram', 'Niger seed', 'Onion', 'Rapeseed &Mustard', 'Rice', 'Sesamum', 'Small millets', 'Soyabean', 'Sunflower'],
     Moderate: ['Cotton(lint)', 'Cowpea(Lobia)', 'Dry chillies', 'Gram', 'Groundnut', 'Horse-gram', 'Linseed', 'Maize', 'Onion', 'Other Rabi pulses', 'Rapeseed &Mustard', 'Safflower', 'Sunflower', 'Wheat'],
     Summer: ['Cowpea', 'Cotton(lint)', 'Dry chillies', 'Groundnut',  'Maize', 'Onion', 'Rice', 'Sunflower'],
   WholeYear: ['Sorghum', 'Millet', 'Banana', 'Black pepper', 'Cashewnut', 'Citrus Fruit', 'Coconut', 'Coriander', 'Cotton(lint)', 'Dry chillies', 'Dry ginger', 'Garlic', 'Grapes', 'Mango', 'Mesta', 'Onion', 'Other Fresh Fruits', 'Papaya', 'Pome Fruit', 'Sannhamp', 'Sugarcane', 'Sweet potato', 'Tobacco', 'Tomato', 'Turmeric']
   },
};
