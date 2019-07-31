require 'rest-client'
require 'json'
require 'oj'

# def generateLocations
#   countries = {
#   "data": [
#     {
#       "name": "Andorra",
#       "longitude": "1.601554",
#       "latitude": "42.546245"
#     },
#     {
#       "name": "United Arab Emirates",
#       "longitude": "53.847818",
#       "latitude": "23.424076"
#     },
#     {
#       "name": "Afghanistan",
#       "longitude": "67.709953",
#       "latitude": "33.93911"
#     },
#     {
#       "name": "Antigua and Barbuda",
#       "longitude": "-61.796428",
#       "latitude": "17.060816"
#     },
#     {
#       "name": "Anguilla",
#       "longitude": "-63.068615",
#       "latitude": "18.220554"
#     },
#     {
#       "name": "Albania",
#       "longitude": "20.168331",
#       "latitude": "41.153332"
#     },
#     {
#       "name": "Armenia",
#       "longitude": "45.038189",
#       "latitude": "40.069099"
#     },
#     {
#       "name": "Netherlands Antilles",
#       "longitude": "-69.060087",
#       "latitude": "12.226079"
#     },
#     {
#       "name": "Angola",
#       "longitude": "17.873887",
#       "latitude": "-11.202692"
#     },
#     {
#       "name": "Antarctica",
#       "longitude": "-0.071389",
#       "latitude": "-75.250973"
#     },
#     {
#       "name": "Argentina",
#       "longitude": "-63.616672",
#       "latitude": "-38.416097"
#     },
#     {
#       "name": "American Samoa",
#       "longitude": "-170.132217",
#       "latitude": "-14.270972"
#     },
#     {
#       "name": "Austria",
#       "longitude": "14.550072",
#       "latitude": "47.516231"
#     },
#     {
#       "name": "Australia",
#       "longitude": "133.775136",
#       "latitude": "-25.274398"
#     },
#     {
#       "name": "Aruba",
#       "longitude": "-69.968338",
#       "latitude": "12.52111"
#     },
#     {
#       "name": "Azerbaijan",
#       "longitude": "47.576927",
#       "latitude": "40.143105"
#     },
#     {
#       "name": "Bosnia and Herzegovina",
#       "longitude": "17.679076",
#       "latitude": "43.915886"
#     },
#     {
#       "name": "Barbados",
#       "longitude": "-59.543198",
#       "latitude": "13.193887"
#     },
#     {
#       "name": "Bangladesh",
#       "longitude": "90.356331",
#       "latitude": "23.684994"
#     },
#     {
#       "name": "Belgium",
#       "longitude": "4.469936",
#       "latitude": "50.503887"
#     },
#     {
#       "name": "Burkina Faso",
#       "longitude": "-1.561593",
#       "latitude": "12.238333"
#     },
#     {
#       "name": "Bulgaria",
#       "longitude": "25.48583",
#       "latitude": "42.733883"
#     },
#     {
#       "name": "Bahrain",
#       "longitude": "50.637772",
#       "latitude": "25.930414"
#     },
#     {
#       "name": "Burundi",
#       "longitude": "29.918886",
#       "latitude": "-3.373056"
#     },
#     {
#       "name": "Benin",
#       "longitude": "2.315834",
#       "latitude": "9.30769"
#     },
#     {
#       "name": "Bermuda",
#       "longitude": "-64.75737",
#       "latitude": "32.321384"
#     },
#     {
#       "name": "Brunei",
#       "longitude": "114.727669",
#       "latitude": "4.535277"
#     },
#     {
#       "name": "Bolivia",
#       "longitude": "-63.588653",
#       "latitude": "-16.290154"
#     },
#     {
#       "name": "Brazil",
#       "longitude": "-51.92528",
#       "latitude": "-14.235004"
#     },
#     {
#       "name": "Bahamas",
#       "longitude": "-77.39628",
#       "latitude": "25.03428"
#     },
#     {
#       "name": "Bhutan",
#       "longitude": "90.433601",
#       "latitude": "27.514162"
#     },
#     {
#       "name": "Bouvet Island",
#       "longitude": "3.413194",
#       "latitude": "-54.423199"
#     },
#     {
#       "name": "Botswana",
#       "longitude": "24.684866",
#       "latitude": "-22.328474"
#     },
#     {
#       "name": "Belarus",
#       "longitude": "27.953389",
#       "latitude": "53.709807"
#     },
#     {
#       "name": "Belize",
#       "longitude": "-88.49765",
#       "latitude": "17.189877"
#     },
#     {
#       "name": "Canada",
#       "longitude": "-106.346771",
#       "latitude": "56.130366"
#     },
#     {
#       "name": "Cocos Islands",
#       "longitude": "96.870956",
#       "latitude": "-12.164165"
#     },
#     {
#       "name": "Democratic Republic of Congo",
#       "longitude": "21.758664",
#       "latitude": "-4.038333"
#     },
#     {
#       "name": "Central African Republic",
#       "longitude": "20.939444",
#       "latitude": "6.611111"
#     },
#     {
#       "name": "Republic of the Congo",
#       "longitude": "15.827659",
#       "latitude": "-0.228021"
#     },
#     {
#       "name": "Switzerland",
#       "longitude": "8.227512",
#       "latitude": "46.818188"
#     },
#     {
#       "name": "Ivory Coast",
#       "longitude": "-5.54708",
#       "latitude": "7.539989"
#     },
#     {
#       "name": "Cook Islands",
#       "longitude": "-159.777671",
#       "latitude": "-21.236736"
#     },
#     {
#       "name": "Chile",
#       "longitude": "-71.542969",
#       "latitude": "-35.675147"
#     },
#     {
#       "name": "Cameroon",
#       "longitude": "12.354722",
#       "latitude": "7.369722"
#     },
#     {
#       "name": "China",
#       "longitude": "104.195397",
#       "latitude": "35.86166"
#     },
#     {
#       "name": "Colombia",
#       "longitude": "-74.297333",
#       "latitude": "4.570868"
#     },
#     {
#       "name": "Costa Rica",
#       "longitude": "-83.753428",
#       "latitude": "9.748917"
#     },
#     {
#       "name": "Cuba",
#       "longitude": "-77.781167",
#       "latitude": "21.521757"
#     },
#     {
#       "name": "Cape Verde",
#       "longitude": "-24.013197",
#       "latitude": "16.002082"
#     },
#     {
#       "name": "Christmas Island",
#       "longitude": "105.690449",
#       "latitude": "-10.447525"
#     },
#     {
#       "name": "Cyprus",
#       "longitude": "33.429859",
#       "latitude": "35.126413"
#     },
#     {
#       "name": "Czech Republic",
#       "longitude": "15.472962",
#       "latitude": "49.817492"
#     },
#     {
#       "name": "Germany",
#       "longitude": "10.451526",
#       "latitude": "51.165691"
#     },
#     {
#       "name": "Djibouti",
#       "longitude": "42.590275",
#       "latitude": "11.825138"
#     },
#     {
#       "name": "Denmark",
#       "longitude": "9.501785",
#       "latitude": "56.26392"
#     },
#     {
#       "name": "Dominica",
#       "longitude": "-61.370976",
#       "latitude": "15.414999"
#     },
#     {
#       "name": "Dominican Republic",
#       "longitude": "-70.162651",
#       "latitude": "18.735693"
#     },
#     {
#       "name": "Algeria",
#       "longitude": "1.659626",
#       "latitude": "28.033886"
#     },
#     {
#       "name": "Ecuador",
#       "longitude": "-78.183406",
#       "latitude": "-1.831239"
#     },
#     {
#       "name": "Estonia",
#       "longitude": "25.013607",
#       "latitude": "58.595272"
#     },
#     {
#       "name": "Egypt",
#       "longitude": "30.802498",
#       "latitude": "26.820553"
#     },
#     {
#       "name": "Western Sahara",
#       "longitude": "-12.885834",
#       "latitude": "24.215527"
#     },
#     {
#       "name": "Eritrea",
#       "longitude": "39.782334",
#       "latitude": "15.179384"
#     },
#     {
#       "name": "Spain",
#       "longitude": "-3.74922",
#       "latitude": "40.463667"
#     },
#     {
#       "name": "Ethiopia",
#       "longitude": "40.489673",
#       "latitude": "9.145"
#     },
#     {
#       "name": "Finland",
#       "longitude": "25.748151",
#       "latitude": "61.92411"
#     },
#     {
#       "name": "Fiji",
#       "longitude": "179.414413",
#       "latitude": "-16.578193"
#     },
#     {
#       "name": "Falkland Islands",
#       "longitude": "-59.523613",
#       "latitude": "-51.796253"
#     },
#     {
#       "name": "Micronesia",
#       "longitude": "150.550812",
#       "latitude": "7.425554"
#     },
#     {
#       "name": "Faroe Islands",
#       "longitude": "-6.911806",
#       "latitude": "61.892635"
#     },
#     {
#       "name": "France",
#       "longitude": "2.213749",
#       "latitude": "46.227638"
#     },
#     {
#       "name": "Gabon",
#       "longitude": "11.609444",
#       "latitude": "-0.803689"
#     },
#     {
#       "name": "United Kingdom",
#       "longitude": "-3.435973",
#       "latitude": "55.378051"
#     },
#     {
#       "name": "Grenada",
#       "longitude": "-61.604171",
#       "latitude": "12.262776"
#     },
#     {
#       "name": "Georgia",
#       "longitude": "43.356892",
#       "latitude": "42.315407"
#     },
#     {
#       "name": "French Guiana",
#       "longitude": "-53.125782",
#       "latitude": "3.933889"
#     },
#     {
#       "name": "Guernsey",
#       "longitude": "-2.585278",
#       "latitude": "49.465691"
#     },
#     {
#       "name": "Ghana",
#       "longitude": "-1.023194",
#       "latitude": "7.946527"
#     },
#     {
#       "name": "Gibraltar",
#       "longitude": "-5.345374",
#       "latitude": "36.137741"
#     },
#     {
#       "name": "Greenland",
#       "longitude": "-42.604303",
#       "latitude": "71.706936"
#     },
#     {
#       "name": "Gambia",
#       "longitude": "-15.310139",
#       "latitude": "13.443182"
#     },
#     {
#       "name": "Guinea",
#       "longitude": "-9.696645",
#       "latitude": "9.945587"
#     },
#     {
#       "name": "Guadeloupe",
#       "longitude": "-62.067641",
#       "latitude": "16.995971"
#     },
#     {
#       "name": "Equatorial Guinea",
#       "longitude": "10.267895",
#       "latitude": "1.650801"
#     },
#     {
#       "name": "Greece",
#       "longitude": "21.824312",
#       "latitude": "39.074208"
#     },
#     {
#       "name": "South Georgia and the South Sandwich Islands",
#       "longitude": "-36.587909",
#       "latitude": "-54.429579"
#     },
#     {
#       "name": "Guatemala",
#       "longitude": "-90.230759",
#       "latitude": "15.783471"
#     },
#     {
#       "name": "Guam",
#       "longitude": "144.793731",
#       "latitude": "13.444304"
#     },
#     {
#       "name": "Guinea-Bissau",
#       "longitude": "-15.180413",
#       "latitude": "11.803749"
#     },
#     {
#       "name": "Guyana",
#       "longitude": "-58.93018",
#       "latitude": "4.860416"
#     },
#     {
#       "name": "Gaza Strip",
#       "longitude": "34.308825",
#       "latitude": "31.354676"
#     },
#     {
#       "name": "Hong Kong",
#       "longitude": "114.109497",
#       "latitude": "22.396428"
#     },
#     {
#       "name": "Heard Island and McDonald Islands",
#       "longitude": "73.504158",
#       "latitude": "-53.08181"
#     },
#     {
#       "name": "Honduras",
#       "longitude": "-86.241905",
#       "latitude": "15.199999"
#     },
#     {
#       "name": "Croatia",
#       "longitude": "15.2",
#       "latitude": "45.1"
#     },
#     {
#       "name": "Haiti",
#       "longitude": "-72.285215",
#       "latitude": "18.971187"
#     },
#     {
#       "name": "Hungary",
#       "longitude": "19.503304",
#       "latitude": "47.162494"
#     },
#     {
#       "name": "Indonesia",
#       "longitude": "113.921327",
#       "latitude": "-0.789275"
#     },
#     {
#       "name": "Ireland",
#       "longitude": "-8.24389",
#       "latitude": "53.41291"
#     },
#     {
#       "name": "Israel",
#       "longitude": "34.851612",
#       "latitude": "31.046051"
#     },
#     {
#       "name": "Isle of Man",
#       "longitude": "-4.548056",
#       "latitude": "54.236107"
#     },
#     {
#       "name": "India",
#       "longitude": "78.96288",
#       "latitude": "20.593684"
#     },
#     {
#       "name": "British Indian Ocean Territory",
#       "longitude": "71.876519",
#       "latitude": "-6.343194"
#     },
#     {
#       "name": "Iraq",
#       "longitude": "43.679291",
#       "latitude": "33.223191"
#     },
#     {
#       "name": "Iran",
#       "longitude": "53.688046",
#       "latitude": "32.427908"
#     },
#     {
#       "name": "Iceland",
#       "longitude": "-19.020835",
#       "latitude": "64.963051"
#     },
#     {
#       "name": "Italy",
#       "longitude": "12.56738",
#       "latitude": "41.87194"
#     },
#     {
#       "name": "Jersey",
#       "longitude": "-2.13125",
#       "latitude": "49.214439"
#     },
#     {
#       "name": "Jamaica",
#       "longitude": "-77.297508",
#       "latitude": "18.109581"
#     },
#     {
#       "name": "Jordan",
#       "longitude": "36.238414",
#       "latitude": "30.585164"
#     },
#     {
#       "name": "Japan",
#       "longitude": "138.252924",
#       "latitude": "36.204824"
#     },
#     {
#       "name": "Kenya",
#       "longitude": "37.906193",
#       "latitude": "-0.023559"
#     },
#     {
#       "name": "Kyrgyzstan",
#       "longitude": "74.766098",
#       "latitude": "41.20438"
#     },
#     {
#       "name": "Cambodia",
#       "longitude": "104.990963",
#       "latitude": "12.565679"
#     },
#     {
#       "name": "Kiribati",
#       "longitude": "-168.734039",
#       "latitude": "-3.370417"
#     },
#     {
#       "name": "Comoros",
#       "longitude": "43.872219",
#       "latitude": "-11.875001"
#     },
#     {
#       "name": "Saint Kitts and Nevis",
#       "longitude": "-62.782998",
#       "latitude": "17.357822"
#     },
#     {
#       "name": "North Korea",
#       "longitude": "127.510093",
#       "latitude": "40.339852"
#     },
#     {
#       "name": "South Korea",
#       "longitude": "127.766922",
#       "latitude": "35.907757"
#     },
#     {
#       "name": "Kuwait",
#       "longitude": "47.481766",
#       "latitude": "29.31166"
#     },
#     {
#       "name": "Cayman Islands",
#       "longitude": "-80.566956",
#       "latitude": "19.513469"
#     },
#     {
#       "name": "Kazakhstan",
#       "longitude": "66.923684",
#       "latitude": "48.019573"
#     },
#     {
#       "name": "Laos",
#       "longitude": "102.495496",
#       "latitude": "19.85627"
#     },
#     {
#       "name": "Lebanon",
#       "longitude": "35.862285",
#       "latitude": "33.854721"
#     },
#     {
#       "name": "Saint Lucia",
#       "longitude": "-60.978893",
#       "latitude": "13.909444"
#     },
#     {
#       "name": "Liechtenstein",
#       "longitude": "9.555373",
#       "latitude": "47.166"
#     },
#     {
#       "name": "Sri Lanka",
#       "longitude": "80.771797",
#       "latitude": "7.873054"
#     },
#     {
#       "name": "Liberia",
#       "longitude": "-9.429499",
#       "latitude": "6.428055"
#     },
#     {
#       "name": "Lesotho",
#       "longitude": "28.233608",
#       "latitude": "-29.609988"
#     },
#     {
#       "name": "Lithuania",
#       "longitude": "23.881275",
#       "latitude": "55.169438"
#     },
#     {
#       "name": "Luxembourg",
#       "longitude": "6.129583",
#       "latitude": "49.815273"
#     },
#     {
#       "name": "Latvia",
#       "longitude": "24.603189",
#       "latitude": "56.879635"
#     },
#     {
#       "name": "Libya",
#       "longitude": "17.228331",
#       "latitude": "26.3351"
#     },
#     {
#       "name": "Morocco",
#       "longitude": "-7.09262",
#       "latitude": "31.791702"
#     },
#     {
#       "name": "Monaco",
#       "longitude": "7.412841",
#       "latitude": "43.750298"
#     },
#     {
#       "name": "Moldova",
#       "longitude": "28.369885",
#       "latitude": "47.411631"
#     },
#     {
#       "name": "Montenegro",
#       "longitude": "19.37439",
#       "latitude": "42.708678"
#     },
#     {
#       "name": "Madagascar",
#       "longitude": "46.869107",
#       "latitude": "-18.766947"
#     },
#     {
#       "name": "Marshall Islands",
#       "longitude": "171.184478",
#       "latitude": "7.131474"
#     },
#     {
#       "name": "Macedonia",
#       "longitude": "21.745275",
#       "latitude": "41.608635"
#     },
#     {
#       "name": "Mali",
#       "longitude": "-3.996166",
#       "latitude": "17.570692"
#     },
#     {
#       "name": "Myanmar [Burma]",
#       "longitude": "95.956223",
#       "latitude": "21.913965"
#     },
#     {
#       "name": "Mongolia",
#       "longitude": "103.846656",
#       "latitude": "46.862496"
#     },
#     {
#       "name": "Macau",
#       "longitude": "113.543873",
#       "latitude": "22.198745"
#     },
#     {
#       "name": "Northern Mariana Islands",
#       "longitude": "145.38469",
#       "latitude": "17.33083"
#     },
#     {
#       "name": "Martinique",
#       "longitude": "-61.024174",
#       "latitude": "14.641528"
#     },
#     {
#       "name": "Mauritania",
#       "longitude": "-10.940835",
#       "latitude": "21.00789"
#     },
#     {
#       "name": "Montserrat",
#       "longitude": "-62.187366",
#       "latitude": "16.742498"
#     },
#     {
#       "name": "Malta",
#       "longitude": "14.375416",
#       "latitude": "35.937496"
#     },
#     {
#       "name": "Mauritius",
#       "longitude": "57.552152",
#       "latitude": "-20.348404"
#     },
#     {
#       "name": "Maldives",
#       "longitude": "73.22068",
#       "latitude": "3.202778"
#     },
#     {
#       "name": "Malawi",
#       "longitude": "34.301525",
#       "latitude": "-13.254308"
#     },
#     {
#       "name": "Mexico",
#       "longitude": "-102.552784",
#       "latitude": "23.634501"
#     },
#     {
#       "name": "Malaysia",
#       "longitude": "101.975766",
#       "latitude": "4.210484"
#     },
#     {
#       "name": "Mozambique",
#       "longitude": "35.529562",
#       "latitude": "-18.665695"
#     },
#     {
#       "name": "Namibia",
#       "longitude": "18.49041",
#       "latitude": "-22.95764"
#     },
#     {
#       "name": "New Caledonia",
#       "longitude": "165.618042",
#       "latitude": "-20.904305"
#     },
#     {
#       "name": "Niger",
#       "longitude": "8.081666",
#       "latitude": "17.607789"
#     },
#     {
#       "name": "Norfolk Island",
#       "longitude": "167.954712",
#       "latitude": "-29.040835"
#     },
#     {
#       "name": "Nigeria",
#       "longitude": "8.675277",
#       "latitude": "9.081999"
#     },
#     {
#       "name": "Nicaragua",
#       "longitude": "-85.207229",
#       "latitude": "12.865416"
#     },
#     {
#       "name": "Netherlands",
#       "longitude": "5.291266",
#       "latitude": "52.132633"
#     },
#     {
#       "name": "Norway",
#       "longitude": "8.468946",
#       "latitude": "60.472024"
#     },
#     {
#       "name": "Nepal",
#       "longitude": "84.124008",
#       "latitude": "28.394857"
#     },
#     {
#       "name": "Nauru",
#       "longitude": "166.931503",
#       "latitude": "-0.522778"
#     },
#     {
#       "name": "Niue",
#       "longitude": "-169.867233",
#       "latitude": "-19.054445"
#     },
#     {
#       "name": "New Zealand",
#       "longitude": "174.885971",
#       "latitude": "-40.900557"
#     },
#     {
#       "name": "Oman",
#       "longitude": "55.923255",
#       "latitude": "21.512583"
#     },
#     {
#       "name": "Panama",
#       "longitude": "-80.782127",
#       "latitude": "8.537981"
#     },
#     {
#       "name": "Peru",
#       "longitude": "-75.015152",
#       "latitude": "-9.189967"
#     },
#     {
#       "name": "French Polynesia",
#       "longitude": "-149.406843",
#       "latitude": "-17.679742"
#     },
#     {
#       "name": "Papua New Guinea",
#       "longitude": "143.95555",
#       "latitude": "-6.314993"
#     },
#     {
#       "name": "Philippines",
#       "longitude": "121.774017",
#       "latitude": "12.879721"
#     },
#     {
#       "name": "Pakistan",
#       "longitude": "69.345116",
#       "latitude": "30.375321"
#     },
#     {
#       "name": "Poland",
#       "longitude": "19.145136",
#       "latitude": "51.919438"
#     },
#     {
#       "name": "Saint Pierre and Miquelon",
#       "longitude": "-56.27111",
#       "latitude": "46.941936"
#     },
#     {
#       "name": "Pitcairn Islands",
#       "longitude": "-127.439308",
#       "latitude": "-24.703615"
#     },
#     {
#       "name": "Puerto Rico",
#       "longitude": "-66.590149",
#       "latitude": "18.220833"
#     },
#     {
#       "name": "Palestinian Territories",
#       "longitude": "35.233154",
#       "latitude": "31.952162"
#     },
#     {
#       "name": "Portugal",
#       "longitude": "-8.224454",
#       "latitude": "39.399872"
#     },
#     {
#       "name": "Palau",
#       "longitude": "134.58252",
#       "latitude": "7.51498"
#     },
#     {
#       "name": "Paraguay",
#       "longitude": "-58.443832",
#       "latitude": "-23.442503"
#     },
#     {
#       "name": "Qatar",
#       "longitude": "51.183884",
#       "latitude": "25.354826"
#     },
#     {
#       "name": "Réunion",
#       "longitude": "55.536384",
#       "latitude": "-21.115141"
#     },
#     {
#       "name": "Romania",
#       "longitude": "24.96676",
#       "latitude": "45.943161"
#     },
#     {
#       "name": "Serbia",
#       "longitude": "21.005859",
#       "latitude": "44.016521"
#     },
#     {
#       "name": "Russia",
#       "longitude": "105.318756",
#       "latitude": "61.52401"
#     },
#     {
#       "name": "Rwanda",
#       "longitude": "29.873888",
#       "latitude": "-1.940278"
#     },
#     {
#       "name": "Saudi Arabia",
#       "longitude": "45.079162",
#       "latitude": "23.885942"
#     },
#     {
#       "name": "Solomon Islands",
#       "longitude": "160.156194",
#       "latitude": "-9.64571"
#     },
#     {
#       "name": "Seychelles",
#       "longitude": "55.491977",
#       "latitude": "-4.679574"
#     },
#     {
#       "name": "Sudan",
#       "longitude": "30.217636",
#       "latitude": "12.862807"
#     },
#     {
#       "name": "Sweden",
#       "longitude": "18.643501",
#       "latitude": "60.128161"
#     },
#     {
#       "name": "Singapore",
#       "longitude": "103.819836",
#       "latitude": "1.352083"
#     },
#     {
#       "name": "Saint Helena",
#       "longitude": "-10.030696",
#       "latitude": "-24.143474"
#     },
#     {
#       "name": "Slovenia",
#       "longitude": "14.995463",
#       "latitude": "46.151241"
#     },
#     {
#       "name": "Svalbard and Jan Mayen",
#       "longitude": "23.670272",
#       "latitude": "77.553604"
#     },
#     {
#       "name": "Slovakia",
#       "longitude": "19.699024",
#       "latitude": "48.669026"
#     },
#     {
#       "name": "Sierra Leone",
#       "longitude": "-11.779889",
#       "latitude": "8.460555"
#     },
#     {
#       "name": "San Marino",
#       "longitude": "12.457777",
#       "latitude": "43.94236"
#     },
#     {
#       "name": "Senegal",
#       "longitude": "-14.452362",
#       "latitude": "14.497401"
#     },
#     {
#       "name": "Somalia",
#       "longitude": "46.199616",
#       "latitude": "5.152149"
#     },
#     {
#       "name": "Suriname",
#       "longitude": "-56.027783",
#       "latitude": "3.919305"
#     },
#     {
#       "name": "Sao Tome and Principe",
#       "longitude": "6.613081",
#       "latitude": "0.18636"
#     },
#     {
#       "name": "El Salvador",
#       "longitude": "-88.89653",
#       "latitude": "13.794185"
#     },
#     {
#       "name": "Syria",
#       "longitude": "38.996815",
#       "latitude": "34.802075"
#     },
#     {
#       "name": "Swaziland",
#       "longitude": "31.465866",
#       "latitude": "-26.522503"
#     },
#     {
#       "name": "Turks and Caicos Islands",
#       "longitude": "-71.797928",
#       "latitude": "21.694025"
#     },
#     {
#       "name": "Chad",
#       "longitude": "18.732207",
#       "latitude": "15.454166"
#     },
#     {
#       "name": "French Southern Territories",
#       "longitude": "69.348557",
#       "latitude": "-49.280366"
#     },
#     {
#       "name": "Togo",
#       "longitude": "0.824782",
#       "latitude": "8.619543"
#     },
#     {
#       "name": "Thailand",
#       "longitude": "100.992541",
#       "latitude": "15.870032"
#     },
#     {
#       "name": "Tajikistan",
#       "longitude": "71.276093",
#       "latitude": "38.861034"
#     },
#     {
#       "name": "Tokelau",
#       "longitude": "-171.855881",
#       "latitude": "-8.967363"
#     },
#     {
#       "name": "Timor Leste",
#       "longitude": "125.727539",
#       "latitude": "-8.874217"
#     },
#     {
#       "name": "Turkmenistan",
#       "longitude": "59.556278",
#       "latitude": "38.969719"
#     },
#     {
#       "name": "Tunisia",
#       "longitude": "9.537499",
#       "latitude": "33.886917"
#     },
#     {
#       "name": "Tonga",
#       "longitude": "-175.198242",
#       "latitude": "-21.178986"
#     },
#     {
#       "name": "Turkey",
#       "longitude": "35.243322",
#       "latitude": "38.963745"
#     },
#     {
#       "name": "Trinidad and Tobago",
#       "longitude": "-61.222503",
#       "latitude": "10.691803"
#     },
#     {
#       "name": "Tuvalu",
#       "longitude": "177.64933",
#       "latitude": "-7.109535"
#     },
#     {
#       "name": "Taiwan",
#       "longitude": "120.960515",
#       "latitude": "23.69781"
#     },
#     {
#       "name": "Tanzania",
#       "longitude": "34.888822",
#       "latitude": "-6.369028"
#     },
#     {
#       "name": "Ukraine",
#       "longitude": "31.16558",
#       "latitude": "48.379433"
#     },
#     {
#       "name": "Uganda",
#       "longitude": "32.290275",
#       "latitude": "1.373333"
#     },
#     {
#       "name": "United States",
#       "longitude": "-95.712891",
#       "latitude": "37.09024"
#     },
#     {
#       "name": "Uruguay",
#       "longitude": "-55.765835",
#       "latitude": "-32.522779"
#     },
#     {
#       "name": "Uzbekistan",
#       "longitude": "64.585262",
#       "latitude": "41.377491"
#     },
#     {
#       "name": "Vatican City",
#       "longitude": "12.453389",
#       "latitude": "41.902916"
#     },
#     {
#       "name": "Saint Vincent and the Grenadines",
#       "longitude": "-61.287228",
#       "latitude": "12.984305"
#     },
#     {
#       "name": "Venezuela",
#       "longitude": "-66.58973",
#       "latitude": "6.42375"
#     },
#     {
#       "name": "British Virgin Islands",
#       "longitude": "-64.639968",
#       "latitude": "18.420695"
#     },
#     {
#       "name": "United States Virgin Islands",
#       "longitude": "-64.896335",
#       "latitude": "18.335765"
#     },
#     {
#       "name": "Vietnam",
#       "longitude": "108.277199",
#       "latitude": "14.058324"
#     },
#     {
#       "name": "Vanuatu",
#       "longitude": "166.959158",
#       "latitude": "-15.376706"
#     },
#     {
#       "name": "Wallis and Futuna",
#       "longitude": "-177.156097",
#       "latitude": "-13.768752"
#     },
#     {
#       "name": "Samoa",
#       "longitude": "-172.104629",
#       "latitude": "-13.759029"
#     },
#     {
#       "name": "Kosovo",
#       "longitude": "20.902977",
#       "latitude": "42.602636"
#     },
#     {
#       "name": "Yemen",
#       "longitude": "48.516388",
#       "latitude": "15.552727"
#     },
#     {
#       "name": "Mayotte",
#       "longitude": "45.166244",
#       "latitude": "-12.8275"
#     },
#     {
#       "name": "South Africa",
#       "longitude": "22.937506",
#       "latitude": "-30.559482"
#     },
#     {
#       "name": "Zambia",
#       "longitude": "27.849332",
#       "latitude": "-13.133897"
#     },
#     {
#       "name": "Zimbabwe",
#       "longitude": "29.154857",
#       "latitude": "-19.015438"
#     },
#     {
#       "name": "South Sudan", 
#       "longitude": "31.3070",
#       "latitude": "6.8770" 
#     }
#     ]
#   }

#   countries.map do |k, v|
#     v.each do |location|    
#       Location.create(location)
#     end
#   end
# end

# generateLocations

####### MUST GENERATE LOCATIONS PRIOR TO NATIONAL DISHES ####### 

# NationalDish.create(name:"Kabuli Palaw", description:"Also known as Quabili Palaw, it is a variety of pilaf made in Afghanistan. It consists of steamed rice mixed with raisins, carrots, and lamb. It is one of the most popular dishes in Afghanistan and is the national dish. Quabili Palaw literally means 'Excellent rice' in the Persian language and not 'rice from Kabul', as some might think. Kabuli palaw is made by cooking basmati or long grained rice in a brothy sauce, which makes the rice brown. This dish may be made with lamb, chicken, or beef. Kabuli palaw is baked in the oven and may be topped with fried sliced carrots, raisins, orange peel strips, and chopped nuts like pistachios or almonds. The meat is covered by the rice or buried in the rice mixture. Kabuli palaw is popular in other countries, including Saudi Arabia, where it is also known as Roz Bukhari, meaning 'Bukharan rice' which is a simpler form introduced by Afghan immigrants living in Saudi Arabia.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Afghan_Palo.jpg/250px-Afghan_Palo.jpg", location_id: 3 )

# NationalDish.create(name:"Tavë Kosi", description:"Tavë kosi ('soured milk casserole') is a national dish in Albania. It is a dish of lamb (occasionally chicken, then called tavë kosi me mish pule) and rice baked with a mixture of yogurt and eggs (replacing the original soured milk) added to a roux (wheat flour and butter). It is also popular in Greece and Turkey, where it is known as Elbasan tava (Albanian: Tavë Elbasani or Tava e Elbasanit), named after the Albanian city of Elbasan.", image:"https://blog.arousingappetites.com/wp-content/uploads/2015/03/tave-kosi_ft-image.jpg", location_id: 6 )

# NationalDish.create(name:"Couscous", description:"Couscous is originally a Maghrebi dish of small (about 3 millimetres (0.12 in) diameter) steamed balls of crushed durum wheat semolina that is traditionally served with a stew spooned on top. Pearl millet and sorghum, especially in the Sahel, and other cereals can be cooked in a similar way and the resulting dishes are also sometimes called couscous. Couscous is a staple food throughout the North African cuisines of Algeria, Morocco, Tunisia, Mauritania, and Libya, as well as in Israel, due to the large population of Jews of North African origin. In Western supermarkets, it is sometimes sold in instant form with a flavor packet, and may be served as a side or on its own as a main dish.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Cuscus.jpg/235px-Cuscus.jpg", location_id: 59 )

# NationalDish.create(name:"Chakhchoukha", description:"Chakhchoukha, chekhechoukha or chakhchoura (Arabic: شخشوخة‎) is a dish of Algerian cuisine, eaten often on festive celebrations, especially popular in the Aurès region. The dish consists of small pieces of rougag (thin round flatbread) mixed with marqa, a stew.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Chakhchoukha9.JPG/250px-Chakhchoukha9.JPG", location_id: 59 )

# NationalDish.create(name:"Escudella I Carn D'olla", description:"Escudella i carn d'olla, or shorter escudella, is a traditional Catalan meat and vegetable stew and soup. Francesc Eiximenis wrote in the 14th century that it was eaten every day by Catalan people. It is characterized by the use of a pilota, a very big meatball spiced with garlic and parsley; it also contains vegetables as celery, cabbage, carrots, etc. depending on the season. Additionally, bones, sausages called botifarras, and other types of meat, can be used. In historical times a type called escudella de pagès, which had pasta and rice, was traditionally made on Thursdays and Sundays.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Escudella.jpg/250px-Escudella.jpg", location_id: 1 )

# NationalDish.create(name:"Moambe Chicken", description:"Poulet à la moambé or simply poulet moambe is a savoury chicken dish popular in Central Africa and sometimes considered the national dish of the Democratic Republic of the Congo. The dish itself is made by combining chicken, spices and palm butter to create a stew-like consistency. A number of local or regional variations exist across the Congo. It is also considered the national dish of Gabon where it is known as poulet nyembwe, and in Angola where it is known as muamba de galinha. Poulet à la moambé, which is usually served with rice and saka saka, or crushed and boiled cassava leaves, is popular across Central Africa and also known in African restaurants outside the continent, especially in Belgium." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Poulet_%C3%A0_la_moambe.JPG/250px-Poulet_%C3%A0_la_moambe.JPG", location_id: 9 )

# NationalDish.create(name:"Pepperpot", description:"Pepperpot is an Amerindian-derived dish popular in Guyana. It is traditionally served at Christmas and other special events. Along with chicken curry, and cook up rice, pepperpot is one of Guyana's national dishes. Pepperpot is a stewed meat dish, strongly flavoured with cinnamon, cassareep and other basic ingredients, including Caribbean hot peppers. Beef, pork, and mutton are the most popular meats used, though some have been known to use chicken. Pepperpot is popularly served with a dense Guyanese-style homemade or home-style bread, rice, or roti. This dish is usually reserved for special occasions because it needs to cook for several hours, and mostly eaten on Christmas Day or during the Christmas holiday season, and sometimes on Boxing Day. Like the original Amerindian version it is usually made in a large pot and can be reheated and eaten over several days because the cassareep starts preserving the meat. Versions of the dish are also served in several other countries in the Caribbean, including Trinidad and Tobago, Grenada and St. Vincent." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Pepperpot_%2816135006279%29.jpg/220px-Pepperpot_%2816135006279%29.jpg", location_id: 4 )

# NationalDish.create(name:"Cou-cou", description:"Cou-cou, coo-coo (as it is known in the Windward Islands), or fungi (as it is known in the Leeward Islands and Dominica) makes up part of the national dishes of Antigua and Barbuda, Barbados, British Virgin Islands and the U.S. Virgin Islands. It consists mainly of cornmeal (corn flour) and okra (ochroes). Cornmeal, which comes readily packaged and is available at supermarkets islandwide, and okra, which can be found at supermarkets, vegetable markets and home gardens, are very inexpensive ingredients. Because these main components are inexpensive, the dish became common for many residents in Barbados' early colonial history. Cou-cou derives from the island's African ancestry and was a regular meal for those slaves who were brought over from Africa to Barbados. In Ghana, a similar meal of fermented corn or maize flour eaten with okra stew and fish is known as banku, a favourite dish of the Ga tribe in Accra. A unique cooking utensil called a 'cou-cou stick', or 'fungi stick', is used in its preparation. A cou-cou stick is made of wood, and has a long, flat rectangular shape like a 30cm miniature cricket bat. It is believed by Barbadians to be essential in stirring the cou-cou, as the dish takes on a firm texture and the cou-cou stick makes it easier to stir in a large pot. Flying fish prepared fried or steamed is a usual complement to cou-cou. Cou-cou and flying fish has become Barbados' national dish. Corned beef, or just beef stew, is also a common accompaniment to cou-cou. Traditionally, cou-cou is served on Fridays at homes across Barbados and local food establishments. Cou-cou can also be prepared using breadfruit instead of cornmeal. In Trinidad and Tobago cou-cou is often prepared alongside callaloo and either stewed or fried fish. In some islands, e.g. Barbados, Antigua, or the Virgin Islands, cou-cou may be cooked without okra, and goes by the name fengi, fungie, or fungi.", image:"http://www.123countries.com/wp-content/uploads/2015/10/National-Dish-Cou-Cou.jpg", location_id: 4 )

# NationalDish.create(name:"Asado", description:"Asado (Spanish: [aˈsaðo]) are the techniques and the social event of having or attending a barbecue in various South American countries, where it is also a traditional event. An asado usually consists of beef, pork, chicken, chorizo, and morcilla which are cooked on a grill, called a parrilla, or an open fire. Generally the meats are accompanied by red wine and salads. This meat is prepared by a person who is the assigned asador or parrillero.", image:"https://www.infobae.com/new-resizer/IBhf9_OSbzjQyTfrVf1kVK_WlWY=/750x0/filters:quality(100)/s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2018/08/09173312/asado.jpg", location_id: 11 )

# NationalDish.create(name:"Empanada", description:"An empanada is a type of baked or fried pasty, consisting of pastry and filling, in Latin and Filipino cultures. The name comes from the Spanish verb empanar, and literally translates as 'enbreaded', that is, wrapped or coated in bread. Empanadas are made by folding dough over a stuffing, which may consist of meat, cheese, corn, or other ingredients." , image:"https://www.paintthekitchenred.com/wp-content/uploads/2016/05/Beef-Empanadas-1024x828.jpg", location_id: 11 )

# NationalDish.create(name:"Locro",description:"Locro, from the Quechua ruqru, is a hearty thick stew, associated with native Andean civilizations, and popular along the Andes mountain range. It's one of the national dishes of Argentina, Peru, Bolivia, Ecuador and Southern Colombia. The dish is a classic corn, beans, and potato or pumpkin soup well known along the South American Andes. Typically locro is made using a specific kind of potato called “papa chola”, which has a unique taste and is difficult to find outside of its home region. The defining ingredients are corn, some form of meat, usually beef, but sometimes beef jerky or chorizo, and vegetables. Other ingredients vary widely, and typically include onion, beans, squash or pumpkin. It is mainly eaten in winter. In Argentina it spread from the back to the front Cuyo region to the rest of the country. It is considered a national dish and is often served on May 25, the anniversary of the May Revolution. A red hot sauce made from red peppers and paprika known as Quiquirimichi is served sometimes on the side. In Ecuador, a variant known as yahuarlocro is popular. It incorporates lamb entrails and lamb blood to the recipe.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Locro_Stevage.jpg/250px-Locro_Stevage.jpg", location_id: 11 )

# NationalDish.create(name:"Milanesa", description:"The milanesa, in Italian 'cotoletta alla milanese', also known as 'milanga' in Argentina and Uruguay, is a South American variation of an Italian dish where generic types of breaded meat fillet preparations are known as a milanesa. The milanesa was brought to the Southern Cone by Italian immigrants during the mass emigration called the Italian diaspora between 1860-1920s. Its name probably reflects an original Milanese preparation, cotoletta alla Milanese, which is similar to the Austrian Wiener Schnitzel. A milanesa consists of a thin slice of beef, chicken, veal, or sometimes pork. Each slice is dipped into beaten eggs, seasoned with salt, and other condiments according to the cook's taste, like parsley and garlic. Each slice is then dipped in bread crumbs, or occasionally flour, and shallow-fried in oil, one at a time. Some people prefer to use very little oil and then bake them in the oven as a healthier alternative. A similar dish is the chicken parmigiana.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Cotoletta_alla_milanese.jpg/220px-Cotoletta_alla_milanese.jpg", location_id: 11 )

# NationalDish.create(name:"Choripán", description:"Choripán is a type of sandwich with chorizo, popular in Argentina, Chile and Uruguay. Similar to the American hot dog, the name comes from the combination of the names of its ingredients: a grilled chorizo sausage and a crusty bread (Spanish: pan) such as a marraqueta, baguette or francés.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Choripan.jpg/250px-Choripan.jpg", location_id: 11 )

# NationalDish.create(name:"Khash" , description:"Khash (Armenian: խաշ; Azerbaijani: xaş; Georgian: ხაში, Khashi), pacha (Persian: پاچه‎; Albanian: paçe; Arabic: باجة‎; Bosnian: pače; Bulgarian: пача; Greek: πατσάς), kalle-pache (Persian: کله‌پاچه‎; Turkish: kelle paça), kakaj šürpi (Chuvash: какай шÿрпи) or serûpê (Sorani Kurdish: سه‌روپێ‎) is a dish of boiled cow or sheep parts, which might include the head, feet, and stomach (tripe). It is a traditional dish in Afghanistan, Albania, Armenia, Azerbaijan, Bosnia and Herzegovina, Bulgaria, Georgia, Greece, Iran, Iraq, Mongolia, and Turkey." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Khash.jpg/220px-Khash.jpg", location_id: 7 )

# NationalDish.create(name:"Harissa" , description:"Harissa (Armenian: հարիսա, romanized: harisa) is traditionally served on Easter day, and is considered the national dish of Armenia. It is a thick porridge made from korkot (dried or roasted cracked wheat) and fat-rich meat, usually chicken or lamb. Herbs were substituted for meat in harissa when Armenian religious days required fasting and penance. The extremely long cooking process is an essential part of the harissa tradition. Like other ritual dishes, the time taken for preparation is part of its cherished value. Harissa is known for helping the Armenians of Musa Ler (in Turkey) to survive during the resistance of 1915." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Armenian_Harisa.JPG/250px-Armenian_Harisa.JPG", location_id: 7 )

# NationalDish.create(name:"Dolma" , description:"Dolma (Ottoman Turkish: طوٓلمه‎) is a family of stuffed dishes common in Mediterranean cuisine and surrounding regions including the Balkans, the South Caucasus, Central Asia, and the Middle East. Common vegetables to stuff include tomato, pepper, onion, zucchini, eggplant, garlic, Cabbage rolls, and dishes of stuffed vine leaves are also very popular, and these are sometimes also called sarma. Meat dolmas are generally served warm, often with tahini or avgolemono sauce. Dolmas prepared with olive oil and stuffed with rice are generally served cold with a garlic-yogurt sauce. Stuffed vegetables are also common in Greek cuisine, called gemista, as well as in Italian cuisine, where they are named ripieni ('stuffed'). In 2017, dolma making in Azerbaijan was included into the UNESCO Intangible Cultural Heritage Lists. The tradition is present throughout the Republic of Azerbaijan, and is perceived as a central culinary practice in all of its regions." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Dolma_Azerbaijani.JPG/250px-Dolma_Azerbaijani.JPG", location_id: 7 )

# NationalDish.create(name:"Khorovats" , description:"Khorovats (Armenian: խորոված, [χoɾoˈvɑt͡s]) is a barbequed Armenian meat kebab. The meat may be marinated before grilling, but it doesn't have to be. It can be made with lamb, pork, beef, chicken, or even veal. This is generally a dish reserved for 'festive occasions'." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Khorovats.jpg/140px-Khorovats.jpg", location_id: 7 )

# NationalDish.create(name:"Keshi Yena" , description:"Keshi yena is an Aruban and Curaçaoan main course dish, consisting of a large round ball of cheese stuffed with spiced meat (often chicken), served steamed or baked. The dish is believed to have originated from Dutch Empire slaves of the Dutch West Indies stuffing leftover rinds of Gouda or Edam cheeses with meat table scraps. The name 'keshi' is reported to be the Papiamento language rendering of kaas, 'cheese' in Dutch. Modern keshi yena recipes typically include olives, raisins and chicken as ingredients in the stuffing. While some modern cooks prepare keshi yena in ramekins, others stick to the traditional method of baking the dish in an empty can of sausages, or by wrapping the cheese in plantain leaves." , image:"http://static.oprah.com/2018/01/Keeshi-Yena-949x534.jpg", location_id: 15 )

# NationalDish.create(name:"Vegemite" , description:"Vegemite (/ˈvɛdʒɪmaɪt/ VEJ-i-myte) is a thick, black Australian food spread made from leftover brewers' yeast extract with various vegetable and spice additives. It was developed by Cyril Percy Callister in Melbourne, Victoria in 1922. The Vegemite brand was owned by Mondelez International (formerly Kraft Foods Inc.) until January 2017, when it was acquired by the Australian Bega Cheese group in a US$460,000,000 (equivalent to about $470,000,000 in 2018) agreement for full Australian ownership after Bega would buy most of Mondelez International's Australia and New Zealand grocery and cheese business. A spread for sandwiches, toast, crumpets and cracker biscuits as well as a filling for pastries, Vegemite is similar to British Marmite, New Zealand Marmite, Australian Promite, MightyMite, AussieMite, OzEmite, German Vitam-R, and Swiss Cenovis. Vegemite is salty, slightly bitter, malty, and rich in glutamates – giving it an umami flavour similar to beef bouillon. It is vegan, kosher, and halal." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Vegemiteontoast_large.jpg/235px-Vegemiteontoast_large.jpg", location_id: 14 )

# NationalDish.create(name:"Meat Pie" , description:"An Australian or New Zealand meat pie is a hand-sized meat pie containing diced or minced meat and gravy, sometimes with onion, mushrooms, or cheese and often consumed as a takeaway food snack. The meat pie is considered iconic in Australia and New Zealand. It was described by former New South Wales Premier Bob Carr in 2003 as Australia's 'national dish'. New Zealanders regard the meat pie as a part of New Zealand cuisine, and it forms part of the New Zealand national identity. The Victorian pie brand Four'n Twenty produces 50,000 pies per hour and Australians consume an average of 12 meat pies per year. The average consumption of meat pies in New Zealand is 15 per person per year.The meat pie is heavily associated with Australian rules football and rugby league as one of the most popular consumed food items whilst watching a game." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Meat_pie.jpg/250px-Meat_pie.jpg", location_id: 14 )

# NationalDish.create(name:"Roast Lamb" , description:"In general, a sheep in its first year is called a lamb, and its meat is also called lamb. The meat of a juvenile sheep older than one year is hogget; outside the United States this is also a term for the living animal. The meat of an adult sheep is mutton, a term only used for the meat, not the living animals." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Plato_de_lechazo%2C_Valladolid.jpg/200px-Plato_de_lechazo%2C_Valladolid.jpg", location_id: 14 )

# NationalDish.create(name:"Wiener Schnitzel", description:"Wiener schnitzel (/ˈviːnər ˈʃnɪtsəl/ German: [ˈviːnɐ ˈʃnɪtsl̩]; from German Wiener Schnitzel, meaning 'Viennese cutlet'), sometimes spelled Wienerschnitzel, as in Switzerland,is a type of schnitzel made of a thin, breaded, pan-fried veal cutlet. It is one of the best known specialities of Viennese cuisine, and one of the national dishes of Austria." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Wiener-Schnitzel02.jpg/220px-Wiener-Schnitzel02.jpg", location_id: 13 )

# NationalDish.create(name:"Dolma", description:"Dolma (Ottoman Turkish: طوٓلمه‎) is a family of stuffed dishes common in Mediterranean cuisine and surrounding regions including the Balkans, the South Caucasus, Central Asia, and the Middle East. Common vegetables to stuff include tomato, pepper, onion, zucchini, eggplant, garlic, Cabbage rolls, and dishes of stuffed vine leaves are also very popular, and these are sometimes also called sarma. Meat dolmas are generally served warm, often with tahini or avgolemono sauce. Dolmas prepared with olive oil and stuffed with rice are generally served cold with a garlic-yogurt sauce. Stuffed vegetables are also common in Greek cuisine, called gemista, as well as in Italian cuisine, where they are named ripieni ('stuffed'). In 2017, dolma making in Azerbaijan was included into the UNESCO Intangible Cultural Heritage Lists. The tradition is present throughout the Republic of Azerbaijan, and is perceived as a central culinary practice in all of its regions." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Dolma_Azerbaijani.JPG/250px-Dolma_Azerbaijani.JPG", location_id: 16 )

# NationalDish.create(name:"Qutab" , description:"Qutab is an Azerbaijani dish made from thinly rolled dough that is cooked briefly on a convex griddle known as saj." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/K%C3%BCk%C3%BC-Gutab_Azerbaijani.gif/240px-K%C3%BCk%C3%BC-Gutab_Azerbaijani.gif", location_id: 16 )

# NationalDish.create(name:"Crack Conch with Peas and Rice" , description:"Conch (/kɒŋk, kɒntʃ/) is a common name applied to a number of different medium to large-sized shells. The term generally applies to large snails whose shell has a high spire and a noticeable siphonal canal (in other words, the shell comes to a noticeable point at both ends). In North America, a conch is often identified as a queen conch, indigenous to the waters of the Bahamas. Queen conchs are valued for seafood, and are also used as fish bait. Rice and peas or peas and rice is a traditional food in the African continent. It is a traditional dish from Ghana and it is known as Moros de guandules con coco (Moorish pigeon peas with coconut). The 'peas' are not garden peas, but beans, as beans are referred to as 'peas' in the Caribbean." , image:"http://www.tastethecaribbean.eu/images/bahamas_LG.jpg", location_id: 30 )

# NationalDish.create(name:"Machboos" , description:" The dish is also popularly known as makbūs (مكبوس/مچبوس Gulf pron.: [mɑtʃˈbuːs]). Kabsa (Arabic: كبسة‎ kabsah) is a mixed rice dish that originates from Saudi Arabia but is commonly regarded as a national dish in many Arab states of the Persian Gulf. The dish is made with rice and meat. It can often be found served in countries such as Yemen, Somalia, Qatar, Oman, the United Arab Emirates, Bahrain, Saudi Arabia and Kuwait." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Kabsa.jpg/220px-Kabsa.jpg", location_id: 23 )

# NationalDish.create(name:"Rice and Ilish" , description:"The fish is popular food amongst the people of South Asia and in the Middle East, but especially with Bengalis and Odias. Bengali fish curry is a popular dish made with mustard oil or seed. The Bengalis popularly call this dish shorshe ilish. It is also popular in India, especially in West Bengal, Odisha, Tripura, Assam, Gujarat and Andhra Pradesh. It is also exported globally. In Bangladesh, fish are caught in the Meghna-Jamuna delta, which flows into the Bay of Bengal and Meghna (lower Brahmaputra), and Jamuna rivers." , image:"http://www.indrani-will-teach.com/wp-content/uploads/2016/08/DSC02843.jpg", location_id: 19 )

# NationalDish.create(name:"Sorshe Ilish" , description:"Sorshe Ilish is a Bengali dish made from hilsa or Tenualosa ilisha, a type of herring, cooked in mustard gravy. The dish is popular among the people in West Bengal, India and Bangladesh." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Smoked_Hilsa_cooked_with_Mustard_seeds.jpg/220px-Smoked_Hilsa_cooked_with_Mustard_seeds.jpg", location_id: 19 )

# NationalDish.create(name:"Machh Bhaja" , description:"In West Bengal, Tripura, Orissa, Assam and Bangladesh, fried fish or Māchh bhājā is a common delicacy eaten as a snack or fritter to go with a meal. Riverine fish like bhetki, topshey, aarh and pābdā (Ompok pābdā), and anadromous fish such as hilsa are commonly fried in Bengali cuisine, Oriya cuisine and Assamese cuisine. The oil used to fry the fish may often be used as a dip. Fried fish roe (e.g. of hilsa) are also often eaten this way. The fish is often deep fried such that fish bones become crispy and edible, as is the case with small fish like Maurala (Opio cephalus). Karimeen fish fry is also popular in Kerala, India." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Fried_Rohu_in_Bangladesh.jpg/220px-Fried_Rohu_in_Bangladesh.jpg", location_id: 19 )

# NationalDish.create(name:"Machher Jhol" , description:"Machher jhol or machha jhola is a traditional spicy fish stew in Bengali and Odia cuisines in the eastern part of the Indian subcontinent. It is in the form of a very spicy stew that is served with rice. Machher Jhol is liberally seasoned with turmeric, garlic, onions, and grated ginger. Potatoes are added to the stew as a thickening agent. Tomatoes are also added to impart the dish with a reddish color which is preferred by the people of Bengal. The kinds of fish that typically used in Bengali and Odia households are hilsa (called ilisi), rohu (called rohi), and catla (called bhakura). Apart from these, there are some famous small sized fish that are normally favoured over others." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Boyal_Macher_Jhol.jpg/220px-Boyal_Macher_Jhol.jpg", location_id: 19 )

# NationalDish.create(name:"Bhuna" , description:"Curry (plural curries) is a variety of dishes originating in the Indian subcontinent that use a complex combination of spices or herbs, usually including ground turmeric, cumin, coriander, ginger, and fresh or dried chilies. Curry is generally prepared in a sauce. Curry dishes prepared in the southern states of India, where the word also originated, may be spiced with leaves from the curry tree. There are many varieties of dishes called 'curries'. For example, in original traditional cuisines, the precise selection of spices for each dish is a matter of national or regional cultural tradition, religious practice, and, to some extent, family preference. Such dishes are called by specific names that refer to their ingredients, spicing, and cooking methods. Spices are used both whole and ground, cooked or raw, and they may be added at different times during the cooking process to produce different results. The main spices found in most curry powders of the Indian subcontinent are coriander, cumin, and turmeric. A wide range of additional spices may be included depending on the geographic region and the foods being included (fish, lentils, red or white meat, rice, and vegetables). Curry powder, a commercially prepared mixture of spices, is largely a Western creation, dating to the 18th century. Such mixtures are commonly thought to have first been prepared by Indian merchants for sale to members of the British Colonial government and army returning to Britain. Dishes called 'curry' may contain fish, meat, poultry, or shellfish, either alone or in combination with vegetables. Additionally, many instead are entirely vegetarian, eaten especially among those who hold ethical or religious proscriptions against eating meat or seafood. Curries may be either 'dry' or 'wet'. Dry curries are cooked with very little liquid which is allowed to evaporate, leaving the other ingredients coated with the spice mixture. Wet curries contain significant amounts of sauce or gravy based on broth, coconut cream, coconut milk, dairy cream, legume purée, sautéed crushed onion, tomato purée or yogurt." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Indiandishes.jpg/220px-Indiandishes.jpg", location_id: 19 )

# NationalDish.create(name:"Chicken Korma" , description:"Korma is a dish originated in the Indian subcontinent, consisting of meat or vegetables braised with yogurt (dahi) or cream, water or stock, and spices to produce a thick sauce or glaze." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Chicken_Korma.JPG/250px-Chicken_Korma.JPG", location_id: 19 )

# NationalDish.create(name:"Cou-Cou and Flying Fish" , description:"Cou-cou, coo-coo (as it is known in the Windward Islands), or fungi (as it is known in the Leeward Islands and Dominica) makes up part of the national dishes of Antigua and Barbuda, Barbados, British Virgin Islands and the U.S. Virgin Islands. It consists mainly of cornmeal (corn flour) and okra (ochroes). Cornmeal, which comes readily packaged and is available at supermarkets islandwide, and okra, which can be found at supermarkets, vegetable markets and home gardens, are very inexpensive ingredients. Because these main components are inexpensive, the dish became common for many residents in Barbados' early colonial history. Cou-cou derives from the island's African ancestry and was a regular meal for those slaves who were brought over from Africa to Barbados. In Ghana, a similar meal of fermented corn or maize flour eaten with okra stew and fish is known as banku, a favourite dish of the Ga tribe in Accra. A unique cooking utensil called a 'cou-cou stick', or 'fungi stick', is used in its preparation. A cou-cou stick is made of wood, and has a long, flat rectangular shape like a 1-foot-long (30 cm) miniature cricket bat. It is believed by Barbadians to be essential in stirring the cou-cou, as the dish takes on a firm texture and the cou-cou stick makes it easier to stir in a large pot. Flying fish prepared fried or steamed is a usual complement to cou-cou. Cou-cou and flying fish has become Barbados' national dish. Corned beef, or just beef stew, is also a common accompaniment to cou-cou. Traditionally, cou-cou is served on Fridays at homes across Barbados and local food establishments. Cou-cou can also be prepared using breadfruit instead of cornmeal. In Trinidad and Tobago cou-cou (or coo-coo) is often prepared alongside callaloo and either stewed or fried fish. In some islands, e.g. Barbados, Antigua, or the Virgin Islands, cou-cou may be cooked without okra, and goes by the name fengi, fungie, or fungi." , image:"http://barbados.org/recipies/coucou-flying-fish.jpg", location_id: 18 )

# NationalDish.create(name:"Draniki" , description:"Potato pancakes, draniki, deruny, latkas, raggmunk or boxties are shallow-fried pancakes of grated or ground potato, matza meal or flour and a binding ingredient such as egg or applesauce, often flavored with grated garlic or onion and seasoning. They may be topped with a variety of condiments, ranging from the savory (such as sour cream or cottage cheese), to the sweet (such as apple sauce or sugar), or they may be served plain. The dish is sometimes made from mashed potatoes to make pancake-shaped croquettes. Some variations may be made with sweet potatoes." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Latkas.jpg/220px-Latkas.jpg", location_id: 34 )

# NationalDish.create(name:"Moules-Frites" , description:"Moules-frites or moules et frites (French pronunciation: ​[mul.fʁit]]; Dutch: mosselen-friet) is a popular main dish of mussels and fries originating in Belgium. It is also popular in Jersey and France. The title of the dish is French, moules meaning mussels and frites fries, with the Dutch name for the dish meaning the same. It is considered the national dish of Belgium." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Moules_Frites.jpg/250px-Moules_Frites.jpg", location_id: 20 )

# NationalDish.create(name:"Belgian Waffle" , description:"In North America, Belgian waffles are a variety of waffle with a lighter batter, larger squares, and deeper pockets than ordinary American waffles. Belgian waffles were originally leavened with yeast, but baking powder is now often used. They are often eaten as a breakfast food; toppings vary from whipped cream, confectioners sugar, soft fruit, and chocolate spread, to syrup and butter or margarine. They may also be served with vanilla ice cream and fresh fruit (such as strawberries) as a dessert. In Belgium itself, there are several kinds of waffle, including the Brussels waffle and the Liège waffle." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Waffle_with_strawberries_and_confectioner%27s_sugar.jpg/250px-Waffle_with_strawberries_and_confectioner%27s_sugar.jpg", location_id: 20 )

# NationalDish.create(name:"Frites" , description:"French fries, or simply fries (North American English); chips (British and Commonwealth English), finger chips (Indian English), or french-fried potatoes are batonnet or allumette-cut deep-fried potatoes. French fries are served hot, either soft or crispy, and are generally eaten as part of lunch or dinner or by themselves as a snack, and they commonly appear on the menus of diners, fast food restaurants, pubs, and bars. They are usually salted and, depending on the country, may be served with ketchup, vinegar, mayonnaise, tomato sauce, or other local specialties. Fries can be topped more heavily, as in the dishes of poutine or chili cheese fries. Chips can be made from kumara or other sweet potatoes instead of potatoes. A baked variant, oven chips, uses less oil or no oil. One very common fast food dish is fish and chips." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Fries_2.jpg/250px-Fries_2.jpg", location_id: 20 )

# NationalDish.create(name:"Bile Up" , description:"The bile up (or boil-up) is considered the cultural dish of the Kriols of Belize. It is a combination of boiled eggs, fish and/or pig tail, with cassava, yams, or sweet potatoes, plantains, and tomato sauce." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Boil_Up_National_Dish_of_Belize.jpg/220px-Boil_Up_National_Dish_of_Belize.jpg", location_id: 35 )

# NationalDish.create(name:"Fry Jack" , description:"Fry jacks are a traditional dish in the Belizean cuisine. They are deep fried dough pieces served as a breakfast item, and can be shaped as circles or triangles." , image:"https://www.africanbites.com/wp-content/uploads/2015/05/IMG_9464.jpg", location_id: 35 )

# NationalDish.create(name:"Kuli-Kuli" , description:"Kuli-kuli is a West African food that is primarily made from peanuts. It is a popular snack in Nigeria, Benin, northern Cameroon and Ghana. It is often eaten alone or with a mixture of garri, sugar and water popularly called 'garri soakings'. It is also eaten with koko, fura, kamu, and is sometimes ground and put into salad. It is often ground as used as an ingredient for Suya and Kilishi. To make kuli-kuli, peanuts are roasted and then ground into a paste called 'Labu'. The paste is then mixed with spices, salt, and sometimes ground pepper. The paste is stripped of excess oil with water, and made into the desired shape (round balls, cylinders, etc.). The oil removed in this process is then heated and used to fry the shaped peanut paste until it solidifies. It is then removed from the oil and allowed to cool down until ready to be eaten." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Kulikuli.jpg/220px-Kulikuli.jpg", location_id: 35 )

# NationalDish.create(name:"Bermuda Fish Chowder" , description:"Bermuda fish chowder is a chowder soup that is considered the national dish of Bermuda, a British Overseas Territory in the North Atlantic Ocean. Its basic ingredients are fish, tomatoes and onions, seasoned with black rum and 'Sherry Pepper Sauce'. The recipe is believed to have been developed by the 17th century British colonizers of Bermuda." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Bermuda_Fish_Chowder_%283825239570%29.jpg/250px-Bermuda_Fish_Chowder_%283825239570%29.jpg", location_id: 26 )

# NationalDish.create(name:"Ema Datshi" , description:"Ema Datshi (Dzongkha: ཨེ་མ་དར་ཚིལ་; Wylie: e-ma dar-tshil) is among the most famous dishes in Bhutanese cuisine, recognized as a national dish of Bhutan. It is made from chili peppers and cheese; 'ema' means 'chili' and 'datshi' means 'cheese' in the Dzongkha language of Bhutan. Different varieties of chilies may be used: green chili, red chili, and/or white chili (green chili washed in hot water and sun dried), which may be dried or fresh. The chilies are called 'sha ema' which is a Capsicum annuum, and seems to be a form of pepper much like Cayenne, Poblano, Ancho, or Anaheim. The cheese in ema datshi is home-made from the curd of cow or yak's milk. In the process, the fat is removed from the curd to make butter, and the remaining curd without fat is used to make the cheese. After the cheese is made, a watery liquid is left over, which is used as a soup that can be taken with rice. No part of the curd is wasted." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Bhutanese_hemadatsi.jpg/220px-Bhutanese_hemadatsi.jpg", location_id: 31 )

# NationalDish.create(name:"Salteña" , description:"A salteña is a type of baked empanada from Bolivia. Salteñas are savory pastries filled with beef, pork or chicken mixed in a sweet, slightly spicy sauce containing olives, raisins and potatoes. Vegetarian salteñas are sometimes available at certain restaurants. Typically salteñas can be found in any town or city throughout the country, but each area has its variations; Cochabamba and Sucre claim to have the best version of this snack, and many will go out of their way to try the variation from Potosí. In La Paz, it is a tradition to enjoy salteñas as a mid-morning snack, although vendors often start selling salteñas very early in the morning. The pastries are sold anywhere from 7am to noon; most vendors sell out by mid-morning." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Saltena4_lg.JPG/250px-Saltena4_lg.JPG", location_id: 28 )

# NationalDish.create(name:"Silpancho" , description:"Silpancho (original Quechua word: Sillp'anchu) is a typical, popular Bolivian food from the city of Cochabamba. When prepared properly, this tends to be a large and filling meal laden with carbohydrates and fat. It consists of a base layer of rice, usually white, followed by a layer of boiled and sliced potatoes. Next, a thin layer of schnitzel-style meat is laid on top, followed by a layer of chopped tomato. In addition, onion, beet and parsley are mixed together and topped with either one or two fried eggs. Variants including dicing and cooking the meat over the rice cooked instead of remaining in steak form. Another variant is to place pico de gallo on top of the eggs instead of parsley, onion and beets. Another variant marinates the meat using ingredients including soy sauce. Silpancho can be found in a type of sandwich called 'Trancapecho', containing all the ingredients (even rice)." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Silpancho.jpg/200px-Silpancho.jpg", location_id: 28 )

# NationalDish.create(name:"Bosnian Pot" , description:"Bosnian Pot (Bosanski Lonac) is a Bosnian stew, a culinary speciality appreciated for its rich taste and flexibility. Recipes for Bosanski lonac vary greatly according to personal and regional preference, but the main ingredients generally include chunked meat and vegetables. Mixed meats may be used in the dish. It has been described as a national dish of Bosnia. Bosanski lonac has been on tables of both the rich and the poor for hundreds of years. The wealthy prepared the dish with more meat and other expensive ingredients, while the poor used what was available. Typical ingredients are: beef, lamb, cabbage, potatoes, tomatoes, carrots, parsley, garlic, peppercorns (whole, not ground). Many different vegetables or meats may be used. Bosanski lonac is prepared by layering meat and vegetables (alternating layers of meat and vegetables until the pot is full) into a deep pot, then adding 1 - 2 dl water. The ingredients are usually cut into large pieces rather than finely chopped or minced. Originally, Bosanski lonac was made in ceramic pots and cooked in a fireplace or pit in the ground. Today, with the declining availability of fireplaces for cooking, many cooks use a regular pot and a kitchen stove. Due to the preference for large chunks of meat and vegetables, the meal takes about 4 hours to cook." , image:"https://upload.wikimedia.org/wikipedia/commons/8/86/Bosanskilonac.jpg", location_id: 17 )

# NationalDish.create(name:"Ćevapi" , description:"Ćevapi (pronounced [tɕɛv̞ǎːpi], Cyrillic: ћевапи) or ćevapčići (formal diminutive, [tɕɛv̞ǎptʃitɕi], Cyrillic: ћевапчићи) is a grilled dish of minced meat, a type of kebab, found traditionally in the countries of southeastern Europe (the Balkans). They are considered a national dish in Bosnia and Herzegovina, and Croatia and are also common in Serbia, Montenegro, Albania, Slovenia, as well as in North Macedonia, Bulgaria and Austria. Ćevapi has its origins in the Balkans during the Ottoman period, and represents a regional speciality similar to the köfte kebab. They are usually served in groups of five to ten pieces on a plate or in a flatbread (lepinje or somun), often with chopped onions, sour cream, kajmak, ajvar, feta cheese, minced red pepper and salt. Bosnian ćevapi are made from two types of minced beef meat, hand-mixed and formed with a funnel, while formed ćevapi are grilled. Serb ćevapčići are made of either beef, lamb or pork or mixed." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Original_Bosnian_Cevapcici.JPG/220px-Original_Bosnian_Cevapcici.JPG", location_id: 17 )

# NationalDish.create(name:"Seswaa" , description:"Seswaa (as the dish is called in the Central District of Botswana) or leswao (as the dish is called in the south of the country) is a traditional meat dish of Botswana, made of beef and goat meat. It is prepared using left over cuts or tough cuts such as legs, neck and back. The dish is normally prepared for ceremonies such as funerals, weddings and national events such as independence celebrations. The meat is boiled until tender in a pot, with 'just enough salt,' and pounded. It is often served with pap (maize meal) or mabele(sorghum)." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Seswaa_avec_bogobe.jpg/200px-Seswaa_avec_bogobe.jpg", location_id: 33 )

# NationalDish.create(name:"Feijoada" , description:"Feijoada (Portuguese pronunciation: [fejʒuˈadɐ]) is a stew of beans with beef and pork. It is commonly prepared in Portugal, Macau, Angola, Cape Verde, Guinea-Bissau, Mozambique, Timor, Goa, India and Brazil, where it is also considered a national dish. However, the recipe differs slightly from one country to another. Brazilian feijoada made with black beans. The name comes from feijão, Portuguese for 'beans'. The basic ingredients of feijoada are beans with fresh pork or beef. In Brazil, it is usually made with black beans (feijoada à brasileira). The stew is best prepared over low heat in a thick clay pot. It is usually served with rice and assorted sausages such as chouriço, morcela (blood sausage), farinheira, and others, which may or may not be cooked in the stew. The practice of cooking a meat (pork) stew with vegetables that gave origin to the feijoada from the Minho Province in Northern Portugal is a millenary Mediterranean tradition that can be traced back to the period when the Romans colonized Iberia. Roman soldiers would bring this habit to every Latin settlement, i.e., all of the provinces of Romania, the Vulgar Latin speaking area of Europe (not to be confused with the modern country solely), and this heritage is the source of many national and regional dishes of today's Europe, such as the French cassoulet, the Milanese cassoeula from Lombardy, Italy, the Romanian fasole cu cârnați, the fabada asturiana from Northwestern Spain, and the also Spanish cocido madrileño and olla podrida, not to mention non-Romanic regions with similar traditions that might be derived from this millennial Roman soldiers' dish like the Polish tsholem and golonka. Fasolada, labeled the Greek national dish, is related to the ancient Greek dish of broad beans, vegetables, and grains, with no meat, unlike the Italian fagiolata and the Portuguese feijoada, which was used as food and sacrifice to Greek God Apollo during the Pyanopsia festival." , image:"", location_id: 29 )

# NationalDish.create(name:"Ambuyat" , description:"Ambuyat is a dish derived from the interior trunk of the sago palm. It is a starchy bland substance, similar to tapioca starch. Ambuyat is the national dish of Brunei, and a local delicacy in the Malaysian states of Sarawak, Sabah, and the federal territory of Labuan, where it is sometimes known as linut. Ambuyat is eaten with a bamboo fork called a chandas, by rolling the starch around the prongs and then dipping it into a sauce, of which there are many varieties. There is a similar dish in eastern Indonesia called papeda. It has a glutinous texture and is chewy." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Ambuyat_in_Bandar_Seri_Begawan_Brunei.jpg/250px-Ambuyat_in_Bandar_Seri_Begawan_Brunei.jpg", location_id: 27 )

# NationalDish.create(name:"Banitsa" , description:"Banitsa (Bulgarian: баница, also transliterated as banica and banitza) is a traditional Bulgarian dish in the börek family prepared by layering a mixture of whisked eggs and pieces of cheese between filo pastry and then baking it in an oven. Traditionally, lucky charms are put into the pastry on certain occasions, particularly on New Year's Eve. These charms may be coins or small symbolic objects (e.g., a small piece of a dogwood branch with a bud, symbolizing health or longevity). More recently, people have started writing happy wishes on small pieces of paper and wrapping them in tin foil. Wishes may include happiness, health, or success throughout the new year (similar to fortune cookies). Banitsa is served for breakfast with plain yogurt, ayran, or boza. It can be eaten hot or cold. Some varieties include banitsa with spinach 'спаначник' (spanachnik) or the sweet version, banitsa with milk 'млечна баница' (mlechna banitsa) or pumpkin 'тиквеник' (tikvenik)." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Banitsa_borzo.jpg/220px-Banitsa_borzo.jpg", location_id: 22 )

# NationalDish.create(name:"Bob Chorba" , description:"Bob chorba (Bulgarian: боб чорба) is a chorba, a national Bulgarian dish. The name translates to 'bean soup'. It is a soup made from dry beans, onions, tomatoes, chubritza or dzhodzhen (spearmint) and carrots. Local variations may also exclude the carrots or include paprika, potatoes or even some kind of meat. Historically, it has been a common soup and staple food at Bulgarian monasteries." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Bean_soup_with_tomatoes_and_red_peppers.jpeg/220px-Bean_soup_with_tomatoes_and_red_peppers.jpeg", location_id: 22 )

# NationalDish.create(name:"Shopska Salad" , description:"Shopska salad, also known as Bulgarian salad (Bulgarian, Macedonian, and Serbian Cyrillic: Шопска салата; Bosnian and Croatian: Šopska salata; Romanian: Salata bulgărească; Czech: Šopský salát; Polish: Sałatka szopska; Albanian: Sallatë Shope; Hungarian: Sopszka saláta), is a Bulgarian cold salad popular throughout the Balkans and Central Europe. It is made from tomatoes, cucumbers, onion/scallions, raw or roasted peppers, sirene (white brine cheese), and parsley. The vegetables are usually diced and salted, followed by a light dressing of sunflower oil (or olive oil, which is less authentic), which are occasionally complemented by vinegar. The addition of vinegar contributes, however, to the sour flavour that the tomatoes impart. In restaurants, the dressings are provided separately. Lastly, the vegetables are covered in a thick layer of grated or diced sirene cheese. This salad is often consumed as an appetiser with rakia." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Chopska.jpg/250px-Chopska.jpg", location_id: 22 )

# NationalDish.create(name:"Riz Gras" , description:"Riz gras is a meat- and rice-based dish in Burkinabé cuisine, the cuisine of Burkina Faso, Africa. It is also prepared in other African countries, such as Senegal and Guinea. It originated from the dish tiebou djen, a rice dish in Senegalese cuisine that is prepared with significant amounts of fish and meat. Riz gras is often served at parties in urban areas of Burkina Faso. Riz gras is prepared with significant amounts of meat and vegetables, and is usually served atop rice. Additional ingredients used include tomatoes, eggplant, bell peppers, carrots, cabbage, onion, garlic, meat or vegetable stock, oil and salt." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Plat_de_riz_au_gras_plus_viande.jpg/240px-Plat_de_riz_au_gras_plus_viande.jpg", location_id: 21 )

# NationalDish.create(name:"Boko-Boko" , description:"Harees, Jareesh (Arabic: هريس‎) or Harissa (Armenian: հարիսա, romanized: harisa) is a dish of boiled, cracked, or coarsely-ground wheat, mixed with meat and seasoned. Its consistency varies between a porridge and a dumpling. Harees is a popular dish known in the Arab states of the Persian Gulf, especially in the month of Ramadan, while 'Harissa is an Armenian dish from the Ararat plain. The wheat is soaked overnight, then simmered in water along with meat and butter or sheep tail fat. Any remaining liquid is strained and the mixture is beaten and seasoned. Harees may be garnished with cinnamon, sugar, and clarified butter.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Al_fanar_harees_%287797136886%29.jpg/220px-Al_fanar_harees_%287797136886%29.jpg", location_id: 24 )

# NationalDish.create(name:"Amok Trey" , description:"Amok trei (Khmer: អាម៉ុកត្រី or ហហ្មុកត្រី - 'haa mok trəy'), freq. 'Ho Mok' (US), or steamed curried fish, is a traditional dish of Cambodian cuisine. It is fish coated in a thick coconut milk with kroeung, either steamed or baked in a cup made from banana leaves. It is often eaten during the Water Festival, which celebrates the reversal of the Tonle Sap River. An important part of the dish is the addition of the leaves of the noni tree and the use of fingerroot." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/2016_Phnom_Penh%2C_Amok_trey_%2801%29.jpg/500px-2016_Phnom_Penh%2C_Amok_trey_%2801%29.jpg", location_id: 115 )

# NationalDish.create(name:"Samlar Kakou" , description:"Samlar kakou (Khmer: សម្លកកូរ) is a traditional soup dish of Cambodia. Samlar kakou also considered as one of Cambodian's national dish. The dish consists of kroeung, fish paste, fish flesh, pork or chicken and vegetables. Unlike other Khmer dishes, this can be served as a one-pot dish because it is a reassuringly well balanced meal on its own. Some prefer it as a vegetarian dish where the fish and meat are omitted and replaced by coconut cream and vegetable stock." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Somlorkoko.jpg/440px-Somlorkoko.jpg", location_id: 115 )

# NationalDish.create(name:"Ndolé" , description:"Ndolé is a Cameroonian dish consisting of stewed nuts, ndoleh (bitter leaves indigenous to West Africa) and fish or beef. The dish may also contain shrimp or prawns. It is traditionally eaten with plantain, bobolo (a Cameroonian dish made of fermented ground manioc or cassava and wrapped in leaves), etc." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Ndol%C3%A9_camerounais.JPG/500px-Ndol%C3%A9_camerounais.JPG", location_id: 45 )

# NationalDish.create(name:"Poutine" , description:"Poutine (/puːˈtiːn/; Quebec French: [put͡sɪn] (About this soundlisten)) is a dish that includes french fries and cheese curds topped with a brown gravy. It originated in the Canadian province of Quebec and emerged in the late 1950s in the Centre-du-Québec area. It has long been associated with Quebec cuisine. For many years, it was perceived negatively and mocked, and even used by some to stigmatize Quebec society. Poutine later became celebrated as a symbol of Québécois cultural pride. Its rise in prominence led to its popularity outside the province, especially in Ontario and in the Northeastern United States. Annual poutine celebrations occur in Montreal, Quebec City, and Drummondville, as well as Toronto, Ottawa, and Chicago. Today, it is often identified as a quintessential Canadian food. It has been called 'Canada's national dish', though some believe this labelling represents a misappropriation of Québécois culture. Many variations on the original recipe are popular, leading some to suggest that poutine has emerged as a new dish classification in its own right, as with sandwiches and dumplings." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Food_at_WIkimanian_2017_02.jpg/514px-Food_at_WIkimanian_2017_02.jpg", location_id: 36 )

# NationalDish.create(name:"Nanaimo Bar" , description:"The Nanaimo bar /nəˈnaɪmoʊ/ is a dessert item of Canadian origin. It is a bar dessert which requires no baking and is named after the city of Nanaimo, British Columbia, on Vancouver Island. It consists of three layers: a wafer and coconut crumb-base, custard flavoured butter icing in the middle and a layer of chocolate ganache on top. Many varieties exist, consisting of different types of crumb, different flavours of icing (e.g., mint, peanut butter, coconut, mocha), and different types of chocolate." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Nanaimo_bar.JPG/440px-Nanaimo_bar.JPG", location_id: 36 )

# NationalDish.create(name:"Butter Tart" , description:"A butter tart is a type of small pastry tart highly regarded in Canadian cuisine and considered one of Canada's quintessential treats. The sweet tart consists of a filling of butter, sugar, syrup, and egg, baked in a pastry shell until the filling is semi-solid with a crunchy top. The butter tart should not be confused with butter pie (a savoury pie from the Preston area of Lancashire, England) or with bread and butter pudding. Recipes for the butter tart vary according to the families baking them. Because of this, the appearance and physical characteristics of the butter tart – the firmness of its pastry, or the consistency of its filling – also vary. Traditionally, the English Canadian tart consists of butter, sugar, and eggs in a pastry shell, similar to the French-Canadian sugar pie, or the base of the U.S. pecan pie without the nut topping. The butter tart is different from the sugar pie given the lack of flour in the filling. The butter tart is different from pecan pie in that it has a 'runnier' filling due to the omission of corn starch. Often raisins, walnuts or pecans are added to the traditional butter tart, although the acceptability of such additions is a matter of national debate. As an iconic Canadian food and one of the most popular desserts in the country, the raisin-or-no-raisin question can provoke polarizing debate. More exotic flavours are also produced by some bakers. Examples such as maple, bacon, pumpkin, chili and salted caramel cardamom flavours have been made for competitions." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Pecan_butter_tart%2C_May_2011.jpg/500px-Pecan_butter_tart%2C_May_2011.jpg", location_id: 36 )

# NationalDish.create(name:"Macaroni and Cheese" , description:"Macaroni and cheese—also called mac and cheese or mac n cheese in American and Canadian English, macaroni cheese in the United Kingdom—is a dish of English origin, consisting of cooked macaroni pasta and a cheese sauce, most commonly cheddar. It can also incorporate other ingredients, such as breadcrumbs, meat and vegetables. Traditional macaroni and cheese is a casserole baked in the oven; however, it may be prepared in a sauce pan on top of the stove or using a packaged mix. The cheese is often first incorporated into a Béchamel sauce to create a Mornay sauce, which is then added to the pasta. In the United States, it is considered a comfort food. Macaroni and Cheese was brought to Canada by British immigrants, coming from other parts of the British Empire. Macaroni and cheese recipes have been attested in Canada since at least Modern Practical Cookery in 1845, which suggests a puff pastry lining (suggesting upper-class refinement); a sauce of cream, egg yolks, mace, and mustard; and grated Parmesan or Cheshire cheese on top. Canadian Cheddar cheese was also becoming popularized at this time and was likely also used during that era. Macaroni and cheese is very popular in modern-day Canada. Kraft Dinner is the most popular brand of packaged macaroni and cheese. Sasha Chapman, writing in The Walrus, considered it to be Canada's national dish, ahead of poutine." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Original_Mac_n_Cheese_.jpg/440px-Original_Mac_n_Cheese_.jpg", location_id: 36 )

# NationalDish.create(name:"Tourtière" , description:"Tourtière (French pronunciation: ​[tuʁ.ˈtjɛʁ], Quebec French: [tuʁ.ˈt͡sjaɛ̯ʁ]) is a Canadian meat pie dish originating from the province of Quebec, usually made with minced pork, veal or beef and potatoes. Wild game is sometimes used. A traditional part of the Christmas réveillon and New Year's Eve meal in Quebec, it is also popular in New Brunswick, and is sold in grocery stores across the rest of Canada, all year long. Tourtière is not exclusive to Quebec. It is a traditional French-Canadian dish served by generations of French-Canadian families throughout Canada and the bordering areas of the United States. In the New England region of the U.S., especially in Maine, Rhode Island, Vermont, New Hampshire, and Massachusetts (e.g., Chicopee and Attleboro), late 19th and early 20th century immigrants from Quebec introduced the dish. There is no one correct filling; the meat depends on what is regionally available. In coastal areas, fish such as salmon is commonly used, whereas pork, beef, rabbit and game are often included inland. The name derives from the vessel in which it was originally cooked, a tourtière. Tourtière du Lac-Saint-Jean has become the traditional and iconic dish of the region of Saguenay, Quebec since the Second World War, and it has undergone several metamorphoses according to the culinary history. The first recipe for what we consider today as pies was documented back to 1600 BCE. After that around 400 CE, some evidence proved the existence of patina (the prototype of tourtière), which was slightly different from the pie we have today in terms of the pie crust and composition. In the Middle Ages, patina and artocreas reappeared in some European countries. In Italy, the pie was named as 'pasticcio', 'timballo' or 'timpano de macaroni'. Something similar also occurred in England which was named 'battle pies' and also the 'tourte parmenienne' in France." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/13/Tourtiere_Fin.jpg/500px-Tourtiere_Fin.jpg", location_id: 36 )

# NationalDish.create(name:"Fried Dough" , description:"Fried dough is a North American food associated with outdoor food stands in carnivals, amusement parks, fairs, rodeos, and seaside resorts (though it can be made at home). 'Fried dough' is the specific name for a particular variety of fried bread made of a yeast dough; see the accompanying images for an example of use on carnival-booth signs. Fried dough is also known as fry dough, fry bread (bannock), fried bread, doughboys, elephant ears, scones, pizza fritte, frying saucers, and buñuelos (in the case of smaller pieces). These foods are virtually identical to each other, and recognizably different from other fried dough foods such as doughnuts, beignets, or fritters. In Canadian cuisine, pieces of fried dough are sometimes called beaver tails. According to Bill Castleman, a writer of books on Canadian word origins, the name referred to quick-baked dough 'especially in early 19th-century places where people might camp for one night and where there was no frying pan.' In 1978, Pam and Grant Hooker of Ottawa, Ontario, founded the BeaverTails chain of restaurants specializing in the sale of fried dough pastries which are hand stretched to the shape of a beaver's tail. In Newfoundland, a province in Eastern Canada, fried dough is referred to as a 'touton'. A touton /ˈtaʊtən is produced by frying bread dough on a pan with butter or the leftover fat from 'scrunchions' (fried preserved pork) and served with dark molasses, maple syrup, or corn syrup. It is traditionally made from leftover bread dough and pan-fried, as opposed to deep-fried. A smaller Italian variant common in North America is the zeppole. Similar food is found in Europe, also typically from outdoor stands in fairs. For example, in Croatia, fried dough is known as languši, in Hungary as lángos, in Austria as kiachl, in Germany as Knieküchle while the oliebol is eaten in the Netherlands. A type of soft, fried dough ball frequently coated in sugar can be found in some Chinese restaurants in New York. These dough balls are referred to by any one of a number of names, including but not necessarily limited to 'sugar biscuits', 'Chinese doughnuts
# , or the simpler 'fried bread'. Turkic countries in Central Asia also have a similar food called Boortsog or Pişi." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Fried_Dough_Toppings.jpg/540px-Fried_Dough_Toppings.jpg", location_id: 36 )

# NationalDish.create(name:"Cachupa" , description:"Cachupa (Portuguese pronunciation: [kɐˈʃupɐ], Cape Verdean Creole Katxupa IPA: [kɐˈʧupɐ]) is a famous dish from the Cape Verde islands, West Africa. It is a slow cooked stew of corn (hominy), beans, cassava, sweet potato, fish or meat (sausage, beef, goat or chicken), and often morcela (blood sausage). Referred to as the country's national dish, each island has its own regional variation. The version of the recipe called cachupa rica tends to have more ingredients than the simpler, cachupa pobre." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Cachupa_2.jpg/600px-Cachupa_2.jpg", location_id: 50 )

# NationalDish.create(name:"Cassava Fufu", description:"Fufu (or foofoo, fufuo, foufou) is a staple food common in many countries in West Africa such as Cote D'Ivoire, Sierra Leone, Ghana, Liberia, Togo and Nigeria. It is often made in the traditional Ghanaian and Nigerian method by mixing and pounding separate equal portions of cassava and green plantain flour thoroughly with water. It is then adjusted to either increase or decrease the viscosity of the fufu depending on personal preferences. Other flours, such as semolina, maize flour or mashed plantains may take the place of cassava flour. Fufu is often served with groundnut soup, palm nut soup, abunuabunu or light soup. The traditional method is to boil starchy food crops like cassava, yams or plantains and cocoyams and then pound them into a dough-like consistency. Fufu is eaten with the fingers, and a small ball of it can be dipped into an accompanying soup or sauce." , image:"https://i.pinimg.com/originals/69/43/8c/69438c73f9c2838a14906b350d23c385.jpg", location_id: 39 )

# NationalDish.create(name:"Peanut Soup" , description:"Peanut soup or groundnut soup is a soup made from peanuts, often with various other ingredients. It is a staple of African cuisine but is also eaten in East Asia (Taiwan), the United States (mainly in Virginia) and other areas around the world. In Ghana it is often eaten with fufu. Groundnut soup is also a native soup of the Benin (Edo) people in Nigeria and it is often eaten with pounded yam. Some of the essential ingredients used in making it are Piper guineense (uziza seed) and Vernonia amygdalina (bitter leaf). It is a delicacy that is prepared from groundnut which is mashed into a paste, usually termed as groundnut pate. Groundnut soup is eaten with fufu, banku, kenkey and so on. It is a delicacy that Ghanaian and people in other African countries consume, such as in Sierra Leone. It is popularly known by Ghanaians in an Akan language called Nkatenkwan." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Ground_nut_soup.jpg/240px-Ground_nut_soup.jpg", location_id: 39 )

# NationalDish.create(name:"Boule" , description:"Boule, a porridge like dish, is the most common national dish. It is consumed every day. The porridge is made from millet in the south and maize is more commonly used in the north. The porridge is shaped into a ball and served with various sauces. The sauces may include meat, dried fish, tomatoes, spices and vegetables, especially okra. There are a wide variety of vegetables, legumes and fruits grown in Chad. Grains include millet, maize and some rice." , image:"http://3.bp.blogspot.com/-qEaHdSMkme4/Ty-hBSnUXNI/AAAAAAAACnc/mkrrJr-eVSQ/s1600/DSCN1747.JPG", location_id: 210 )

# NationalDish.create(name:"Empanada" , description:"An empanada is a type of baked or fried pasty, consisting of pastry and filling, in Latin and Filipino cultures. The name comes from the Spanish verb empanar, and literally translates as 'enbreaded', that is, wrapped or coated in bread. Empanadas are made by folding dough over a stuffing, which may consist of meat, cheese, corn, or other ingredients." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Empanada_-_Stu_Spivack.jpg/500px-Empanada_-_Stu_Spivack.jpg", location_id: 44 )

# NationalDish.create(name:"Pastel de Choclo" , description:"Pastel de choclo ('corn pie') is a South American dish based on sweetcorn or choclo. It is also similar to pastel de elote, found in Mexican cuisine, and to the English corn pudding. The filling usually contains ground beef, chicken, raisins, black olives, onions or slices of hard boiled egg." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Pastel_de_choclo.jpg/500px-Pastel_de_choclo.jpg", location_id: 44 )

# NationalDish.create(name:"Peking Duck" , description:"Peking duck is a dish from Beijing (Peking) that has been prepared since the imperial era. The meat is characterized by its thin, crisp skin, with authentic versions of the dish serving mostly the skin and little meat, sliced in front of the diners by the cook. Ducks bred specially for the dish are slaughtered after 65 days and seasoned before being roasted in a closed or hung oven. The meat is often eaten with spring onion, cucumber and sweet bean sauce with pancakes rolled around the fillings. Sometimes pickled radish is also inside, and other sauces (like hoisin sauce) can be used." , image:"https://9woclymefe-flywheel.netdna-ssl.com/wp-content/uploads/Peking-Duck-960x640.jpg", location_id: 46 )

# NationalDish.create(name:"Noodles" , description:"Noodles are an essential ingredient and staple in Chinese cuisine. Chinese noodles vary widely according to the region of production, ingredients, shape or width, and manner of preparation. They are an important part of most regional cuisines within China, as well as in Singapore, and other Southeast Asian nations with sizable overseas Chinese populations. Chinese-style noodles have also entered the cuisines of neighboring East Asian countries such as Korea (jajangmyeon) and Japan (ramen), as well as Southeast Asian countries such as Vietnam (hủ tiếu and mì xào are both examples of Vietnamese dishes that are of Chinese origin), the Philippines, Thailand, and Cambodia" , image:"https://lifemadesweeter.com/wp-content/uploads/Beef-Chow-Mein-Photo-Recipe-Picture-3-e1507108110159.jpg", location_id: 46 )

# NationalDish.create(name:"Chinese Fried Rice" , description:"Chinese fried rice (simplified Chinese: 炒饭; traditional Chinese: 炒飯; pinyin: chǎofàn; Jyutping: caau2 faan6; Pe̍h-ōe-jī: chhá-pn̄g) is a family of fried rice dishes popular in sinophone countries and around the world. It is sometimes served as the penultimate dish in Chinese banquets, just before dessert." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Chinese_fried_rice.jpg/440px-Chinese_fried_rice.jpg", location_id: 46 )

# NationalDish.create(name:"Dumpling" , description:"Dumpling is a broad classification for a dish that consists of pieces of dough (made from a variety of starch sources) wrapped around a filling or of dough with no filling. The dough can be based on bread, flour, or potatoes, and may be filled with meat, fish, cheese, vegetables, fruits, or sweets. Dumplings may be prepared using a variety of methods, including baking, boiling, frying, simmering, or steaming, and are found in many world cuisines." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/DumplingFillings.JPG/360px-DumplingFillings.JPG", location_id: 46 )

# NationalDish.create(name:"Red Braised Pork Belly" , description:"Red braised pork belly or hong shao rou (simplified Chinese: 红烧肉; traditional Chinese: 紅燒肉; pinyin: hóngshāoròu) is a classic pork dish from mainland China, red cooked using pork belly and a combination of ginger, garlic, aromatic spices, chilli peppers, sugar, star anise, light and dark soy sauce, and rice wine. The pork belly is cooked until the fat and skin are gelatinous, soft, and melt easily in the mouth, while the sauce is usually thick, sweet and fairly sticky. The dish has a melt in the mouth texture that is formed as a result of a long braising process, during which the liquid reduces and becomes thick. It is generally served with steamed rice and dark green vegetables. Many Chinese provinces have slightly different versions, but the Hunanese one (often called 'Mao's family style red braised pork' (Chinese: 毛氏紅燒肉; pinyin: Máo shì hóngshāoròu)) is often said to have been one of Chairman Mao's favorite dishes, and is served at the many Hunan restaurants across China specialising in so called 'Mao-style cuisine'. The popularity of the dish has led the Hunan provincial government to codify the recipe of the dish, in particular deciding that only meat of the celebrated Ningxiang breed of pig should be used in authentic hongshao rou." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/%E7%B4%85%E7%87%92%E8%82%89_Braised_pork_in_brown_sauce.jpg/440px-%E7%B4%85%E7%87%92%E8%82%89_Braised_pork_in_brown_sauce.jpg", location_id: 46 )

# NationalDish.create(name:"Sancocho" , description:"Sancocho (from the Spanish verb sancochar, 'to parboil') is a traditional soup (often considered a stew) in several Latin American cuisines. Variations represent popular national dishes in the Puerto Rico, Honduras, Ecuador, Colombia, Cuba, Panama, Dominican Republic, and Venezuela. It usually consists of large pieces of meat, tubers and vegetables served in a broth." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Barranquilla_-_Sancocho_de_mondongo.jpg/500px-Barranquilla_-_Sancocho_de_mondongo.jpg", location_id: 47 )

# NationalDish.create(name:"Poulet Yassa" , description:"Yassa is a spicy dish prepared with onions and either marinated poultry or marinated fish. Originally from Senegal, yassa has become popular throughout West Africa. Chicken yassa (known as yassa au poulet), prepared with onions and lemon, is a specialty from the Casamance region in the south of Senegal." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Poulet_Yassa_Chicken_rice_with_onion_sauce.jpg/440px-Poulet_Yassa_Chicken_rice_with_onion_sauce.jpg", location_id: 47 )

# NationalDish.create(name:"Gallo Pinto" , description:"Gallo pinto or gallopinto is a traditional dish from Nicaragua. Consisting of rice and beans as a base; Gallo pinto has a long history and is important to various Latin American cultures. The beans in gallo pinto are quickly cooked until the juice is almost consumed, then combined with readied rice, and other ingredients such as cooked bell peppers, chopped onions, and garlic." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/CRI_07_2018_0120.jpg/440px-CRI_07_2018_0120.jpg", location_id: 48 )

# NationalDish.create(name:"Zagorski Štrukli" , description:"Zagorski štrukli (pronounced [zǎːgorski ʃtrǔkli]) is a popular traditional Croatian dish served in households across Hrvatsko Zagorje and Zagreb regions in the north of the country, composed of dough and various types of filling which can be either cooked or baked.[clarification needed] It is closely related to štruklji, a traditional Slovene dish." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Kuhane_strukle_0210_1.jpg/440px-Kuhane_strukle_0210_1.jpg", location_id: 96 )

# NationalDish.create(name:"Mlinci" , description:"Mlinci is a dish in Croatian, Serbian and Slovenian cuisine. It is a thin dried flatbread that is easy to prepare by simply pouring boiled salted water or soup over the mlinci. To prepare homemade mlinci, a dough is made of flour, salt, and water, sometimes also with eggs and fat. The dough is then rolled out about 1 mm thick and 20 to 30 cm wide, and baked in an oven or on a hot plate. Later it is broken into pieces about 5 cm in size before final preparation with hot water or soup. Before serving, mlinci can also be quickly fried in poultry fat. Turkey with mlinci is a Croatian folk-cuisine specialty, especially in Zagorje and Slavonia. In Slovenia, duck or goose with mlinci is traditionally eaten on St. Martin's Day. In Serbia, they are usually prepared in the province of Vojvodina, where they are served with a pork or chicken fillet in smetana sauce. Mlinci can also be served by soaking the dried pieces in the drippings from roast meats. The roast meat is removed from the pan and the broken pieces are placed in the fat in the tray, and then baked for a short amount of time. The mlinci is then served as a side dish accompanying the main roast." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Mlinci.jpg/440px-Mlinci.jpg", location_id: 96 )

# NationalDish.create(name:"Brudet" , description:"Brudet, brodet or brodeto is a fish stew made in Croatian regions of Dalmatia, Kvarner and Istria, as well as along the coast of Montenegro. It consists of several types of fish stewed with spices and red wine, and the most important aspect of brudet is its simplicity of preparation and the fact that it is typically prepared in a single pot. It is usually served with polenta which soaks up the fish broth, while other recipes serve it with potatoes or bread. Brudets can significantly vary in style, composition and flavor, depending upon the types of ingredients and cooking styles used." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Brodet.JPG/440px-Brodet.JPG", location_id: 96 )

# NationalDish.create(name:"Kulen" , description:"Kulen (pronounced [kǔlen]) is a type of flavoured sausage made of minced pork that is traditionally produced in Serbia (Vojvodina) and Croatia (Slavonia). A regional festival of Kulen is held annually in Bački Petrovac. A kind of kulen from Syrmia has had its designation of origin protected in Serbia by an organization from Šid. There is also a local variety called Slovak kulen made predominately in Bačka by local Slovaks. A kind of kulen from Slavonia has had its designation of origin protected in Croatia by an organization from Bošnjaci. In parts of Slavonia, kulen is called kulin in Ikavian accent. Croatian Baranya Kulen (Baranjski Kulen) is protected by Geographical Indication (GI) status from the Food and Agriculture Organization of the United Nations. The meat is low-fat, rather brittle and dense, and the flavour is spicy with the hot red paprika bringing it aroma and colour, and garlic for additional spice. The original kulen recipe does not contain black pepper; its hot flavour comes from the paprika. The traditional time of producing kulen is during the pig slaughter done every autumn by most households. Kulen matures during the winter; it can be eaten at this time, although not fully dried and cured yet, with very hot taste, but it will develop its full taste by the following summer. To produce a dryer, firmer kulen, it is sometimes kept buried under ashes, which act as a desiccant. Kulen is a shelf-stable meat product, with a shelf life of up to two years when stored properly. The meat is stuffed and pressed into bags made of pork intestine, and formed into links that are usually around ten centimetres in diameter, and up to three times as long, weighing around a kilogram. The pieces of kulen are smoked for several months, using certain types of wood. After the smoking they are air-dried for another several months. This process can last up to a year. Although similar to other air-dried procedures, the meat is fermented in addition to the air-drying. High-grade kulen is sometimes even covered with a thin layer of mould, giving it a distinct aroma. When the kulen meat is stuffed into the small intestine, the thinness makes it require less smoking and drying and thus also takes less time to mature. This type of sausage is often referred to as kulenova seka (literally kulen's sister). Kulen is regarded as a premium domestically-made dried meat product, given that on the Zagreb market even a low-grade kulen can cost much more than other types of sausages and is comparable to smoked ham. Although it has also been produced commercially throughout former Yugoslavia since World War II, the industrial process of production is significantly different, resulting in major differences in appearance and aroma, although it is cheap compared to the genuine kulen. However an annual 'Kulenijada' festival is held in many Croatian and Serbian cities to honor the history and great regional masters of making kulen." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Kulin_%28serviran%29.jpg/440px-Kulin_%28serviran%29.jpg", location_id: 96 )

# NationalDish.create(name:"Istrian Stew" , description:"The Istrian stew or jota (Croatian: Istarska jota; Slovene: Jota, Italian: Jota) is a stew, made of beans, sauerkraut or sour turnip, potatoes, bacon, spare ribs, known in the northern Adriatic region. It is especially popular in Istria and some other parts of northwestern Croatia. Under the name jota, it is also typical of the whole Slovenian Littoral and in the former Austro-Hungarian territories in northeastern Italy, especially in the provinces of Trieste (where it is considered to be the prime example of Triestine food) and Gorizia, and in some peripheral areas of northeastern Friuli (the Torre river valley, and the mountain borderlands of Carnia and Slavia Veneta). The dish shows the influence of both Central European and Mediterranean cuisine. In most of the recipes, olive oil is used, and the main seasoning is garlic. In Slovenian Istria, it is often eaten together with polenta." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Jota_02.JPG/440px-Jota_02.JPG", location_id: 96 )

# NationalDish.create(name:"Ropa Vieja" , description:"Ropa vieja (Spanish pronunciation: [ˈro.pa ˈβje.xa]; 'old clothes') is one of the national dishes of Cuba, but is also popular in other areas or parts of the Caribbean such as Puerto Rico and Panama, as well as in Spain and the Philippines. It consists of shredded or pulled stewed beef with vegetables. In the Cuban cuisine of Miami, Florida, it is typical for Ropa Vieja to have a sweet undertone. While this is traditionally intended to be due to the use of fully ripe, red bell peppers, it is not uncommon for recipes to include some quantity of sugar as a means to achieve the correct level of sweetness in the finished dish. The Canary Islands in Spain have a version of the dish, where instead of rice on the side they put potato in the pot to cook with the beef and vegetables. It is a very traditional dish for the islands that many restaurants offer on the menu. The most common preparation in mainland Spain involves shredding the leftover meat from a famous soup, cocido, and then pan frying it with paprika and chickpeas." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Cubanfood.jpg/500px-Cubanfood.jpg", location_id: 49 )

# NationalDish.create(name:"Moros y Cristianos" , description:"Moros y Cristianos (or simply moros, moro, congrí, or arroz moro) is a Cuban dish served at virtually every Cuban restaurant. It is the Cuban version of rice and beans, a dish found throughout the Caribbean, the US Southern States, and in Brazil." , image:"https://images-gmi-pmc.edge-generalmills.com/bf08c0ad-da5f-4c9e-8fb1-bcc63dd70fa6.jpg", location_id: 49 )

# NationalDish.create(name:"Souvla" , description:"Souvla (Greek: σούβλα) is a popular dish from Cyprus. It consists of large pieces of meat cooked on a long skewer over a charcoal barbecue. It differs from the popular Greek dish souvlaki, in that meat cuts are much larger and slow cooked for a much longer period at a greater distance from the hot charcoal. Traditional souvla is made from the neck and shoulder of lamb, pork and chicken. The meat is cut on the bone into chunks about the size of a medium onion (optional). The meat must be put on a fire charcoal called foukou (Greek: φουκου), then its weight is evenly distributed on the rotisserie, it cooks evenly on the foukou. The meat is put as far as possible from the charcoal at first. After it is sizzling, it is lowered down to the charcoal so that the skin on the meat goes brown. The process takes between 90 minutes and 3 hours depending on the type of meat, size and heat of fire. Salt, aromatics (such as oregano), oil, and wine are sprinkled or brushed on the meat once the cooking process is well under way. That way the meat stays juicy and does not brown too quickly. Over time, various localities have developed their own recipes, which tend to vary the spices added to the meat marinade. A popular variant is Lysiotiki souvla, originating from the village of Lysi. Typically, souvla in Greece refers to a whole spit-roasted lamb (ovelias, in Greek 'Οβελίας') for Easter and other major holidays or specialist restaurants; the Greek dish most similar to souvla is kontosouvli, large pieces of pork cut from the bone, and kokoretsi (lamb innards/offal rolled into a large sausage), or a speciality of the cook in that region of the country. Cypriots mostly eat Souvla to celebrate occasions such as Christmas, Easter etc." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Souvla.jpg/440px-Souvla.jpg", location_id: 52 )

# NationalDish.create(name:"Vepřo Knedlo Zelo" , description:"Traditional Czech dishes are made from animals, birds or fish bred in the surrounding areas. Pork is the most common meat, making up over half of all meat consumption. Beef, veal and chicken are also popular. Pigs are often a source of meat in the countryside, since pork has a relatively short production time, compared to beef. Jitrnice is the meat and offal of pork cut into tiny pieces, filled in a casing and closed with sticks. Meat from the neck, sides, lungs, spleen, and liver are cooked with white pastry, broth, salt, spices, garlic and sometimes onions. Klobása, known as Kielbasa in the United States, is a smoked meat sausage-like product made from minced meat. It is spicy and durable. Jelito is a pork meat sausage-like product containing pork blood and pearl barley or pastry pieces. Tlačenka is a meat or poultry product consisting of little pieces of meat in jelly/aspic from connective tissue boiled to mush, served with onion, vinegar and bread. Ovar is a simple dish made from rather fatty pork meat (head or knuckle). These pieces of lower quality meat are boiled in salted water. Pork crackling (škvarky) and bacon (slanina) are also eaten." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Praha_2005-09-25_sv%C3%AD%C4%8Dkov%C3%A1_na_smetan%C4%9B-00.jpg/440px-Praha_2005-09-25_sv%C3%AD%C4%8Dkov%C3%A1_na_smetan%C4%9B-00.jpg", location_id: 53 )

# NationalDish.create(name:"Svíčková" , description:"Svíčková, or svíčková na smetaně is a Czech meat dish and one of the most popular Czech meals. It is sirloin steak prepared with vegetables (carrots, parsley root, celeriac and onion), spiced with black pepper, allspice, bay leaf and thyme, and boiled with double cream. It is generally served with houskové knedlíky (bread dumplings)." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Sv%C3%AD%C4%8Dkov%C3%A1_na_smetan%C4%9B.JPG/440px-Sv%C3%AD%C4%8Dkov%C3%A1_na_smetan%C4%9B.JPG", location_id: 53 )

# NationalDish.create(name:"Stegt Flæsk" , description:"Stegt flæsk IPA [stɛkt flɛsk] is a dish from Denmark consisting of fried pork belly and generally served with potatoes and a white sauce with chopped parsley (persillesovs). The dish is sometimes translated as 'pork strips' or 'crisp fried pork slices'. The pork belly or 'breast' cut of a pig is used for stegt flæsk and the strips are cut about a 1/4 inch thick." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Stegt_fl%C3%A6sk.jpg/500px-Stegt_fl%C3%A6sk.jpg", location_id: 56 )

# NationalDish.create(name:"Bøfsandwich" , description:"A bøfsandwich (literally translates to 'steak sandwich'), is the classic Danish take on a hamburger. It contains the hamburger elements of a cooked ground beef patty placed inside a sliced bread roll.

# Bøfsandwiches are typically sold from hotdog stands and in traditional fastfood establishments, and have been described as an 'archetypal Danish snackbar classic'. Some traditional Danish restaurants have also started serving gourmet versions, with the addition of e.g. soft grilled onions. Fans of the bøfsandwich maintain a Facebook page which announces 'Denmark's best bøfsandwich' each year." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Danish_Beef_Sandwich.JPG/470px-Danish_Beef_Sandwich.JPG", location_id: 56 )

# NationalDish.create(name:"Frikadeller" , description:"Frikadeller are flat, pan-fried meatballs of minced meat, often likened to the Danish version of meatballs. The origin of the dish is unknown. The term frikadeller is German but the dish is associated with not only German but Danish cuisine specifically or Scandinavian cuisine in general. Through cultural exchange, frikadeller have also entered national cuisines of other European countries, such as the Faroe Islands and Norway. There are various local variants of frikadeller throughout Scandinavia, as both a main course and a side dish. In Sweden, poached quenelles are called 'frikadeller'." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Frikadeller.jpg/600px-Frikadeller.jpg", location_id: 56 )

# NationalDish.create(name:"Skoudehkaris" , description:"Skoudehkaris is a dish from Djibouti prepared with lamb, rice and the delicious flavors of cilantro, cumin and cardamom. A close cousin of Indian biryani, this dish is traditionally cooked with lamb but it is not uncommon in Djibouti to use beef, chicken or even seafood instead." , image:"https://www.196flavors.com/wp-content/uploads/2013/02/SKOUDEHKARIS-FP.jpg", location_id: 55 )

# NationalDish.create(name:" Mountain Chicken" , description:"WARNING: CRITICALLY ENDANGERED SPECIES! Leptodactylus fallax, commonly (and deceptively) known as the mountain chicken or giant ditch frog, is a species of frog that is native to the Caribbean islands of Dominica and Montserrat. The population has declined 81% in the last ten years and this species is now critically endangered. In 2004 it was estimated that the population possibly was as low as 8,000 individuals. One of the main threats is human consumption. The fungal disease chytridiomycosis has had a dramatic effect on the population as well. On Montserrat it is known as the mountain chicken, on Dominica, it is known as the crapaud." , image:"https://media.istockphoto.com/photos/attention-warning-sign-picture-id132042464?k=6&m=132042464&s=612x612&w=0&h=sjSSfB18no6EXRXv_jrjBCmMp-TsICT-xWecv9en70o=", location_id: 57 )

# NationalDish.create(name:"Fish Broth" , description:"Broth is a savory liquid made of water in which bones, meat, or vegetables have been simmered. It can be eaten alone, but it is most commonly used to prepare other dishes, such as soups, gravies, and sauces. Commercially prepared liquid broths are available, typically for chicken broth, beef broth, fish broth, and vegetable broth. In North America, dehydrated meat stock in the form of tablets is called a bouillon cube. Industrially produced bouillon cubes were commercialized under the brand name Maggi in 1908, and by Oxo in 1910. Using commercially prepared broths saves home and professional cooks time in the kitchen." , image:"https://i.pinimg.com/originals/b5/d4/77/b5d4777af9c391e9d55ef9d4562afa04.jpg", location_id: 57 )

# NationalDish.create(name:"La Bandera" , description:"La bandera’s namesake is the tricolor Dominican flag with its distinctive red, white and blue design framing the national insignia. “La Bandera” food is mainly composed of Dominican rice and beans with chicken, the red represented by the beans, the white by the rice, and – with a splash of poetic and culinary license here – the meat – usually chicken or beef – represents the third color. There’s always also some type of salad to go with them." , image:"https://i1.wp.com/theturquoisetable.com/wp-content/uploads/2019/04/bandera.jpg?fit=320%2C240&ssl=1", location_id: 58 )

# NationalDish.create(name:"Sancocho" , description:"Sancocho (from the Spanish verb sancochar, 'to parboil') is a traditional soup (often considered a stew) in several Latin American cuisines. Variations represent popular national dishes in the Puerto Rico, Honduras, Ecuador, Colombia, Cuba, Panama, Dominican Republic, and Venezuela. It usually consists of large pieces of meat, tubers and vegetables served in a broth." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Barranquilla_-_Sancocho_de_mondongo.jpg/500px-Barranquilla_-_Sancocho_de_mondongo.jpg", location_id: 58 )

# NationalDish.create(name:"Ikan Pepes" , description:"This East Timor Ikan Pepes is a whole fish cooked in a spicy curry and tamarind sauce.  The fish is first steamed in a banana leaf and then grilled for that wonderful smoky flavor that only a grill can provide. Cooked with a whole fish, including the head, it can be a little intimidating. It is usually served with white rice." , image:"https://i1.wp.com/nationalfoods.org/wp-content/uploads/2017/07/National-Dish-of-East-Timor-Ikan-Pepes_East-Timor_food.jpg?fit=1140%2C500&ssl=1", location_id: 216 )

# NationalDish.create(name:"Encebollado" , description:"Encebollado (Spanish: cooked with onions) is a fish stew from Ecuador, where it is regarded as a national dish. Although known throughout Ecuador, the dish is most popular in the country's coastal region. It is served with boiled cassava and pickled red onion rings. A dressing of onion is prepared with fresh tomato and spices such as pepper or coriander leaves. It is commonly prepared with albacore, but tuna, billfish, or bonito may also be used. It may be served with ripe avocado. Its possible origins come from the Basque dish by the name of marmitako. Encebollado is usually served with banana chips, plantains, or bread as side dishes. It may be garnished with lime juice and chili sauce. People in Ecuador eat it for breakfast, lunch, or dinner. Restaurants that sell only this dish start serving it in the early morning." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Semifinal_del_Campeonato_del_Encebollado_en_Esmeraldas_2015_%2817902559519%29.jpg/440px-Semifinal_del_Campeonato_del_Encebollado_en_Esmeraldas_2015_%2817902559519%29.jpg", location_id: 60 )

# NationalDish.create(name:"Fritada" , description:"Fritada is a typical dish in Ecuadorian cuisine. Its main ingredient is fried pork. It is a traditional dish, and its origins date back to the colonial era, to the beginning of the 19th century. The pork is cooked in boiling water with various spices and then is fried with pork fat in a brass pan over flames. It is generally served with Llapingacho or whole boiled potatoes, mote or cooked corn, pickled onions and tomato, and fried ripe plantains. It may also be accompanied by cooked fava beans or mellocos, though mellocos are rather uncommon." , image:"https://www.laylita.com/recipes/wp-content/uploads/2008/02/fritada-de-chancho7.JPG", location_id: 60 )

# NationalDish.create(name:"Guatitas" , description:"Guatitas ([little] guts or [little] bellies, from Spanish: Guata; 'Gut/Belly'), or guatitas criollas, is a popular dish in Chile and in Ecuador, where it is considered a national dish. It is essentially a stew whose main ingredient is pieces of tripe (cow stomach), known locally as 'guatitas'. The tripe is often cleaned several times in a lemon-juice brine, after which it is cooked for a long time until the meat is tender. Then it is allowed to cool and finely chopped. There are various vegetarian versions of the dish in which wheat gluten is substituted for tripe. Other variations use strong-tasting fish such as tuna. The traditional Ecuadorian recipe is served hot and accompanied by potatoes and a peanut sauce. The dish is often considered an acquired taste. Because of its strong taste, it is sometimes served in small quantities. In Ecuador, it is believed that guatita helps relieve hangover symptoms. For this reason, it is often served by restaurants early on Saturday and Sunday mornings.", image:"https://www.midiariodecocina.com/wp-content/uploads/2018/09/Guatitas-a-la-jardinera08.jpg", location_id: 60 )

# NationalDish.create(name:"Ceviche" , description:"Ceviche, also cebiche, seviche or sebiche (Spanish pronunciation: [seˈβitʃe]), is the seafood dish originated in Peru typically made from fresh raw fish cured in citrus juices, such as lemon or lime, and spiced with ají, chili peppers or other seasonings including chopped onions, salt, and cilantro. Because the dish is not cooked with heat, it must be prepared and consumed fresh to minimize the risk of food poisoning. Ceviche is usually accompanied by side dishes that complement its flavors, such as sweet potato, lettuce, corn, avocado or plantain. The dish is popular in the Pacific coastal regions of Latin America. Though the origin of ceviche is hotly debated, in Peru it is considered a national dish. Though archeological records suggest that something resembling ceviche may have been consumed in Peru nearly two thousand years ago, some historians believe the predecessor to the dish was brought to Peru by Moorish women from Granada, who accompanied the Spanish conquistadors and colonizers, and this dish eventually evolved into what is now considered ceviche. Peruvian chef Gastón Acurio further explains that the dominant position Lima held through four centuries as the capital of the Viceroyalty of Peru allowed for popular dishes such as ceviche to be brought to other Spanish colonies in the region, and in time they became a part of local cuisine by incorporating regional flavors and styles. Ceviche is now a popular international dish prepared in a variety of ways throughout the Americas, reaching the United States in the 1980s. The greatest variety of ceviches are found in Ecuador, Colombia, Chile and Peru; but other distinctly unique styles can also be found in coastal Honduras, El Salvador, Belize, Guatemala, the United States, Mexico, Panama, and several other nations." , image:"https://i1.wp.com/coleycooks.com/wp-content/uploads/2016/09/IMG_7543.jpg?w=2000&ssl=1", location_id: 60 )

# NationalDish.create(name:"Ful Medames" , description:"Ful medames (Arabic: فول مدمس‎, fūl mudammas IPA: [fuːl mudammas]; other spellings include ful mudammas and foule mudammes), or simply fūl, is a stew of cooked fava beans served with vegetable oil, cumin, and optionally with chopped parsley, garlic, onion, lemon juice, chili pepper and other vegetable, herb and spice ingredients. It is notably a staple food in Egypt, especially in the northern cities of Cairo and Gizah. Ful medames is also a common part of the cuisines of many Arab, Middle Eastern and African cultures, including in Djibouti, Lebanon, Iraq, Syria, Libya, Palestine, Jordan, Ethiopia, Sudan, Yemen, Somalia and Saudi Arabia." , image:"https://upload.wikimedia.org/wikipedia/commons/b/bf/Ful_medames_%28arabic_meal%29.jpg", location_id: 62 )

# NationalDish.create(name:"Kushari" , description:"Kushari, also koshari (Egyptian Arabic: كشرى‎, [ˈkoʃæɾi]), is an Egyptian dish originally made in the 19th century, made of rice, macaroni, and lentils mixed together, topped with a spiced tomato sauce and garlic vinegar, and garnished with chickpeas and crispy fried onions. Sprinklings of garlic juice, garlic vinegar, and hot sauce are optional." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Egyptian_food_Koshary.jpg/500px-Egyptian_food_Koshary.jpg", location_id: 62 )

# NationalDish.create(name:"Molokhiya" , description:"Mulukhiyah or mulukhiyyah (Arabic: ملوخية‎) is the leaves of Corchorus olitorius, commonly known as Jew's mallow, Nalta jute, or tossa jute. It is used as a vegetable. It is popular in Middle East, East African and North African countries. Mulukhiyah is rather bitter, and when boiled, the resulting liquid is a thick, highly mucilaginous broth; it is often described as 'slimy', rather like cooked okra. Mulukhiyah is generally eaten cooked, not raw, and is most frequently turned into a kind of soup or stew, typically bearing the same name as the vegetable in the local language. Traditionally mulukhiyah is cooked with chicken or at least chicken stock for flavor and is served with white rice, accompanied with lemon or lime." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Molokheya_Egypt%2C_2012.JPG/440px-Molokheya_Egypt%2C_2012.JPG", location_id: 62 )

# NationalDish.create(name:"Falafel" , description:"Falafel (or felafel) (/fəˈlɑːfəl/, /-ˈlæf-/; Arabic: فلافل‎) is a deep-fried ball, or a flat or doughnut-shaped patty, made from ground chickpeas, fava beans, or both. Herbs, spices, and onion relatives are commonly added to the dough. It is an Egyptian dish as well as a very famous, pseudo-national, Middle Eastern dish, that most likely originated in Egypt. The fritters are now found around the world as part of vegetarian cuisine, and as a form of street food. Falafel balls are commonly served in a pita, which acts as a pocket, or wrapped in a flatbread, also known known in western Arab countries as taboon. Falafel also frequently refers to a wrapped sandwich prepared with falafel balls laid over a bed of salad or pickled vegetables and drizzled with hot sauce or a tahini sauce. Falafel balls may also be eaten alone as a snack, or served as part of an assortment of appetizers known as a meze." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Falafels_2.jpg/500px-Falafels_2.jpg", location_id: 62 )

# NationalDish.create(name:"Pupusa" , description:"Pupusa is a thick flatbread from El Salvador made with cornmeal or rice flour, similar to the Venezuelan arepa. It is usually stuffed with one or more ingredients. These may include cheese (such as quesillo or cheese with loroco buds), chicharrón (pork rinds), squash, or refried beans. It is typically accompanied by curtido (a spicy cabbage slaw), and tomato salsa, and is traditionally eaten by hand, without the use of utensils. The exact origin of the pupusa has not been proven." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Pupusas_El_Salvador_Centro_America.JPG/510px-Pupusas_El_Salvador_Centro_America.JPG", location_id: 206 )

# NationalDish.create(name:"Succotash" , description:"Succotash (from Narragansett sohquttahhash, 'broken corn kernels') is a culinary dish consisting primarily of sweet corn with lima beans or other shell beans. Other ingredients may be added including tomatoes, green or sweet red peppers, and okra. Combining a grain with a legume provides a dish that is high in all essential amino acids. Because of the relatively inexpensive and more readily available ingredients, the dish was popular during the Great Depression in the United States. It was sometimes cooked in a casserole form, often with a light pie crust on top as in a traditional pot pie. Succotash is a traditional dish of many Thanksgiving celebrations in New England, as well as in Pennsylvania and other states. In some parts of the American South, any mixture of vegetables prepared with lima beans and topped with lard or butter is called succotash. Corn (maize), American beans, tomatoes, and peppers are New World foods." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Corn_%26_Beans_%2815392776377%29.jpg/500px-Corn_%26_Beans_%2815392776377%29.jpg", location_id: 85 )

# NationalDish.create(name:"Peppersoup" , description:"Peppersoup is a soup from the English-speaking parts of West Africa that is prepared using various meats, chili peppers and nutmeg as primary ingredients. It is a spicy soup that has a light, watery texture. It is considered to be a delicacy by some people in Western Africa, and some West Africans believe that the soup has medicinal qualities." , image:"https://upload.wikimedia.org/wikipedia/commons/4/42/Plantain_peppersoup_with_periwinkle_from_the_South-South_region_of_Nigeria.jpg", location_id: 85 )

# NationalDish.create(name:"Zigini with Injera" , description:"Wat, we̠t’, wot (Amharic: ወጥ, IPA: [wətʼ]) or tsebhi (Tigrinya: ጸብሒ, IPA: [sʼɐbħi]) is an Ethiopian and Eritrean stew or curry that may be prepared with chicken, beef, lamb, a variety of vegetables, spice mixtures such as berbere, and niter kibbeh, a seasoned clarified butter. Injera, ənǧära እንጀራ [ɨndʒəra], is a sourdough-risen flatbread with a slightly spongy texture, originating from the Horn of Africa. Traditionally made out of teff flour, it is the national dish of Ethiopia and Eritrea. It is central to the dining process in those cultures as bread is the most fundamental component of any meal in Ethiopian, Eritrean and Somali cuisine." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Alicha_1.jpg/500px-Alicha_1.jpg", location_id: 64 )

# NationalDish.create(name:"Gored Gored" , description:"Gored gored (Amharic pronunciation: [ɡorəd ɡorəd]) is a raw beef dish eaten in Ethiopia. Whereas kitfo is minced beef marinated in spices and clarified butter, gored gored is cubed and left unmarinated. Like kitfo, it is widely popular and considered a national dish. It is often served with mitmita (a powdered seasoning mix) and awazi (a type of mustard and chilli sauce)." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Gored_gored_plate%2C_July_2019.jpg/440px-Gored_gored_plate%2C_July_2019.jpg", location_id: 64 )

# NationalDish.create(name:"Verivorst with Mulgikapsad" , description:"Ver, or blood sausages, often called blood pudding in British English (and sometimes black pudding, though this normally includes oats or barley),are sausages filled with blood that is cooked or dried and mixed with a filler until it's thick enough to solidify when cooled. Variants are found worldwide. Pig, cow, sheep, duck, and goat blood can be used, varying by country. In Europe and the Americas, typical fillers include meat, fat, suet, bread, cornmeal, onion, chestnuts, barley, and oatmeal. On the Iberian Peninsula and in Asia, rice is often used instead of other cereals. In many languages, there is a general term such as blood sausage (American English) and blood pudding (British English) that is used for all sausages that are made from blood, whether or not they include non-animal material such as bread, cereal, and nuts. Sausages that include such material are often, in addition, referred to with more specific terms, for example, black pudding in English. Sauerkraut (/ˈsaʊ.ərkraʊt/; German: [ˈzaʊɐˌkʁaʊt] (About this soundlisten), lit. 'sour cabbage') is finely cut raw cabbage that has been fermented by various lactic acid bacteria. It has a long shelf life and a distinctive sour flavor, both of which result from the lactic acid formed when the bacteria ferment the sugars in the cabbage leaves." , image:"http://2.bp.blogspot.com/-2hARfKuI_sY/UcjUiaT48PI/AAAAAAAAA0Y/LYmXR7ds2hs/s1600/IMG_0617.jpg", location_id: 61 )

# NationalDish.create(name:"Karoo Roast Ostrich Steak" , description:"Ostrich meat is popularly eaten in Swaziland as this wild bird is common to certain parts of Africa and it is also farmed in certain parts of the country. Swazi cuisine is heavily influenced by French cooking techniques such as the use of cream sauces and meat marinades. Karoo Roast Ostrich Steak is considered to be the country’s national dish and it is prepared alongside pumpkin mash and topped with a rich cream sauce." , image:"https://www.limkokwing.net/graphics/cache/5a3762be49ce89cdae3ed587363222113f3611a2.jpg", location_id: 208 )

# NationalDish.create(name:"Kitfo" , description:"Kitfo consists of minced raw beef, marinated in mitmita (a chili powder-based spice blend) and niter kibbeh (a clarified butter infused with herbs and spices). The word comes from the Ethio-Semitic root k-t-f, meaning 'to chop finely; mince.' Kitfo cooked lightly rare is known as kitfo leb leb. Kitfo is often served alongside—sometimes mixed with—a mild cheese called ayibe or cooked greens known as gomen. In many parts of Ethiopia, kitfo is served with injera, a flatbread made from teff, although in traditional Gurage cuisine, one would use kocho, a thick flatbread made from the ensete plant. An ensete leaf may be used as a garnish. Though not considered a delicacy, kitfo is generally held in high regard. Kitfo is served on special occasions such as holidays; it is commonly used on the 'Finding of the True Cross' or 'Meskel' holiday celebrated annually on September 27 in Ethiopia." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Kitfo.jpg/440px-Kitfo.jpg", location_id: 66 )

# NationalDish.create(name:"Wat" , description:"Wat, we̠t’, wot (Amharic: ወጥ, IPA: [wətʼ]) or tsebhi (Tigrinya: ጸብሒ, IPA: [sʼɐbħi]) is an Ethiopian and Eritrean stew or curry that may be prepared with chicken, beef, lamb, a variety of vegetables, spice mixtures such as berbere, and niter kibbeh, a seasoned clarified butter." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Ethiopian_wat.jpg/500px-Ethiopian_wat.jpg", location_id: 66 )

# NationalDish.create(name:"Injera" , description:"Injera, ənǧära እንጀራ [ɨndʒəra]; is a sourdough-risen flatbread with a slightly spongy texture, originating from the Horn of Africa. Traditionally made out of teff flour, it is the national dish of Ethiopia and Eritrea. It is central to the dining process in those cultures as bread is the most fundamental component of any meal in Ethiopian, Eritrean and Somali cuisine." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Alicha_1.jpg/500px-Alicha_1.jpg", location_id: 66 )

# NationalDish.create(name:"Kokoda" , description:"Kokoda, pronounced 'kokonda', is the delicious South Pacific alternative to the popular Hawaiian fish salad poke. Like ceviche, kokoda is made from marinating raw fish in lime juice, the citric acid 'cooking' the fish over a period of several hours." , image:"https://blog.arousingappetites.com/wp-content/uploads/2017/01/Arousing-Appetites-8-of-10.jpg", location_id: 68 )

# NationalDish.create(name:"Karjalanpaisti" , description:"The Karelian hot pot (British) or Karelian stew (US)(karjalanpaisti in Finnish) is a traditional meat stew originating from the region of Karelia. It is commonly prepared using a combination of pork and beef, but lamb can also be used. Along with the Karelian pasties (karjalanpiirakat), it is the most widely recognised Karelian food in Finland. In 2007, it was selected as the national dish of Finland by the readers of the Finnish tabloid Iltalehti. In similar poll organized by the ELO Foundation for the Promotion of Finnish Food Culture in cooperation with the Central Union of Agricultural Producers and Forest Owners MTK and the Finnish Ministry of Agriculture and Forestry in autumn 2016, Karelian hot pot took second place, losing to rye bread. The hot pot is usually seasoned with black peppercorns and salt. Other seasonings such as allspice and bay leaf may be used too. Common vegetables such as carrot, onion, and root vegetables are acceptable additions to the stew. Like most other Karelian foods, the Karelian hot pot is traditionally braised (cooked in a pot (uuniruukku or potti in Finnish) placed inside an oven). In Karelia, it is usually referred to as merely 'oven stew' (uunipaisti). The term Karelian hot pot can be used to refer to nearly any food that contains meat and that is prepared in this traditional Karelian fashion. Due to the scarceness of meat in the past, the hot pot was traditionally only prepared for festive occasions. As meat became more readily available during the 20th century, the dish became a common, everyday food throughout Finland." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Karelskastek1.jpg/440px-Karelskastek1.jpg", location_id: 67 )

# NationalDish.create(name:"Mämmi" , description:"Mämmi (Finnish pronunciation: [ˈmæmmi]), Swedish memma, is a traditional Finnish Easter dessert. Mämmi is traditionally made of water, rye flour, and powdered malted rye, seasoned salt, and dried powdered Seville orange zest. The mixture is then allowed to go through a slow natural sweetening process before being baked in an oven until set with Maillard reaction. Preparation takes many hours, and after baking the mämmi is stored chilled for three to four days before being ready to eat. Instead of being allowed to sweeten naturally, traditionally, commercially made mämmi is usually seasoned with dark molasses. Traditional mämmi tastes aromatic sweet, having only up to 2% sugar, but commercially produced mämmi can have as much as 20% sugar and tastes different, not so aromatic sweet. Mämmi has up to 10% protein and is rich in trace elements. Mämmi was traditionally stored in small bowls made of birch bark called tuokkonen or rove. Finnish packaging still prints birch bark-like texture on the carton boxes. Generally, mämmi is eaten cold with either milk or cream and sugar, and less commonly with vanilla sauce. In olden times, it was also eaten by some spread on top of a slice of bread. There is a Finnish society for mämmi founded by Ahmed Ladarsi, the former chef at the Italian Embassy in Helsinki, who has developed around fifty recipes containing mämmi. There are a number of websites with recipes using mämmi, most of which are in Finnish. Mämmi is also used as a minor ingredient in a mämmi-beer by Laitilan Wirvoitusjuomatehdas." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/M%C3%A4mmi_2.jpg/500px-M%C3%A4mmi_2.jpg", location_id: 67 )

# NationalDish.create(name:"Sautéed Reindeer" , description:"Sautéed reindeer (Finnish: poronkäristys, Swedish: renskav, Norwegian: finnbiff, Northern Sami: báistebiđus) is perhaps the best known traditional meal from Lapland, especially in Finland, Sweden, Norway and Russia and Sakha. Usually steak or the back of the reindeer is used. It is sliced thinly (easier if frozen rather than only partially thawed), fried in fat (traditionally in reindeer fat, but butter and oil are more common nowadays), spiced with black pepper and salt, and finally some water, cream, or beer is added and cooked until tender. The dish is served with mashed potatoes and lingonberry preserves or, more traditionally, with raw lingonberries mashed with sugar. In Finland it is often served with pickled cucumber,[citation needed] which is not as common in Sweden." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Poronk%C3%A4ristys.jpg/450px-Poronk%C3%A4ristys.jpg", location_id: 67 )

# NationalDish.create(name:"Pot-Au-Feu" , description:"Pot-au-feu (/ˌpɒtoʊˈfɜːr/, also US: /ˌpɔːtoʊˈfɜː/, French: [pɔt‿o fø] (About this soundlisten); 'pot on the fire') is a French beef stew. According to the chef Raymond Blanc, pot-au-feu is 'the quintessence of French family cuisine, it is the most celebrated dish in France. It honours the tables of the rich and poor alike.'" , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pot-au-feu2.jpg/500px-Pot-au-feu2.jpg", location_id: 72 )

# NationalDish.create(name:"Crêpe" , description:"A crêpe or crepe (/kreɪp/ (About this soundlisten) or /krɛp/, French: [kʁɛp] (About this soundlisten), Quebec French: [kʁaɪ̯p] (About this soundlisten)) is a type of very thin pancake. Crêpes are usually of two types: sweet crêpes (crêpes sucrées) and savoury galettes (crêpes salées). Crêpes are served with a variety of fillings, from the simplest with only sugar to flambéed crêpes Suzette or elaborate savoury galettes. While crêpes are often associated with Brittany, a region in the northwest of France, their consumption is widespread in France, Belgium, Canada, and many parts of Europe, North Africa, Lebanon, and the Southern Cone of South America." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Crepes_dsc07085.jpg/500px-Crepes_dsc07085.jpg", location_id: 72 )

# NationalDish.create(name:"Macaron" , description:"A macaron (/ˌmækəˈrɒn/ mak-ə-RON; French: [makaʁɔ̃]) or French macaroon (/ˌmækəˈruːn/ mak-ə-ROON) is a sweet meringue-based confection made with egg white, icing sugar, granulated sugar, almond powder or ground almond, and food coloring. There is some variation in whether the term macaron or macaroon is used, and the related coconut macaroon is often confused with the macaron. In English, some bakers have adopted the French spelling of macaron for the meringue-based item to distinguish the two. In a Slate article on the topic, Stanford professor of linguistics and computer science Daniel Jurafsky describes how the two confections have a shared history, also shared with macaroni (Italian maccheroni). Jurafsky notes that French words ending with '-on' that were borrowed into English in the 16th and 17th centuries are usually spelled with '-oon' (for example: balloon, cartoon, platoon). In the UK, many bakeries continue to use the term 'macaroon'. A typical macaron is presented with a ganache, buttercream or jam filling sandwiched between two such cookies, akin to a sandwich cookie. The confection is characterized by a smooth squared top, a ruffled circumference—referred to as the 'crown' or 'foot' (or 'pied')—and a flat base. It is mildly moist and easily melts in the mouth. Macarons can be found in a wide variety of flavors that range from traditional (raspberry, chocolate) to unusual (foie gras, matcha)." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/VanillaMacaron.jpg/440px-VanillaMacaron.jpg", location_id: 72 )

# NationalDish.create(name:"Croissant" , description:"A croissant (UK: /ˈkrwʌsɒŋ/; US: /krwɑːˈsɒ̃/, /krəˈsɒnt/; French pronunciation: [kʁwa.sɑ̃] (About this soundlisten)) is a buttery, flaky, viennoiserie pastry of Austrian and French origin, named for its historical crescent shape. Croissants and other viennoiserie are made of a layered yeast-leavened dough. The dough is layered with butter, rolled and folded several times in succession, then rolled into a sheet, in a technique called laminating. The process results in a layered, flaky texture, similar to a puff pastry.

# Crescent-shaped breads have been made since the Renaissance, and crescent-shaped cakes possibly since antiquity. Croissants have long been a staple of Austrian and French bakeries and pâtisseries. In the late 1970s, the development of factory-made, frozen, pre-formed but unbaked dough made them into a fast food which can be freshly baked by unskilled labor. The croissanterie was explicitly a French response to American-style fast food, and as of 2008 30–40% of the croissants sold in French bakeries and patisseries were baked from frozen dough. Croissants are a common part of a continental breakfast in France." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/2018_01_Croissant_IMG_0685.JPG/500px-2018_01_Croissant_IMG_0685.JPG", location_id: 72 )

# NationalDish.create(name:"Coq Au Vin" , description:"Coq au vin (/ˌkɒk oʊ ˈvæ̃/; French: [kɔk o vɛ̃], 'rooster/cock with wine') is a French dish of chicken braised with wine, lardons, mushrooms, and optionally garlic. A red Burgundy wine is typically used, though many regions of France make variants using local varietals, such as coq au vin jaune (Jura), coq au Riesling (Alsace), coq au pourpre or coq au violet (Beaujolais nouveau), coq au Champagne, etc." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Gourmet_coq_au_vin.jpg/500px-Gourmet_coq_au_vin.jpg", location_id: 72 )

# NationalDish.create(name:"Cassoulet" , description:"Cassoulet (/ˌkæsəˈleɪ/, also UK: /ˈkæsʊleɪ/, US: /ˌkæsʊˈleɪ/, French: [kasulɛ]; from Occitan caçolet [kasuˈlet] (About this soundlisten)) is a rich, slow-cooked casserole containing meat (typically pork sausages, goose, duck and sometimes mutton), pork skin (couennes) and white beans (haricots blancs), originating in southern France. It is named after its traditional cooking vessel, the cassole, a deep, round, earthenware pot with slanting sides. The traditional homeland of cassoulet is the region once known as the province of Languedoc, especially the towns of Toulouse, Carcassonne, and Castelnaudary, which is said to be where the dish originated. An organization called The Grand Brotherhood of the Cassoulet of Castelnaudary, La Grande Confrérie du Cassoulet de Castelnaudary, has organized competitions and fairs featuring cassoulet every year since 1999." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Bowl_of_cassoulet.JPG/640px-Bowl_of_cassoulet.JPG", location_id: 72 )

# NationalDish.create(name:"Bouillabaisse" , description:"Bouillabaisse (French pronunciation: ​[bu.ja.bɛːs]; Occitan: bolhabaissa [ˌbuʎaˈβajsɔ / ˌbujaˈbajsɔ]) is a traditional Provençal fish stew originating from the port city of Marseille. The French and English form bouillabaisse comes from the Provençal Occitan word bolhabaissa, a compound that consists of the two verbs bolhir (to boil) and abaissar (to reduce heat, i.e., simmer). Bouillabaisse was originally a stew made by Marseille fishermen using the bony rockfish which they were unable to sell to restaurants or markets. There are at least three kinds of fish in a traditional bouillabaisse: typically red rascasse (Scorpaena scrofa); sea robin; and European conger. It can also include gilt-head bream, turbot, monkfish, mullet, or European hake. It usually also includes shellfish and other seafood such as sea urchins, mussels, velvet crabs, spider crab or octopus. More expensive versions may add langoustine (Norway lobster), though this was not part of the traditional dish made by Marseille fishermen. Vegetables such as leeks, onions, tomatoes, celery, and potatoes are simmered together with the broth and served with the fish. The broth is traditionally served with a rouille, a mayonnaise made of olive oil, garlic, saffron, and cayenne pepper on grilled slices of bread. What makes a bouillabaisse different from other fish soups is the selection of Provençal herbs and spices in the broth; the use of bony local Mediterranean fish; the way the fish are added one at a time, and brought to a boil; and the method of serving. In Marseille, the broth is served first in a soup plate with slices of bread and rouille, then the fish is served separately on a large platter (see image at right); or, more simply, as Julia Child suggests, the fish and broth are brought to the table separately and served together in large soup plates." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Bullabessa.jpg/500px-Bullabessa.jpg", location_id: 72 )

# NationalDish.create(name:"Poulet Nyembwe" , description:"Palm butter or palm cream, frequently known as moambe, mwambe or nyembwe, is an ingredient made from the pericarp (not the seeds) of palm nuts, the fruit of the African oil palm (Elaeis guineensis) tree. It forms an important ingredient in stews and sauces in African cuisine. Dishes made with the sauce often include peanuts, peanut sauce, or peanut butter. The meat usually used in the dishes is chicken but other meats such as beef, fish, mutton, or any wild game meat such as crocodile or venison are used as well. Moambe chicken is considered a national dish of three African countries. In Gabon, the sauce is usually called nyembwe from the Myene word for palm oil. The most important dish using nyembwe is Nyembwe chicken (French: poulet [au] Nyembwe or poulet [au] Gnemboue) which is considered a national dish of Gabon." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Moambe_-_noix_de_palme_sauce_with_chicken.jpg/220px-Moambe_-_noix_de_palme_sauce_with_chicken.jpg", location_id: 73 )

# NationalDish.create(name:"Benachin" , description:"Jollof rice /ˈdʒɒləf/ or just jollof, also called Benachin (Wolof: 'one pot'), is a one-pot rice dish popular in many West African countries. The dish consists of rice, tomatoes and tomato paste, cooking oil, onions, salt, spices (such as nutmeg, ginger, garlic cumin) and chili peppers (such as Scotch bonnet); optional ingredients can be added such as vegetables, meats, or fish. Due to the tomato paste and typically used red palm oil, the dish is mainly red in colour. The recipe differs from one region to another." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Jollof_rice.jpg/250px-Jollof_rice.jpg", location_id: 82 )

# NationalDish.create(name:"Domoda" , description:"Peanut soup or groundnut soup is a soup made from peanuts, often with various other ingredients. It is a staple of African cuisine but is also eaten in East Asia (Taiwan), the United States (mainly in Virginia) and other areas around the world. In Ghana it is often eaten with fufu. Groundnut soup is also a native soup of the Benin (Edo) people in Nigeria and it is often eaten with pounded yam. Some of the essential ingredients used in making it are Piper guineense (uziza seed) and Vernonia amygdalina (bitter leaf). It is a delicacy that is prepared from groundnut which is mashed into a paste, usually termed as groundnut pate. Groundnut soup is eaten with fufu, banku, kenkey and so on. It is a delicacy that Ghanaian and people in other African countries consume, such as in Sierra Leone. It is popularly known by Ghanaians in an Akan language called Nkatenkwan." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Ground_nut_soup.jpg/120px-Ground_nut_soup.jpg", location_id: 82 )

# NationalDish.create(name:"Khachapuri" , description:"Khachapuri (Georgian: ხაჭაპური khach’ap’uri [xɑtʃʼɑpʼuri] (About this soundlisten) from Georgian: ხაჭო Georgian pronunciation: [xach'o] 'curds' + Georgian: პური Georgian pronunciation: [p'uri] 'bread') is a traditional Georgian dish of cheese-filled bread. The bread is leavened and allowed to rise and is shaped in various ways, usually with cheese in the middle and a crust which is ripped off and used to dip in the cheese. The filling contains cheese (fresh or aged, most commonly sulguni), eggs and other ingredients. It is more popular among women and older people. As a Georgian staple food, the price of making khachapuri is used as a measure of inflation in different Georgian cities by the Khachapuri index, developed by the International School of Economics at Tbilisi State University. It is Georgia's national dish that is inscribed on the list of the Intangible cultural heritage of Georgia." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Adjaruli_Khachapuri%2C_Restaurant_Aragvi.jpg/260px-Adjaruli_Khachapuri%2C_Restaurant_Aragvi.jpg", location_id: 76 )

# NationalDish.create(name:"Khinkali" , description:"Khinkali (Georgian: ხინკალი khink’ali About this soundlisten, sometimes Romanized hinkali or xinkali) is a Georgian dumpling, which originated in the Georgian mountain regions of Pshavi, Mtiuleti and Khevsureti. Varieties of khinkali spread from there across different parts of the Caucasus." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Khinkali%2C_Restaurant_Aragvi.jpg/250px-Khinkali%2C_Restaurant_Aragvi.jpg", location_id: 76 )

# NationalDish.create(name:"Doner Kebab" , description:"Doner kebab (also döner kebab) (UK: /ˈdɒnər kɪˈbæb/, US: /ˈdoʊnər kɪˈbɑːb/; Turkish: döner or döner kebap [dœˈnæɾ ˈcebap]) is a type of kebab, made of meat cooked on a vertical rotisserie. Seasoned meat stacked in the shape of an inverted cone is turned slowly on the rotisserie, next to a vertical cooking element. The outer layer is sliced into thin shavings as it cooks. The vertical rotisserie was invented in the 19th-century Ottoman Empire, and doner kebab inspired similar dishes such as the Arab shawarma, Greek gyros, and Mexican al pastor. The sliced meat of a doner kebab may be served on a plate with various accompaniments, stuffed into a pita or other type of bread as a sandwich, or wrapped in a thin flatbread such as lavash or yufka, known as a dürüm (literally meaning roll or wrap in Turkish). Since the early 1970s, the sandwich or wrap form has become popular around the world as a fast food dish sold by kebab shops, and is often called simply a 'kebab'. The sandwich generally contains salad or vegetables, which may include tomato, lettuce, cabbage, onion with sumac, fresh or pickled cucumber, or chili, and various types of sauces." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Ca%C4%9Fkebab%C4%B15.jpg/200px-Ca%C4%9Fkebab%C4%B15.jpg", location_id: 54 )

# NationalDish.create(name:"Sauerbraten" , description:"Sauerbraten (German: 'sour roast' from sauer for 'sour' or 'pickled' and Braten for 'roast meat') is a German pot roast that can be prepared with a variety of meats—most often beef, but also from venison, lamb, mutton, pork, and traditionally, horse. Before cooking, the cut of meat is marinated for several days (recipes vary from three to ten days) in a mixture of vinegar or wine, water, herbs, spices, and seasonings. Since usually tougher cuts of meat (like rump roast, or bottom round of beef) are used for Sauerbraten, the longer marinating of the meat acts to tenderize it, resulting in a finished dish that is tender, soft, and juicy. The ingredients of the marinade vary based on regional styles and traditions throughout Germany. Sauerbraten is regarded as one of the national dishes of Germany. It is one of the best-known German dishes, and is frequently found on the menus of German-style restaurants outside Germany. Several regional variations on the dish include those from Franconia, Thuringia, Rhineland, Saarland, Silesia, and Swabia. In a few parts of Germany potato pancakes (either Kartoffelpuffer or Reibekuchen) are served with sauerbraten; many German-style restaurants in the US do this. Sauerbraten is traditionally served with traditional German side dishes, such as Rotkohl (red cabbage), Knödel or Kartoffelklöße (potato dumplings), Spätzle (an egg and flour noodle), and boiled potatoes." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Sauerbraten_with_potato_dumplings.jpg/275px-Sauerbraten_with_potato_dumplings.jpg", location_id: 54 )

# NationalDish.create(name:"Bratwurst" , description:"Bratwurst (German: [ˈbʁaːtvʊɐ̯st]) is a type of German sausage made from veal, beef, or most commonly pork. The name is derived from the Old High German Brätwurst, from brät-, finely chopped meat, and Wurst, sausage, although in modern German it is often associated with the verb braten, to pan fry or roast. Beef and veal are usual in halal and kosher bratwurst, which never include pork for religious reasons." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/German_Bratw%C3%BCrste.jpg/250px-German_Bratw%C3%BCrste.jpg", location_id: 54 )

# NationalDish.create(name:"Eisbein with Sauerkraut" , description:"Ham hock with fermented cabbage. Eisbein (literally: 'ice leg') is a German culinary dish of pickled ham hock, usually cured and slightly boiled. The word comes from the bone which was once used for blades of ice skates. In Southern parts of Germany, the common preparation is known as Schweinshaxe, and it is usually roasted. The Polish dish golonka and Swedish dish fläsklägg med rotmos are very similar, alternatively grilled on a barbecue; another similar dish is the Swiss Wädli and the Austrian Stelze. Eisbein is usually sold already cured and sometimes smoked, and then used in simple hearty dishes. Numerous regional variations exist, for example in Berlin it is served with pease pudding. In Franconia, Eisbein is commonly served with mashed potatoes or sauerkraut, in Austria with horseradish and mustard instead." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Eisbein-2.jpg/267px-Eisbein-2.jpg", location_id: 54 )

# NationalDish.create(name:"Fufu", description:"Fufu (or foofoo, fufuo, foufou) is a staple food common in many countries in West Africa such as Cote D'Ivoire, Sierra Leone, Ghana, Liberia, Togo and Nigeria. It is often made in the traditional Ghanaian and Nigerian method by mixing and pounding separate equal portions of cassava and green plantain flour thoroughly with water. It is then adjusted to either increase or decrease the viscosity of the fufu depending on personal preferences. Other flours, such as semolina, maize flour or mashed plantains may take the place of cassava flour. Fufu is often served with groundnut soup, palm nut soup, abunuabunu or light soup. The traditional method is to boil starchy food crops like cassava, yams or plantains and cocoyams and then pound them into a dough-like consistency. Fufu is eaten with the fingers, and a small ball of it can be dipped into an accompanying soup or sauce.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Foufou.jpg/220px-Foufou.jpg", location_id: 79 )

# NationalDish.create(name:"Banku" , description:"Banku is a Ghanaian dish which is cooked by a proportionate mixture of fermented corn and cassava dough in hot water into a smooth, whitish paste, served with soup, stew or a pepper sauce with fish. It is mostly preferred by the people of the Southern Regions of Ghana; the Ewe tribe of the Volta Region, the Fante and the Ga tribe but also eaten across the other regions in Ghana. Banku is found throughout Ghana, and is one of the staple foods enjoyed by all tribes in the country." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/BALLS_OF_BANKU.jpg/220px-BALLS_OF_BANKU.jpg", location_id: 79 )

# NationalDish.create(name:"Jollof Rice" , description:"Jollof rice /ˈdʒɒləf/ or just jollof, also called Benachin (Wolof: 'one pot'), is a one-pot rice dish popular in many West African countries. The dish consists of rice, tomatoes and tomato paste, cooking oil, onions, salt, spices (such as nutmeg, ginger, garlic cumin) and chili peppers (such as Scotch bonnet); optional ingredients can be added such as vegetables, meats, or fish. Due to the tomato paste and typically used red palm oil, the dish is mainly red in colour. The recipe differs from one region to another." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Jollof_rice.jpg/250px-Jollof_rice.jpg", location_id: 79 )

# NationalDish.create(name:"Profiterole" , description:"A profiterole (French: [pʁɔfitʁɔl]), cream puff (US), or chou à la crème (French: [ʃu a la kʁɛm]) is a filled French choux pastry ball with a typically sweet and moist filling of whipped cream, custard, pastry cream, or ice cream. The puffs may be decorated or left plain or garnished with chocolate sauce, caramel, or a dusting of powdered sugar. Savory profiterole are also made, filled with pureed meats, cheese, and so on. These were formerly common garnishes for soups. The various names may be associated with particular variants of filling or sauce in different places." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Cream_puff_%28cropped_and_edited%29.jpg/230px-Cream_puff_%28cropped_and_edited%29.jpg", location_id: 80 )

# NationalDish.create(name:"Gyro" , description:"A gyro or gyros (/ˈdʒaɪroʊ, ˈʒɪər-, ˈjɪər-, ˈɡɪər-/; Greek: γύρος, romanized: gyros, lit. 'turn', pronounced [ˈʝiros]) is a Greek dish made from meat cooked on a vertical rotisserie. Like shawarma and tacos al pastor, it is derived from the lamb-based doner kebab. In Greece it is now most often pork or chicken, while a mixture of beef and lamb is common in the US and other countries. It is usually served wrapped or stuffed in a flatbread such as pita, with tomato, onion, tzatziki sauce, and sometimes french fries." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Pita_giros.JPG/235px-Pita_giros.JPG", location_id: 86 )

# NationalDish.create(name:"Moussaka" , description:"Moussaka (/muːˈsɑːkə/, /ˌmuːsəˈkɑː/ or /ˌmuːsɑːˈkɑː/) is an eggplant- (aubergine) or potato-based dish, often including ground meat, in the Levant, Middle East, and Balkans, with many local and regional variations. The most famous version of the dish today appeared in the 1920s with the publishing of Nikolaos Tselementes' culinary book in Greece. Many versions have a top layer made of milk-based sauce thickened with egg (custard) or flour (béchamel sauce). In Greece, the dish is layered and typically served hot. In Turkey, thinly sliced eggplant is fried and served in a tomato-based meat sauce. Turkish mussaka may be consumed warm or at room temperature. In the Arab countries it is often eaten cold, but is also served hot in some regions." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/MussakasMeMelitsanesKePatates01.JPG/260px-MussakasMeMelitsanesKePatates01.JPG", location_id: 86 )

# NationalDish.create(name:"Souvlaki" , description:"Souvlaki (Greek: σουβλάκι [suˈvlaci]), plural souvlakia, is a popular Greek fast food consisting of small pieces of meat and sometimes vegetables grilled on a skewer. It is usually eaten straight off the skewer while still hot. It can be served with pita bread, fried potatoes, lemon, and sauces, but the souvlaki itself is eaten on its own, with the side dishes eaten subsequently. The meat usually used in Greece and Cyprus is pork, although chicken, beef, and lamb may also be used. In other countries (and for tourists), souvlaki may be made with meats such as lamb, beef, chicken, and sometimes fish. The word souvlaki is a diminutive of the Medieval Greek σούβλα souvla 'skewer', itself borrowed from Latin subula. 'Souvlaki' is the common term in Hellenic Macedonia and other regions of northern Greece, while in southern Greece around Athens it is commonly known as 'kalamaki', 'reed'." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Souvlaki_in_Athens.JPG/250px-Souvlaki_in_Athens.JPG", location_id: 86 )

# NationalDish.create(name:"Magiritsa" , description:"Magiritsa (Greek: μαγειρίτσα) is a Greek soup made from lamb offal, associated with the Easter (Pascha) tradition of the Greek Orthodox Church. Accordingly, Greek-Americans and Greek-Canadians sometimes call it 'Easter soup', 'Easter Sunday soup', or 'Easter lamb soup'. In some parts of Greece, most notably Thessaly, it is not served as soup but rather as a fricassee, where it contains only offal and large variety of vegetables, but no onions or rice, as in the soup." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Mageiritsa_soup.jpg/250px-Mageiritsa_soup.jpg", location_id: 86 )

# NationalDish.create(name:"Kokoretsi" , description:"Kokoretsi (Albanian: kukurec, Greek: κοκορέτσι, Turkish: kokoreç), Italian: torcinello, is a dish of the Balkans and Asia Minor, consisting of lamb or goat intestines wrapped around seasoned offal, including sweetbreads, hearts, lungs, or kidneys, and typically grilled; a variant consists of chopped innards cooked on a griddle. The intestines of suckling lambs are preferred." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Kokore%C3%A7.JPG/250px-Kokore%C3%A7.JPG", location_id: 86 )

# NationalDish.create(name:"Fasolada" , description:"Fasolada, fasoulada or sometimes fasolia (Arabic: فاصوليا), (Greek: φασολάδα, φασουλάδα or φασόλια) is a Greek, Levantine, and Cypriot soup of dry white beans, olive oil, and vegetables, sometimes called the 'national food of the Greeks'. Its counterpart in Turkish cuisine is called kuru fasulye. The Arabic version is called fasoulia (Arabic: فاصوليا‎) and is found in Egypt, Iraq, Israel, Jordan, Lebanon, Libya, Palestine, Saudi Arabia, Sudan, Syria, and Yemen. Fasolada is made by simmering beans with tomatoes and other vegetables such as carrots, onion, parsley, celery, and bay leaf. Lima beans are sometimes used instead of white beans. Recipes vary considerably. It is often enriched with olive oil either in the kitchen or on the table. Unlike the Italian fagiolata, the Brazilian and Portuguese feijoada, Romanian fasole and the Spanish fabada, fasolada does not contain meat." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Fasolada.JPG/250px-Fasolada.JPG", location_id: 86 )

# NationalDish.create(name:"Oil Down" , description:"Oil down is the national dish of Grenada, the 'Spice Isle' in the Windward Islands of the Lesser Antilles within the West Indies in the Caribbean Sea. Oil down is a stew of breadfruit, salted meat, chicken, dumplings, callaloo, and other vegetables, all stewed in coconut milk, herbs, and spices to make a hearty and flavorful one-pot meal. It is called oil down because the coconut milk simmers down and releases its rich flavored oil into the pot. All of the liquid is cooked down (dried out), hence the name oil down." , image:"https://www.196flavors.com/wp-content/uploads/2014/03/Grenade-Oil-Down-4.jpg", location_id: 75 )

# NationalDish.create(name:"Fiambre" , description:"Fiambre is a traditional Guatemalan salad that is prepared and eaten yearly to celebrate the Day of the Dead (Día de los Muertos) and the All Saints Day (Día de Todos los Santos). It is served chilled and may be made with dozens of ingredients. Fiambre started out from the tradition in Guatemala of taking dead family members their favorite dishes to the cemeteries for the Day of the Dead. As all different families brought food to the celebrations, they became mixed, eventually mixing them together to this all-encompassing salad. Ingredients usually include numerous sausages and cold cuts, pickled baby corn and onion, beets, pacaya flower, different cheeses, olives, chicken, and sometimes even brussels sprouts." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Fiambre.JPG/250px-Fiambre.JPG", location_id: 88 )

# NationalDish.create(name:"Pepian" , description:"This is the traditional Guatemala Meat Spicy Stew, which is seen by most Guatemalans as the national dish. It is basically meat and vegetables in a thick and rich sauce, with a combination of roasted spices like pepitoria and sesame seeds and many others very well blended together. The taste of the sauce is very distinct because of the roasting ingredients prior blending and pureed together which makes the trick to its uniqueness, it is usually served with rice and corn tortillas. If you are traveling to Antigua Guatemala, this is a must try. But if you wish to try to make it yourself at home, we are sharing the ingredients list and recipe for this famous and traditional Guatemalan dish." , image:"http://www.guatemala4ever.com/blog/wp-content/uploads/2013/07/pollo-en-pepian.jpg", location_id: 88 )

# NationalDish.create(name:"Poulet Yassa" , description:"Yassa is a spicy dish prepared with onions and either marinated poultry or marinated fish. Originally from Senegal, yassa has become popular throughout West Africa. Chicken yassa (known as yassa au poulet), prepared with onions and lemon, is a specialty from the Casamance region in the south of Senegal." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Poulet_Yassa_Chicken_rice_with_onion_sauce.jpg/220px-Poulet_Yassa_Chicken_rice_with_onion_sauce.jpg", location_id: 83 )

# NationalDish.create(name:"Jollof Rice" , description:"Jollof rice /ˈdʒɒləf/ or just jollof, also called Benachin (Wolof: 'one pot'), is a one-pot rice dish popular in many West African countries. The dish consists of rice, tomatoes and tomato paste, cooking oil, onions, salt, spices (such as nutmeg, ginger, garlic cumin) and chili peppers (such as Scotch bonnet); optional ingredients can be added such as vegetables, meats, or fish. Due to the tomato paste and typically used red palm oil, the dish is mainly red in colour. The recipe differs from one region to another." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Jollof_rice.jpg/250px-Jollof_rice.jpg", location_id: 90 )

# NationalDish.create(name:"Guyanaese Pepperpot" , description:"Pepperpot is an Amerindian-derived dish popular in Guyana. It is traditionally served at Christmas and other special events. Along with chicken curry, and cook up rice, pepperpot is one of Guyana's national dishes. Pepperpot is a stewed meat dish, strongly flavoured with cinnamon, cassareep and other basic ingredients, including Caribbean hot peppers. Beef, pork, and mutton are the most popular meats used, though some have been known to use chicken. Pepperpot is popularly served with a dense Guyanese-style homemade or home-style bread, rice, or roti. This dish is usually reserved for special occasions because it needs to cook for several hours, and mostly eaten on Christmas Day or during the Christmas holiday season, and sometimes on Boxing Day. Like the original Amerindian version it is usually made in a large pot and can be reheated and eaten over several days because the cassareep starts preserving the meat. Versions of the dish are also served in several other countries in the Caribbean, including Trinidad and Tobago, Grenada and St. Vincent." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Pepperpot_%2816135006279%29.jpg/220px-Pepperpot_%2816135006279%29.jpg", location_id: 91 )

# NationalDish.create(name:"Cook-Up Rice" , description:"It is a rice dish typically made on Sundays or for a large group of people. It is a hearty and rustic. The texture of the rice is wet and very moist. It is usually cooked with beef, pork, or chicken in it, but fish can also be used. One phrase to sum up this dish is 'Throw anything  you want in it.'" , image:"http://2.bp.blogspot.com/_6EbFpuHfxk0/TVDH7djS8OI/AAAAAAAAHUQ/M-DJsLQdNRY/s640/IMG_2930.JPG", location_id: 91 )

# NationalDish.create(name:"Roti and Curry" , description:"Roti (also known as chapati) is a round flatbread native to the Indian subcontinent made from stoneground wholemeal flour, traditionally known as atta, and water that is combined into a dough. Roti is consumed in India, Pakistan, Nepal, Sri Lanka, Indonesia, Singapore, Maldives, Thailand, Malaysia and Bangladesh. It is also consumed in parts of Africa, Fiji, Mauritius and the Caribbean, particularly in Jamaica, Trinidad and Tobago, St Lucia, Guyana and Suriname. Its defining characteristic is that it is unleavened. Naan from the Indian subcontinent, by contrast, is a yeast-leavened bread, as is kulcha. Curry (plural curries) is a variety of dishes originating in the Indian subcontinent that use a complex combination of spices or herbs, usually including ground turmeric, cumin, coriander, ginger, and fresh or dried chilies. Curry is generally prepared in a sauce. Curry dishes prepared in the southern states of India, where the word also originated, may be spiced with leaves from the curry treeChicken, goat, duck, shrimp, beef, 'aloo' (potato), channa, fish (different varieties) and crab curry are very popular among Guyana, predominantly within Indo-Guyanese people." , image:"https://www.phoebespurefood.com/wp-content/uploads/2014/05/curry-roti-1.1.jpg", location_id: 91 )

# NationalDish.create(name:"Red Beans and Rice" , description:"Red beans and rice is an emblematic dish of Louisiana Creole cuisine (not originally of Cajun cuisine) traditionally made on Mondays with red beans, vegetables (bell pepper, onion, and celery), spices (thyme, cayenne pepper, and bay leaf) and pork bones as left over from Sunday dinner, cooked together slowly in a pot and served over rice. Meats such as ham, sausage (most commonly andouille and Chaurice), and tasso ham are also frequently used in the dish. The dish is customary – ham was traditionally a Sunday meal and Monday was washday. A pot of beans could sit on the stove and simmer while the women were busy scrubbing clothes. The dish is now fairly common throughout the Southeast. Similar dishes are common in Latin American cuisine, including moros y cristianos and gallo pinto. Red beans and rice is one of the few New Orleans style dishes to be commonly served both in people's homes and in restaurants. Many neighborhood restaurants continue to offer it as a Monday lunch or dinner special, usually with a side order of either smoked sausage or a pork chop. While Monday washdays are largely a thing of the past, red beans remain a staple for large gatherings such as Super Bowl and Mardi Gras parties. Indeed, red beans and rice is very much part of the New Orleans identity. New Orleanian Louis Armstrong's favorite food was red beans and rice – the musician would sign letters 'Red Beans and Ricely Yours, Louis Armstrong'. And in 1965, the R&B instrumental group Booker T. & the M.G.'s wrote and recorded a song titled 'Red Beans and Rice' that was originally a B-side but later became popular in its own right. The vegetarian dish Rajma chawal is very similar (which translates literally to red beans and rice), popular in North India. Red beans and rice is also a dietary staple in Central America, where it is known as 'arroz con habichuelas'. The dish is popular in Cuban, Puerto Rican, Dominican, Haitian and Jamaican cuisine as well." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Red_Beans_and_Rice.jpg/250px-Red_Beans_and_Rice.jpg", location_id: 97 )

# NationalDish.create(name:"Diri Ak Djon Djon" , description:"Diri ak djon djon (Haitian Creole for rice with mushrooms) is a native dish of Haiti. It is essentially a meal consisting of rice (diri, French: du riz) with (ak, French: avec) edible black mushrooms (djon djon). The meal is more common in the northern region of the country and therefore can be considered a regional delicacy. When the mushrooms are boiled, they release a grayish-black coloring giving the rice its gray color and the dish's distinctive flavor. The dish is often served with some sort of meat whether it be fish, chicken or shrimp (usually mixed in the rice)." , image:"http://haitiancooking.com/wp-content/uploads/2014/03/diri_ak_jon_jon.jpg", location_id: 97 )

# NationalDish.create(name:"Baleada" , description:"Baleada (Spanish pronunciation: [baleˈaða]) is a traditional Honduran dish composed of a flour tortilla, often quite thick, folded in half and filled with mashed fried red beans (a variety of beans native from Central and South America). It originates from the north coast of the country; Aside from beans, there is a whole variety of ingredients that can be added to the Baleada. The most common types of baleadas are the baleadas sencillas (simple baleada) which has crumbled cheese and mantequilla. Other common variety of baleada is the baleada mixta (mixed baleada) which has the same as the baleada simple but with an addition of scrambled eggs. Many other people add sausage, plantain, hot sauce, avocado, chicken, pork and chismol which is diced tomato, onion and bell pepper. The big Honduran towns often have more than one restaurant that sells baleadas." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Baleada.jpg/250px-Baleada.jpg", location_id: 95 )

# NationalDish.create(name:"Carne Asada" , description:"Carne asada is a dish of grilled and sliced beef, usually arrachera, sirloin steak, tenderloin steak, or rib steak. It is usually cooked with some searing to impart a charred flavor. Carne asada can be served as a main dish or as an ingredient in other dishes. The term carne asada translates literally to 'grilled meat'; the English 'roast beef' is so named in Spanish. The term carne asada is used in Latin America, and refers to the style of grilled meat in those countries. In South America, the term used for grilled meat is asado, and it has a different style and preparation." , image:"https://downshiftology.com/wp-content/uploads/2018/04/carne-asada-recipe.jpg", location_id: 95 )

# NationalDish.create(name:"Sopa De Caracol" , description:"Conch soup and conch chowder are soup dishes made with conch that are traditional in various Caribbean island cuisines as well as the cuisine of Belize. Conch chowder is also a traditional food of the Florida Keys." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Conch_Chowder_%28126603211%29.jpg/220px-Conch_Chowder_%28126603211%29.jpg", location_id: 95 )

# NationalDish.create(name:"Goulash" , description:"Goulash (Hungarian: gulyás [ˈɡujaːʃ]) is a stew (or soup) of meat and vegetables usually seasoned with paprika and other spices. Originating in medieval Hungary, goulash is a popular meal predominantly eaten in Central Europe but also in other parts of Europe. It is one of the national dishes of Hungary and a symbol of the country. Its origin traces back to the 9th century to stews eaten by Hungarian shepherds.Back then, the cooked and flavored meat was dried with the help of the sun and packed into bags produced from sheep's stomachs, needing only water to make it into a meal. Earlier versions of goulash did not include paprika, as it was not introduced to the Old World until the 16th century." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Gulyas080.jpg/220px-Gulyas080.jpg", location_id: 98 )

# NationalDish.create(name:"Chicken Paprikash" , description:"Chicken paprikash (Hungarian: paprikás csirke or csirkepaprikás) or paprika chicken is a popular dish of Hungarian origin and one of the most famous variations on the paprikas preparations common to Hungarian tables. The name is derived from the ample use of paprika, a spice commonly used in Hungarian cuisine. The meat is typically simmered for an extended period in a sauce that begins with a paprika-infused roux." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Paprikahuhn.jpg/250px-Paprikahuhn.jpg", location_id: 98 )

# NationalDish.create(name:"Lecsó" , description:"Lecsó (English: Lecho, /ˈlɛtʃoʊ/ LETCH-oh; Hungarian: lecsó [ˈlɛt͡ʃoː]; Czech and Slovak: lečo; German: Letscho; Polish: leczo; Russian: лечо) is a Hungarian thick vegetable ragout or stew which features explicitly yellow pointed peppers, tomato, onion, salt, and ground sweet and/or hot paprika as a base recipe. The onions and peppers are usually sauteed in lard, bacon fat or sunflower oil. Garlic can also be a traditional ingredient. It is also considered to be traditional food in Czech, Slovak and Croatian cuisine and is also very common in Poland, Austria, and Israel. Most Hungarian recipes recommend the mildest variant of Hungarian wax pepper, which are in season August–October which is also when field tomatoes are at their best. Other recipes suggest using both bell pepper and banana pepper as alternatives." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Leco_e-citizen.jpg/250px-Leco_e-citizen.jpg", location_id: 98 )

# NationalDish.create(name:"Hákarl" , description:"Hákarl (Icelandic pronunciation: ​[ˈhauːkʰartl̥], full name: kæstur hákarl; referred to as fermented shark or rotten shark in English) is a national dish of Iceland consisting of a Greenland shark or other sleeper shark which has been cured with a particular fermentation process and hung to dry for four to five months. Fermented shark has a strong ammonia-rich smell and fishy taste. Fermented shark is readily available in Icelandic stores and may be eaten year-round, but is most often served as part of a þorramatur, a selection of traditional Icelandic food served at the midwinter festival þorrablót." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Hakarl_near_Bjarnah%C3%B6fn_in_Iceland.JPG/250px-Hakarl_near_Bjarnah%C3%B6fn_in_Iceland.JPG", location_id: 107 )

# NationalDish.create(name:"Þorramatur" , description:"Þorramatur (transliterated as thorramatur; food of Þorri) is a selection of traditional Icelandic food, consisting mainly of meat and fish products cured in a traditional manner, cut into slices or pieces and served with rúgbrauð (dense and dark rye bread), butter and brennivín (an Icelandic akvavit). Þorramatur is consumed during the Nordic month of Þorri (Thorri), in January and February, particularly at the mid-winter feast of Þorrablót (Thorrablot) as a tribute to old culture. Being thus connected with the tradition of Þorrablót festivals, Þorramatur is most often served as a buffet." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Thorramatur.jpg/220px-Thorramatur.jpg", location_id: 107 )

# NationalDish.create(name:"Pylsur" , description:"While most hot dogs in the world are made out of pork or beef, these hot dogs  are made from lamb meat. The sauces and sides are served on a warm, steamed bun topped with raw white onions and crispy fried onions, ketchup, sweet brown mustard called pylsusinnep, and remoulade, a sauce made with mayo, capers, mustard, and herbs." , image:"https://explorers.kitchen/wp-content/uploads/2016/09/Icelandic-Pylsur-with-remoulade-pylsussinep-crispy-and-raw-onions-1-of-15.jpg", location_id: 107 )

# NationalDish.create(name:"No National Dish" , description:"India does not have a national dish but popular dishes include Khichdi, Samosa, Tandoori Chicken, Dal makhani and Rogan Josh. " , image:"https://assets.simpleviewinc.com/simpleview/image/upload/c_fill,h_1100,q_50,w_2800/v1/clients/irving/shutterstock_754732342_273d2a9f-367e-4efb-a0ff-d3c73d163597.jpg", location_id: 103 )

# NationalDish.create(name:"Soto" , description:"Soto (also known as sroto, tauto, or coto) is a traditional Indonesian soup mainly composed of broth, meat, and vegetables. Many traditional soups are called soto, whereas foreign and Western influenced soups are called sop. Soto is sometimes considered Indonesia's national dish, as it is served from Sumatra to Papua, in a wide range of variations. Soto is omnipresent in Indonesia, available in many warungs and open-air eateries on many street corners, to fine dining restaurants and luxurious hotels. Soto, especially soto ayam (chicken soto), is an Indonesian equivalent of chicken soup. Because it is always served warm with a tender texture, it is considered an Indonesian comfort food. Because of the proximity and significant numbers of Indonesian migrants working and settling in neighbouring countries, soto can also be found in Singapore and Malaysia, and has become a part of their cuisine. Introduced to Suriname by Javanese migrants, it is part of the national cuisine of that country as well, where it is spelled saoto." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Soto_Ayam_Savoy_Homann_Hotel.JPG/265px-Soto_Ayam_Savoy_Homann_Hotel.JPG", location_id: 99 )

# NationalDish.create(name:"Rendang" , description:"Rendang is an Indonesian spicy meat dish originating from the Minangkabau people of Indonesia. It has spread across Indonesia and to the cuisines of neighbouring Southeast Asian countries. One of the characteristic foods of Minangkabau culture, it is served at ceremonial occasions and to honour guests. Rendang is also traditionally served among the Malay community and the Maranao people. Rendang is traditionally prepared by the Minangkabau community during festive occasions such as traditional ceremonies, wedding feasts and Hari Raya (Eid al-Fitr). lthough culinary experts often describe rendang as a curry, rendang is usually not considered as such in Indonesia since it is richer and contains less liquid than is normal for Indonesian curries. In 2011 an online poll of 35,000 people by CNN International chose rendang as the number one dish of their 'World's 50 Most Delicious Foods (Readers' Pick)' list. In 2018, rendang is officially recognised as one of 5 national dishes of Indonesia." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Rendang_daging_sapi_asli_Padang.JPG/250px-Rendang_daging_sapi_asli_Padang.JPG", location_id: 99 )

# NationalDish.create(name:"Satay" , description:"Satay (/ˈsæteɪ/ SA-tay, /ˈsɑːteɪ/ SAH-tay), or sate in Indonesian spelling, is a Southeast Asian dish of seasoned, skewered and grilled meat, served with a sauce. It is a dish from Indonesia; and popular in Malaysia, Singapore, and Thailand. Satay may consist of diced or sliced chicken, goat, mutton, beef, pork, fish, other meats, or tofu; the more authentic version uses skewers from the midrib of the coconut palm frond, although bamboo skewers are often used. These are grilled or barbecued over a wood or charcoal fire, then served with various spicy seasonings. Satay can be served in various sauces, however most often they are served in a combination of soy and peanut sauce. Hence, peanut sauce is often called satay sauce. Satay originated on the Indonesian island of Java. It is available almost anywhere in Indonesia, where it has become a national dish. It is also popular in many other Southeast Asian countries including Thailand, Malaysia, Singapore and Vietnam. A key feature of Thai satay is the inclusion of pork as a meat option, and Thai-style peanut sauce. Meanwhile, Indonesian satay is often served with kecap manis - a sweet soy sauce, and is often accompanied with lontong, a type of rice cake. In Sri Lanka, it has become a staple of the local diet as a result of the influences from the local Malay community.  Satay is a popular delicacy in Indonesia. The country's diversity (see Indonesian cuisine) has produced a wide variety of satays. In Indonesia, satay is a popular street food, it can be obtained from a travelling satay vendor, from a street-side tent-restaurant, in an upper-class restaurant, or at traditional celebration feasts. Close analogues are yakitori from Japan, kǎoròu chuàn from China, shish kebab from Turkey and the Middle East, shashlik from the Caucasus, and sosatie from South Africa. It is listed at number 14 on World's 50 most delicious foods readers' poll compiled by CNN Go in 2011." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Sate_Ponorogo.jpg/250px-Sate_Ponorogo.jpg", location_id: 99 )

# NationalDish.create(name:"Nasi Goreng" , description:"Nasi goreng (English pronunciation: /ˌnɑːsi ɡɒˈrɛŋ/), literally meaning 'fried rice' in both the Malay and Indonesian languages, is an Indonesian rice dish with pieces of meat and vegetables added. It can refer simply to fried pre-cooked rice, a meal including stir fried rice in a small amount of cooking oil or margarine, typically spiced with kecap manis (sweet soy sauce), shallot, garlic, ground shrimp paste, tamarind and chilli and accompanied by other ingredients, particularly egg, chicken and prawns. There is also another kind of nasi goreng which is made with ikan asin (salted dried fish) which is also popular across Indonesia. Nasi goreng is sometimes described as Indonesian stir-fried rice, although it is also popular in Southeast Asia. Beyond the Malay Archipelago, it has gained popularity through Indonesian influence in Sri Lanka and via Indonesian immigrant communities in Suriname and the Netherlands. It is distinguished from other Asian fried rice recipes by its aromatic, earthy and smoky flavor, owed to generous amount of caramelized sweet soy sauce and powdered shrimp paste, and the taste is stronger and spicier compared to Chinese fried rice. Nasi goreng has been called the national dish of Indonesia, though there are many other contenders. It can be enjoyed in simple versions from a tin plate at a roadside food stall, eaten on porcelain in restaurants, or collected from the buffet tables of Jakarta dinner parties. In 2011 an online poll by 35,000 people held by CNN International chose Indonesian nasi goreng as number two on their 'World's 50 Most Delicious Foods' list after rendang." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Nasi_goreng_indonesia.jpg/250px-Nasi_goreng_indonesia.jpg", location_id: 99 )

# NationalDish.create(name:"Gado Gado" , description:"Gado-gado (Indonesian or Betawi), also known as Lotek (Sundanese and Javanese), is an Indonesian salad of slightly boiled, blanched or steamed vegetables and hard-boiled eggs, boiled potato, fried tofu and tempeh, and lontong (rice wrapped in a banana leaf), served with a peanut sauce dressing. In 2018, gado-gado is promoted as one of 5 national dishes of Indonesia." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Gado-gado_in_Jakarta.JPG/250px-Gado-gado_in_Jakarta.JPG", location_id: 99 )

# NationalDish.create(name:"Tumpeng" , description:"Tumpeng is a Indonesian cone-shaped rice dish with side dishes of vegetables and meat originating from Javanese cuisine of Indonesia. Traditionally featured in the slamatan ceremony, the rice is made by using a cone-shaped woven bamboo container. The rice itself may be plain steamed rice, uduk rice (cooked with coconut milk), or yellow rice (uduk rice colored with kunyit (turmeric)). The rice cone is erected in the tampah (rounded woven bamboo container), covered with a banana leaf, and surrounded by assorted Indonesian dishes. In 2013, the Indonesian Ministry of Tourism and Creative Economy promoted tumpeng as one of 30 Indonesian culinary icons and gave it the status of official national dish of Indonesia in 2014, describing it as 'the dish that binds the diversity of Indonesian various culinary traditions.'" , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Tumpeng-Jawa.jpg/275px-Tumpeng-Jawa.jpg", location_id: 99 )

# NationalDish.create(name:"Abgoosht" , description:"Abgoosht (Persian: آبگوشت‎ Âbgušt, pronounced [ɒːbˈɡuːʃt]; literally 'meat juice') is an Iranian stew. It is also called Dizi (Persian: دیزی‎, pronounced [diːˈziː]), which refers to the traditional stoneware crocks it is served in. Some describe it as a 'hearty mutton Persian soup thickened with chickpeas.'" , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Dizi.jpg/220px-Dizi.jpg", location_id: 106 )

# NationalDish.create(name:"Fesenjān" , description:"Khoresh-e Fesenjān (Persian: خورش فسنجان‎), or simply Fesenjān (Persian: فسنجان‎) (also spelled as Fesenjoon), is an Iranian stew (a khoresh) from Gilan province, Iran. It is flavored with pomegranate paste and ground walnuts (see bazha). It is traditionally made with poultry (duck or chicken). Fesenjān can also be made using balls of ground meat or chunks of lamb, but fish or no meat at all are very unusual. Depending on the recipe, it can have a sweet or sour taste. Fesenjān is served with Iranian white or yellow rice (polo or chelo). It is also eaten in the Azerbaijan Republic." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Khoresht-e_fesenjan.jpg/250px-Khoresht-e_fesenjan.jpg", location_id: 106 )

# NationalDish.create(name:"Chelow Kabab" , description:"Chelow kebab (Persian: چلوکباب‎ čelow-kabāb [tʃelowkæˈbɒːb]) is an Iranian dish consisting of cooked rice (čelow) and one of the many varieties of Iranian kebab.It is considered the 'national dish' of Iran, and was probably created by the time of the Qajar dynasty. Chelow kebab is served with accompaniments such as butter, sumac powder, basil, onions, and grilled tomatoes. The traditional beverage accompanied with chelow kebab is doogh, an Iranian yogurt-based drink, sometimes made of carbonated water. In the old bazaar tradition, the rice and accompaniments are served first, immediately followed by the kebabs, which are threaded on skewers, as well as a piece of flat bread (typically lavash). A skewer is placed directly on the rice and while holding the kebab down on the rice with the bread, the skewer is quickly pulled out." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Kebab_Bakhtyari.jpg/220px-Kebab_Bakhtyari.jpg", location_id: 106 )

# NationalDish.create(name:"Ghormeh Sabzi" , description:"Ghormeh Sabzi (Persian: قورمه‌ سبزی‎) (also spelled as Qormeh Sabzi) is an Iranian herb stew. The main ingredients are a mixture of sauteed herbs, consisting mainly of parsley, leeks or green onions, and coriander, seasoned with the key spice of dried fenugreek leaves. The herb mixture has many variations; any dark bitter green can be used, such as kale, mustard greens, turnip greens, etc., although none are part of the original recipe. This mixture is cooked with kidney beans or yellow split-peas, yellow or red onions, black lime (pierced dried limu-Omani Persian lime), and turmeric-seasoned lamb or beef. The dish is then served with chelow (Persian parboiled and steamed rice) or over tahdig. Vegetarian ghormeh sabzi may substitute whole walnut pieces for the meat, or mushrooms for the meat." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Ghormeh_Sabzi.JPG/250px-Ghormeh_Sabzi.JPG", location_id: 106 )

# NationalDish.create(name:"Masgouf" , description:"Masgouf (Arabic: المسكوف), is a Mesopotamian dish consisting of seasoned, grilled carp; it is often considered the national dish of Iraq. The fish is caught alive and weighed. It is clubbed to kill it, partially scaled and gutted. The fish is then split lengthwise down the back, washed and spread out into a single flat piece. This opens the fish into the shape of a large, symmetrical circle, while leaving the belly intact. From there, the cook bastes the inside of the fish with a marinade of olive oil, rock salt, tamarind, and ground turmeric. Crushed tomatoes and coriander are sometimes added to the marinade. The fish is then either impaled on two sharp iron spikes, or placed in a big iron, clamshell grill with a handle and a locking snare, designed specifically for this dish. The fish, either clamped in the grill or mounted on the spikes, is then placed next to the fire on the 'fire altar', a feature shared by all masgûf restaurants. This 'altar' typically consists of a big open-air area centered by a raised, podium-like sandbox that is either round, octagonal or sometimes rectangular, in the middle of which there is a large fire of apricot tree logs. Cooking typically takes between one and three hours, until most of the fish's fat is burned off, during which time the guests will pick at their mezes.When the fish is well cooked, it is laid on the coals, skin side down. This crisps the skin and helps release the flesh from it for serving ease. The whole fish is typically laid on a large tray garnished with lime (or lemon), slices of onion and Iraqi pickles. Sometimes, in Baghdad, a little mango chutney is also spread on the inside. The tray is then covered by a large crispy flatbread straight of a clay oven to keep its contents hot until served to the client." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Masgouf.jpg/300px-Masgouf.jpg", location_id: 105 )

# NationalDish.create(name:"Dolma", description:"Dolma (Ottoman Turkish: طوٓلمه‎) is a family of stuffed dishes common in Mediterranean cuisine and surrounding regions including the Balkans, the South Caucasus, Central Asia, and the Middle East. Common vegetables to stuff include tomato, pepper, onion, zucchini, eggplant, garlic, Cabbage rolls, and dishes of stuffed vine leaves are also very popular, and these are sometimes also called sarma. Meat dolmas are generally served warm, often with tahini or avgolemono sauce. Dolmas prepared with olive oil and stuffed with rice are generally served cold with a garlic-yogurt sauce. Stuffed vegetables are also common in Greek cuisine, called gemista, as well as in Italian cuisine, where they are named ripieni ('stuffed'). In 2017, dolma making in Azerbaijan was included into the UNESCO Intangible Cultural Heritage Lists. The tradition is present throughout the Republic of Azerbaijan, and is perceived as a central culinary practice in all of its regions." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Dolma_Azerbaijani.JPG/250px-Dolma_Azerbaijani.JPG", location_id: 105 )

# NationalDish.create(name:"Quzi" , description:"Quzi also called qoozi or ghozi (Arabic: أوزي‎) is a rice based dish popular in the Arab states of the Persian Gulf. It is served with very slow cooked lamb, roasted nuts, raisins and served over rice. It is considered one of Iraq's national dishes and introduced into Turkey by Arab immigrants. In Iraqi cuisine, it is usually prepared by stuffing the whole lamb with rice, vegetables, spices and nuts and slow cooking it over a closed or submerged oven. In some places in the Middle East it is buried in a pit containing burning coal or charcoal to get the smoky flavor. There are many variations to this technique such as in Saudi Arabia and Yemen it is called madfoon where its wrapped in aluminium foil and kept on open heat source; in Oman and UAE it is called shuwaa where its kept wrapped in date palm tree leaves before keeping in a submerged oven. In Jordan, and Syria it is known as zarb where the meat is portioned into smaller pieces and kept along with vegetables and bread dough so that the flavors are enhanced. Another variant is called haneeth where it is cooked inside a hot tabun and it can be found in most Middle Eastern countries as well as the Horn of Africa and North Africa." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Iraqi_Qoozi_.jpg/220px-Iraqi_Qoozi_.jpg", location_id: 105 )

# NationalDish.create(name:"Kleicha" , description:"Kleicha (Arabic: كليجة‎) may be considered the national cookie of both Iraq and Saudi Arabia. Kleicha come in several traditional shapes and fillings. The most popular are the ones filled with dates (kleichat tamur). There are also sweet discs (khfefiyyat), as well as half moons filled with nuts, sugar and/or desiccated coconut (kleichat joz). They are usually flavored with cardamom and sometimes rose water, and glazed with egg wash, which may sometimes be scented and coloured with saffron. Assyrians bake Kilecheh on Eeda Gura, Easter, and Eeda Sura, Christmas, in which they are usually stuffed with dates and served with tea. A Turkish version is called Klija Kurabiyesi and is a sweet disc or filled with almonds, hazelnuts and sugar. It is also flavored with rose water and orange blossom water and glazed with egg wash." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Kleicha.jpg/250px-Kleicha.jpg", location_id: 105 )

# NationalDish.create(name:"Irish Stew" , description:"Irish stew (Irish: stobhach/Stobhach Gaelach) is any variety of meat and root vegetable stew native to Ireland. As in all traditional folk dishes, the exact recipe is not consistent from time to time, or place to place. Common ingredients include lamb, or mutton (mutton is used as it comes from less tender sheep over a year old, is fattier, and has a stronger flavour, and was generally more common in less-affluent times), as well as potatoes, onions, and parsley. It may sometimes also include carrots. Irish stew is also made with kid goat." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Irish-stew.jpg/250px-Irish-stew.jpg", location_id: 100 )

# NationalDish.create(name:"Breakfast Roll" , description:"The breakfast roll (Irish: rollóg bhricfeasta) is a bread roll filled with elements of a traditional fried breakfast. It is served at a wide variety of convenience shops, newsagents, supermarkets, petrol stations, and casual eateries throughout Ireland." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Breakfast_Roll.jpg/220px-Breakfast_Roll.jpg", location_id: 100 )

# NationalDish.create(name:"Colcannon" , description:"Colcannon (Irish: cál ceannann, meaning 'white-headed cabbage') is a traditional Irish dish of mashed potatoes with kale or cabbage, with milk (or cream), butter (or vegetable oil), salt and pepper added. It can contain other ingredients such as scallions (spring onions), leeks, Laverbread, onions and chives. There are many regional variations of this dish. It is often eaten with boiled ham or Irish bacon. At one time it was a cheap, year-round staple food, though nowadays it is usually eaten in autumn/winter, when kale comes into season. An Irish Halloween tradition is to serve colcannon with a ring and a thimble hidden in the dish. Prizes of small coins such as threepenny or sixpenny bits were also concealed inside the dish." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Colcannon.JPG/250px-Colcannon.JPG", location_id: 100 )

# NationalDish.create(name:"Meorav Yerushalmi" , description:"Jerusalem mixed grill (Hebrew: מעורב ירושלמי‎) (me'orav Yerushalmi) is a grilled meat dish considered a specialty of Jerusalem. It consists of chicken hearts, spleens and liver mixed with bits of lamb cooked on a flat grill, seasoned with onion, garlic, black pepper, cumin, turmeric, olive oil and coriander. The dish is said to have been invented at the Mahane Yehuda Market, with various restaurants claiming to be the originators. In 2009, Israeli chefs created a giant portion that weighed in at 440 pounds (200 kilos), winning a Guinness world record for the largest Jerusalem mixed grill. They also prepared the world's smallest dish: Jerusalem mixed grill in a pita the size of a coin. According to the late Haaretz food critic Daniel Rogov, world-renowned chefs have pleaded with Sima, one of the steakhouses, for the recipe, which includes a secret ingredient described as 'Georgian pepper.'" , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Maoravyerushalmi.jpeg/220px-Maoravyerushalmi.jpeg", location_id: 101 )

# NationalDish.create(name:"Pasta" , description:"Pasta (Italian pronunciation: [ˈpasta]) is a type of food typically made from an unleavened dough of durum wheat flour (semolina) mixed with water or eggs, and formed into sheets or various shapes, then cooked by boiling or baking. Rice flour, or legumes such as beans or lentils, are sometimes used in place of wheat flour to yield a different taste and texture, or as a gluten-free alternative. Pasta is a staple food of Italian cuisine. Pastas are divided into two broad categories: dried (pasta secca) and fresh (pasta fresca). Most dried pasta is produced commercially via an extrusion process, although it can be produced at home. Fresh pasta is traditionally produced by hand, sometimes with the aid of simple machines. Fresh pastas available in grocery stores are produced commercially by large-scale machines. Both dried and fresh pastas come in a number of shapes and varieties, with 310 specific forms known by over 1300 documented names. In Italy, the names of specific pasta shapes or types often vary by locale. For example, the pasta form cavatelli is known by 28 different names depending upon the town and region. Common forms of pasta include long and short shapes, tubes, flat shapes or sheets, miniature shapes for soup, those meant to be filled or stuffed, and specialty or decorative shapes. As a category in Italian cuisine, both fresh and dried pastas are classically used in one of three kinds of prepared dishes: as pasta asciutta (or pastasciutta), cooked pasta is plated and served with a complementary side sauce or condiment; a second classification of pasta dishes is pasta in brodo, in which the pasta is part of a soup-type dish. A third category is pasta al forno, in which the pasta is incorporated into a dish that is subsequently baked in the oven. Pasta dishes are generally simple, but individual dishes vary in preparation. Some pasta dishes are served as a small first course or for light lunches, such as pasta salads. Other dishes may be portioned larger and used for dinner. Pasta sauces similarly may vary in taste, color and texture." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/%28Pasta%29_by_David_Adam_Kess_%28pic.2%29.jpg/251px-%28Pasta%29_by_David_Adam_Kess_%28pic.2%29.jpg", location_id: 108 )

# NationalDish.create(name:"Polenta" , description:"Polenta (/pəˈlɛntə, poʊˈ-/, Italian: [poˈlɛnta]) is a dish of boiled cornmeal that was historically made from other grains. It may be served as a hot porridge, or it may be allowed to cool and solidify into a loaf that can be baked, fried, or grilled." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Polenta.jpg/220px-Polenta.jpg", location_id: 108 )

# NationalDish.create(name:"Pizza" , description:"Pizza (Italian: [ˈpittsa], Neapolitan: [ˈpittsə]) is a savory dish of Italian origin, consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and various other ingredients (anchovies, olives, meat, etc.) baked at a high temperature, traditionally in a wood-fired oven. In formal settings, like a restaurant, pizza is eaten with knife and fork, but in casual settings it is cut into wedges to be eaten while held in the hand. Small pizzas are sometimes called pizzettas. The term pizza was first recorded in the 10th century in a Latin manuscript from the Southern Italian town of Gaeta in Lazio, on the border with Campania. Modern pizza was invented in Naples, and the dish and its variants have since become popular in many countries. It has become one of the most popular foods in the world and a common fast food item in Europe and North America, available at pizzerias (restaurants specializing in pizza), restaurants offering Mediterranean cuisine, and via pizza delivery. Many companies sell ready-baked frozen pizzas to be reheated in an ordinary home oven. The Associazione Verace Pizza Napoletana (lit. True Neapolitan Pizza Association) is a non-profit organization founded in 1984 with headquarters in Naples that aims to promote traditional Neapolitan pizza. In 2009, upon Italy's request, Neapolitan pizza was registered with the European Union as a Traditional Speciality Guaranteed dish, and in 2017 the art of its making was included on UNESCO's list of intangible cultural heritage." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Eq_it-na_pizza-margherita_sep2005_sml.jpg/220px-Eq_it-na_pizza-margherita_sep2005_sml.jpg", location_id: 108 )

# NationalDish.create(name:"Risotto" , description:"Risotto (/rɪˈzɒtoʊ/, Italian: [riˈzɔtto], from riso meaning 'rice') is a northern Italian rice dish cooked with broth until it reaches a creamy consistency. The broth can be derived from meat, fish, or vegetables. Many types of risotto contain butter, onion, white wine, and parmesan cheese. It is one of the most common ways of cooking rice in Italy. Saffron was originally used for flavour and its attractive yellow colour. Risotto in Italy is normally a first course served before the main course, but risotto alla milanese is often served with ossobuco alla milanese as a main course." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/Italian_Risotto.png/230px-Italian_Risotto.png", location_id: 108 )

# NationalDish.create(name:"Fufu" , description:"Fufu (or foofoo, fufuo, foufou) is a staple food common in many countries in West Africa such as Cote D'Ivoire, Sierra Leone, Ghana, Liberia, Togo and Nigeria. It is often made in the traditional Ghanaian and Nigerian method by mixing and pounding separate equal portions of cassava and green plantain flour thoroughly with water. It is then adjusted to either increase or decrease the viscosity of the fufu depending on personal preferences. Other flours, such as semolina, maize flour or mashed plantains may take the place of cassava flour. Fufu is often served with groundnut soup, palm nut soup, abunuabunu or light soup. The traditional method is to boil starchy food crops like cassava, yams or plantains and cocoyams and then pound them into a dough-like consistency. Fufu is eaten with the fingers, and a small ball of it can be dipped into an accompanying soup or sauce." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Foufou.jpg/220px-Foufou.jpg", location_id: 42 )

# NationalDish.create(name:"Kedjenou" , description:"Kedjenou (also known as Kedjenou poulet and Kedjenou de Poulet) is a spicy stew that is slow-cooked in a sealed canari (terra-cotta pot) over fire or coals and prepared with chicken or guinea hen and vegetables. It is a traditional and popular dish of the cuisine of Côte d'Ivoire. Preparation methods for the stew vary. Sometimes little or no added liquid is used in its preparation, allowing the meat to cook in its own juices, which tenderizes the meat and concentrates the flavors of the ingredients. Sometimes the dish is cooked in a wrapped and sealed banana leaf that is placed under hot coals. In Côte d'Ivoire the dish is traditionally served with Attiéké, a side dish made with grated cassava." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Kedjenou_-_01.jpg/200px-Kedjenou_-_01.jpg", location_id: 42 )

# NationalDish.create(name:"Ackee and Saltfish", description:"Ackee and Saltfish is a traditional Jamaican dish. It is the Jamaican National Dish. The ackee fruit was imported to the Caribbean from Ghana before 1725, as Ackee or Aki is another name for the Akan people, Akyem. It is also known as Blighia sapida. The scientific name honours Captain William Bligh who took the fruit from Jamaica to the Royal Botanic Gardens in Kew, England in 1793 and introduced it to science. Because parts of the fruit are toxic, there are shipping restrictions when being imported to countries such as the United States. To prepare the dish, salt cod is sautéed with boiled ackee, onions, Scotch Bonnet peppers, tomatoes, and spices, such as black pepper and pimiento. It can be garnished with bacon and tomatoes, and is usually served as breakfast or dinner alongside breadfruit, hard dough bread, dumplings, fried plantain, or boiled green bananas. Ackee and saltfish can also be eaten with rice and peas or plain white rice. When seasonings (onion, escallion, thyme, garlic) and saltfish are combined with plain rice it is often called seasoned rice which can be a one pot meal including ackee.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Ackee_and_Saltfish.jpg/220px-Ackee_and_Saltfish.jpg", location_id: 110 )

# NationalDish.create(name:"Jerk Chicken", description:"Jerk is a style of cooking native to Jamaica, in which meat is dry-rubbed or wet marinated with a hot spice mixture called Jamaican jerk spice. Some historians believe it was originally developed by Maroons, African slaves who escaped into the wilds of Jamaica when the British captured the island from Spain in 1655. Adapting to their new surroundings, the former slaves made use of the natural food sources available to them, creating the spicy sauce and slowly cooking the meat over a smoking wood fire. Other historians argue the case for the practice of jerking originating with the Amerindians in Jamaica from the Arawak and Taino tribes who intermingled with the Maroons. The smoky taste of the meat is achieved using various alternative cooking methods, including the use of modern wood-burning ovens. The meat is normally, but not limited to, chicken or pork, and the main ingredients of the spicy jerk marinade sauce are allspice and Scotch bonnet peppers. Jerk cooking is popular in Caribbean and West Indian communities throughout North America and Western Europe.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Jerk_chicken_plate.jpg/220px-Jerk_chicken_plate.jpg", location_id: 110 )

# NationalDish.create(name:"Sushi", description:"Sushi (すし, 寿司, 鮨, pronounced [sɯꜜɕi] or [sɯɕiꜜ]) is a Japanese dish of prepared vinegared rice (鮨飯 sushi-meshi), usually with some sugar and salt, accompanying a variety of ingredients (ネタ neta), such as seafood, vegetables, and occasionally tropical fruits. Styles of sushi and its presentation vary widely, but the one key ingredient is 'sushi rice', also referred to as shari (しゃり), or sumeshi (酢飯). Sushi is traditionally made with medium-grain white rice, though it can be prepared with brown rice or short-grain rice. It is very often prepared with seafood, such as squid, eel, yellowtail, salmon, tuna or imitation crab meat. Many types of sushi are vegetarian. It is often served with pickled ginger (gari), wasabi, and soy sauce. Daikon radish or pickled daikon (takuan) are popular garnishes for the dish. Sushi is sometimes confused with sashimi, a related dish in Japanese cuisine that consists of thinly sliced raw fish, or occasionally meat, and an optional serving of rice.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Sushi_platter.jpg/220px-Sushi_platter.jpg", location_id: 112 )

# NationalDish.create(name:"Japanese Curry", description:"Japanese curry (カレー karē) is one of the most popular dishes in Japan. It is commonly served in three main forms: curry rice (カレーライス karē raisu, curry over rice), curry udon (curry over noodles), and curry bread (a curry-filled pastry). Curry rice is most commonly referred to simply as 'curry' (カレー karē). A wide variety of vegetables and meats are used to make Japanese curry. The basic vegetables are onions, carrots, and potatoes. For the meat, beef, pork, and chicken are the most popular. Katsu-karē is a breaded deep-fried cutlet (usually pork or chicken) with curry sauce.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Curry_rice_by_Hyougushi_in_Kyoto.jpg/250px-Curry_rice_by_Hyougushi_in_Kyoto.jpg", location_id: 112 )

# NationalDish.create(name:"Ramen", description:"Ramen (/ˈrɑːmən/) (拉麺, ラーメン rāmen, IPA: [ɾaꜜːmeɴ]) is a Japanese dish with a translation of 'pulled noodles' (originating in northwest China). It consists of Chinese-style wheat noodles served in a meat or (occasionally) fish-based broth, often flavored with soy sauce or miso, and uses toppings such as sliced pork (叉焼 chāshū), nori (dried seaweed), menma, and scallions. Nearly every region in Japan has its own variation of ramen, such as the tonkotsu (pork bone broth) ramen of Kyushu and the miso ramen of Hokkaido.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Soy_ramen.jpg/250px-Soy_ramen.jpg", location_id: 112 )

# NationalDish.create(name:"Mansaf", description:"Mansaf (Arabic: منسف‎) is a traditional Jordanian dish made of lamb cooked in a sauce of fermented dried yogurt and served with rice or bulgur. It is a popular dish eaten throughout the Levant. It is the national dish of Jordan, and can also be found in Palestine, Iraq, Southern Syria and Saudi Arabia. The name of the dish comes from the term 'large tray' or 'large dish.'", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Traditional_Mansaf_served_on_flatbread.jpg/220px-Traditional_Mansaf_served_on_flatbread.jpg", location_id: 111 )

# NationalDish.create(name:"Beshbarmak", description:"Beshbarmak (Kyrgyz: бешбармак, Russian: бешбармак, Bashkir: бишбармаҡ, Tatar: бишбармак — 'five finger') is the national dish among nomadic Turkic peoples in Central Asia and Russia. It is also known as Naryn (in Xinjiang, Uzbekistan, Kyrgyzstan and Kazakhstan), as Turama/Dograma (in Karakalpakstan, North Caucasus and Turkmenistan) and as Kullama (in Bashkortostan and Tatarstan). The term Beshbarmak means 'five fingers', because nomads used to eat this dish with their hands. The boiled meat is finely chopped with knives, mixed with boiled noodles, and spiced with onion sauce. It is usually served in a big round dish. Beshbarmak is usually served with shorpo – mutton broth in bowls called kese. Typically, shorpo is served as a first course that is followed by courses of beshbarmak and a drink called ak-serke (shorpo spiced with kymyz or ayran).", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Beshbarmak1.jpg/240px-Beshbarmak1.jpg", location_id: 123 )

# NationalDish.create(name:"Shalgam", description:"Shalgam is a traditional salad from Kazakhstan and Kyrgyzstan. It is made from radishes, sweet Bulgarian bell pepper, carrots, onions, garlic and spices.", image:"https://www.internationalcuisine.com/wp-content/uploads/2016/03/Kzakh-shalgram-684x1024.jpg", location_id: 123 )

# NationalDish.create(name:"Ugali", description:"Nsima (also known as ugali and pap) is a type of cornmeal porridge made in Africa. It is also known as ngima, obusuma, kimnyet, nshima, Mieliepap, phutu, sadza, kwon, and other names. Nsima is sometimes made from other flours, such as millet or sorghum flour, and is sometimes mixed with cassava flour. It is cooked in boiling water or milk until it reaches a stiff or firm dough-like consistency.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Ugali_%26_Sukuma_Wiki.jpg/220px-Ugali_%26_Sukuma_Wiki.jpg", location_id: 113 )

# NationalDish.create(name:"Sukuma Wiki", description:"Sukuma wiki is an East African dish made with collard greens, known as sukuma, cooked with onions and spices. It is often served and eaten with ugali (maize porridge). In Tanzania, Kenya and many parts of East Africa, colewort are more commonly known by their Swahili name, sukuma, and are often referred to as collard greens. It is also commonly mistaken for kale. The literal translation of the phrase 'sukuma wiki' is to 'push the week' or 'stretch the week'. It is a vegetable that is generally affordable and available all-year round in this region. It forms part of the staple dish in this region together with Ugali or Sima.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Ugali_%26_Sukuma_Wiki.jpg/220px-Ugali_%26_Sukuma_Wiki.jpg", location_id: 113 )

# NationalDish.create(name:"Nyama Choma", description:"Nyama choma is grilled meat – usually goat or sheep - while kuku choma is grilled chicken. It is usually cooked over an open fire. It is usually eaten with ugali and kachumbari, maharagwe (bean stew) and mchicha (shredded spinach).", image:"https://www.nation.co.ke/image/view/-/2051712/highRes/611273/-/maxw/600/-/hmcoy/-/LM3010chomasweetjpg.jpg", location_id: 113 )

# NationalDish.create(name:"Palusami", description:"Laulau is a Native Hawaiian cuisine dish. The traditional preparation consisted of pork wrapped in taro or luau leaf. In old Hawaii laulau was assembled by taking a few luau leaves and placing a few pieces of fish and pork in the center. In modern times, the dish uses taro leaves, salted butterfish, and either pork, beef, or chicken and is usually steamed on the stove. Laulau is a typical plate lunch dish and is usually served with a side of rice and macaroni salad. In the classical preparation, the ends of the luau leaf are folded and wrapped again in the leaf. When ready, all the laulau is placed in an underground oven, called an imu. Hot rocks are placed on the dish and covered in banana leaves and buried again. A few hours later the laulau is ready to eat. Similar Polynesian dishes include Tongan 'lupulu' (containing corned beef) and Samoan 'palusami' and 'fai'ai' (which can contain fish, eel, shrimp, or other seafood alone or in combination).", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Lau_lau.jpg/220px-Lau_lau.jpg", location_id: 116 )

# NationalDish.create(name:"Kimchi", description:"Kimchi (/ˈkɪmtʃiː/; Korean: 김치, romanized: gimchi, IPA: [kim.tɕʰi]), a staple in Korean cuisine, is a famous traditional side dish of salted and fermented vegetables, such as napa cabbage and Korean radish, made with a widely varying selection of seasonings including gochugaru (chili powder), scallions, garlic, ginger, and jeotgal (salted seafood), etc. There are hundreds of varieties of kimchi made with different vegetables as the main ingredients. Traditionally, kimchi was stored in-ground in large earthenware to prevent the kimchi from being frozen during the winter months. It was the primary way of storing vegetables throughout the seasons. In the summer the in-ground storage kept the kimchi cool enough to slow down the fermentation process. In contemporary times, kimchi refrigerators are more commonly used to store kimchi.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Various_kimchi.jpg/220px-Various_kimchi.jpg", location_id: 119 )

# NationalDish.create(name:"Naengmyeon", description:"Naengmyeon (냉면; 冷麵, in South Korea) or raengmyŏn (랭면, in North Korea) is a Korean noodle dish of long and thin handmade noodles made from the flour and starch of various ingredients, including buckwheat (메밀, memil), potatoes, sweet potatoes, arrowroot starch (darker color and chewier than buckwheat noodles), and kudzu (칡, chik). Buckwheat predominates (despite the name, it is not a wheat but rather is more closely related to sorrel). Other varieties of naengmyeon are made from ingredients such as seaweed and green tea.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Naengmyeon_%28cold_noodles%29.jpg/220px-Naengmyeon_%28cold_noodles%29.jpg", location_id: 119 )

# NationalDish.create(name:"Bosintang", description:"Bosintang (boshintang) (보신탕; 補身湯) or gaejangguk (개장국), called dangogiguk (단고기국) in North Korea, is a Korean soup that includes dog meat as its primary ingredient. The soup has been claimed to provide increased virility. The meat is boiled with vegetables such as green onions, perilla leaves, and dandelions, and spices such as Doenjang (된장), Gochujang (고추장), and perilla seed powder. It is seasoned with Agastache rugosa before eating. The dish, one of the most common Korean foods made from dog meat, has a long history in Korean culture.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/%EB%B3%B4%EC%8B%A0%ED%83%95.jpg/220px-%EB%B3%B4%EC%8B%A0%ED%83%95.jpg", location_id: 119 )

# NationalDish.create(name:"Bulgogi", description:"Bulgogi (불고기; /bʊlˈɡoʊɡiː/ bool-GOH-guee; from Korean bul-gogi [pul.ɡo.ɡi]), literally 'fire meat', is a gui (구이; Korean-style grilled or roasted dish) made of thin, marinated slices of beef or pork grilled on a barbecue or on a stove-top griddle. It is also often stir-fried in a pan in home cooking. Sirloin, rib eye or brisket are frequently used cuts of beef for the dish. The dish originated from northern areas of the Korean Peninsula, but is a very popular dish in South Korea where it can be found anywhere from upscale restaurants to local supermarkets as pan-ready kits.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Bulgogi_2.jpg/220px-Bulgogi_2.jpg", location_id: 119 )

# NationalDish.create(name:"Kimchi", description:"Kimchi (/ˈkɪmtʃiː/; Korean: 김치, romanized: gimchi, IPA: [kim.tɕʰi]), a staple in Korean cuisine, is a famous traditional side dish of salted and fermented vegetables, such as napa cabbage and Korean radish, made with a widely varying selection of seasonings including gochugaru (chili powder), scallions, garlic, ginger, and jeotgal (salted seafood), etc. There are hundreds of varieties of kimchi made with different vegetables as the main ingredients. Traditionally, kimchi was stored in-ground in large earthenware to prevent the kimchi from being frozen during the winter months. It was the primary way of storing vegetables throughout the seasons. In the summer the in-ground storage kept the kimchi cool enough to slow down the fermentation process. In contemporary times, kimchi refrigerators are more commonly used to store kimchi.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Various_kimchi.jpg/220px-Various_kimchi.jpg", location_id: 120 )

# NationalDish.create(name:"Bulgogi", description:"Bulgogi (불고기; /bʊlˈɡoʊɡiː/ bool-GOH-guee; from Korean bul-gogi [pul.ɡo.ɡi]), literally 'fire meat', is a gui (구이; Korean-style grilled or roasted dish) made of thin, marinated slices of beef or pork grilled on a barbecue or on a stove-top griddle. It is also often stir-fried in a pan in home cooking. Sirloin, rib eye or brisket are frequently used cuts of beef for the dish. The dish originated from northern areas of the Korean Peninsula, but is a very popular dish in South Korea where it can be found anywhere from upscale restaurants to local supermarkets as pan-ready kits.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Bulgogi_2.jpg/220px-Bulgogi_2.jpg", location_id: 120 )

# NationalDish.create(name:"Bibimbap", description:"Bibimbap (/ˈbiːbɪmbæp/ BEE-bim-bap, from Korean 비빔밥 [pi.bim.p͈ap̚], literally 'mixed rice'), sometimes romanized as bi bim bap or bi bim bop, is a Korean rice dish. The term “bibim” means mixing various ingredients, while the “bap” noun refers to rice. Bibimbap is served as a bowl of warm white rice topped with namul (sautéed and seasoned vegetables) or kimchi (Korean traditional food) and gochujang (chili pepper paste), soy sauce, or doenjang (a fermented soybean paste). A raw or fried egg and sliced meat (usually beef) are common additions. The hot dish is stirred together thoroughly just before eating. In South Korea, Jeonju, Jinju, and Tongyeong are especially famous for their versions of bibimbap. In 2011, the dish was listed at number 40 on the World's 50 most delicious foods readers' poll compiled by CNN Travel.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Dolsot-bibimbap.jpg/220px-Dolsot-bibimbap.jpg", location_id: 120 )

# NationalDish.create(name:"Galbi", description:"Galbi (갈비), galbi-gui (갈비구이), or grilled ribs is a type of gui (grilled dish) in Korean cuisine. 'Galbi' is the Korean word for 'rib', and the dish is usually made with beef short ribs. When pork spareribs or another meat is used instead, the dish is named accordingly. Galbi is served raw, then cooked on tabletop grills usually by the diners themselves. The dish may be marinated in a sweet and savory sauce usually containing soy sauce, garlic, and sugar. Both non-marinated and marinated galbi are often featured in Korean barbecue.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Galbi_with_bamboo_leaves.jpg/220px-Galbi_with_bamboo_leaves.jpg", location_id: 120 )

# NationalDish.create(name:"Budae-jjigae", description:"Budae-jjigae (부대찌개; literally 'army base stew') or spicy sausage stew is a type of jjigae (stew), made with ham, sausage, spam, baked beans, kimchi and gochujang. The dish was created shortly after the armistice that ended the Korean War, using the scrounged or smuggled surplus foods from the U. S. army bases. Although the dish was born in the period of post-war impoverishment, it continued to be popular during the period of rapid growth, and is still popular today. There are many restaurants specializing in budae-jjigae; the most famous ones on the budae-jjigae street in Uijeongbu, where the dish was first made. The dish is now a popular anju (accompaniment to alcoholic drinks) and a lunch item in college neighborhoods.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Korean.cuisine-Budae.jjigae-01.jpg/220px-Korean.cuisine-Budae.jjigae-01.jpg", location_id: 120 )

# NationalDish.create(name:"Machboos" , description:" The dish is also popularly known as makbūs (مكبوس/مچبوس Gulf pron.: [mɑtʃˈbuːs]). Kabsa (Arabic: كبسة‎ kabsah) is a mixed rice dish that originates from Saudi Arabia but is commonly regarded as a national dish in many Arab states of the Persian Gulf. The dish is made with rice and meat. It can often be found served in countries such as Yemen, Somalia, Qatar, Oman, the United Arab Emirates, Bahrain, Saudi Arabia and Kuwait." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Kabsa.jpg/220px-Kabsa.jpg", location_id: 121 )

# NationalDish.create(name:"Gabout", description:"Gabout are (Arabic: قبوط‎) stuffed flour dumplings in a thick meat stew.", image:"http://makan.place/ordering/upload/imgPePnKoHYDk1498049168.jpg", location_id: 121 )

# NationalDish.create(name:"Beshbarmak", description:"Beshbarmak (Kyrgyz: бешбармак, Russian: бешбармак, Bashkir: бишбармаҡ, Tatar: бишбармак — 'five finger') is the national dish among nomadic Turkic peoples in Central Asia and Russia. It is also known as Naryn (in Xinjiang, Uzbekistan, Kyrgyzstan and Kazakhstan), as Turama/Dograma (in Karakalpakstan, North Caucasus and Turkmenistan) and as Kullama (in Bashkortostan and Tatarstan). The term Beshbarmak means 'five fingers', because nomads used to eat this dish with their hands. The boiled meat is finely chopped with knives, mixed with boiled noodles, and spiced with onion sauce. It is usually served in a big round dish. Beshbarmak is usually served with shorpo – mutton broth in bowls called kese. Typically, shorpo is served as a first course that is followed by courses of beshbarmak and a drink called ak-serke (shorpo spiced with kymyz or ayran).", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Beshbarmak1.jpg/240px-Beshbarmak1.jpg", location_id: 114 )

# NationalDish.create(name:"Laghman", description:"Laghman (Kazakh: лағман lağman; Uzbek: lagʻmon; Uyghur: لەغمەن‎ leghmen, ләғмән; Kyrgyz: лагман lagman) is a Central Asian dish of pulled noodles, meat, and vegetables. Native Turkic words do not begin with L, so läghmän must be a loanword, probably from the Chinese lamian, although its taste and preparation are distinctly Uyghur. It is especially popular in Kyrgyzstan and Kazakhstan, where it is considered a national dish of the local Uyghur and Dungan ethnic minorities. It is also popular in Uzbekistan, Tajikistan and northeastern Afghanistan, where chickpeas are added to it, and in the Chitral and Gilgit regions of northern Pakistan, where it is known as Kalli or Dau Dau. The Crimean Tatar cuisine also adopted lagman from the Uzbek culture.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Uyghur_Lagman.jpg/220px-Uyghur_Lagman.jpg", location_id: 114 )

# NationalDish.create(name:"Kuurdak", description:"Kuurdak (Kyrgyz: куурдак, Kazakh: қуырдақ, Qýyrdaq, Turkmen: gowurdak; Говурдак, Uyghur: قورداق, қордақ‎, ULY: qordaq, Uzbek: qovurdoq), transliterated with various spellings, is a traditional meat dish made in Central Asia, especially among the Kyrgyz. The name comes from a nominalisation of the word 'roast', 'fried', referring to how the food is made. It is described as 'stewed brown meat'. Kuurdak is one of the main and oldest dishes in Kyrgyz cuisine. Kuurdak is usually made from mutton, fat and onion, it can be made using beef or any other kind of meat except pork (as Kyrgyz and many other Central Asian Turkic peoples are Muslims). In Kazakh cuisine kuurdak is made from sheep's liver, kidney, heart and lungs.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Kazakh_quwyrdaq.jpg/220px-Kazakh_quwyrdaq.jpg", location_id: 114 )

# NationalDish.create(name:"Tum Mak Hoong", description:"Green papaya salad is a spicy salad made from shredded unripe papaya. Probably originating from ethnic Lao people, it is also eaten throughout Southeast Asia. Locally known in Cambodia as bok l'hong (Khmer: បុកល្ហុង, pronounced [ɓok lhoŋ]), in Laos as tam som (Lao: ຕໍາສົ້ມ) or the more specific name tam maak hoong (Lao: ຕໍາໝາກຫຸ່ງ, pronounced [tàm.ma᷆ːk.hūŋ]), in Thailand as som tam (Thai: ส้มตำ, pronounced [sôm tām]), and in Vietnam as gỏi đu đủ. Som tam, the Thai variation, was listed at number 46 on World's 50 most delicious foods compiled by CNN Go in 2011 and updated in 2018.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/2013_Tam_Lao.jpg/250px-2013_Tam_Lao.jpg", location_id: 124 )

# NationalDish.create(name:"Larb with Sticky Rice", description:"Larb (Lao: ລາບ; Thai: ลาบ, RTGS: lap, pronounced [lâːp], also spelled laap, larp, lahb or laab) is a type of Lao meat salad that is regarded as the 'unofficial' national dish of Laos. It is also eaten in the Isan region, an area of Thailand where the majority of the population is of the Lao ethnicity, and among the Hmong people, an ethnic minority group in Laos and Thailand. Local variants of larb also feature in the cuisines of the Tai peoples of Shan State, Burma, and Yunnan province, China.", image:"", location_id: 124 )

# NationalDish.create(name:"Potato Pancakes", description:"Potato pancakes, draniki, deruny, latkas, raggmunk or boxties are shallow-fried pancakes of grated or ground potato, matza meal or flour and a binding ingredient such as egg or applesauce, often flavored with grated garlic or onion and seasoning. They may be topped with a variety of condiments, ranging from the savory (such as sour cream or cottage cheese), to the sweet (such as apple sauce or sugar), or they may be served plain. The dish is sometimes made from mashed potatoes to make pancake-shaped croquettes. Some variations may be made with sweet potatoes." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Latkas.jpg/220px-Latkas.jpg", location_id: 133 )

# NationalDish.create(name:"Kibbeh", description:"Kibbeh (Arabic: كبة‎), (also spelled and pronounced kibbe, kebbah, kubbeh, kubbah or kubbi depending on region, and known in Egypt as kobeiba and in Turkey as içli köfte) is a Levantine dish made of bulgur, minced onions, and finely ground lean beef, lamb, goat, or camel meat with Middle Eastern spices (cinnamon, nutmeg, clove, allspice). Other types of kibbeh may be shaped into balls or patties, and baked, cooked in broth, or served raw. Kibbeh is considered to be the national dish of many Middle Eastern countries. Kibbeh is a popular dish in Middle Eastern cuisine. Mainly, it is found in Lebanon, Syria, Palestine, Jordan, Egypt (kubbeh, kebbah, or koubeiba), Iraq, as well as Armenia (Keufteh, ltsonvats kololak [ru]), Iran, Israel, Cyprus (koupa, plural koupes) and in Turkey it is called içli köfte. It is also found throughout Latin American countries which received substantial numbers of Levantine immigrants during the late 19th and early 20th centuries. In the region, the dish is particularly popular in the Yucatan peninsula and the Caribbean coastline of Colombia and in Brazil.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Kibbeh3.jpg/230px-Kibbeh3.jpg", location_id: 125 )

# NationalDish.create(name:"Tabbouleh", description:"Tabbouleh (Arabic: تبولة‎ tabūla; also tabouleh, tabbouli, tabouli, or taboulah) is a Levantine vegetarian salad made mostly of finely chopped parsley, with tomatoes, mint, onion, bulgur (soaked, not cooked), and seasoned with olive oil, lemon juice, salt and pepper. Some variations add garlic or lettuce, or use couscous instead of bulgur. Tabbouleh is traditionally served as part of a mezze in the Arab world. Its popularity has grown in Western cultures.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flickr_-_cyclonebill_-_Tabbouleh.jpg/220px-Flickr_-_cyclonebill_-_Tabbouleh.jpg", location_id: 125 )

# NationalDish.create(name:"Chakalaka", description:"Chakalaka is a South African vegetable relish, usually spicy, that is traditionally served with bread, pap, samp, stews, or curries. Chakalaka may have originated in the townships of Johannesburg or on the gold mines surrounding Johannesburg, when Mozambican mineworkers coming off shift cooked tinned produce (tomatoes, beans) with chili to produce a spicy relish with a Portuguese flair to accompany pap. The many variations on how to make chakalaka often depend on region and family tradition. Some versions include beans, cabbage and butternut. For example, a tin of baked beans, tin of tomatoes, onion, garlic, and some curry paste can be used to make the dish.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Chakalaka.jpg/220px-Chakalaka.jpg", location_id: 130 )

# NationalDish.create(name:"Dumboy", description:"Fufu (or foofoo, fufuo, foufou) is a staple food common in many countries in West Africa such as Cote D'Ivoire, Sierra Leone, Ghana, Liberia, Togo and Nigeria. It is often made in the traditional Ghanaian and Nigerian method by mixing and pounding separate equal portions of cassava and green plantain flour thoroughly with water. It is then adjusted to either increase or decrease the viscosity of the fufu depending on personal preferences. Other flours, such as semolina, maize flour or mashed plantains may take the place of cassava flour. Fufu is often served with groundnut soup, palm nut soup, abunuabunu or light soup. The traditional method is to boil starchy food crops like cassava, yams or plantains and cocoyams and then pound them into a dough-like consistency. Fufu is eaten with the fingers, and a small ball of it can be dipped into an accompanying soup or sauce." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Foufou.jpg/220px-Foufou.jpg", location_id: 129 )

# NationalDish.create(name:"Bazeen", description:"Bazin (Arabic: البازين‎, pronounced [baːˈziːn], is an unleavened bread in the cuisine of Libya prepared with barley, water and salt. Bazin is prepared by boiling barley flour in water and then beating it to create a dough using a magraf, which is a unique stick designed for this purpose. The dough may then be placed in a pan and allowed time to harden, after which it is baked or steamed. The salt contributes to the hardness of the bazin. Bazin may have a paste-like and hardened texture. It may also be prepared using whole wheat flour, olive oil and pepper as ingredients. Bazeen is typically served with a tomato sauce, eggs, potatoes and mutton. This preparation method involves shaping the dough into the shape of a pyramid or dome, after which it may be served with a tomato-based soup or meat and potato stew poured atop and/or around it and garnished with hard-boiled eggs. A raw egg may also be placed in the hot soup. Aseeda is a dish prepared using bazin, honey, date syrup and butter or oil. Bazin may also be accompanied with a cooked pumpkin and tomato sauce mixture. When consumed, bazin may be 'crumpled and eaten with the fingers.' It is typically eaten using the right hand, and may be consumed communally. Bazin has been described as a traditional dish and as a national dish of Libya.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Bazin.jpg/220px-Bazin.jpg", location_id: 134 )

# NationalDish.create(name:"Usban", description:"Usban (or osban) (Arabic: عصبان‎, pronounced [ʕusˤbɑːn]) is a traditional kind of sausage in Tunisia , Algeria and Libya ,stuffed with a mixture of rice, herbs, lamb, chopped liver and heart. This dish is usually served alongside the main meal of rice or couscous, often on special occasions. Several varieties of usban exist, and the herbs and spices used can vary but typically include cayenne pepper, black pepper, turmeric and cinnamon, as well as dried mint, parsley and dill. This is added to spring onion, tomato, vegetable oil and rice. The mixture is stuffed into sheep intestines or commercial sausage casings and then tied off at the ends using thread. The sausages cook for an hour in a pot and are then browned in a frying pan or oven.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/%D8%B9%D8%B5%D8%A8%D8%A7%D9%86_%D8%AA%D9%88%D9%86%D8%B3%D9%8A_1.JPG/220px-%D8%B9%D8%B5%D8%A8%D8%A7%D9%86_%D8%AA%D9%88%D9%86%D8%B3%D9%8A_1.JPG", location_id: 134 )

# NationalDish.create(name:"Shorba", description:"Chorba is one of various kinds of soup or stew found in national cuisines across the Balkans, North Africa, Central Europe, Eastern Europe, Central Asia, Middle East and the Indian subcontinent. Chorba or Shorba is variously derived from the Arabic word meaning gravy, or from a Persian term شوربا from shor ('salty, brackish') and ba/ab, آب، ما ('water/stew'), or from a hypothetical cognate word common to Persian and Arabic. Chorba is also called shorba (Persian: شوربا‎, Arabic: شوربة Amharic: ሾርባ), shorwa (Pashto: شوروا‎), ciorbă (Romanian), shurpa (Russian: шурпа), shorpa (Uyghur: شورپا, шорпа‎), çorba (Turkish, pronounced [tʃoɾˈba]), shorpo (Kyrgyz: шорпо), and sorpa (Kazakh: сорпа).[citation needed] In the Indian subcontinent, the term shorba in Hindi (Hindi: शोरबा) simply means gravy, while in Urdu (Urdu: شوربہ‎) it may mean either gravy or soup.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Ready_kurban_chorba.JPG/250px-Ready_kurban_chorba.JPG", location_id: 134 )

# NationalDish.create(name:"Haraimi", description:"", image:"The most iconic Libyan Jewish dish, explains Parla, is Haraimi: a spicy, paprika-rich tomato and fish stew served over couscous. Caraway, cumin, paprika, and garlic provide the foundation for most dishes, but their proportions are hotly debated.", location_id: 134 )

# NationalDish.create(name:"Asida", description:"Asida (Arabic: عصيدة‎ ‘aṣīdah) is a dish made up of a cooked wheat flour lump of dough, sometimes with added butter or honey. Similar to gruel or porridge, it is eaten in many North African and Middle Eastern countries. Considered one of the most popular desserts and traditional dish in many Arab countries. It is particularly popular in Yemen, Sudan, Saudi Arabia, Kuwait, Algeria, Libya, Somalia, Tunisia, and Indonesia. It is usually eaten by hand, without the use of utensils. Often served during religious holidays such as Mawlid and Eid, it is also served during traditional ceremonies accompanying the birth of child, such as the ‘aqīqah, the cutting of the hair of a newborn seven days after birth. A simple yet rich dish, often eaten without other complementary dishes, it is traditionally served at breakfast and is also fed to women in labor.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Eating_Asida.JPG/250px-Eating_Asida.JPG", location_id: 134 )

# NationalDish.create(name:"Abamber and Rozatta", description:"Almond Cookies and sweet almond milk. Abambar are Tripolitanian almond cookies I found in the Netanya market, where they are sold year-round, but especially for Passover. The abambar resemble macaroons, but are less delicate in look and texture. They are cracked and tanned, taste like marzipan and have the unique aroma of bitter almonds.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Libya%27s_most_famous_dessert.jpg/220px-Libya%27s_most_famous_dessert.jpg", location_id: 134 )

# NationalDish.create(name:"Couscous",  description:"Couscous is originally a Maghrebi dish of small (about 3 millimetres (0.12 in) diameter) steamed balls of crushed durum wheat semolina that is traditionally served with a stew spooned on top. Pearl millet and sorghum, especially in the Sahel, and other cereals can be cooked in a similar way and the resulting dishes are also sometimes called couscous. Couscous is a staple food throughout the North African cuisines of Algeria, Morocco, Tunisia, Mauritania, and Libya, as well as in Israel, due to the large population of Jews of North African origin. In Western supermarkets, it is sometimes sold in instant form with a flavor packet, and may be served as a side or on its own as a main dish.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Cuscus.jpg/235px-Cuscus.jpg", location_id: 134 )

# NationalDish.create(name:"Käsknöpfle", description:"Käsespätzle (German for 'spätzle with cheese') is a traditional dish of Vorarlberg, Allgäu, Switzerland, Liechtenstein and Swabia the westernmost part of Austria. Hot spätzle and grated granular cheese are layered alternately and are finally decorated with fried onions. After adding each layer the käsespätzle will be put into the oven to avoid cooling off and to ensure melting of cheese. Accompanying side dishes are green salads or potato salad. In Vorarlberg and also in Liechtenstein käsespätzle usually will be served with apple sauce. Residuals of käsespätzle will be fried with butter in a pan.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Berggasthof_Haldenhof_-_K%C3%A4skn%C3%B6pfle_%281%29.jpg/250px-Berggasthof_Haldenhof_-_K%C3%A4skn%C3%B6pfle_%281%29.jpg", location_id: 127 )

# NationalDish.create(name:"Cepelinai", description:"The dumplings are made from grated and riced potatoes and stuffed with ground meat or dry curd cheese or mushrooms. It has been described as a national dish of Lithuania, and is typically served as a main dish. So named because their shape resembles that of a Zeppelin airship, cepelinai are typically around 10–20 cm long, although the size depends on where they are made: in the western counties of Lithuania cepelinai are made bigger than in the east. In Samogitia cepelinai are called 'kleckā'. After boiling, the cepelinai are often served with sour cream sauce and bacon bits or pork rinds. In Poland, it is known as kartacz. It is a part of the cuisine of Podlachia. Similar dishes include Polish pyzy, Swedish kroppkaka, Acadian poutine râpée, Norwegian raspeball, German Kartoffelklöße and Italian Canederli.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Cepelinai_Sauce.JPG/250px-Cepelinai_Sauce.JPG", location_id: 131 )

# NationalDish.create(name:"Judd mat Gaardebounen", description:"Judd mat Gaardebounen is a savory dish of smoked pork collar and broad beans which is one of the most widely recognized national dishes of Luxembourg. It is associated with the village of Gostingen in the south-east of the country where the inhabitants have earned the nickname of Bounepatscherten as a result of their excellent broad beans.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Judd_mat_Gaardebounen.jpg/240px-Judd_mat_Gaardebounen.jpg", location_id: 132 )

# NationalDish.create(name:"Tavče Gravče", description:"Tavče gravče (Macedonian: Тавче гравче) is a traditional Macedonian dish. It is prepared with fresh beans and it can be found in almost all restaurants in North Macedonia and all over the Macedonian diaspora. This meal is baked and served in a traditional clay made pot. Both names are translated as 'Beans on a tava' (Turkish for 'frying pan'). Tavče gravče is considered the national dish of North Macedonia. Tavče gravče in the Tetovo style is widely known in North Macedonia.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/%D0%93%D1%80%D0%B0%D0%B2_%D0%B2%D0%BE_%D1%82%D0%B0%D0%B2%D0%B0%28%D1%82%D0%B0%D1%84%D1%87%D0%B5_%D0%B3%D1%80%D0%B0%D0%B2%D1%87%D0%B5%29_%283%29.jpg/220px-%D0%93%D1%80%D0%B0%D0%B2_%D0%B2%D0%BE_%D1%82%D0%B0%D0%B2%D0%B0%28%D1%82%D0%B0%D1%84%D1%87%D0%B5_%D0%B3%D1%80%D0%B0%D0%B2%D1%87%D0%B5%29_%283%29.jpg", location_id: 141 )

# NationalDish.create(name:"Romazava", description:"Ro ([ru], a broth) may be served as the main laoka or in addition to it to flavor and moisten the rice. Ro-mangazafy ([rumaŋɡaˈzafʲ]) is a rich and flavorful broth made with beef, tomato and garlic that often accompanies a dry laoka. By contrast, Romatsatso ([rumaˈtsatsʷ]) is a light and relatively flavorless broth made with onion, tomato and anamamy greens served with meat or fatty poultry. Ron-akoho ([runaˈku]), a broth made with chicken and ginger, is a home remedy for the common cold, while rompatsa ([rumˈpatsə̥])—a broth made with tiny dried shrimp and beef, to which sweet potato leaves and potato are often added—is traditionally eaten by new mothers to support lactation. The national dish is the broth called romazava, which in its simplest form is made of beef with anamalao, anantsonga or anamamy, although ingredients such as tomato, onion and ginger are commonly added to create more complex and flavorful versions. Romazava is distinguished by its inclusion of anamalao flowers, which produce a mild analgesic effect when the broth is consumed.", image:"https://www.internationalcuisine.com/wp-content/uploads/2016/07/Malagasy-national-dish-600x899.jpg", location_id: 139 )

# NationalDish.create(name:"Nsima", description:"Nsima (also known as ugali and pap) is a type of cornmeal porridge made in Africa. It is also known as ngima, obusuma, kimnyet, nshima, Mieliepap, phutu, sadza, kwon, and other names. Nsima is sometimes made from other flours, such as millet or sorghum flour, and is sometimes mixed with cassava flour. It is cooked in boiling water or milk until it reaches a stiff or firm dough-like consistency.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Ugali_%26_Sukuma_Wiki.jpg/220px-Ugali_%26_Sukuma_Wiki.jpg", location_id: 153 )

# NationalDish.create(name:"Nasi Lemak", description:"Nasi lemak is a Malay fragrant rice dish cooked in coconut milk and pandan leaf. It is commonly found in Malaysia, where it is considered the national dish; it is also the native dish in neighbouring areas with significant Malay populations such as Singapore; Brunei, and Southern Thailand. In Indonesia it can be found in several parts of Sumatra; especially Malay realm of Riau, Riau Islands and Medan. Nasi lemak can also be found in the Bangsamoro region of Mindanao prepared by Filipino Moro. It is considered one of the most famous dishes for a Malay-style breakfast. It is not to be confused with nasi dagang, sold in the Malaysian east coast states of Terengganu and Kelantan (and its kindred region in Pattani, Yala and Narathiwat in Thailand and Natuna in Indonesia), although both dishes are often served for breakfast. However, because nasi lemak can be served in a variety of ways, it is often eaten throughout the day.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Nasi_Lemak%2C_Mamak%2C_Sydney.jpg/250px-Nasi_Lemak%2C_Mamak%2C_Sydney.jpg", location_id: 155 )

# NationalDish.create(name:"Laksa", description:"Laksa is a spicy noodle soup popular in Peranakan cuisine of Southeast Asia. Laksa consists of thick wheat noodles or rice vermicelli with chicken, prawn or fish, served in spicy soup based on either rich and spicy curry coconut milk or on sour asam (tamarind or gelugur). Laksa is found in Indonesia, Malaysia, Singapore, and Southern Thailand.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Katong_Laksa.jpg/220px-Katong_Laksa.jpg", location_id: 155 )

# NationalDish.create(name:"Roti Canai", description:"Roti canai (pronunciation: /tʃanai/), also known as roti cane (/tʃane/) or roti parotta, is an Indian-influenced flatbread dish found in several countries in Southeast Asia, including Malaysia, Brunei, Indonesia and Singapore. It is usually served with dal or other types of curry, but can also be cooked in a range of sweet or savoury variations made with a variety of ingredients such as sardines, meat, egg, or cheese. Roti canai is a popular breakfast and snack dish in Malaysia, and one of the most famous examples of Malaysian Indian cuisine. It is said that the dish was brought over from India by Indian Muslims, also known as 'Mamaks' in Malaysia, and is served in mamak stalls located in both rural and urban Malaysia. It is considered as a variation of parotta but it does not exist in India. The closest kin to roti canai is believed to be Malabar parotta.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Canai.jpg/250px-Canai.jpg", location_id: 155 )

# NationalDish.create(name:"Garudiya", description:"Garudiya or Garudhiya is a clear fish broth. It is one of the basic and traditional food items of Maldivian cuisine. The broth is based on tuna species found in the nation's ocean waters such as skipjack (kanḍumas or goḍa), yellowfin tuna (kanneli), little tunny (lațți), or frigate tuna) (raagonḍi). Despite the introduction of new items in the Maldivian cuisine, garudiya is still a Maldivian favourite as it has been for generations.", image:"https://alphamaldives.com/blog/wp-content/uploads/2016/11/Garudiya.jpg", location_id: 152 )

# NationalDish.create(name:"Tiguadege Na", description:"Peanut stew or groundnut stew, called maafe (Wolof, mafé, maffé, maffe), sauce d'arachide (French), tigadèguèna or domoda, is a stew or sauce that is a staple food in Western Africa. It originates from the Mandinka and Bambara people of Mali. Variants of the dish appear in the cuisine of nations throughout West Africa and Central Africa. It is very similar to groundnut soup. It may have a thicker consistency. Made from lamb, beef, chicken, or without meat, maafe is cooked with a sauce based on groundnuts, especially peanut butter/paste, and tomatoes. Peanut paste is sometimes used as an ingredient. In Ghana, groundnut stew is often accompanied with fufu.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Maf%C3%A9_S%C3%A9n%C3%A9galais.jpg/220px-Maf%C3%A9_S%C3%A9n%C3%A9galais.jpg", location_id: 142 )

# NationalDish.create(name:"Pastizz", description:"A pastizz (plural pastizzi) is a traditional savoury pastry from Malta. Pastizzi usually have a filling (tal-ħaxu) either of ricotta (pastizzi tal-irkotta, cheese cake) or mushy peas (pastizzi tal-piżelli, pea cake). Pastizzi are a popular, traditional and well-known Maltese food.", image:"https://upload.wikimedia.org/wikipedia/commons/f/fc/Malta_Pastizzi.JPG", location_id: 150 )

# NationalDish.create(name:"Fenkata", description:"Rabbit stew, also referred to as hare stew when hare is used, is a stew prepared using rabbit meat as a main ingredient. Some traditional regional preparations of the dish exist, such as Coniglio all'ischitana on the island of Ischia, German Hasenpfeffer and jugged hare in Great Britain and France. Hare stew dates back to at least the 14th century, and was published in The Forme of Cury during this time as a recipe for stewed hare. Rabbit stew is a traditional dish of the Algonquin people, and is also a part of the cuisine of the Greek islands. Hare stew was commercially manufactured and canned circa the early 1900s in western France and eastern Germany.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Civet_de_lapin_aux_USA.jpg/260px-Civet_de_lapin_aux_USA.jpg", location_id: 150 )

# NationalDish.create(name:"Macadamia Nut Pie", description:"Macadamia nut pie is a traditional recipe from the Marshall Islands and a delicious twist on pecan pie, typically served with coconut whipped cream.", image:"", location_id: 140 )

# NationalDish.create(name:"Thieboudienne", description:"Thieboudienne or chebu jen (Wolof: ceebu jën; French: thiéboudienne, thiéboudiène, thiébou dieune, phonetic approximations of the Wolof) is a traditional dish from Senegal. It is made from fish, rice and tomato sauce. Other ingredients often include onions, carrots, cabbage, cassava and peanut oil. These ingredients are common in the country. The name of the dish comes from Wolof words meaning 'rice' (ceeb) and 'fish' (jën). The American Southern dish Savannah red rice resembles thieboudienne, suggesting a Creolization of the dish from West Africa to the New World.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Thieboudienne.JPG/220px-Thieboudienne.JPG", location_id: 148 )

# NationalDish.create(name:"Couscous" ,  description:"Couscous is originally a Maghrebi dish of small (about 3 millimetres (0.12 in) diameter) steamed balls of crushed durum wheat semolina that is traditionally served with a stew spooned on top. Pearl millet and sorghum, especially in the Sahel, and other cereals can be cooked in a similar way and the resulting dishes are also sometimes called couscous. Couscous is a staple food throughout the North African cuisines of Algeria, Morocco, Tunisia, Mauritania, and Libya, as well as in Israel, due to the large population of Jews of North African origin. In Western supermarkets, it is sometimes sold in instant form with a flavor packet, and may be served as a side or on its own as a main dish.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Cuscus.jpg/235px-Cuscus.jpg", location_id: 148 )

# NationalDish.create(name:"Octopus Curry", description:"Curry (plural curries) is a variety of dishes originating in the Indian subcontinent that use a complex combination of spices or herbs, usually including ground turmeric, cumin, coriander, ginger, and fresh or dried chilies. Curry is generally prepared in a sauce. Curry dishes prepared in the southern states of India, where the word also originated, may be spiced with leaves from the curry tree. There are many varieties of dishes called 'curries'. For example, in original traditional cuisines, the precise selection of spices for each dish is a matter of national or regional cultural tradition, religious practice, and, to some extent, family preference. Such dishes are called by specific names that refer to their ingredients, spicing, and cooking methods. Spices are used both whole and ground, cooked or raw, and they may be added at different times during the cooking process to produce different results. The main spices found in most curry powders of the Indian subcontinent are coriander, cumin, and turmeric. A wide range of additional spices may be included depending on the geographic region and the foods being included (fish, lentils, red or white meat, rice, and vegetables). Curry powder, a commercially prepared mixture of spices, is largely a Western creation, dating to the 18th century. Such mixtures are commonly thought to have first been prepared by Indian merchants for sale to members of the British Colonial government and army returning to Britain. Dishes called 'curry' may contain fish, meat, poultry, or shellfish, either alone or in combination with vegetables. Additionally, many instead are entirely vegetarian, eaten especially among those who hold ethical or religious proscriptions against eating meat or seafood. Curries may be either 'dry' or 'wet'. Dry curries are cooked with very little liquid which is allowed to evaporate, leaving the other ingredients coated with the spice mixture. Wet curries contain significant amounts of sauce or gravy based on broth, coconut cream, coconut milk, dairy cream, legume purée, sautéed crushed onion, tomato purée or yogurt.", image:"https://previews.123rf.com/images/ccat82/ccat821504/ccat82150400071/39392343-oriental-octopus-curry-with-rice-and-chives.jpg", location_id: 151 )

# NationalDish.create(name:"Rougaille", description:"Rougaille or rougail is one of the classic Mauritian dishes that everyone on the island loves. It is essentially a tomato-based dish, with incredibly rich flavours thanks to the combination of spices used. Since this recipe is passed down from generation to generation, there are quite a few variations of spice combinations: onions, garlic, ginger, thyme, chilies, cilantro / coriander, spring onions, curry leaves, etc.", image:"https://i1.wp.com/www.bonjourmauritius.com/wp-content/uploads/2015/05/salted-fish-rougaille-e1432301609253.jpg?resize=300%2C300&ssl=1", location_id: 151 )

# NationalDish.create(name:"Gateaux Piment", description:"Gateaux Piment translates from Mauritian Creole to English as chilli cakes, and in the rich Mauritian traditional cuisine they fall under the category of snacks, otherwise known as gajacks. They are always deep fried and often served at street food stalls, or also made in the home. They can also be eaten for breakfast and often served in a large buttered white bap! They’re made from store cupboard ingredients along with a few fresh bits – mostly soaked split peas and spices with chilli and spring onions, although there seems to be no definitive on what should be included. ", image:"https://i0.wp.com/naturalkitchenadventures.com/wp-content/uploads/2017/03/GP5.jpg?w=960&ssl=1", location_id: 151 )

# NationalDish.create(name:"Taco", description:"A taco (/ˈtɑːkoʊ/, UK also /ˈtækoʊ/, Spanish: [ˈtako]) is a traditional Mexican dish consisting of a corn or wheat tortilla folded or rolled around a filling. A taco can be made with a variety of fillings, including beef, pork, chicken, seafood, vegetables, and cheese, allowing great versatility and variety. Tacos are generally eaten without utensils, often garnished with salsa, chili pepper, avocado, guacamole, cilantro (coriander), tomatoes, onions, and lettuce.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/001_Tacos_de_carnitas%2C_carne_asada_y_al_pastor.jpg/220px-001_Tacos_de_carnitas%2C_carne_asada_y_al_pastor.jpg", location_id: 154 )

# NationalDish.create(name:"Mole Poblano", description:"Mole (/ˈmoʊleɪ/, /ˈmoʊli/ Spanish pronunciation: [ˈmole]; from Nahuatl mōlli, 'sauce') is a traditional sauce originally used in Mexican cuisine, as well as for dishes based on these sauces. Outside Mexico, it often refers specifically to mole poblano. In contemporary Mexico, the term is used for a number of sauces, some quite dissimilar, including black, red / colorado, yellow, green, almendrado, de olla, huaxmole, guacamole, and pipián. Generally, a mole sauce contains a fruit, chili pepper, nut, and such spices as black pepper, cinnamon, cumin.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/ChickRedMole.JPG/250px-ChickRedMole.JPG", location_id: 154 )

# NationalDish.create(name:"Chiles En Nogada", description:"Chiles en nogada is a dish, traditionally served at room temperature with cold cream sauce, from Mexican cuisine. The name comes from the Spanish word for the nut tree, nogal. It consists of poblano chilis filled with picadillo (a mixture usually containing shredded meat, aromatics, fruits and spices) topped with a walnut-based cream sauce, called nogada, and pomegranate seeds, giving it the three colors of the Mexican flag: green from the chili, white from the nut sauce and red from the pomegranate. The walnut used to prepare nogada is a cultivar called Nogal de Castilla or Castillan walnut. The traditional chile en nogada is from Puebla; it is tied to the independence of this country since it is said they were prepared for the first time to entertain the future emperor Agustín de Iturbide when he came to the city after the signing of the Treaty of Córdoba. This dish is a source of pride for the inhabitants of the state of Puebla.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Chile_en_nogada24.jpg/220px-Chile_en_nogada24.jpg", location_id: 154 )

# NationalDish.create(name:"Bat Soup", description:"Bats are a food source for humans in the Pacific Rim and Asia. Bats are consumed in various amounts in Indonesia, Thailand, Vietnam, Guam, and in other Asian and Pacific Rim countries and cultures. In Guam, Mariana fruit bats (Pteropus mariannus) are considered a delicacy, and a flying fox bat species was made endangered due to being hunted there. In addition to being hunted as a food source for humans, bats are also hunted for their skins. Hunting techniques include netting and with a shotgun. The 1999 version of The Oxford Companion to Food states that the flavor of fruit bats is similar to that of chicken, and that they are 'clean animals living exclusively on fruit'. Bats are prepared in several manners, such as grilled, barbecued, deep fried, cooked in stews and in stir frys. When deep fried, the entire bat may be cooked and consumed. Bats have a low fat content and are high in protein. During cooking, bats may emit strong odors reminiscent of urine. This may be reduced by adding garlic, onion, chili pepper or beer during cooking.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Paniki_Rica_Cabai_Hijau.JPG/220px-Paniki_Rica_Cabai_Hijau.JPG", location_id: 70 )

# NationalDish.create(name:"Mămăligă", description:"Mămăligă (Romanian pronunciation: [məməˈliɡə] (About this soundlisten);) is a porridge made out of yellow maize flour, traditional in Romania, Moldova, Chechnya, Ossetia, Georgia and in Eastern Galicia. Preparing the traditional dish is also continued by Poles from L'viv whose families were resettled in the Recovered Territories after World War II. In Italy, Switzerland, Slovenia, and Croatia, this dish is known as polenta.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Mamaliga.jpg/220px-Mamaliga.jpg", location_id: 137 )

# NationalDish.create(name:"Sarmale", description:"Sarma (from Turkish word 'sarmak', meaning 'to wrap') is a dish of vine, cabbage, monk's rhubarb or chard leaves rolled around a filling usually based on a combination of grains, like bulgur or rice, and minced meat. It is found in the cuisines of the former Ottoman Empire from the Middle East to Southeastern Europe. Stuffed vine leaves without meat are sometimes called yalancı dolma, which means 'liar's dolma' in Turkish. Vişneli yalancı dolması is a variation of stuffed vine leaves where the rice is seasoned with cinnamon, allspice and mint. The dolmas are slowly cooked together with morello cherries (vişne), and plums may be used also. In a version from the Turkish chef Arda Türkmen, the rice is cooked in morello cherry juice with spices, sour pomegranate syrup (nar ekşisi), currants and toasted pine nuts.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Dolma-Azerbaijan.jpg/220px-Dolma-Azerbaijan.jpg", location_id: 137 )

# NationalDish.create(name:"Mici", description:"Mititei or Mici (both romanian words meaning 'little ones' / 'small ones') is a dish from romanian cuisine, consisting of grilled ground meat rolls in cylindrical shape made from a mixture of beef, lamb and pork with spices, such as garlic, black pepper, thyme, coriander, anise, savory, and sometimes a touch of paprika. Sodium bicarbonate and broth or water are also added to the mixture. It is similar to ćevapi and other ground meat based dishes throughout the Balkans and Middle East. It is often served with french fries, mustard and murături (green pickled vegetables).", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Mititei_aufm_Grill.jpg/260px-Mititei_aufm_Grill.jpg", location_id: 137 )

# NationalDish.create(name:"Barbaguian", description:"Barbajuan (also spelled barbagiuan) is an appetizer mainly found in the eastern part of French Riviera and Northern Italy. A kind of fritter stuffed with Swiss chard and ricotta, among other ingredients, it originates from Monaco, where it is especially eaten on the national day, 19 November. The word means Uncle John in Monégasque.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Barbaguiai.jpg/250px-Barbaguiai.jpg", location_id: 136 )

# NationalDish.create(name:"Buuz", description:"Buuz (Mongolian: Бууз; Buryat: Бууза, buuza, [ˈbʊːt͡s(ɐ)]) is a type of Mongolian steamed dumpling filled with meat. An example of authentic Mongolian and Buryatian cuisine, the dish is traditionally eaten at home during Tsagaan Sar, the Lunar New Year. These days it is also offered at restaurants and small cafes throughout the capital of Ulaanbaatar.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/%D0%91%D1%83%D1%83%D0%B7%D1%8B.JPG/220px-%D0%91%D1%83%D1%83%D0%B7%D1%8B.JPG", location_id: 144 )

# NationalDish.create(name:"Kačamak", description:"Kačamak (Cyrillic: качамак; Albanian: Kaçamaku), also known as pura (Cyrillic: пура), is a kind of maize porridge made in the Balkans. Its name is derived from the Turkish word kaçamak, meaning escapade. It is also known as bakrdan (бакрдан) in North Macedonia.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/%D0%9A%D0%B0%D1%87%D0%B0%D0%BC%D0%B0%D0%BA_%D1%81%D0%BE_%D0%BA%D0%B8%D1%81%D0%B5%D0%BB%D0%BE_%D0%BC%D0%BB%D0%B5%D0%BA%D0%BE_%D0%B8_%D0%BF%D0%B0%D1%80%D1%87%D0%B5_%D1%81%D0%B8%D1%80%D0%B5%D1%9A%D0%B5.jpg/220px-%D0%9A%D0%B0%D1%87%D0%B0%D0%BC%D0%B0%D0%BA_%D1%81%D0%BE_%D0%BA%D0%B8%D1%81%D0%B5%D0%BB%D0%BE_%D0%BC%D0%BB%D0%B5%D0%BA%D0%BE_%D0%B8_%D0%BF%D0%B0%D1%80%D1%87%D0%B5_%D1%81%D0%B8%D1%80%D0%B5%D1%9A%D0%B5.jpg", location_id: 138 )

# NationalDish.create(name:"Raštan", description:"Collard greens are known as sukuma wiki in Tanzania and Kenya. Sukuma wiki is mainly lightly sauteed in oil until tender, flavoured with onions and seasoned with salt, and served either as the main accompaniment or as a side dish with the preferred meat (fish, chicken, beef, or pork). In Congo, Tanzania and Kenya (East Africa), thinly sliced collard greens are the main accompaniments of a popular dish known as sima or ugali (a maize flour cake).", image:"https://deliciousmontenegro.me/wp-content/uploads/2017/03/rastan-3.jpeg", location_id: 138 )

# NationalDish.create(name:"Goat Water", description:"Goat water, also referred to as kiddy stew, is a stew that is a part of the national cuisine of the Caribbean island of Montserrat It has been described as a national dish of Montserrat. It has also been described as a national stew. Goat water is prepared using goat meat, breadfruit, vegetables, onion, tomato, spices and herbs and flour. Additional ingredients may also be used, such as rum, whiskey and various tubers. It is sometimes served with rice.The dish has been described as spicy and flavorful.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Goat_Water.jpg/220px-Goat_Water.jpg", location_id: 149 )

# NationalDish.create(name:"Couscous",  description:"Couscous is originally a Maghrebi dish of small (about 3 millimetres (0.12 in) diameter) steamed balls of crushed durum wheat semolina that is traditionally served with a stew spooned on top. Pearl millet and sorghum, especially in the Sahel, and other cereals can be cooked in a similar way and the resulting dishes are also sometimes called couscous. Couscous is a staple food throughout the North African cuisines of Algeria, Morocco, Tunisia, Mauritania, and Libya, as well as in Israel, due to the large population of Jews of North African origin. In Western supermarkets, it is sometimes sold in instant form with a flavor packet, and may be served as a side or on its own as a main dish.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Cuscus.jpg/235px-Cuscus.jpg", location_id: 135 )

# NationalDish.create(name:"Tajine", description:"A tajine or tagine (/təˈ(d)ʒiːn/, also US: /tɑːˈ-/, UK: /tæˈʒiːn/;Moroccan Arabic: طجين‎, romanized: ṭažin, from Arabic: طاجن‎, romanized: ṭājun; romanized: tajin) is a Maghrebi dish which is named after the earthenware pot in which it is cooked. It is also called maraq or marqa. Moroccan and Algerian tajine dishes are slow-cooked savory stews, typically made with sliced meat, poultry or fish together with vegetables or fruit. Spices, nuts, and dried fruits are also used. Common spices include ginger, cumin, turmeric, cinnamon, and saffron. Paprika and chili are used in vegetable tajines. The sweet and sour combination is common in tajine dishes like lamb with dates and spices. Tajines are generally served with bread. Because the domed or cone-shaped lid of the tajine pot traps steam and returns the condensed liquid to the pot, a minimal amount of water is needed to cook meats and vegetables. This method of cooking is important in areas where water supplies are limited or where public water is not yet available.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Tajine_013.JPG/200px-Tajine_013.JPG", location_id: 135 )

# NationalDish.create(name:"Pastilla", description:"Pastilla (Moroccan Arabic: بسطيلة‎, romanized: bəsṭila), or meat pie, is a traditional Moroccan dish of Andalusian origin consumed in countries of the Maghreb. It has also spread to Algeria and Tunisia. Pastilla is said to be 'uniquely Moroccan, intricate and grand, fabulously rich and fantastical'.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/Bisteeya.jpg/250px-Bisteeya.jpg", location_id: 135 )

# NationalDish.create(name:"Piri Piri Chicken", description:"Piri-piri chicken is a spicy dish with roots in both Africa and Portugal. The dish was created in Angola and Mozambique when Portuguese settlers arrived with chile peppers (known as piri-piri in Swahili). Timing note: The chicken needs to marinate for at least four hours before being grilled.", image:"http://explorers.kitchen/wp-content/uploads/2016/01/Mozambique-Piri-piri-chicken-10-of-11.jpg", location_id: 156 )

# NationalDish.create(name:"Mohinga", description:"Mohinga (Burmese: မုန့်ဟင်းခါး, IPA: [mo̰ʊɴhɪ́ɴɡá]) is a rice noodle and fish soup from Myanmar and is an essential part of Burmese cuisine. It is considered by many to be the national dish of Myanmar. It is readily available in most parts of the country. In major cities, street hawkers and roadside stalls sell dozens of dishes of mohinga to the locals and passers-by. Usually eaten for breakfast, today the dish is being consumed more and more throughout the day.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Mohnga.jpg/220px-Mohnga.jpg", location_id: 143 )

# NationalDish.create(name:"Braai", description:"The word braaivleis (English: /ˈbraɪfleɪs/; Afrikaans pronunciation: [ˈbrɑːifləis]) is Afrikaans for grilled meat. The word braai (plural braais) is Afrikaans for barbecue or grill and is a social custom in South Africa, Botswana, Namibia, Lesotho, Swaziland, Zimbabwe, Zambia, and Malawi. The term originated with the Afrikaans-speaking people, but has since been adopted by South Africans of many ethnic backgrounds. The word vleis is Afrikaans for meat.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Braai.JPG/220px-Braai.JPG", location_id: 157 )

# NationalDish.create(name:"Coconut Crusted Fish", description:"Fried in a skillet with coconut oil in breadcrumbs, shredded coconuts, and limes, this dish is recoginized as the national dish of Nauru. Another popular variety of coconut crusted seafood include shrimp. Edible products from the pandamus and fish meats were, and still are, most often combined with coconut milk, cream, and flesh in Nauruan cuisine.", image:"https://i.pinimg.com/originals/d9/d2/90/d9d2904a1e392cea37b1666734aaf0a8.jpg", location_id: 166 )

# NationalDish.create(name:"Dal Bhat", description:"Dal bhat (Nepali: दालभात, Bengali: ডাল ভাত, Gujarati: દાળ ભાત, Marathi: डाळ भात, Assamese: দাইল ভাত dail bhat / ডালি ভাত dali bhat) is a traditional meal from the Indian subcontinent, popular in many areas of Nepal, Bangladesh and India. It consists of steamed rice and a cooked lentil soup called dal. It is a staple food in these countries. Bhat or Chawal means 'boiled rice' in a number of Indo-Aryan languages. At higher elevations in Nepal, above 6,500 feet (2,000 m), where rice does not grow well, other grain such as maize, buckwheat, barley or millet may be substituted in a cooked preparation called dhindo or atho in Nepal. Bhat may be supplemented with roti in Nepal (rounds of unleavened bread). Dal may be cooked with onion, garlic, ginger, chili, tomatoes, or tamarind, in addition to lentils or beans. It always contains herbs and spices such as coriander, garam masala, cumin, and turmeric. Recipes vary by season, locality, ethnic group and family. Dal bhat is often served with vegetable tarkari or torkari (तरकारी in Nepali) – a mix of available seasonal vegetables. It is also called Dal Bhat Tarkari (दाल भात तरकारी) in Nepali. There may also be dahi (yogurt) or curry made of chicken, goat meat or fish. A small portion of pickle (called achar) is sometimes included.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Assamese_thali.JPG/220px-Assamese_thali.JPG", location_id: 165 )

# NationalDish.create(name:"Stamppot", description:"Stamppot (English: Mash pot) is a traditional Dutch dish made from a combination of potatoes mashed with one or several vegetables. These vegetable pairings traditionally include sauerkraut, endive, kale, spinach, turnip greens, or carrot and onion (the combination of the latter two is known as hutspot in the Netherlands and as wortelstoemp in Belgium). Leafy greens such as endive may be left raw and added to the potatoes only at the mashing stage. Some less common regional varieties of stamppot are made with fruit and potatoes, such as blauwe bliksem (blue lightning), made with pears, and hete bliksem (hot lightning), made with apples. Pineapple may also be included in sauerkraut or endive stamppot. In recent years, variations on the traditional stamppot have been becoming more and more popular with people adding ingredients such as rocket, leeks, beets, sweet potato, mushrooms and various other vegetables. Sometimes, fish is used as an ingredient in stamppot as well instead of serving it as a separate dish. Stamppot is primarily a cold-weather dish. Stamppot is usually served with sausage (in the Netherlands often smoked, in Belgium more often fried), julienned bacon, or stewed meat. Other accompaniments include cheese, gherkins, nuts or pickled onions.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Boerenkool_stamppot.jpg/220px-Boerenkool_stamppot.jpg", location_id: 163 )

# NationalDish.create(name:"Bacon and Egg Pie", description:"The bacon and egg pie is a savoury pie consisting of a crust containing bacon, egg and sometimes onion, peas, tomato and cheese. Bacon and egg pie may be served with ketchup, and some versions have a rising agent such as baking powder mixed into the egg to make a fluffier filling.The pie is often constructed with a shortcrust or other mechanically stable base crust. The crust is usually topped with a pastry lid, but is sometimes left open.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Bacon%26egg_pie.jpg/220px-Bacon%26egg_pie.jpg", location_id: 168 )

# NationalDish.create(name:"Lamb" , description:"In general, a sheep in its first year is called a lamb, and its meat is also called lamb. The meat of a juvenile sheep older than one year is hogget; outside the United States this is also a term for the living animal. The meat of an adult sheep is mutton, a term only used for the meat, not the living animals." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Plato_de_lechazo%2C_Valladolid.jpg/200px-Plato_de_lechazo%2C_Valladolid.jpg", location_id: 168 )

# NationalDish.create(name:"Pavlova", description:"Pavlova is a meringue-based cake named after the Russian ballerina Anna Pavlova. It is a meringue dessert with a crisp crust and soft, light inside, usually topped with fruit and whipped cream. The name is pronounced /pævˈloʊvə/, or like the name of the dancer, which was /ˈpɑːvləvə/. The dessert is believed to have been created in honour of the dancer either during or after one of her tours to Australia and New Zealand in the 1920s. The dessert is a popular dish and an important part of the national cuisine of both Australia and New Zealand, and with its simple recipe, is frequently served during celebratory and holiday meals.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Pavlova_dessert.JPG/300px-Pavlova_dessert.JPG", location_id: 168 )

# NationalDish.create(name:"Hāngi", description:"Hāngi (Māori pronunciation: [ˈhaːŋi]) is a traditional New Zealand Māori method of cooking food using heated rocks buried in a pit oven, also called an umu. It is still used for large groups on special occasions. To 'lay a hāngi' or 'put down a hāngi' involves digging a pit in the ground, heating stones in the pit with a large fire, placing baskets of food on top of the stones, and covering everything with earth for several hours before uncovering (or lifting) the hāngi.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Hangi_prepare.jpg/220px-Hangi_prepare.jpg", location_id: 168 )

# NationalDish.create(name:"Gallo Pinto" , description:"Gallo pinto or gallopinto is a traditional dish from Nicaragua. Consisting of rice and beans as a base; Gallo pinto has a long history and is important to various Latin American cultures. The beans in gallo pinto are quickly cooked until the juice is almost consumed, then combined with readied rice, and other ingredients such as cooked bell peppers, chopped onions, and garlic." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/CRI_07_2018_0120.jpg/440px-CRI_07_2018_0120.jpg", location_id: 162 )

# NationalDish.create(name:"Djerma Stew", description:"Djerma Stew is the official dish of Niger. It can be made with meat or without. Traditionally, if a meat version is being cooked, chicken is usually the meat of choice. In Niger, rice is the main staple and many stews like Djerma are eaten with it.", image:"http://static1.squarespace.com/static/5ae1def92487fd505d0b6b9b/5ae1ff6f70a6ad6dc260f209/5bf9fc7e758d46cefdd635f3/1558409062146/IMG_0812.jpg?format=1500w", location_id: 159 )

# NationalDish.create(name:"Jollof Rice" , description:"Jollof rice /ˈdʒɒləf/ or just jollof, also called Benachin (Wolof: 'one pot'), is a one-pot rice dish popular in many West African countries. The dish consists of rice, tomatoes and tomato paste, cooking oil, onions, salt, spices (such as nutmeg, ginger, garlic cumin) and chili peppers (such as Scotch bonnet); optional ingredients can be added such as vegetables, meats, or fish. Due to the tomato paste and typically used red palm oil, the dish is mainly red in colour. The recipe differs from one region to another." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Jollof_rice.jpg/250px-Jollof_rice.jpg", location_id: 159 )

# NationalDish.create(name:"Fufu", description:"Fufu (or foofoo, fufuo, foufou) is a staple food common in many countries in West Africa such as Cote D'Ivoire, Sierra Leone, Ghana, Liberia, Togo and Nigeria. It is often made in the traditional Ghanaian and Nigerian method by mixing and pounding separate equal portions of cassava and green plantain flour thoroughly with water. It is then adjusted to either increase or decrease the viscosity of the fufu depending on personal preferences. Other flours, such as semolina, maize flour or mashed plantains may take the place of cassava flour. Fufu is often served with groundnut soup, palm nut soup, abunuabunu or light soup. The traditional method is to boil starchy food crops like cassava, yams or plantains and cocoyams and then pound them into a dough-like consistency. Fufu is eaten with the fingers, and a small ball of it can be dipped into an accompanying soup or sauce." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Foufou.jpg/220px-Foufou.jpg", location_id: 161 )

# NationalDish.create(name:"Egusi Soup", description:"Egusi (also known by variations including agusi, agushi) is the name for the fat- and protein-rich seeds of certain cucurbitaceous plants (squash, melon, gourd), which after being dried and ground are used as a major ingredient in West African cuisine. Authorities disagree whether the word is used more properly for the seeds of the colocynth, those of a particular large-seeded variety of the watermelon, or generically for those of any cucurbitaceous plant. The characteristics and uses of all these seeds are broadly similar. Major egusi-growing nations include Mali, Burkina Faso, Togo, Ghana, Côte d'Ivoire, Benin, Nigeria, and Cameroon.", image:"", location_id: 161 )

# NationalDish.create(name:"Fårikål", description:"Fårikål (Norwegian pronunciation: [foːrɪkɔl]) is a traditional Norwegian dish and also considered the national dish of the country. Consisting of pieces of mutton with bone, cabbage, whole black pepper and often a little wheat flour, cooked for several hours in a casserole, traditionally served with potatoes boiled in their jackets. The dish is typically prepared in early autumn. Fårikål is originally a Danish dish containing goose or duck, but was later amended to Norwegian conditions by replacing those with mutton. The transformation took place in the 1840s. Fårikål Feast Day is celebrated on the last Thursday in September each year.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/F%C3%A5r_i_k%C3%A5l.jpg/260px-F%C3%A5r_i_k%C3%A5l.jpg", location_id: 164 )

# NationalDish.create(name:"Shuwaa", description:"Quzi also called qoozi or ghozi (Arabic: أوزي‎) is a rice based dish popular in the Arab states of the Persian Gulf. It is served with very slow cooked lamb, roasted nuts, raisins and served over rice. It is considered one of Iraq's national dishes and introduced into Turkey by Arab immigrants. In Iraqi cuisine, it is usually prepared by stuffing the whole lamb with rice, vegetables, spices and nuts and slow cooking it over a closed or submerged oven. In some places in the Middle East it is buried in a pit containing burning coal or charcoal to get the smoky flavor. There are many variations to this technique such as in Saudi Arabia and Yemen it is called madfoon where its wrapped in aluminium foil and kept on open heat source; in Oman and UAE it is called shuwaa where its kept wrapped in date palm tree leaves before keeping in a submerged oven. In Jordan, and Syria it is known as zarb where the meat is portioned into smaller pieces and kept along with vegetables and bread dough so that the flavors are enhanced. Another variant is called haneeth where it is cooked inside a hot tabun and it can be found in most Middle Eastern countries as well as the Horn of Africa and North Africa." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Iraqi_Qoozi_.jpg/220px-Iraqi_Qoozi_.jpg", location_id: 169 )

# NationalDish.create(name:"Seekh Kebab", description:"Seekh kebab (Urdu: سیخ کباب‎, Bengali: শিক কাবাব, Hindi: सीख कबाब) is a type of kebab, originating from the Indian subcontinent, made with Indian spices mixed with minced or ground meat, formed into cylinders on skewers and grilled. It is typically cooked on a mangal or barbecue, or in a tandoor.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Pakistani_Food_Beef_Kabobs.jpg/200px-Pakistani_Food_Beef_Kabobs.jpg", location_id: 175 )

# NationalDish.create(name:"Biryani", description:"Biryani (pronounced [bɪr.jaːniː]), also known as biriyani, biriani, birani or briyani, is a mixed rice dish with its origins among the Muslims of the Indian subcontinent. This dish is especially popular throughout the Indian subcontinent, as well as among the diaspora from the region. It is also prepared in other regions such as Iraqi Kurdistan. It is made with Indian spices, rice, meat (chicken, goat, beef, lamb, prawn, or fish), vegetables or eggs.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/India_food.jpg/220px-India_food.jpg", location_id: 175 )

# NationalDish.create(name:"Nihari", description:"Nihari (Bengali: নিহারী, Urdu: نہاری‎, Hindi: निहारी) is a stew from the Indian subcontinent consisting of slow-cooked meat mainly shank meat of beef or lamb and mutton, goat meat and chicken, along with bone marrow.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Nihari.JPG/220px-Nihari.JPG", location_id: 175 )

# NationalDish.create(name:"Bat Soup", description:"Bats are a food source for humans in the Pacific Rim and Asia. Bats are consumed in various amounts in Indonesia, Thailand, Vietnam, Guam, and in other Asian and Pacific Rim countries and cultures. In Guam, Mariana fruit bats (Pteropus mariannus) are considered a delicacy, and a flying fox bat species was made endangered due to being hunted there. In addition to being hunted as a food source for humans, bats are also hunted for their skins. Hunting techniques include netting and with a shotgun. The 1999 version of The Oxford Companion to Food states that the flavor of fruit bats is similar to that of chicken, and that they are 'clean animals living exclusively on fruit'. Bats are prepared in several manners, such as grilled, barbecued, deep fried, cooked in stews and in stir frys. When deep fried, the entire bat may be cooked and consumed. Bats have a low fat content and are high in protein. During cooking, bats may emit strong odors reminiscent of urine. This may be reduced by adding garlic, onion, chili pepper or beer during cooking.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Paniki_Rica_Cabai_Hijau.JPG/220px-Paniki_Rica_Cabai_Hijau.JPG", location_id: 182 )

# NationalDish.create(name:"Arab Salad", description:"Arab salad or Arabic salad, is any of a variety of salad dishes that form part of Arab cuisine. Combining many different fruits and spices, and often served as part of a mezze, Arab salads include those from Algeria and Tunisia such as the 'Algerian salad' (Salata Jaza'iriya) and 'Black Olive and Orange salad' (Salatat Zaytoon) and from Tunisia Salata Machwiya is a grilled salad made from peppers, tomatoes, garlic and onions with olives and tuna on top, those from Syria and Lebanon such as 'artichoke salad' (Salataf Khurshoof) and 'Beet salad' (Salatat Shamandar), and those from Palestine and Jordan. Other popular Arab salads eaten throughout the Arab world include fattoush and tabouli. A recipe for Arab salad in Woman's Day magazine includes diced tomato, cucumber and onion. Often mixed with parsley and combined with the juice of freshly squeezed lemon and olive oil, Arabic salad contains no lettuce. All the vegetables, except the onion, are left unpeeled, and the salad should be served immediately. Other variations include serving with fried pita slices or adding sumac to the lemon and oil dressing. Among Palestinians, this Arabic salad is known as Salatat al-Bundura ('tomato salad') and is popularly served alongside rice dishes.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Arabsalad.jpg/250px-Arabsalad.jpg", location_id: 180 )

# NationalDish.create(name:"Falafel" , description:"Falafel (or felafel) (/fəˈlɑːfəl/, /-ˈlæf-/; Arabic: فلافل‎) is a deep-fried ball, or a flat or doughnut-shaped patty, made from ground chickpeas, fava beans, or both. Herbs, spices, and onion relatives are commonly added to the dough. It is an Egyptian dish as well as a very famous, pseudo-national, Middle Eastern dish, that most likely originated in Egypt. The fritters are now found around the world as part of vegetarian cuisine, and as a form of street food. Falafel balls are commonly served in a pita, which acts as a pocket, or wrapped in a flatbread, also known known in western Arab countries as taboon. Falafel also frequently refers to a wrapped sandwich prepared with falafel balls laid over a bed of salad or pickled vegetables and drizzled with hot sauce or a tahini sauce. Falafel balls may also be eaten alone as a snack, or served as part of an assortment of appetizers known as a meze." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Falafels_2.jpg/500px-Falafels_2.jpg", location_id: 180 )

# NationalDish.create(name:"Mujaddara", description:"Mujaddara (Arabic: مجدرة‎ mujadarah, with alternative spellings in English majadra, mejadra, moujadara, mudardara, and megadarra) consists of cooked lentils together with groats, generally rice, and garnished with sauté onions.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Mujaddara.jpg/220px-Mujaddara.jpg", location_id: 180 )

# NationalDish.create(name:"Musakhan", description:"Musakhan (Arabic: مسخّن‎) is a Palestinian Arab cuisine dish, composed of roasted chicken baked with onions, sumac, allspice, saffron, and fried pine nuts served over taboon bread. It is also known as muhammar (Arabic: محمر‎). It is often considered the national dish of Palestine, it also remains a very popular dish with Israeli Druze and Israeli Arabs. It originated in the Tulkarm and Jenin area. The dish is simple to make and the ingredients needed are easily obtainable, which may account for the dish's popularity. Many of the ingredients used—olive oil, sumac and pine nuts—are frequently found in Palestinian cuisine. The dish is also popular in the Levant (Israel, Syria, Lebanon), particularly among Palestinians, Israeli Arabs and Jordanians. Musakhan is a dish that one typically eats with one's hands. It is usually presented with the chicken on top of the bread, and could be served with soup. The term 'musakhan' literally means 'something that is heated.'", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Mushakhan_Dish.jpg/250px-Mushakhan_Dish.jpg", location_id: 180 )

# NationalDish.create(name:"Hummus", description:"Hummus (/ˈhʊməs/, /ˈhʌməs/; Arabic: حُمُّص‎, 'chickpeas'; full Arabic name: ḥummuṣ bi-ṭaḥini Arabic: حمص بالطحينة‎, 'chickpeas in tahini') is a Levantine dip or spread made from cooked, mashed chickpeas or other beans, blended with tahini, olive oil, lemon juice, salt, and garlic. It is popular in the Middle East and Mediterranean, as well as in Middle Eastern cuisine around the globe. It can also be found in most grocery stores in North America and Europe.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Hummus_Dip_%2830863436677%29.jpg/220px-Hummus_Dip_%2830863436677%29.jpg", location_id: 180 )

# NationalDish.create(name:"Tahini", description:"Tahini /təˈhiːni, tɑː-/ or tahina /-nə/ is a condiment made from toasted ground hulled sesame. It is served by itself (as a dip) or as a major ingredient in hummus, baba ghanoush, and halva. Tahini is used in the cuisines of the Eastern Mediterranean, the South Caucasus, and the Middle East, as well as parts of North Africa. It is also used in Chinese and Southeast Asian cuisine. Plain, unprocessed sesame paste with no added ingredients is sometimes known as raw tahini.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Tahina.JPG/250px-Tahina.JPG", location_id: 180 )

# NationalDish.create(name:"Sancocho De Gallina", description:"Also known as sancocho de gallina, it is the national dish of Panama. The basic ingredients are chicken, ñame (adding flavor and acting as a thickener, giving it its characteristic texture and brightness), and culantro (giving it most of its characteristic flavor and greenish tone); often yuca, mazorca (corn on the cob) and otoe are added. Other optional ingredients include ñampí (as the Eddoe variety of Taro is known), chopped onions, garlic and oregano. It is frequently served with white rice on the side, meant to be either mixed in or eaten with each spoonful. Hot sauce is frequently added, depending on regional and individual preferences. Regional varieties include Sancocho chorrerano (a specialty of the town of La Chorrera, which is only made with free-range chicken, onions, garlic, chili peppers, oregano and ñame) and Sancocho chiricano (a specialty from Chiriquí Province and the heartiest variety, containing squash in addition to all basic and optional ingredients mentioned before, having a yellowish color as a result). It is often recommended as the best remedy for a hangover. It is used as a metaphor for the country's racial diversity due to the varied ingredients that contribute their particular properties to and having an equally important role in the cooking process and final product.", image:"https://images-gmi-pmc.edge-generalmills.com/a32379ab-65fb-4242-9e07-28fbb087524e.jpg", location_id: 170 )

# NationalDish.create(name:"Mumu", description:"Mumu is actually a way in which Papua New Guineans cook.  Although now there are ovens available in some households, the cooking mumu style is a tradition that still continues today.  The typical mumu is a pit that has fiery hot coals placed inside.  Banana leaves are next and then the food.  The food is placed with root vegetables and starches like plantains on the bottom, next the meat then the fruit, followed by leafy greens.  The whole thing is wrapped up further in banana leaf to make a steamer environment inside the package.  Some tribes cover the top with soil and for some that is taboo.  Some mumu is cooked dry while others are cooked wet with coconut milk.", image:"https://www.internationalcuisine.com/wp-content/uploads/2018/08/mumu-500x375.jpg", location_id: 173 )

# NationalDish.create(name:"Sopa paraguaya", description:"Sopa paraguaya, Paraguayan soup, is a traditional Paraguayan food. Literally meaning 'Paraguayan soup', sopa paraguaya is similar to corn bread. Corn flour, cheese and milk or whey are common ingredients. It is a spongy cake rich in caloric and protein content. According to the Paraguayan folklorist Margarita Miró Ibars, sopa paraguaya is 'the product of Guaraní-Spanish syncretism. Sopa is similar to another corn based Paraguayan typical dish, chipahuazu or chipaguazu, except that the latter is made with fresh corn. The consistency is a little bit more like a cheesy soufflé and less like a savory cornbread. This dish is often served with a Paraguayan beef soup.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Sopa_Paraguaya.jpg/300px-Sopa_Paraguaya.jpg", location_id: 183 )

# NationalDish.create(name:"Ceviche" , description:"Ceviche, also cebiche, seviche or sebiche (Spanish pronunciation: [seˈβitʃe]), is the seafood dish originated in Peru typically made from fresh raw fish cured in citrus juices, such as lemon or lime, and spiced with ají, chili peppers or other seasonings including chopped onions, salt, and cilantro. Because the dish is not cooked with heat, it must be prepared and consumed fresh to minimize the risk of food poisoning. Ceviche is usually accompanied by side dishes that complement its flavors, such as sweet potato, lettuce, corn, avocado or plantain. The dish is popular in the Pacific coastal regions of Latin America. Though the origin of ceviche is hotly debated, in Peru it is considered a national dish. Though archeological records suggest that something resembling ceviche may have been consumed in Peru nearly two thousand years ago, some historians believe the predecessor to the dish was brought to Peru by Moorish women from Granada, who accompanied the Spanish conquistadors and colonizers, and this dish eventually evolved into what is now considered ceviche. Peruvian chef Gastón Acurio further explains that the dominant position Lima held through four centuries as the capital of the Viceroyalty of Peru allowed for popular dishes such as ceviche to be brought to other Spanish colonies in the region, and in time they became a part of local cuisine by incorporating regional flavors and styles. Ceviche is now a popular international dish prepared in a variety of ways throughout the Americas, reaching the United States in the 1980s. The greatest variety of ceviches are found in Ecuador, Colombia, Chile and Peru; but other distinctly unique styles can also be found in coastal Honduras, El Salvador, Belize, Guatemala, the United States, Mexico, Panama, and several other nations." , image:"https://i1.wp.com/coleycooks.com/wp-content/uploads/2016/09/IMG_7543.jpg?w=2000&ssl=1", location_id: 171 )

# NationalDish.create(name:"Adobo", description:"Philippine adobo (from Spanish adobar: 'marinade,' 'sauce' or 'seasoning') is a popular Filipino dish and cooking process in Filipino cuisine that involves meat, seafood, or vegetables marinated in vinegar, soy sauce, garlic, and black peppercorns, which is browned in oil, and simmered in the marinade. It has occasionally been considered as the unofficial national dish in the Philippines.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Chicken_adobo.jpg/220px-Chicken_adobo.jpg", location_id: 174 )

# NationalDish.create(name:"Sinigang", description:"Sinigang is a Filipino soup or stew characterized by its sour and savoury taste most often associated with tamarind (Filipino: sampalok). It is one of the more popular dishes in Filipino cuisine.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Sinigang_na_Baboy.jpg/275px-Sinigang_na_Baboy.jpg", location_id: 174 )

# NationalDish.create(name:"Bigos", description:"Bigos (Polish pronunciation: [ˈbʲiɡɔs]; Belarusian: бігас, bihas, or бігус, bihus, Lithuanian: bigusas), often translated into English as hunter's stew, is a Polish dish of chopped meat of various kinds stewed with sauerkraut and shredded fresh cabbage. The dish is also traditional for Belarusian, Ukrainian and Lithuanian cuisine.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Bigos_polonia.jpg/300px-Bigos_polonia.jpg", location_id: 176 )

# NationalDish.create(name:"Pierogi", description:"Pierogi (/pɪˈroʊɡi/ pih-ROH-ghee) are filled dumplings of Central and Eastern European origin, made by wrapping unleavened dough around a savory or sweet filling and cooking in boiling water, or pan-frying. Pierogi which consist of noodle dough and have to be cooked in boiling water are associated with the Central and Eastern European kitchens where they are considered national dishes, especially in Poland. Pierogi are popular in West Slavic (Polish, Slovak), Hungarian, East Slavic (Belarusian, Ukrainian and Russian), some Baltic (Latvian and Lithuanian) and other Central and Eastern European cuisines, where they are known under their local names. Typical fillings include potato, sauerkraut, ground meat, cheese and fruits. The dumplings may be served with a topping, such as melted butter, sour cream or fried onion, or a combination of those ingredients.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Pierogi_z_cebulk%C4%85.jpg/220px-Pierogi_z_cebulk%C4%85.jpg", location_id: 176 )

# NationalDish.create(name:"Kotlet Schabowy", description:"Kotlet schabowy [ˈkɔtlɛt sxaˈbɔvɨ] is a Polish variety of pork breaded cutlet coated with breadcrumbs similar to Viennese schnitzel, but made of pork tenderloin (with the bone or without), or with pork chop. There's also the Polish variety of the chicken breast cutlet coated with breadcrumbs looking somewhat similar, or the turkey cutlet coated with breadcrumbs (kotlet z indyka [ˈkɔtlɛt z inˈdɨka]) made the same way. The history of the Polish pork cutlet schabowy dates back to the 19th century. The collection of different recipes for cutlets such as schabowy is featured in an 1860 cookbook by Lucyna Ćwierczakiewiczowa entitled 365 obiadów za pięć złotych (365 Dinners for Five Zloty), but missing from the 1786 cookbook by Wojciech Wielądek called Kucharz doskonały (The Perfect Chef), thus suggesting, that the dish wasn't known (or at least, wasn't popular) before the 19th century. Typical ingredients include: eggs, lard or oil, spices, pork tenderloin with or without bone, breadcrumbs and flour. Pork tenderloin is cut into 1 inch slices and pounded with mallet until it becomes thinner and soft. It is marinated in milk and onions. Eggs and spices are combined on a separate plate and lightly beaten. The meat is dipped in flour, then in egg, and then covered in breadcrumbs. The oil is heated in a frying pan till it starts to sizzle and the meat is placed onto it, then turned over a couple of times. Served hot. Kotlet schabowy can be served with cooked potatoes, mashed potatoes, fried mushrooms, cooked vegetables (seared cabbage), with salads or with coleslaw.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/Kotlet_Schabowy.jpg/270px-Kotlet_Schabowy.jpg", location_id: 176 )

# NationalDish.create(name:"Żurek", description:"Żur (Polish: żur, diminutive: żurek) is a soup made of soured rye flour (akin to sourdough) and meat (usually boiled pork sausage or pieces of smoked sausage, bacon or ham). The recipe varies from region to region. In Poland it is sometimes served in an edible bowl made of bread or with boiled potatoes. In Silesia, a type of sour rye soup known as żur śląski is served in a bowl, poured over mashed potatoes. In the Podlaskie region, it is common to eat żurek with halved hard-boiled eggs. In Polish Subcarpathia, there is a traditional variety made of fermented oatmeal (Polish: żur owsiany or kisełycia). In Poland żurek is traditionally eaten at Easter, but is also popular during other parts of the year. It is sometimes flavored with bits of sausage, usually eaten with bread or buns.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/%C5%BBurek_w_chlebku.JPG/250px-%C5%BBurek_w_chlebku.JPG", location_id: 176 )

# NationalDish.create(name:"Gołąbki", description:"Gołąbki [ɡɔˈwɔmpki] is the Polish name of a dish popular in cuisines of Central Europe, made from boiled cabbage leaves wrapped around a filling of minced pork or beef, chopped onions, and rice or barley. Gołąbki is the plural form of gołąbek, the diminutive form of gołąb, meaning 'pigeon', referring to the roll's shape. Gołąbki are often served during the Christmas season and on festive occasions such as weddings. They are also a featured dish for family reunions amongst Polish Americans. An alternative to the dish are Jewish holishkes, served on Sukkot and Simchat Torah.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/00101_Rindfleisch_-_Kohlroulade%2C_Podkarpackie.JPG/250px-00101_Rindfleisch_-_Kohlroulade%2C_Podkarpackie.JPG", location_id: 176 )

# NationalDish.create(name:"Cozido à portuguesa", description:"Cozido à portuguesa (pronounced [kuˈziðu a puɾtuˈɣeza]) or Portuguese boiled dinner is a type of cozido, traditional Portuguese stew. Numerous regional variations exist throughout Portugal, and the dish is considered part of the Portuguese heritage, as well as one of the national dishes of Portugal.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Cozido_a_portuguesa_1.JPG/220px-Cozido_a_portuguesa_1.JPG", location_id: 181 )

# NationalDish.create(name:"Bacalhau", description:"Bacalhau (Portuguese pronunciation: [bɐkɐˈʎaw]) is the Portuguese word for cod and—in a culinary context—dried and salted cod. Fresh (unsalted) cod is referred to as bacalhau fresco (fresh cod). There are numerous bacalhau recipe variations, depending on region and tradition.In Portugal, it is said there are more than 365 ways to cook bacalhau, one for every day of the year; others say there are 1,001 ways. Whatever the exact number, bacalhau is a ubiquitous ingredient in Portuguese cuisine. Bacalhau is often served with potatoes. Green (Vinho Verde) or mature wines (Alentejo Wine, Dão Wine, or Douro Wine) are served alongside.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Bacalhoada.jpg/220px-Bacalhoada.jpg", location_id: 181 )

# NationalDish.create(name:"Sardinhas", description:"Sardines play an important role in Portuguese cuisine and culture. Historically a people who depend heavily on the sea for food and commerce, the Portuguese have a predilection for fish in their popular festivities. The most important is Saint Anthony's day, June 13, when Portugal's biggest popular festival takes place in Lisbon, where grilled sardines are the snack of choice. Almost every place in Portugal, from Figueira da Foz to Portalegre, from Póvoa de Varzim to Olhão, has the summertime tradition of eating grilled sardines (sardinhas assadas).", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Grilled_Sardines_5.50%E2%82%AC_Marisqueira_O_Varino_Nazar%C3%A9_%283785526688%29.jpg/160px-Grilled_Sardines_5.50%E2%82%AC_Marisqueira_O_Varino_Nazar%C3%A9_%283785526688%29.jpg", location_id: 181 )

# NationalDish.create(name:"Francesinha", description:"Francesinha (meaning Little Frenchie or simply Frenchie in Portuguese) is a Portuguese sandwich originally from Porto, made with bread, wet-cured ham, linguiça, fresh sausage like chipolata, steak or roast meat, and covered with melted cheese and a hot thick tomato and beer sauce. It is typically served with french fries.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Francesinhacaseira.JPG/250px-Francesinhacaseira.JPG", location_id: 181 )

# NationalDish.create(name:"Machboos" , description:" The dish is also popularly known as makbūs (مكبوس/مچبوس Gulf pron.: [mɑtʃˈbuːs]). Kabsa (Arabic: كبسة‎ kabsah) is a mixed rice dish that originates from Saudi Arabia but is commonly regarded as a national dish in many Arab states of the Persian Gulf. The dish is made with rice and meat. It can often be found served in countries such as Yemen, Somalia, Qatar, Oman, the United Arab Emirates, Bahrain, Saudi Arabia and Kuwait." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Kabsa.jpg/220px-Kabsa.jpg", location_id: 184 )

# NationalDish.create(name:"Mămăligă", description:"Mămăligă (Romanian pronunciation: [məməˈliɡə] (About this soundlisten);) is a porridge made out of yellow maize flour, traditional in Romania, Moldova, Chechnya, Ossetia, Georgia and in Eastern Galicia. Preparing the traditional dish is also continued by Poles from L'viv whose families were resettled in the Recovered Territories after World War II. In Italy, Switzerland, Slovenia, and Croatia, this dish is known as polenta.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Mamaliga.jpg/220px-Mamaliga.jpg", location_id: 186 )

# NationalDish.create(name:"Sarmale", description:"Sarma (from Turkish word 'sarmak', meaning 'to wrap') is a dish of vine, cabbage, monk's rhubarb or chard leaves rolled around a filling usually based on a combination of grains, like bulgur or rice, and minced meat. It is found in the cuisines of the former Ottoman Empire from the Middle East to Southeastern Europe. Stuffed vine leaves without meat are sometimes called yalancı dolma, which means 'liar's dolma' in Turkish. Vişneli yalancı dolması is a variation of stuffed vine leaves where the rice is seasoned with cinnamon, allspice and mint. The dolmas are slowly cooked together with morello cherries (vişne), and plums may be used also. In a version from the Turkish chef Arda Türkmen, the rice is cooked in morello cherry juice with spices, sour pomegranate syrup (nar ekşisi), currants and toasted pine nuts.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Dolma-Azerbaijan.jpg/220px-Dolma-Azerbaijan.jpg", location_id: 186 )

# NationalDish.create(name:"Mici", description:"Mititei or Mici (both romanian words meaning 'little ones' / 'small ones') is a dish from romanian cuisine, consisting of grilled ground meat rolls in cylindrical shape made from a mixture of beef, lamb and pork with spices, such as garlic, black pepper, thyme, coriander, anise, savory, and sometimes a touch of paprika. Sodium bicarbonate and broth or water are also added to the mixture. It is similar to ćevapi and other ground meat based dishes throughout the Balkans and Middle East. It is often served with french fries, mustard and murături (green pickled vegetables).", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Mititei_aufm_Grill.jpg/260px-Mititei_aufm_Grill.jpg", location_id: 186 )

# NationalDish.create(name:"Pelmeni", description:"Pelmeni (Russian pronunciation: [pʲɪlʲˈmʲenʲɪ]; Russian: пельме́ни — plural, пельмень Russian pronunciation: [pʲɪlʲˈmʲenʲ] — singular) are dumplings of Russian cuisine that consist of a filling wrapped in thin, unleavened dough. The debate about the exact place of origin is still active, with Ural and Siberia both maintaining strong claims. Pelmeni are considered as the heart of Russian cuisine.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Pelmeni_Russian.jpg/250px-Pelmeni_Russian.jpg", location_id: 188 )

# NationalDish.create(name:"Shchi", description:"Shchi (Russian: щи, IPA: [ɕːi] (About this soundlisten)) is a Russian-style cabbage soup. When sauerkraut is used instead, the soup is called sour shchi, while soups based on sorrel, spinach, nettle, and similar plants are called green shchi (Russian: зелёные щи, zelyoniye shchi). In the past, the term sour shchi was also used to refer to a drink, a variation of kvass, which was unrelated to the soup.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Schi.jpg/250px-Schi.jpg", location_id: 188 )

# NationalDish.create(name:"Borscht", description:"Borscht (English: /ˈbɔːrʃ, ˈbɔːrʃt/ (About this soundlisten)) is a sour soup common in Eastern Europe and Northern Asia. In English, the word 'borscht' is most often associated with the soup's variant of Ukrainian origin, made with beetroots as one of the main ingredients, which give the dish its distinctive red color. The same name, however, is also used for a wide selection of sour-tasting soups without beetroots, such as sorrel-based green borscht, rye-based white borscht and cabbage borscht. Borscht derives from an ancient soup originally cooked from pickled stems, leaves and umbels of common hogweed (Heracleum sphondylium), a herbaceous plant growing in damp meadows, which lent the dish its Slavic name. With time, it evolved into a diverse array of tart soups, among which the beet-based red borscht has become the most popular. It is typically made by combining meat or bone stock with sautéed vegetables, which – as well as beetroots – usually include cabbage, carrots, onions, potatoes and tomatoes. Depending on the recipe, borscht may include meat or fish, or be purely vegetarian; it may be served either hot or cold; and it may range from a hearty one-pot meal to a clear broth or a smooth drink. It is often served with smetana or sour cream, hard-boiled eggs or potatoes, but there exists an ample choice of more involved garnishes and side dishes, such as uszka or pampushky, that can be served with the soup.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Borscht_served.jpg/300px-Borscht_served.jpg", location_id: 188 )

# NationalDish.create(name:"Kasha", description:"In the English language, kasha is a term for the pseudocereal buckwheat. In Central and Eastern Europe, especially in Belarus, the Czech Republic, Poland, Russia, and Ukraine, kasha is a dish made of any kind of grains boiled in water or milk, i.e. a porridge. The largest gross consumption per capita is in Russia, with 15 kg (33 lb) per year followed by Ukraine, with 12 kg (26 lb) per year. The share of buckwheat in the total consumption of cereals in Russia is 20%.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/%D0%93%D1%80%D0%B5%D1%87%D0%BD%D0%B5%D0%B2%D0%B0%D1%8F_%D0%BA%D0%B0%D1%88%D0%B0.jpg/250px-%D0%93%D1%80%D0%B5%D1%87%D0%BD%D0%B5%D0%B2%D0%B0%D1%8F_%D0%BA%D0%B0%D1%88%D0%B0.jpg", location_id: 188 )

# NationalDish.create(name:"Pirog", description:"Pirog (Russian: пиро́г, IPA: [pʲɪˈrok] (About this soundlisten), pl. pirogi пироги [pʲɪrɐˈɡʲi]; Belarusian: піро́г; Northern Sami: pirog; Latvian: pīrāgs pl. pīrāgi; Ukrainian: пиріг pyrih, pl. pyrohy пироги) is a baked case of dough with a sweet or savoury filling. Pirogi are common in Eastern European cuisines. Pirogi are characterised as 'the most popular and important dish' and 'truly national goods' of Russian cuisine, 'ubiquitous in Russian life'. The filling for pirogi may be sweet and contain quark or cottage cheese, fruits like apples, plums or various berries, as well as honey, nuts or poppy seeds. Savoury versions may consist of meat, fish, mushrooms, cabbage, rice, buckwheat groats or potato.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Fish_pie.JPG/265px-Fish_pie.JPG", location_id: 188 )

# NationalDish.create(name:"Pirozhki", description:"Pirozhki (Russian: пирожки, plural form of pirozhok, literally a 'small pie'), (Ukrainian: пиріжки, Pyrizhky) also transliterated as piroshki (singular piroshok) are a Russian, Ukrainian and Belarusian puff pastry which consists of individual-sized baked or fried buns stuffed with a variety of fillings. The stress in pirozhki is properly placed on the last syllable: [pʲɪrɐʂˈkʲi]. Pirozhok (About this soundпирожок (help·info), singular) is the diminutive form of the Russian pirog (пирог), which refers to a full-sized pie. (Unless the full-sized pie is called by the diminutive name for purely stylistic reasons.) Pirozhki are not to be confused with the pierogi/varenyky of Ukraine, Poland, and Slovakia (Eastern Europe/Central Europe). A common variety of pirozhki are baked stuffed buns made from yeast dough and often glazed with egg to produce the common golden color. They commonly contain meat (typically beef) or a vegetable filling (mashed potatoes, mushrooms, onions and egg, or cabbage). Pirozhki could also be stuffed with fish (e.g., salmon) or with an oatmeal filling mixed with meat or giblets. Sweet-based fillings could include stewed or fresh fruit (apples, cherries, apricots, chopped lemon, etc.), jam, quark or cottage cheese. The buns may be plain and stuffed with the filling, or else be made in a free-form style with strips of dough decoratively encasing the filling.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Piroshki.JPG/250px-Piroshki.JPG", location_id: 188 )

# NationalDish.create(name:"Ugali", description:"Nsima (also known as ugali and pap) is a type of cornmeal porridge made in Africa. It is also known as ngima, obusuma, kimnyet, nshima, Mieliepap, phutu, sadza, kwon, and other names. Nsima is sometimes made from other flours, such as millet or sorghum flour, and is sometimes mixed with cassava flour. It is cooked in boiling water or milk until it reaches a stiff or firm dough-like consistency.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Ugali_%26_Sukuma_Wiki.jpg/220px-Ugali_%26_Sukuma_Wiki.jpg", location_id: 189 )

# NationalDish.create(name:"Stewed Saltfish with Spicy Plantains and Coconut Dumplings", description:"Dried and salted cod, sometimes referred to as salt cod or saltfish, is cod which has been preserved by drying after salting. Cod which has been dried without the addition of salt is stockfish. Salt cod was long a major export of the North Atlantic region, and has become an ingredient of many cuisines around the Atlantic and in the Mediterranean. With the sharp decline in the world stocks of cod, other salted and dried white fish are sometimes marketed as 'salt cod', and the term has become to some extent a generic name. Stewed saltfish served with spicy plantains, coconut dumplings and seasoned breadfruit. It is a tasty blend of locally available vegetables, spices, coconut and salted cod fish prepared with a distinct  St Kitts-Nevis flavor.", image:"https://blog.ingredientmatcher.com/wp-content/uploads/2015/09/Saint-kitts-and-nevis-1-1024x768.jpg", location_id: 118 )

# NationalDish.create(name:"Green Fig and Saltfish", description:"Green fig (banana may be used as a substitute) and saltfish is a recipe that is nowadays often prepared on weekends and special occasions. This is a dish that you will find on the tables during the Jounen Kweyol festival (October 28), along with seafood, sweets, and beverages such as cocoa tea or fresh juices. The International Day of the Creole language and culture is indeed an important celebration on this island that still has a rich French Creole culture.", image:"https://www.196flavors.com/wp-content/uploads/2015/10/Green-fig-and-saltfish-2.jpg", location_id: 126 )

# NationalDish.create(name:"Roasted Breadfruit and Fried Jackfish", description:"Often cited as the national dish of Saint Vincent and the Grenadines, this filling combination of roasted breadfruit and fried jackfish is usually enjoyed as a filling lunch option. Traditionally, the whole breadfruit is roasted over an open fire until it is slightly charred from the outside, while its center remains soft and tender. The fish is usually marinated in lemon juice before it is dusted in flour and fried until crispy. The dish is typically accompanied by a sauce that incorporates onions, tomatoes, garlic, thyme, or other vegetables and herbs.", image:"https://i1.wp.com/thecaribbeancurrent.com/wp-content/uploads/2012/10/Recipe-Roasted-Breadfruit-Jack-Fish_page2_image1.jpg?resize=250%2C208&ssl=1", location_id: 231 )

# NationalDish.create(name:"Palusami", description:"Laulau is a Native Hawaiian cuisine dish. The traditional preparation consisted of pork wrapped in taro or luau leaf. In old Hawaii laulau was assembled by taking a few luau leaves and placing a few pieces of fish and pork in the center. In modern times, the dish uses taro leaves, salted butterfish, and either pork, beef, or chicken and is usually steamed on the stove. Laulau is a typical plate lunch dish and is usually served with a side of rice and macaroni salad. In the classical preparation, the ends of the luau leaf are folded and wrapped again in the leaf. When ready, all the laulau is placed in an underground oven, called an imu. Hot rocks are placed on the dish and covered in banana leaves and buried again. A few hours later the laulau is ready to eat. Similar Polynesian dishes include Tongan 'lupulu' (containing corned beef) and Samoan 'palusami' and 'fai'ai' (which can contain fish, eel, shrimp, or other seafood alone or in combination).", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Lau_lau.jpg/220px-Lau_lau.jpg", location_id: 238 )

# NationalDish.create(name:"Torta Tre Monti", description:"Torta Tre Monti (from Italian: “three mountain cake”) is a traditional Sammarinese cake made of layers of thin waffled wafers cemented together by chocolate or hazelnut creme. The final product is covered in chocolate fondant. It is similar to other layered desserts common to San Marino, this one being representative of the Three Towers of San Marino.", image:"https://www.laserenissima.sm/46-thickbox_default/torta-tre-monti-cioccolato-confezione-in-cartone.jpg", location_id: 201 )

# NationalDish.create(name:"Palm Oil Stew", description:"The cuisine is based on tropical root crops, plantains, and bananas, with fish as the most common source of protein. The vegetables consist of gathered indigenous greens that are cooked in red palm oil.", image:"https://i.pinimg.com/originals/05/c0/bb/05c0bbd11b781630f26401d43703260b.jpg", location_id: 205 )

# NationalDish.create(name:"Kabsa", description:"Kabsa (Arabic: كبسة‎ kabsah) is a mixed rice dish that originates from Saudi Arabia but is commonly regarded as a national dish in many Arab states of the Persian Gulf. The dish is made with rice and meat. It can often be found served in countries such as Yemen, Somalia, Qatar, Oman, the United Arab Emirates, Bahrain, Saudi Arabia and Kuwait. The dish is also popularly known as makbūs.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Kabsa.jpg/220px-Kabsa.jpg", location_id: 190 )

# NationalDish.create(name:"Saleeg", description:"Saleeg (Arabic: سليق‎ Hejazi pronunciation: [saˈliːg]) is a white-rice dish, cooked with broth (chicken or other meat) and milk. It originates in Hejaz region in the west of Saudi Arabia, where it is commonly regarded as a national dish of the region. The dish is very popular in the city of Taif. Saleeg originated in the Hijaz region but is now popular all over the Arab world.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/The_Hijazi_Saleeg.jpg/220px-The_Hijazi_Saleeg.jpg", location_id: 190 )

# NationalDish.create(name:"Thieboudienne", description:"Thieboudienne or chebu jen (Wolof: ceebu jën; French: thiéboudienne, thiéboudiène, thiébou dieune, phonetic approximations of the Wolof) is a traditional dish from Senegal. It is made from fish, rice and tomato sauce. Other ingredients often include onions, carrots, cabbage, cassava and peanut oil. These ingredients are common in the country. The name of the dish comes from Wolof words meaning 'rice' (ceeb) and 'fish' (jën). The American Southern dish Savannah red rice resembles thieboudienne, suggesting a Creolization of the dish from West Africa to the New World.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Thieboudienne.JPG/220px-Thieboudienne.JPG", location_id: 202 )

# NationalDish.create(name:"Poulet Yassa", description:"Yassa is a spicy dish prepared with onions and either marinated poultry or marinated fish. Originally from Senegal, yassa has become popular throughout West Africa. Chicken yassa (known as yassa au poulet), prepared with onions and lemon, is a specialty from the Casamance region in the south of Senegal.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Poulet_Yassa_Chicken_rice_with_onion_sauce.jpg/440px-Poulet_Yassa_Chicken_rice_with_onion_sauce.jpg", location_id: 202 )

# NationalDish.create(name:"Ćevapčići" , description:"Ćevapi (pronounced [tɕɛv̞ǎːpi], Cyrillic: ћевапи) or ćevapčići (formal diminutive, [tɕɛv̞ǎptʃitɕi], Cyrillic: ћевапчићи) is a grilled dish of minced meat, a type of kebab, found traditionally in the countries of southeastern Europe (the Balkans). They are considered a national dish in Bosnia and Herzegovina, and Croatia and are also common in Serbia, Montenegro, Albania, Slovenia, as well as in North Macedonia, Bulgaria and Austria. Ćevapi has its origins in the Balkans during the Ottoman period, and represents a regional speciality similar to the köfte kebab. They are usually served in groups of five to ten pieces on a plate or in a flatbread (lepinje or somun), often with chopped onions, sour cream, kajmak, ajvar, feta cheese, minced red pepper and salt. Bosnian ćevapi are made from two types of minced beef meat, hand-mixed and formed with a funnel, while formed ćevapi are grilled. Serb ćevapčići are made of either beef, lamb or pork or mixed." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Original_Bosnian_Cevapcici.JPG/220px-Original_Bosnian_Cevapcici.JPG", location_id: 187 )

# NationalDish.create(name:"Pljeskavica", description:"Pljeskavica (Serbian Cyrillic: пљескавица, pronounced [pʎɛ̂skaʋitsa]), a grilled dish of spiced meat patty mixture of pork, beef and lamb, is a national dish of Serbia, also popular in Bosnia and Herzegovina and Croatia. It is a main course served with onions, kajmak (milk cream), ajvar (relish), and urnebes (spicy cheese salad), either on plate with side dishes, or with lepinja (flatbread, as a type of hamburger). Recently, Pljeskavica has gained popularity elsewhere in Europe and is served in a few speciality fast food restaurants in Germany, Sweden, and Austria. Varieties include the 'Leskovac Pljeskavica' (Leskovačka pljeskavica) very spicy with onions, 'Šar Pljeskavica' (Šarska pljeskavica) stuffed with kačkavalj cheese, 'Hajduk Pljeskavica' (Hajdučka pljeskavica) of beef mixed with smoked pork meat, and 'Vranje Pljeskavica' (Vranjanska pljeskavica).", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/Pleskavitsa.JPG/220px-Pleskavitsa.JPG", location_id: 187 )

# NationalDish.create(name:"Ražnjići", description:"Ražnjići is a popular serbian speciality of grilled meat on a skewer, equivalent of the Greek souvlaki and Turkish şaşlık. The name is derived from ražanj' meaning skewer'.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Pilecin_raznjici_New_%2816456582880%29.jpg/220px-Pilecin_raznjici_New_%2816456582880%29.jpg", location_id: 187 )

# NationalDish.create(name:"Gibanica", description:"Gibanica (Serbian Cyrillic: Гибаница, [ˈɡibanit͡sa]) is a traditional pastry dish popular all over the Balkans. It is usually made with cottage cheese and eggs. Recipes can range from sweet to savoury, and from simple to festive and elaborate multi-layered cakes. A derivative of the South Slavic verb gibati/гибати meaning 'to fold; sway, swing, rock', the pastry was mentioned in Serbian linguist Vuk Stefanović Karadžić's Serbian Dictionary in (1818) and by a Slovenian priest Jožef Kosič in 1828, where it was described as a special Slovenian cake which is 'a must at wedding festivities and is also served to workers after finishing a big project'. It is a type of layered strudel, a combination of Turkish and Austrian influences in different cuisines of the former Yugoslavia. Today the versions of this cake can be found in Slovenia, Croatia, Serbia, Bosnia, and other regions of the former Yugoslavia. Variants of this rich layered strudel are found in Hungary, Bulgaria, North Macedonia, Greece, Turkey, and Syria.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Gibanica_single_slice_with_full_pie_in_background.jpg/250px-Gibanica_single_slice_with_full_pie_in_background.jpg", location_id: 187 )

# NationalDish.create(name:"Ajvar", description:"Ajvar (Serbian Cyrillic: ajвар; Albanian: ajvari; Bulgarian: aйвар; Macedonian: aјвар; ) (pronounced /ˈaɪvɑːr/) is a pepper-based condiment made principally from red bell peppers and oil. Ajvar is used in the Balkans in Serbian, Albanian, Bosnian, Bulgarian, Croatian, Macedonian, and to a small degree the Slovenian cuisine. In Serbia, it was long known as 'Serbian salad' or 'Serbian vegetable caviar'. It became a popular side dish throughout Yugoslavia after World War II and is nowadays popular in Southeastern Europe. Homemade ajvar is made of roasted or cooked peppers. Depending on the capsaicin content in bell peppers and the amount of added chili peppers, it can be sweet (traditional), piquant (the most common), or very hot (ljutenica). Ajvar can be consumed as a bread spread or as a side dish.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/%D0%A2%D1%80%D0%B0%D0%B4%D0%B8%D1%86%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D0%BD%D0%BE_%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%80%D0%B0%D0%BD_%D0%B0%D1%98%D0%B2%D0%B0%D1%80.jpg/250px-%D0%A2%D1%80%D0%B0%D0%B4%D0%B8%D1%86%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D0%BD%D0%BE_%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%80%D0%B0%D0%BD_%D0%B0%D1%98%D0%B2%D0%B0%D1%80.jpg", location_id: 187 )

# NationalDish.create(name:"Pasulj", description:"Pasulj (from phaseolus; Serbian Cyrillic: Пасуљ) or Grah (in Bosnian), is a bean soup made of usually white, cranberry or pinto beans, and more rarely kidney beans, that is common in Serbian, Montenegrin, Bosnian, Croatian and Slovenian cuisine (former Yugoslavia). It is normally prepared with meat, particularly smoked meat such as smoked bacon, sausage, and ham hock, and is a typical winter dish. Other commonly used ingredients include carrots and onions. Another version of the dish using baked beans is known as Prebranac (Пребранац). It has also spread via the diaspora, and is known in English as Serbian bean soup, and in German-speaking countries as Serbische Bohnensuppe ('Serbian bean soup'). In Macedonia, a spicy and thicker variant is known as Gravče na tavče (beans on a skillet).", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Pasulj.jpg/220px-Pasulj.jpg", location_id: 187 )

# NationalDish.create(name:"Punjena Paprika", description:"Punjena paprika (pronounced [pûɲenaː pǎprika]) (lit. stuffed pepper) is a dish made of peppers, stuffed with a mix of meat and rice in tomato sauce, the ingredients consisting of green or red capsicums, eggs, spices, salt, tomato, minced meat and rice.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Punjena_Paprika.JPG/280px-Punjena_Paprika.JPG", location_id: 187 )

# NationalDish.create(name:"Sarma", description:"Sarma (from Turkish word 'sarmak', meaning 'to wrap') is a dish of vine, cabbage, monk's rhubarb or chard leaves rolled around a filling usually based on a combination of grains, like bulgur or rice, and minced meat. It is found in the cuisines of the former Ottoman Empire from the Middle East to Southeastern Europe. Stuffed vine leaves without meat are sometimes called yalancı dolma, which means 'liar's dolma' in Turkish. Vişneli yalancı dolması is a variation of stuffed vine leaves where the rice is seasoned with cinnamon, allspice and mint. The dolmas are slowly cooked together with morello cherries (vişne), and plums may be used also. In a version from the Turkish chef Arda Türkmen, the rice is cooked in morello cherry juice with spices, sour pomegranate syrup (nar ekşisi), currants and toasted pine nuts.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Dolma-Azerbaijan.jpg/220px-Dolma-Azerbaijan.jpg", location_id: 187 )

# NationalDish.create(name:"Riblja Čorba", description:"Fisherman's soup or halászlé (Hungarian pronunciation: [ˈhɒlaːsleː]) is a hot, spicy paprika-based river fish soup, originating as a dish of Hungarian cuisine, a bright-red hot soup prepared with generous amounts of hot paprika and carp or mixed river fish, characteristic for the cuisines of the Pannonian Plain, particularly prepared in the Danube and Tisza river regions. With its generous use of hot paprika, halászlé is arguably one of the hottest (spicy hot) dishes native to the European continent.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Hungarian_soup_03976.jpg/220px-Hungarian_soup_03976.jpg", location_id: 187 )

# NationalDish.create(name:"Fruit Bat Soup", description:"Bats are a food source for humans in the Pacific Rim and Asia. Bats are consumed in various amounts in Indonesia, Thailand, Vietnam, Guam, and in other Asian and Pacific Rim countries and cultures. In Guam, Mariana fruit bats (Pteropus mariannus) are considered a delicacy, and a flying fox bat species was made endangered due to being hunted there. In addition to being hunted as a food source for humans, bats are also hunted for their skins. Hunting techniques include netting and with a shotgun. The 1999 version of The Oxford Companion to Food states that the flavor of fruit bats is similar to that of chicken, and that they are 'clean animals living exclusively on fruit'. Bats are prepared in several manners, such as grilled, barbecued, deep fried, cooked in stews and in stir frys. When deep fried, the entire bat may be cooked and consumed. Bats have a low fat content and are high in protein. During cooking, bats may emit strong odors reminiscent of urine. This may be reduced by adding garlic, onion, chili pepper or beer during cooking.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Paniki_Rica_Cabai_Hijau.JPG/220px-Paniki_Rica_Cabai_Hijau.JPG", location_id: 192 )

# NationalDish.create(name:"Cassava Leaves", description:"Cassava-based dishes are widely consumed wherever the plant is cultivated; some have regional, national, or ethnic importance. Cassava must be cooked properly to detoxify it before it is eaten.Cassava can be cooked in many ways. The root of the sweet variety has a delicate flavor and can replace potatoes. It is used in cholent in some households. It can be made into a flour that is used in breads, cakes and cookies. In Brazil, detoxified manioc is ground and cooked to a dry, often hard or crunchy meal known as farofa used as a condiment, toasted in butter, or eaten alone as a side dish.", image:"https://www.africanbites.com/wp-content/uploads/2014/01/IMG_0719.jpg", location_id: 200 )

# NationalDish.create(name:"Chilli Crab", description:"Chilli crab is a Southeast Asian seafood dish. Mud crabs are commonly used and are stir-fried in a semi-thick, sweet and savoury tomato and chilli based sauce. Despite its name, chilli crab is not a very spicy dish. It is listed at number 35 on the World's 50 most delicious foods compiled by CNN Go in 2011.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Chilli_crab-02.jpg/250px-Chilli_crab-02.jpg", location_id: 195 )

# NationalDish.create(name:"Hainanese Chicken Rice", description:"Hainanese chicken rice is a dish of poached chicken and seasoned rice, served with chilli sauce and usually comes with cucumber garnishes. It was created by immigrants from Hainan province in southern China and adapted from the Hainanese dish Wenchang chicken. It is considered one of the national dishes of Singapore and is most commonly associated with Singaporean cuisine but is also seen throughout Southeast Asia, particularly Malaysia where it is a culinary staple.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Hainanese_Chicken_Rice.jpg/220px-Hainanese_Chicken_Rice.jpg", location_id: 195 )

# NationalDish.create(name:"Bryndzové Halušky", description:"Bryndzové halušky is one of the national dishes in Slovakia. This meal consists of halušky (boiled lumps of potato dough similar in appearance to gnocchi) and bryndza (a soft sheep cheese), optionally sprinkled with cooked bits of smoked pork fat/bacon. Žinčica is traditionally drunk with this meal. There is an annual Bryndzové Halušky festival in Turecká that features an eating contest.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Bryndzov%C3%A9_halu%C5%A1ky_so_slaninou.jpg/250px-Bryndzov%C3%A9_halu%C5%A1ky_so_slaninou.jpg", location_id: 199 )

# NationalDish.create(name:"Ajdovi Žganci", description:"Ajdovi žganci is a sort of žganci. Translated to English, it would be termed 'buckwheat spoonbread'. It is a national Slovene dish. Balthasar Hacquet (1739–1815) mentions that žganci was served with sauerkraut in Upper Carniola. The oldest preparation method explains the word žganci. The word žganci is derived from the Slovenian verb žgati meaning 'to burn' or 'to toast'. Ajdovi žganci are served together with obaras, meat sauces, sauerkraut, Black pudding, various sausages. The ingredients may vary through different regions. In general the main ingredients are buckwheat flour, water, salt, cracklings, oil or grease, and sometimes potatoes.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Ajdovi_zganci.JPG/220px-Ajdovi_zganci.JPG", location_id: 197 )

# NationalDish.create(name:"Belokranjska Povitica", description:"Belokranjska povitica (English: Bela krajina rolled cake) is a Slovenian national dish. It was supposedly brought to the Bela Krajina region by Uskoks, who were Croatian Habsburg soldiers that inhabited the areas of the eastern Adriatic area. The name itself, povitica, explains the preparation procedure. The term povitica is a derivate from verb poviti (English: to roll). The dough is made of flour, water, salt and 1/2 tea spoon of vinegar. The dough rests for half an hour. The dough is then rolled out and stretched out as thin as possible. The filling is made of curd cheese, eggs, heavy cream, oil and butter. The filling is spread evenly on the dough sheet, rolled into a swirl and placed in a greased baking tin.", image:"https://i.pinimg.com/originals/73/7e/c6/737ec6ea36109034715db46fcc45545e.jpg", location_id: 197 )

# NationalDish.create(name:"Obara", description:"Obara (stew) is a Slovene national dish. It is a stew served as an independent meal, which is cooked from various kinds of meat and internal organs. It used to be served at various ceremonies, and it is a part of the traditional Slovenian cuisine. Specially good are obaras served together with ajdovi žganci. Today obaras contain more vegetables. One type of obara is dormouse stew from Inner Carniola in Slovenia. Report was made by Paolo Santonino, Cancellar of the Patriarch of Aquileia in his travel diary (1485-1487). He reports of a lunch stop in an Inner Carniola household, where the farmer's wife quickly prepared a roast dormouse for hungry archbishop. Roast dormice were also used for soups, risottos and goulashes. Dormouse hunting was not appreciated only for meat, but it also supplied the hunters with large amounts of dormouse fur. Dormouse lard was also useful for medicinal purposes. It was used for healing bruised or broken extremities, upset stomach and rheumatism.", image:"https://i.pinimg.com/originals/9f/11/73/9f11738b4d28dd189ba8032641cb4fd7.jpg", location_id: 197 )

# NationalDish.create(name:"Poi", description:"Poi is primarily the traditional staple food in native cuisine of Hawaii, made from the underground plant stem (corm) of taro (known in Hawaiian as kalo). Traditional poi is produced by mashing the cooked corm (baked or steamed) on a papa ku‘i ‘ai, a wooden pounding board, with a pōhaku ku‘i ‘ai, a carved basalt pestle. Modern methods use an industrial food processor to produce large quantities for retail distribution. Freshly pounded taro without the addition of water is called pa‘i ‘ai and is highly starchy and dough-like. Water is added to the pa‘i ‘ai during mashing, and again just before eating, to achieve the desired consistency, which can range from highly viscous to liquid. As such, poi can be classified as 'one-finger', 'two-finger', or 'three-finger' depending on the consistency, alluding to how many fingers are required to scoop it up (the thicker the poi, the fewer fingers required to scoop a sufficient mouthful). Poi can be eaten immediately, when fresh and sweet, or left a bit longer to ferment and become more sour – it then develops a smell reminiscent of plain yoghurt. A layer of water on top can prevent fermenting poi from developing a crust.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Bowl_of_poi.jpg/220px-Bowl_of_poi.jpg", location_id: 191 )

# NationalDish.create(name:"Canjeero with Goat Stew", description:"Canjeero is a variant of Injera, ənǧära እንጀራ [ɨndʒəra]; which is a sourdough-risen flatbread with a slightly spongy texture, originating from the Horn of Africa. Traditionally made out of teff flour, it is the national dish of Ethiopia and Eritrea. It is central to the dining process in those cultures as bread is the most fundamental component of any meal in Ethiopian, Eritrean and Somali cuisine.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Alicha_1.jpg/250px-Alicha_1.jpg", location_id: 203 )

# NationalDish.create(name:"Lahoh", description:"Lahoh, also Luḥūḥ (Arabic: لحوح‎, Somali: Laxoox, Hebrew: לחוח‎), is a spongy, pancake-like bread originated from Yemen, Somalia and Djibouti. Lahoh is prepared from a dough of plain flour, self-raising flour, warm water, yeast, and a pinch of salt. The mixture is beaten by hand until soft and creamy . Sorghum is the preferred flour for making lahoh. There is a sweet-tasting variety of the dish, as well as another variety that is made with eggs. Lahoh is traditionally baked on a metallic circular stove called a taawa. Lacking that, it can also be baked in an ordinary pan.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/LahohS.jpg/250px-LahohS.jpg", location_id: 203 )

# NationalDish.create(name:"Bobotie", description:"Bobotie (Afrikaans: [bəˈbuəti]) is a well-known South African dish consisting of spiced minced meat baked with an egg-based topping. Bobotie appears to be a variant of Patinam ex lacte, a dish documented by the ancient Roman writer Apicius, layers of cooked meat, pine nuts, and seasoned with pepper, celery seeds and asafoetida. These were cooked until the flavours had blended, when a top layer of egg and milk was added. When the latter had set, the dish was ready to be served.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Bobootie_2.JPG/270px-Bobootie_2.JPG", location_id: 242 )

# NationalDish.create(name:"Kisra", description:"Kisra (also spelled kissra) is a popular thin fermented bread made in Sudan and South Sudan. It is made from durra or wheat. There are two different forms of kisra: thin baked sheets, known as kisra rhaheeefa, which is similar to injera; and a porridge known as kisra aseeda or aceda. The latter is usually paired with a meat and vegetable stew, such as mullah. As of 1995, the then-undivided country of Sudan ate an estimated 20,000 to 30,000 short tons (18,000 to 27,000 t) of sorghum flour annually in kisra.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Kisra_maker.jpeg/300px-Kisra_maker.jpeg", location_id: 245 )

# NationalDish.create(name:"Tortilla Española", description:"Spanish omelette, or literally Spanish tortilla, is the English name for a traditional dish from Spanish cuisine called tortilla española, tortilla de patatas or tortilla de papas. It is an omelette made with eggs and potatoes, sometimes also with onion; cooked in oil and often served at room temperature as an appetizer. It is part of the cuisine of Spain.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Tortilla_patatas.jpg/220px-Tortilla_patatas.jpg", location_id: 65 )

# NationalDish.create(name:"Rice and Curry", description:"Rice and curry dinner comprises of the following. One, A large bowl of rice, most often boiled, but frequently fried. Sometimes Kiribath, rice cooked in coconut milk, is served. Two, a vegetable curry, perhaps of green beans, jackfruit or leeks. Three, a curry of meat, most often chicken or fish but occasionally goat or lamb. Four, dhal, a dish of spiced lentils. Five, papadums, a thin crisp wafer made from legume or rice flour and served as a side dish. And six, sambals, which are fresh chutney side dishes; they may include red onion, chili, grated coconut, lime juice, and are often the hottest part of the meal.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/SL-rice_and_curry.jpg/250px-SL-rice_and_curry.jpg", location_id: 128 )

# NationalDish.create(name:"Kottu", description:"Kottu, also known as koththu rotti or kothu roti (Sinhala: කොත්තු රොටි; Tamil: கொத்து ரொட்டி; meaning chopped bread), is a Sri Lankan dish made from godhamba roti (a type of Sri Lankan roti) and vegetables, egg and/or meat, and spices. The bread is described as similar to the type found in the south Indian kothu parotta and roti canai, with the former dish overall being very similar to the Koththu Rotti. A common dinner dish, kottu has become popular in cities with a significant Sri Lankan diaspora population, such as Toronto and New York City's Little Sri Lanka neighborhood. Generally, the consumer chooses what and how much of the amount of ingredients are included if someone else is preparing. Kothu is considered the Sri Lankan equivalent of the hamburger, in terms of its popularity. A newly added variant of kottu is the dolphin kottu which is made from paratha, instead of godambha roti.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Kotthu_s_piletinom.JPG/200px-Kotthu_s_piletinom.JPG", location_id: 128 )

# NationalDish.create(name:"Kiribath", description:"Kiribath (Sinhala: කිරිබත්) is a traditional Sri Lankan dish made from rice. It is prepared by cooking rice with coconut milk, hence this name, and can be considered a form of rice cake or rice pudding. Kiribath is an essential dish in Sri Lankan cuisine. It is very commonly served for breakfast on the first day of each month and also has added significance of being eaten for any auspicious moment throughout one's lifetime which are marking times of transition. It is one of the more renowned traditional dishes in Sri Lanka.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Kiribath.jpg/250px-Kiribath.jpg", location_id: 128 )

# NationalDish.create(name:"Ful Medames", description:"Ful medames (Arabic: فول مدمس‎, fūl mudammas IPA: [fuːl mudammas]; other spellings include ful mudammas and foule mudammes), or simply fūl, is a stew of cooked fava beans served with vegetable oil, cumin, and optionally with chopped parsley, garlic, onion, lemon juice, chili pepper and other vegetable, herb and spice ingredients. It is notably a staple food in Egypt, especially in the northern cities of Cairo and Gizah. Ful medames is also a common part of the cuisines of many Arab, Middle Eastern and African cultures, including in Djibouti, Lebanon, Iraq, Syria, Libya, Palestine, Jordan, Ethiopia, Sudan, Yemen, Somalia and Saudi Arabia.", image:"https://upload.wikimedia.org/wikipedia/commons/b/bf/Ful_medames_%28arabic_meal%29.jpg", location_id: 193 )

# NationalDish.create(name:"Pom", description:"Pom is a Surinamese oven dish made using Arrowleaf elephant ear root, locally called 'pomtajer'. The basic preparation method is sautéed chicken pieces between two layers of raw, grated pomtajer, mixed with citrus juice and a sauce made from oil and/or margarine, onions, tomatoes, salt, pepper and nutmeg, baked in an oven until the pom becomes golden brown.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Surinaamse_pom_ovengerecht.JPG/220px-Surinaamse_pom_ovengerecht.JPG", location_id: 204 )

# NationalDish.create(name:"Roti and Curry", description:"Roti (also known as chapati) is a round flatbread native to the Indian subcontinent made from stoneground wholemeal flour, traditionally known as atta, and water that is combined into a dough. Roti is consumed in India, Pakistan, Nepal, Sri Lanka, Indonesia, Singapore, Maldives, Thailand, Malaysia and Bangladesh. It is also consumed in parts of Africa, Fiji, Mauritius and the Caribbean, particularly in Jamaica, Trinidad and Tobago, St Lucia, Guyana and Suriname. Its defining characteristic is that it is unleavened. Naan from the Indian subcontinent, by contrast, is a yeast-leavened bread, as is kulcha. Curry (plural curries) is a variety of dishes originating in the Indian subcontinent that use a complex combination of spices or herbs, usually including ground turmeric, cumin, coriander, ginger, and fresh or dried chilies. Curry is generally prepared in a sauce.", image:"http://2.bp.blogspot.com/-6XV9z_yMH3c/U0frDc0yMVI/AAAAAAAAAYw/MhiC5O8mn3A/s1600/2014-04-09+18.02.49.jpg", location_id: 204 )

# NationalDish.create(name:"Köttbullar", description:"In Sweden, köttbullar [ˈɕœtːbɵlar] are even often referred to as 'köttbullar' Meatballs come in a few different types, all typically small, and the international influence is great, perhaps the greatest from Sweden and Spain. They are usually eaten with potatoes or pasta. Some common additions are various vegetables, ketchup, various spices, etc. are made with ground beef or a mix of ground beef, pork and sometimes veal or venison, sometimes including breadcrumbs soaked in milk, finely chopped (fried) onions, some broth and often including cream. They are seasoned with white pepper or allspice and salt. Swedish meatballs are traditionally served with gravy, boiled potatoes, lingonberry jam, and sometimes pickled cucumber. Traditionally, they are small, around 2–3 centimetres (0.79–1.18 in) in diameter although larger meatballs are often served at restaurants.", image:"https://assets.icanet.se/q_auto,f_auto/imagevaultfiles/id_101413/cf_259/klassiska-kottbullar-712807.jpg", location_id: 194 )

# NationalDish.create(name:"Kräftskiva", description:"A crayfish party is a traditional summertime eating and drinking celebration in the Nordic countries. The tradition originated in Sweden, where a crayfish party is called a kräftskiva. The tradition has also spread to Finland via its Swedish-speaking population. A similar tradition exists in the Baltic countries in particular in Lithuania and Latvia. The crayfish are boiled in salt water and seasoned with fresh dill – preferably 'crown dill' harvested after the plant has flowered – then served cold and eaten with the fingers. Bread, mushroom pies, strong Västerbotten cheese, salads and other dishes are served buffet-style.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Cooked_crayfish_with_dill.jpg/260px-Cooked_crayfish_with_dill.jpg", location_id: 194 )

# NationalDish.create(name:"Surströmming", description:"WARNING: EXTREMELY SMELLY!! Surströmming (pronounced [²sʉːˌʂʈrœmːɪŋ]; Swedish for 'sour herring') is a lightly-salted fermented Baltic Sea herring. The Baltic herring, known as strömming in Swedish, is smaller than the Atlantic herring, found in the North Sea. Traditionally, the definition of strömming is 'herring fished in the brackish waters of the Baltic north of the Kalmar Strait'. The herring used for surströmming are caught just prior to spawning. During the production of surströmming, just enough salt is used to prevent the raw herring from rotting. A fermentation process of at least six months gives the fish a characteristic strong smell and somewhat acidic taste.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Surstr%C3%B6mming.jpg/220px-Surstr%C3%B6mming.jpg", location_id: 194 )

# NationalDish.create(name:"Ostkaka", description:"Ostkaka, 'ost' meaning 'cheese' and 'kaka' meaning 'cake' in Swedish (the definition of 'kaka' includes 'cookie' but is a wider concept), also known as Swedish cheesecake or Swedish curd cake, is a Swedish dessert that has its roots in two different parts of Sweden, Hälsingland and Småland, though there are some differences between ostkaka from Hälsingland and ostkaka from Småland. The dish has a rather firm consistency and subtle, creamy taste with a hint of almonds. It is usually eaten lukewarm with different jams, typically cloudberry, cherries or strawberry though lingonberry is often used, as well as fruits, whipped cream or, more rarely, ice cream. The reason for eating ostkaka while it is lukewarm is that if eaten too warm, the delicate flavors of the ostkaka will not come through, and if eaten too cold the consistency will be too firm and heavy.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Sm%C3%A5lands_b%C3%A4sta_ostkaka.jpg/250px-Sm%C3%A5lands_b%C3%A4sta_ostkaka.jpg", location_id: 194 )

# NationalDish.create(name:"Cervelat", description:"Cervelat, also cervelas, servelat or zervelat, is a sausage produced in Switzerland, France (especially Alsace and Lyon) and parts of Germany. The recipe and preparation of the sausage vary regionally. The sausages are called cervelas in the French-speaking part of Switzerland, Cervelat in the German-speaking part, and servelat in the Italian-speaking part. The terms ultimately derive from cerebrum, the Latin word for brain, which was used in early recipes. The term 'Cervelat' is the oldest of the three. It was first recorded in 1552 by Rabelais, and is derived from zervelada, a Milanese dialect word meaning a 'large, short sausage filled with meat and pork brains.''", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Cervelas_2.jpg/220px-Cervelas_2.jpg", location_id: 41 )

# NationalDish.create(name:"Fondue", description:"Fondue (au fromage) (UK: /ˈfɒnd(j)uː/, US: /fɒnˈd(j)uː/, French: [fɔ̃dy]) is a Swiss melted cheese dish served in a communal pot (caquelon or fondue pot) over a portable stove (réchaud) heated with a candle or spirit lamp, and eaten by dipping bread into the cheese using long-stemmed forks. It was promoted as a Swiss national dish by the Swiss Cheese Union (Schweizerische Käseunion) in the 1930s, and was popularized in North America in the 1960s.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Swiss_fondue.jpg/250px-Swiss_fondue.jpg", location_id: 41 )

# NationalDish.create(name:"Raclette", description:"Raclette /rəˈklɛt/ is a semi-hard cheese that is usually fashioned into a wheel of about 6 kg (13 lb). The Alpine cow milk based dairy product is most commonly used for melting, but is also consumed as a slice. Raclette is a Swiss dish, also very popular in Savoie (France), based on heating the cheese and scraping off (from French: racler) the melted part.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Raclette2.jpg/220px-Raclette2.jpg", location_id: 41 )

# NationalDish.create(name:"Rösti", description:"Rösti or rööschti (Alemannic German: [ˈrøːʃti]) is a Swiss dish consisting mainly of potatoes, in the style of a fritter. It was originally a breakfast dish, commonly eaten by farmers in the canton of Bern, but is now eaten all over Switzerland and around the world. The French name röstis bernois makes direct reference to the origins of the dish. Rather than considering it a complete breakfast, it is more commonly served to accompany other dishes such as Spinat und Spiegelei (spinach and fried eggs, sunny side up), cervelas or Fleischkäse.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Roesti.jpg/250px-Roesti.jpg", location_id: 41 )

# NationalDish.create(name:"Kibbeh", description:"Kibbeh (Arabic: كبة‎), (also spelled and pronounced kibbe, kebbah, kubbeh, kubbah or kubbi depending on region, and known in Egypt as kobeiba and in Turkey as içli köfte) is a Levantine dish made of bulgur, minced onions, and finely ground lean beef, lamb, goat, or camel meat with Middle Eastern spices (cinnamon, nutmeg, clove, allspice). Other types of kibbeh may be shaped into balls or patties, and baked, cooked in broth, or served raw. Kibbeh is considered to be the national dish of many Middle Eastern countries. Kibbeh is a popular dish in Middle Eastern cuisine. Mainly, it is found in Lebanon, Syria, Palestine, Jordan, Egypt (kubbeh, kebbah, or koubeiba), Iraq, as well as Armenia (Keufteh, ltsonvats kololak [ru]), Iran, Israel, Cyprus (koupa, plural koupes) and in Turkey it is called içli köfte. It is also found throughout Latin American countries which received substantial numbers of Levantine immigrants during the late 19th and early 20th centuries. In the region, the dish is particularly popular in the Yucatan peninsula and the Caribbean coastline of Colombia and in Brazil.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Kibbeh3.jpg/230px-Kibbeh3.jpg", location_id: 207 )

# NationalDish.create(name:"Beef Noodle Soup", description:"Beef noodle soup, is a noodle soup made of stewed or red braised beef, beef broth, vegetables and Chinese noodles. It exists in various forms throughout East Asia and Southeast Asia. Beef noodle soup was first created by the Hui people during the Tang Dynasty and is commonly known as Lanzhou beef noodle soup. The Sichuan beef noodle soup or Red-braised beef noodle soup (紅燒牛肉麵) is a dish from Sichuan as a variation of the original Hui dish. The dish was introduced to Taiwan by Sichaunese Kuomintang veterans who fled to the island during the Chinese Civil War and in the West is commonly known as Taiwanese beef noodle soup. In Taiwan, beef noodle vendors may have optional, often cold side dishes, such as braised dried tofu, seaweed or pork intestine. Beef noodles are often served with suan cai (Chinese sauerkraut) on top, green onion and sometimes other vegetables in the soup as well.", image:"https://sethlui.com/wp-content/uploads/2018/03/NIU-KUNG-KUAN-1-800x852.jpg", location_id: 223 )

# NationalDish.create(name:"Minced Pork Rice", description:"Minced pork rice (Lo bah png) (Chinese: 滷肉飯; pinyin: lǔròufàn; Pe̍h-ōe-jī: ló͘-bah-pn̄g) is a Chinese rice dish that is commonly seen throughout Taiwan and Southern Fujian. The flavor may vary from one region to another, but the basic ingredients remain the same: ground pork marinated and boiled in soy sauce served on top of steamed rice. It is a type of gaifan dish.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Lurou_fan%28Taiwanese_cuisine%29.jpg/250px-Lurou_fan%28Taiwanese_cuisine%29.jpg", location_id: 223 )

# NationalDish.create(name:"O'sh", description:"Central Asian, e.g. Tajik and Uzbek (Tajik: палав, Uzbek: palov) or osh differs from other preparations in that rice is not steamed, but instead simmered in a rich stew of meat and vegetables called zirvak, until all the liquid is absorbed into the rice. A limited degree of steaming is commonly achieved by covering the pot. It is usually cooked in a kazon (or deghi) over an open fire. The cooking tradition includes many regional and occasional variations. Commonly, it is prepared with lamb, browned in lamb fat or oil, and then stewed with fried onions, garlic and carrots. Chicken palov is rare but found in traditional recipes originating in Bukhara. Palov is usually spiced with whole black cumin, coriander, barberries, red pepper, marigold, and pepper. Heads of garlic and garbanzo beans are buried into the rice during cooking. Sweet variations with dried apricots, cranberries and raisins are prepared on special occasions.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Oshi_palov_tajik.jpg/180px-Oshi_palov_tajik.jpg", location_id: 214 )

# NationalDish.create(name:"Ugali", description:"Nsima (also known as ugali and pap) is a type of cornmeal porridge made in Africa. It is also known as ngima, obusuma, kimnyet, nshima, Mieliepap, phutu, sadza, kwon, and other names. Nsima is sometimes made from other flours, such as millet or sorghum flour, and is sometimes mixed with cassava flour. It is cooked in boiling water or milk until it reaches a stiff or firm dough-like consistency.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Ugali_%26_Sukuma_Wiki.jpg/220px-Ugali_%26_Sukuma_Wiki.jpg", location_id: 224 )

# NationalDish.create(name:"Pad Thai", description:"Pad thai, or phad thai (/ˌpɑːd ˈtaɪ/ or /ˌpæd ˈtaɪ/; Thai: ผัดไทย, RTGS: phat thai, ISO: p̄hạdịthy, pronounced [pʰàt tʰāj] (About this soundlisten), 'Thai stir fry'), is a stir fried rice noodle dish commonly served as a street food and at most restaurants in Thailand. Pad thai is made with soaked dried rice noodles, which are stir fried with eggs, chopped firm tofu, and flavored with tamarind pulp, fish sauce, dried shrimp, garlic or shallots, red chili pepper and palm sugar and served with lime wedges and often chopped roasted peanuts. It may contain other vegetables like bean sprouts, garlic chives, pickled radishes or turnips, and raw banana flowers. It may also contain fresh shrimp, crab, squid, chicken or other animal products. Many of the ingredients are provided on the side as condiments such as the red chili pepper, lime wedges, roasted peanuts, bean sprouts and other miscellaneous fresh vegetables. Vegetarian versions may substitute soy sauce for the fish sauce and omit the shrimp.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Phat_Thai_kung_Chang_Khien_street_stall.jpg/220px-Phat_Thai_kung_Chang_Khien_street_stall.jpg", location_id: 213 )

# NationalDish.create(name:"Tom Yum Kung", description:"Tom yum or tom yam (UK: /ˌtɒm ˈjæm, - ˈjʌm/, US: /- ˈjɑːm/; Thai: ต้มยำ, RTGS: tom yam  [tôm jām] (About this soundlisten)) is a type of hot and sour Thai soup, usually cooked with shrimp (prawn). Tom yum has its origin in Thailand. The taste of Tom yum is based on sour and spicy flavors. A paste called Nam prik pao is prepared as a base of the soup, to which water, herbs and meat are added. The Nam prik pao is made from roasted chilies, shallots, and garlic and the ingredients are best grilled on charcoal fire. The basic ingredient of Tom yum is shrimp or pork. If shrimp is the base ingredient, put it in the soup after it boils. If pork is the base ingredient, put it in the soup before it boils. The most popular Tom yum base is river shrimp called “Tom yum Goong”. The essential ingredients of Tom yum are herbs such as lemongrass, galangal, and kaffir lime leaves. Other ingredients are also important especially Thai chilies, mushroom, coriander leaf (cilantro), tomatoes, sweet white onions, lime juice, sugar, and fish sauce. “Tom yum nam khon” is a variety with coconut milk or evaporated milk.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Tom_yam_kung_maenam.jpg/300px-Tom_yam_kung_maenam.jpg", location_id: 213 )

# NationalDish.create(name:"Som Tam", description:"Green papaya salad is a spicy salad made from shredded unripe papaya. Probably originating from ethnic Lao people, it is also eaten throughout Southeast Asia. Locally known in Cambodia as bok l'hong (Khmer: បុកល្ហុង, pronounced [ɓok lhoŋ]), in Laos as tam som (Lao: ຕໍາສົ້ມ) or the more specific name tam maak hoong (Lao: ຕໍາໝາກຫຸ່ງ, pronounced [tàm.ma᷆ːk.hūŋ]), in Thailand as som tam (Thai: ส้มตำ, pronounced [sôm tām]), and in Vietnam as gỏi đu đủ. The dish combines the five main tastes of the local cuisine: sour lime, hot chili, salty, savory fish sauce, and sweetness added by palm sugar. The ingredients are mixed and pounded in a mortar. As the name tam som suggests, sourness is a dominant taste; however, the more specific Lao name tam maak hoong literally means 'pounded papaya'. Despite the use of papaya, which one may think of as sweet, this salad is actually savory. When not yet ripe, papaya does not have a tangy flavor. The texture is crisp and firm, sometimes to the point of crunchiness. It is this that allows the fruit to withstand being beaten in the mortar.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/2013_Tam_Lao.jpg/250px-2013_Tam_Lao.jpg", location_id: 213 )

# NationalDish.create(name:"Ablo", description:"Ablo is a Togolese favorite meal accompaniment, a maize (corn) meal-based malleable bread. Ablo is typically served with soups, stews, vegetable and meat dishes, but is can also be served as a meal in itself, with a dipping sauce.", image:"https://ethnicfoodsrus.com/wp-content/uploads/2015/08/Togolese-Cuisine-Ablo-Photo-Attributed-to-Author-Rayman3640.jpg", location_id: 212 )

# NationalDish.create(name:"Lu Pulu", description:"Laulau is a Native Hawaiian cuisine dish. The traditional preparation consisted of pork wrapped in taro or luau leaf. In old Hawaii laulau was assembled by taking a few luau leaves and placing a few pieces of fish and pork in the center. In modern times, the dish uses taro leaves, salted butterfish, and either pork, beef, or chicken and is usually steamed on the stove. Laulau is a typical plate lunch dish and is usually served with a side of rice and macaroni salad. In the classical preparation, the ends of the luau leaf are folded and wrapped again in the leaf. When ready, all the laulau is placed in an underground oven, called an imu. Hot rocks are placed on the dish and covered in banana leaves and buried again. A few hours later the laulau is ready to eat. Similar Polynesian dishes include Tongan 'lupulu' (containing corned beef) and Samoan 'palusami' and 'fai'ai' (which can contain fish, eel, shrimp, or other seafood alone or in combination).", image:"https://4.bp.blogspot.com/-gzhTsPx4LJI/V4xcCtil-fI/AAAAAAAAAx8/4zZuXp7wVdo6Rgd7MhAq42kgidp5Av95QCLcB/s640/Kelly%2BBoy%2B%2526%2BLeolani%2BDeLimas%2BLu%2BPulu.jpg", location_id: 219 )

# NationalDish.create(name:"Callaloo", description:"Callaloo (sometimes callalloo, calalloo, calaloo or kallaloo) is a popular Caribbean vegetable dish. There many variants across the Caribbean, depending on the availability of local vegetables. The main ingredient is an indigenous leaf vegetable, traditionally either amaranth (known by many local names including; callaloo, but not Spinach or bhaaji due to taste and texture), taro (known by many local names, including dasheeen bush, callaloo bush, callaloo, or bush) or Xanthosoma (known by many names, including coco & tannia). Because the leaf vegetable used in some regions may be locally called 'callaloo' or 'callaloo bush' 'Dasheen Leaves', some confusion can arise among the vegetables and with the dish itself.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Callaloo.jpg/220px-Callaloo.jpg", location_id: 221 )

# NationalDish.create(name:"Doubles", description:"Doubles is a common street food of Trinidadian origin. It is a common breakfast item and snack of locals made with two baras (flat fried dough) filled with curry channa (curried chickpeas). Doubles was first created in Fairfield, Princes Town by Emamool Deen (a.k.a. Mamudeen)", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/FOOD_Doubles_2.jpg/220px-FOOD_Doubles_2.jpg", location_id: 221 )

# NationalDish.create(name:"Aloo Pie", description:"An aloo pie is a fried dumpling popular in the Cuisine of Trinidad and Tobago. It is a soft, fried pastry made from flour and water, and filled with boiled, spiced and mashed potatoes (aloo being the Hindi word for 'potato') and other vegetables like green peas or chana dal (split chickpeas without their seedcoat). Its shape is similar to a calzone, and it is usually larger than a samosa, approximately five inches (12.7 cm) long.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/FOOD_Aloo_Pie_7.jpg/220px-FOOD_Aloo_Pie_7.jpg", location_id: 221 )

# NationalDish.create(name:"Roti and Curry" , description:"Roti (also known as chapati) is a round flatbread native to the Indian subcontinent made from stoneground wholemeal flour, traditionally known as atta, and water that is combined into a dough. Roti is consumed in India, Pakistan, Nepal, Sri Lanka, Indonesia, Singapore, Maldives, Thailand, Malaysia and Bangladesh. It is also consumed in parts of Africa, Fiji, Mauritius and the Caribbean, particularly in Jamaica, Trinidad and Tobago, St Lucia, Guyana and Suriname. Its defining characteristic is that it is unleavened. Naan from the Indian subcontinent, by contrast, is a yeast-leavened bread, as is kulcha. Curry (plural curries) is a variety of dishes originating in the Indian subcontinent that use a complex combination of spices or herbs, usually including ground turmeric, cumin, coriander, ginger, and fresh or dried chilies. Curry is generally prepared in a sauce. Curry dishes prepared in the southern states of India, where the word also originated, may be spiced with leaves from the curry treeChicken, goat, duck, shrimp, beef, 'aloo' (potato), channa, fish (different varieties) and crab curry are very popular among Guyana, predominantly within Indo-Guyanese people." , image:"https://www.phoebespurefood.com/wp-content/uploads/2014/05/curry-roti-1.1.jpg", location_id: 221 )

# NationalDish.create(name:"Couscous" ,  description:"Couscous is originally a Maghrebi dish of small (about 3 millimetres (0.12 in) diameter) steamed balls of crushed durum wheat semolina that is traditionally served with a stew spooned on top. Pearl millet and sorghum, especially in the Sahel, and other cereals can be cooked in a similar way and the resulting dishes are also sometimes called couscous. Couscous is a staple food throughout the North African cuisines of Algeria, Morocco, Tunisia, Mauritania, and Libya, as well as in Israel, due to the large population of Jews of North African origin. In Western supermarkets, it is sometimes sold in instant form with a flavor packet, and may be served as a side or on its own as a main dish." ,  image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Cuscus.jpg/235px-Cuscus.jpg", location_id: 218 )

# NationalDish.create(name:"Kabkabou", description:"Kabkabou or Kabkabu (Arabic: كبكابو‎) is a fish and tomato stew traditionally prepared in Tunisia. The dish is well appreciated as it is relatively healthy and easy to prepare. It consists of a sauce in which fish steak is cooked, and capers, olives and lemons are added. Many species of fish are used, such as grouper, angel shark, tuna or mackerel. The main ingredients used in the preparation are onion, olive oil, tomato paste, garlic, harissa, salt, pepper, cumin, caper, lemon, pitted black olives, pitted green olives and saffron.", image:"https://alchetron.com/cdn/kabkabou-f43416ba-bc32-4beb-91d2-3ce1adb0395-resize-750.jpeg", location_id: 218 )

# NationalDish.create(name:"Doner Kebab" , description:"Doner kebab (also döner kebab) (UK: /ˈdɒnər kɪˈbæb/, US: /ˈdoʊnər kɪˈbɑːb/; Turkish: döner or döner kebap [dœˈnæɾ ˈcebap]) is a type of kebab, made of meat cooked on a vertical rotisserie. Seasoned meat stacked in the shape of an inverted cone is turned slowly on the rotisserie, next to a vertical cooking element. The outer layer is sliced into thin shavings as it cooks. The vertical rotisserie was invented in the 19th-century Ottoman Empire, and doner kebab inspired similar dishes such as the Arab shawarma, Greek gyros, and Mexican al pastor. The sliced meat of a doner kebab may be served on a plate with various accompaniments, stuffed into a pita or other type of bread as a sandwich, or wrapped in a thin flatbread such as lavash or yufka, known as a dürüm (literally meaning roll or wrap in Turkish). Since the early 1970s, the sandwich or wrap form has become popular around the world as a fast food dish sold by kebab shops, and is often called simply a 'kebab'. The sandwich generally contains salad or vegetables, which may include tomato, lettuce, cabbage, onion with sumac, fresh or pickled cucumber, or chili, and various types of sauces." , image:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Ca%C4%9Fkebab%C4%B15.jpg/200px-Ca%C4%9Fkebab%C4%B15.jpg", location_id: 220 )

# NationalDish.create(name:"Kuru Fasulye with Pilav", description:"Kuru fasulye is a stewed bean dish in Turkish cuisine. It is made primarily with white beans and olive oil, and onion and tomato paste or tomato sauce are almost invariably used. Sometimes other vegetables or meat may also be added, especially pastirma. Kuru fasulye is often served along with rice or bulgur. It is often considered the national dish of Turkey. Pilaf (US spelling), or pilau (UK spelling) is a rice dish, or in some regions, a wheat dish, whose recipe usually involves cooking in stock or broth, adding spices, and other ingredients such as vegetables or meat, and employing some technique for achieving cooked grains that do not adhere. Historically, mutton stock was the most common cooking liquid for Turkish pilafs.", image:"http://www.turkishyummies.com/wp-content/uploads/2015/08/Dry-Beans-Kuru-Fas%C3%BClye.jpg", location_id: 220 )

# NationalDish.create(name:"Palaw", description:"Pilaf (US spelling), or pilau (UK spelling) is a rice dish, or in some regions, a wheat dish, whose recipe usually involves cooking in stock or broth, adding spices, and other ingredients such as vegetables or meat, and employing some technique for achieving cooked grains that do not adhere. Historically, mutton stock was the most common cooking liquid for Turkish pilafs, which according to 19th century American sources was called pirinç. Turkish cuisine contains many different pilaf types and is the inspiration behind most of the variations in Armenia, Balkans, Greece, and Arab countries due to their past under Ottoman Empire rule. Some of these variations are pirinc (rice) pilaf, bulgur pilaf, and arpa şehriye (orzo) pilaf. Using mainly these three types, Turkish people make many dishes such as perdeli pilav, and etli pilav (rice cooked with cubed beef). Unlike Chinese rice, if Turkish rice is sticky, it is considered unsuccessful. To make the best rice according to Turkish people, one must rinse the rice, cook in butter, then add the water and let it sit until it soaks all the water. This results in a pilaf that is not sticky and every single rice grain falls off of the spoon separately.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Domatesli_pilav_from_Turkey.jpg/220px-Domatesli_pilav_from_Turkey.jpg", location_id: 217 )

# NationalDish.create(name:"Pulaka", description:"Pulaka, Cyrtosperma merkusii, or swamp taro, is a crop grown mainly in Tuvalu and an important source of carbohydrates for the area's inhabitants. It is a 'swamp crop' similar to taro, but 'with bigger leaves and larger, coarser roots.' Pulaka makes up the bulk of the islanders' traditional diet; it is usually supplemented by fish. Since the unprocessed corms are toxic, they must always be cooked, usually in an earth oven. Many of the recipes call for the addition of coconut cream or toddy, or both. On Niutao, coconut cream (lolo) is poured over beaten pulp of pulaka, to make a dish called tulolo. A similar dish on Nukufetau, with halved corms, is called tulolo pulaka; with beaten corms the dish is called fakapapa. Fekei is made on all the islands, and consists of pulaka which is grated (typically this is done by the women) with the aid of limestone with holes drilled in it. The resulting pulp is wrapped in pulaka leaves and steamed, and mixed with coconut cream.", image:"https://i.pinimg.com/originals/11/ed/34/11ed34e4799de90d3e825c96b93adf61.jpg", location_id: 222 )

# NationalDish.create(name:"Matoke", description:"East African Highland bananas (EAHB) are triploid banana cultivars originating from the African Great Lakes region. They are a staple food crop in Uganda, Tanzania and other Great Lakes countries, and are used to make matoke. East African Highland bananas are also known as the Mutika/Lujugira subgroup. Matoke locally also known as matooke, amatooke, ekitookye in south western Uganda, ekitooke in western Uganda and ikitoke in Rwanda, is a starchy variety of banana. The fruit is harvested green, carefully peeled and then cooked and often mashed or pounded into a meal. In Uganda and Rwanda, the fruit is steam-cooked, and the mashed.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Ugandan_traditional_meal.jpg/220px-Ugandan_traditional_meal.jpg", location_id: 226 )

# NationalDish.create(name:"Borscht", description:"Borscht (English: /ˈbɔːrʃ, ˈbɔːrʃt/ (About this soundlisten)) is a sour soup common in Eastern Europe and Northern Asia. In English, the word 'borscht' is most often associated with the soup's variant of Ukrainian origin, made with beetroots as one of the main ingredients, which give the dish its distinctive red color. The same name, however, is also used for a wide selection of sour-tasting soups without beetroots, such as sorrel-based green borscht, rye-based white borscht and cabbage borscht. Borscht derives from an ancient soup originally cooked from pickled stems, leaves and umbels of common hogweed (Heracleum sphondylium), a herbaceous plant growing in damp meadows, which lent the dish its Slavic name. With time, it evolved into a diverse array of tart soups, among which the beet-based red borscht has become the most popular. It is typically made by combining meat or bone stock with sautéed vegetables, which – as well as beetroots – usually include cabbage, carrots, onions, potatoes and tomatoes. Depending on the recipe, borscht may include meat or fish, or be purely vegetarian; it may be served either hot or cold; and it may range from a hearty one-pot meal to a clear broth or a smooth drink. It is often served with smetana or sour cream, hard-boiled eggs or potatoes, but there exists an ample choice of more involved garnishes and side dishes, such as uszka or pampushky, that can be served with the soup.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Borscht_served.jpg/300px-Borscht_served.jpg", location_id: 225 )

# NationalDish.create(name:"Pierogi", description:"Pierogi (/pɪˈroʊɡi/ pih-ROH-ghee) are filled dumplings of Central and Eastern European origin, made by wrapping unleavened dough around a savory or sweet filling and cooking in boiling water, or pan-frying. Pierogi which consist of noodle dough and have to be cooked in boiling water are associated with the Central and Eastern European kitchens where they are considered national dishes, especially in Poland. Pierogi are popular in West Slavic (Polish, Slovak), Hungarian, East Slavic (Belarusian, Ukrainian and Russian), some Baltic (Latvian and Lithuanian) and other Central and Eastern European cuisines, where they are known under their local names. Typical fillings include potato, sauerkraut, ground meat, cheese and fruits. The dumplings may be served with a topping, such as melted butter, sour cream or fried onion, or a combination of those ingredients.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Pierogi_z_cebulk%C4%85.jpg/220px-Pierogi_z_cebulk%C4%85.jpg", location_id: 225 )

# NationalDish.create(name:"Shawarma", description:"Shawarma (/ʃəˈwɑːrmə/; Arabic: شاورما‎) is a Middle Eastern meat preparation based on the döner kebab of Ottoman Turkey. Originally made of lamb or mutton, today's shawarma may also be chicken, turkey, beef, or veal, cut in thin slices and stacked in a cone-like shape on a vertical rotisserie. Thin slices are shaved off the cooked surface as it continuously rotates. Shawarma is prepared from thin cuts of seasoned marinated lamb, mutton, veal, beef, chicken, or turkey. The slices are stacked on a skewer about 60 cm (20 in) high. Lamb fat may be added to provide extra fat for juiciness and flavor. A motorized spit slowly turns the stack of meat in front of a heating element, continuously roasting the outer layer. Shavings are cut off the rotating stack for serving, customarily with a long, sharp knife. Spices may include cumin, cardamom, cinnamon, turmeric and paprika, and in some areas baharat. Shawarma is commonly served as a sandwich or wrap, in a flatbread such as pita or laffa. It is often garnished with diced tomatoes, cucumbers, and onions, pickled vegetables, and tahini sauce or amba mango sauce. Some restaurants may offer additional toppings like grilled peppers, eggplant or french fries.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Shawarma.jpg/220px-Shawarma.jpg", location_id: 2 )

# NationalDish.create(name:"Harees", description:"Harees, Jareesh (Arabic: هريس‎) or Harissa (Armenian: հարիսա, romanized: harisa) is a dish of boiled, cracked, or coarsely-ground wheat, mixed with meat and seasoned. Its consistency varies between a porridge and a dumpling. Harees is a popular dish known in the Arab states of the Persian Gulf, especially in the month of Ramadan, while 'Harissa is an Armenian dish from the Ararat plain. The wheat is soaked overnight, then simmered in water along with meat and butter or sheep tail fat. Any remaining liquid is strained and the mixture is beaten and seasoned. Harees may be garnished with cinnamon, sugar, and clarified butter.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Harees.JPG/220px-Harees.JPG", location_id: 2 )

# NationalDish.create(name:"Fish and Chips", description:"It is fish fried in a simple flour and water batter, adding a little sodium bicarbonate (baking soda) and a little vinegar to create lightness, as they react to create bubbles in the batter., with thicker American-style french fries.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Fish_%27n%27_Chips.jpg/220px-Fish_%27n%27_Chips.jpg", location_id: 74 )

# NationalDish.create(name:"Chicken Tikka Masala", description:"Chicken tikka masala is a dish of chunks of roasted marinated chicken (chicken tikka) in a spiced curry sauce. The sauce is usually creamy and orange-coloured. Chicken tikka masala is chicken tikka (chunks of chicken marinated in spices and yogurt) that is then baked in a tandoor oven, and served in a masala (spice mixture) sauce. A tomato and coriander sauce is common, but no recipe for chicken tikka masala is standard; a survey found that of 48 different recipes, the only common ingredient was chicken. The sauce usually includes tomatoes (frequently as purée), cream, coconut cream and spices. The sauce and chicken pieces may be coloured orange using foodstuffs such as turmeric, paprika, tomato purée or with food dye. The dish shares some similarity with butter chicken, both in the method of creation and appearance.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Chicken_tikka_masala.jpg/200px-Chicken_tikka_masala.jpg", location_id: 74 )

# NationalDish.create(name:"Sunday Roast", description:"The Sunday roast is a traditional British main meal that is typically served on Sunday (hence the name), consisting of roasted meat, roast potato, and accompaniments such as Yorkshire pudding, stuffing, vegetables and gravy. Other vegetables such as cauliflower often in the form of cauliflower cheese, roast parsnips, brussels sprouts (typically termed brussel sprouts), peas, carrots, runner beans and broccoli, can be part of the dish. Typical meats used for a Sunday roast are chicken, lamb, pork or roast beef, although seasonally duck, goose, gammon, turkey or (rarely) other game birds may be used. Sunday roasts can be served with a range of boiled, steamed and/or roasted vegetables. The vegetables served vary seasonally and regionally, but will usually include roast potatoes, roasted in meat dripping or vegetable oil, and also gravy made from juices released by the roasting meat, perhaps supplemented by one or more stock cubes, gravy browning/thickening, roux or corn flour.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Sunday_roast_-_roast_beef_1.jpg/300px-Sunday_roast_-_roast_beef_1.jpg", location_id: 74 )

# NationalDish.create(name:"Full Breakfast", description:"A full breakfast is a substantial cooked breakfast meal that typically includes bacon, sausages and eggs, and a beverage such as coffee or tea. It comes in different regional variants and is referred to by different names depending on the area. While it is colloquially known as a 'fry up' in most areas of Britain and Ireland, it is usually referred to as a full English breakfast in England. The full breakfast is among the most internationally recognised British dishes along with such staples as bangers and mash, shepherd's pie, cottage pie, fish and chips, roast beef, Sunday roast and the Christmas dinner.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Englishbreakfast.jpg/220px-Englishbreakfast.jpg", location_id: 74 )

# NationalDish.create(name:"Jelly with Ice Cream", description:"Jelly is a dessert made with a sweetened and flavored processed collagen product (gelatin). To make a jelly, gelatin is dissolved in hot liquid with the desired flavors and other additives. These latter ingredients usually include sugar, fruit juice, or sugar substitutes; they may be added and varied during preparation, or pre-mixed with the gelatin in a commercial product which merely requires the addition of hot water. Who doesn't know what ice cream is...", image:"http://imagescdn.sportnetwork.net/images/37/162102_350_233", location_id: 74 )

# NationalDish.create(name:"Hamburger", description:"A hamburger (short: burger) is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, or flame broiled. Hamburgers are often served with cheese, lettuce, tomato, onion, pickles, bacon, or chiles; condiments such as ketchup, mayonnaise, mustard, relish, or 'special sauce'; and are frequently placed on sesame seed buns.", image:"https://www.snopes.com/tachyon/2018/05/bigmac.jpg?resize=865,452", location_id: 227 )

# NationalDish.create(name:"Apple Pie", description:"An apple pie is a pie in which the principal filling ingredient is apple. It is, on occasion, served with whipped cream or iced cream (which is known as apple pie a la mode), or with cheddar cheese. The pastry part is generally used top-and-bottom, making it a double-crust pie; the upper crust may be circular or latticed (woven of crosswise strips). Depending on the baker's preference, the bottom crust may be baked first (before baking the whole pie) to prevent it from getting soggy. Exceptions are: deep-dish apple pie (with a top crust only) and the open-faced French dessert tarte Tatin.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Apple_pie.jpg/300px-Apple_pie.jpg", location_id: 227 )

# NationalDish.create(name:"Asado" , description:"Asado (Spanish: [aˈsaðo]) are the techniques and the social event of having or attending a barbecue in various South American countries, where it is also a traditional event. An asado usually consists of beef, pork, chicken, chorizo, and morcilla which are cooked on a grill, called a parrilla, or an open fire. Generally the meats are accompanied by red wine and salads. This meat is prepared by a person who is the assigned asador or parrillero." , image:"https://www.infobae.com/new-resizer/IBhf9_OSbzjQyTfrVf1kVK_WlWY=/750x0/filters:quality(100)/s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2018/08/09173312/asado.jpg", location_id: 228 )

# NationalDish.create(name:"Chivito", description:"Chivito is the national dish of Uruguay, It is a thin slice of tender cooked beef steak (churrasco), with mozzarella, tomatoes, mayonnaise, black or green olives, and commonly also bacon, fried or hard-boiled eggs and ham, served as a sandwich in a bun, often accompanied by French fried potatoes. Other ingredients, such as red beets, peas, grilled or pan-fried red peppers, and slices of cucumber, may be added.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Chivito1.jpg/250px-Chivito1.jpg", location_id: 228 )

# NationalDish.create(name:"O'sh", description:"Central Asian, e.g. Tajik and Uzbek (Tajik: палав, Uzbek: palov) or osh differs from other preparations in that rice is not steamed, but instead simmered in a rich stew of meat and vegetables called zirvak, until all the liquid is absorbed into the rice. A limited degree of steaming is commonly achieved by covering the pot. It is usually cooked in a kazon (or deghi) over an open fire. The cooking tradition includes many regional and occasional variations. Commonly, it is prepared with lamb, browned in lamb fat or oil, and then stewed with fried onions, garlic and carrots. Chicken palov is rare but found in traditional recipes originating in Bukhara. Palov is usually spiced with whole black cumin, coriander, barberries, red pepper, marigold, and pepper. Heads of garlic and garbanzo beans are buried into the rice during cooking. Sweet variations with dried apricots, cranberries and raisins are prepared on special occasions.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Oshi_palov_tajik.jpg/180px-Oshi_palov_tajik.jpg", location_id: 229 )

# NationalDish.create(name:"Laplap", description:"Laplap (sometimes spelled lap lap) is the national dish of Vanuatu. Laplap is prepared by grating breadfruit, bananas, taro or yam roots into a vegetable paste. The paste is then wrapped in banana leaves and cooked in an underground stone oven, with fresh coconut cream. Meats like pork, beef, chicken or flying fox can be added.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Laplap_02.jpg/220px-Laplap_02.jpg", location_id: 236 )

# NationalDish.create(name:"Fettuccine alla Papalina", description:"Fettuccine alla papalina, or “Fettuccine for the Pope”, is an upscale reinterpretation of the earthy spaghetti alla carbonara. The story goes that the dish was prepared for a certain Cardinal Pacelli, soon to become Pope Pius XII, who had asked the owner of a restaurant in the Borgo (the area of Rome that lies between the Vatican and the Tiber River) to make him a more delicate version of the classic Roman dish. So the restauranteur came up with this more refined dish, substituting fettuccine for the usual spaghetti, prosciutto for the guanciale, Parmesan for the pecorino, and adding a splash of cream.", image:"https://i2.wp.com/memoriediangelina.com/wp-content/uploads/2009/07/Fettuccine-alla-papalina-1.jpg?fit=800%2C534&ssl=1", location_id: 230 )

# NationalDish.create(name:"Pabellón Criollo", description:"Pabellón criollo (Spanish pronunciation: [paβeˈʝoŋ ˈkɾjo.ʝo]) is a traditional Venezuelan dish, the local version of the rice and beans combination found throughout the Caribbean. It is a plate of rice, shredded beef in stew and stewed black beans. Common additions include tajadas (fried plantain slices) or a fried egg. Both of these variants have acquired slang names. A pabellón con barandas (baranda is Spanish for guard rail) is served with tajadas because the long plantain slices placed on the sides are humorously considered to be keeping the food from falling off from the plate.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Pabell%C3%B3n_Criollo_Venezolano.jpg/220px-Pabell%C3%B3n_Criollo_Venezolano.jpg", location_id: 232 )

# NationalDish.create(name:"Phở", description:"Phở or pho (UK: /fɜː/, US: /fʌ, foʊ/, Canada: /fɑː/; Vietnamese: [fəː˧˩˧] (About this soundlisten)) is a Vietnamese soup consisting of broth, rice noodles called bánh phở, a few herbs, and meat, primarily made with either beef (phở bò) or chicken (phở gà). Pho is served in a bowl with a specific cut of flat rice noodles in clear beef broth, with thin cuts of beef (steak, fatty flank, lean flank, brisket). Variations feature slow-cooked tendon, tripe, or meatballs in southern Vietnam. Chicken pho is made using the same spices as beef, but the broth is made using chicken bones and meat, as well as some internal organs of the chicken, such as the heart, the undeveloped eggs, and the gizzard. When eating at phở stalls in Vietnam, customers are generally asked which parts of the beef they would like and how they want it done.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Ph%E1%BB%9F_b%C3%B2%2C_C%E1%BA%A7u_Gi%E1%BA%A5y%2C_H%C3%A0_N%E1%BB%99i.jpg/250px-Ph%E1%BB%9F_b%C3%B2%2C_C%E1%BA%A7u_Gi%E1%BA%A5y%2C_H%C3%A0_N%E1%BB%99i.jpg", location_id: 235 )

# NationalDish.create(name:"Bún Bò Huế", description:"Bún bò Huế (pronounced [ɓun˧˥ ɓɔ˧˩ hwe˧˥]) or bún bò is a popular Vietnamese soup containing rice vermicelli (bún) and beef (bò). The broth is prepared by simmering beef bones and beef shank with lemongrass, and then seasoned with fermented shrimp sauce and sugar for taste. Spicy chili oil is added later during the cooking process. Bún bò usually includes thin slices of marinated and boiled beef shank, chunks of oxtail, and pig's knuckles. It can also include cubes of congealed pig blood, which has a color between dark brown and maroon, and a texture resembling firm tofu. Bún bò is commonly served with lime wedges, cilantro sprigs, diced green onions, raw sliced onions, chili sauce, thinly sliced banana blossom, red cabbage, mint, basil, perilla, Persicaria odorata or Vietnamese coriander (rau răm), saw tooth herb (ngò gai) and sometimes mung bean sprouts. Thinly sliced purple cabbage is acceptable substitute when banana blossoms are not available. Purple cabbage most resembles banana blossom in texture, though not in taste. Fish sauce and shrimp sauce are added to the soup according to taste. ", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Bunbo.jpg/250px-Bunbo.jpg", location_id: 235 )

# NationalDish.create(name:"Bò Kho", description:"Kho is a cooking technique in Vietnamese cuisine meaning 'to braise', 'to stew', or 'to simmer' in which a protein source such as fish, shrimp, poultry, pork, beef, or fried tofu is braised on low heat in a mixture of fish sauce, sugar, and water or a water substitute such as young coconut juice. The resulting dish is salty and savory, and meant to be eaten with rice noodles, French bread, or steamed rice.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Bo_Kho.jpg/220px-Bo_Kho.jpg", location_id: 235 )

# NationalDish.create(name:"Gỏi Cuốn", description:"Gỏi cuốn, Vietnamese spring roll or cold roll, is a Vietnamese dish traditionally consisting of pork, prawn, vegetables, bún (rice vermicelli), and other ingredients wrapped in Vietnamese bánh tráng (commonly known as rice paper or cold roll). The bánh tráng (rice paper) is dipped in water, then laid flat on a plate with the desired amount of ingredients is placed on top. The fresh gỏi cuốn is then rolled up and ready to be eaten. Gỏi cuốn can be served with tương xào (also known as hoisin sauce), which consists of ground tương (tương đen or tương xay) and mixed coconut water (or broth), before being stir-fried with garlic and some sugar and then sprinkled with chili powder and ground peanuts. Alternatively, gỏi cuốn can be served with peanut sauce or other Vietnamese dipping sauces, such as nước chấm, a condiment based on fish sauce.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/G%E1%BB%8Fi_cu%E1%BB%91n.jpg/220px-G%E1%BB%8Fi_cu%E1%BB%91n.jpg", location_id: 235 )

# NationalDish.create(name:"Bánh Xèo", description:"Bánh xèo [ɓǎjŋ̟ sɛ̂w], literally 'sizzling pancake', named for the loud sizzling sound it makes when the rice batter is poured into the hot skillet; it is a Vietnamese savory fried pancake made of rice flour, water, and turmeric powder. It is stuffed with individual preferences, and served vegetarian or with meat. Some common stuffings include: pork, shrimp, diced green onion, mung bean, and bean sprouts. Banh Xeo in Mekong delta style Bánh xèo is also served with lettuce, mint, Thai basil, and fish mint.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/B%C3%A1nh_x%C3%A8o_1.jpg/250px-B%C3%A1nh_x%C3%A8o_1.jpg", location_id: 235 )

# NationalDish.create(name:"Bánh Bèo", description:"A bánh bèo is a Vietnamese dish that comes from Hue, a city in Central Vietnam. The English translation for this dish is water fern cakes. Bánh bèo is made from a combination of rice flour and tapioca flour. It is popular street food in Vietnam. The ingredients include rice cake, dried shrimps, crispy pork skin, scallion oil, and dipping sauce. It is usually eaten as a snack but is now considered a dish in restaurants and can be eaten as lunch and dinner.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/B%C3%A1nh_b%C3%A8o.jpg/250px-B%C3%A1nh_b%C3%A8o.jpg", location_id: 235 )

# NationalDish.create(name:"Kabsa", description:"Kabsa (Arabic: كبسة‎ kabsah) is a mixed rice dish that originates from Saudi Arabia but is commonly regarded as a national dish in many Arab states of the Persian Gulf. The dish is made with rice and meat. It can often be found served in countries such as Yemen, Somalia, Qatar, Oman, the United Arab Emirates, Bahrain, Saudi Arabia and Kuwait. The dish is also popularly known as makbūs.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Kabsa.jpg/220px-Kabsa.jpg", location_id: 240 )

# NationalDish.create(name:"Haneeth", description:"Haneeth (Arabic: الحنيذ‎) is a traditional dish originated from Yemen. Haneeth meat is traditionally prepared in a hot tabun that is prepared by burning coal, Leptadenia pyrotechnica and palm fronds which gives the meat its special taste. The Hawaij is usually added to the meat.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Haneeth.jpg/220px-Haneeth.jpg", location_id: 240 )

# NationalDish.create(name:"Saltah", description:"Saltah (Arabic: سلتة) is a Yemeni dish. It is widely eaten in northern parts of the country. It is mainly served for lunch. The base is a brown meat stew called maraq, a dollop of fenugreek froth, and sahawiq or sahowqa (a mixture of chillies, tomatoes, garlic, and herbs ground into a salsa). Rice, potatoes, scrambled eggs, and vegetables are common additions to saltah. It is eaten traditionally with Yemeni flat bread, which serves as a utensil to scoop up the food. Saltah is an old Yemeni dish some say was introduced thousand years ago. It is said that it's ingredients were only Maraq and Hilbah (Fenugreek). It has been developing since then and is split into two dishes: Saltah and Fahsah.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Saltah_gif.gif/220px-Saltah_gif.gif", location_id: 240 )

# NationalDish.create(name:"Mandi", description:"Mandi (Arabic: مندي‎) is a traditional dish originated from Hadhramaut, Yemen, consisting mainly of meat and rice with a special blend of spices. It is cooked in a pit underground. Mandi is usually made from rice, meat (lamb, camel, goat or chicken), and a mixture of spices called Hawaij. The meat used is usually a young and small sized lamb to enhance the taste further. The main technique which differentiates Mandi from other meat dishes is that the meat is cooked in the tandoor (taboon in Arabic), which is a special kind of oven which is usually a pit dug up in the ground and covered with clay all around its sides.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Mandi_pit_from_inside.jpg/220px-Mandi_pit_from_inside.jpg", location_id: 240 )

# NationalDish.create(name:"Nshima", description:"Nsima (also known as ugali and pap) is a type of cornmeal porridge made in Africa. It is also known as ngima, obusuma, kimnyet, nshima, Mieliepap, phutu, sadza, kwon, and other names. Nsima is sometimes made from other flours, such as millet or sorghum flour, and is sometimes mixed with cassava flour. It is cooked in boiling water or milk until it reaches a stiff or firm dough-like consistency.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Ugali_%26_Sukuma_Wiki.jpg/220px-Ugali_%26_Sukuma_Wiki.jpg", location_id: 243 )

# NationalDish.create(name:"Sadza", description:"Nsima (also known as ugali and pap) is a type of cornmeal porridge made in Africa. It is also known as ngima, obusuma, kimnyet, nshima, Mieliepap, phutu, sadza, kwon, and other names. Nsima is sometimes made from other flours, such as millet or sorghum flour, and is sometimes mixed with cassava flour. It is cooked in boiling water or milk until it reaches a stiff or firm dough-like consistency.", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Ugali_%26_Sukuma_Wiki.jpg/220px-Ugali_%26_Sukuma_Wiki.jpg", location_id: 244 )
