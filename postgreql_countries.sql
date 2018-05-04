START TRANSACTION;
SET standard_conforming_strings=off;
SET escape_string_warning=off;
SET CONSTRAINTS ALL DEFERRED;

CREATE TABLE "continent" (
    "code" char(2) NOT NULL,
    "name" varchar(510) DEFAULT NULL,
    PRIMARY KEY ("code")
);
COMMENT on column continent.code is 'Continent code';
COMMENT on column continent.name is 'Continent name';
CREATE TABLE "country" (
    "code" char(2) NOT NULL,
    "name" varchar(128) NOT NULL,
    "full_name" varchar(256),
    "iso3" char(3),
    "iso_number" int2 ,
    "continent" char(2) NOT NULL,
    PRIMARY KEY ("code")
);
COMMENT on column country.code is 'Two-letter country code (ISO 3166-1 alpha-2)';
COMMENT on column country.name is 'English country name';
COMMENT on column country.full_name is 'Full English country name';
COMMENT on column country.iso3 is 'Three-letter country code (ISO 3166-1 alpha-3)';
COMMENT on column country.iso_number is 'Three-letter country code (ISO 3166-1 numeric)';

--
-- Data for Name: continent; Type: TABLE DATA
--

INSERT INTO continent (code, name) VALUES ('AF', 'Africa');
INSERT INTO continent (code, name) VALUES ('AN', 'Antarctica');
INSERT INTO continent (code, name) VALUES ('AS', 'Asia');
INSERT INTO continent (code, name) VALUES ('EU', 'Europe');
INSERT INTO continent (code, name) VALUES ('NA', 'North America');
INSERT INTO continent (code, name) VALUES ('OC', 'Oceania');
INSERT INTO continent (code, name) VALUES ('SA', 'South America');

--
-- Data for Name: country; Type: TABLE DATA
--

INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('AD', 'Andorra', 'Principality of Andorra', 'AND', 20, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('AE', 'United Arab Emirates', 'United Arab Emirates', 'ARE', 784, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('AF', 'Afghanistan', 'Islamic Republic of Afghanistan', 'AFG', 4, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('AG', 'Antigua and Barbuda', 'Antigua and Barbuda', 'ATG', 28, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('AI', 'Anguilla', 'Anguilla', 'AIA', 660, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('AL', 'Albania', 'Republic of Albania', 'ALB', 8, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('AM', 'Armenia', 'Republic of Armenia', 'ARM', 51, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('AN', 'Netherlands Antilles', 'Netherlands Antilles', 'ANT', 530, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('AO', 'Angola', 'Republic of Angola', 'AGO', 24, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('AQ', 'Antarctica', 'Antarctica (the territory South of 60 deg S)', 'ATA', 10, 'AN');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('AR', 'Argentina', 'Argentine Republic', 'ARG', 32, 'SA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('AS', 'American Samoa', 'American Samoa', 'ASM', 16, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('AT', 'Austria', 'Republic of Austria', 'AUT', 40, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('AU', 'Australia', 'Commonwealth of Australia', 'AUS', 36, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('AW', 'Aruba', 'Aruba', 'ABW', 533, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('AX', 'Åland', 'Åland Islands', 'ALA', 248, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('AZ', 'Azerbaijan', 'Republic of Azerbaijan', 'AZE', 31, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('BA', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'BIH', 70, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('BB', 'Barbados', 'Barbados', 'BRB', 52, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('BD', 'Bangladesh', 'People''s Republic of Bangladesh', 'BGD', 50, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('BE', 'Belgium', 'Kingdom of Belgium', 'BEL', 56, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('BF', 'Burkina Faso', 'Burkina Faso', 'BFA', 854, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('BG', 'Bulgaria', 'Republic of Bulgaria', 'BGR', 100, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('BH', 'Bahrain', 'Kingdom of Bahrain', 'BHR', 48, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('BI', 'Burundi', 'Republic of Burundi', 'BDI', 108, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('BJ', 'Benin', 'Republic of Benin', 'BEN', 204, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('BL', 'Saint Barthélemy', 'Saint Barthelemy', 'BLM', 652, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('BM', 'Bermuda', 'Bermuda', 'BMU', 60, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('BN', 'Brunei Darussalam', 'Brunei Darussalam', 'BRN', 96, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('BO', 'Bolivia', 'Republic of Bolivia', 'BOL', 68, 'SA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('BR', 'Brazil', 'Federative Republic of Brazil', 'BRA', 76, 'SA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('BS', 'Bahamas', 'Commonwealth of the Bahamas', 'BHS', 44, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('BT', 'Bhutan', 'Kingdom of Bhutan', 'BTN', 64, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('BV', 'Bouvet Island', 'Bouvet Island (Bouvetoya)', 'BVT', 74, 'AN');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('BW', 'Botswana', 'Republic of Botswana', 'BWA', 72, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('BY', 'Belarus', 'Republic of Belarus', 'BLR', 112, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('BZ', 'Belize', 'Belize', 'BLZ', 84, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('CA', 'Canada', 'Canada', 'CAN', 124, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('CC', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'CCK', 166, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('CD', 'Congo (Kinshasa)', 'Democratic Republic of the Congo', 'COD', 180, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('CF', 'Central African Republic', 'Central African Republic', 'CAF', 140, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('CG', 'Congo (Brazzaville)', 'Republic of the Congo', 'COG', 178, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('CH', 'Switzerland', 'Swiss Confederation', 'CHE', 756, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('CI', 'Côte d''Ivoire', 'Republic of Cote d''Ivoire', 'CIV', 384, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('CK', 'Cook Islands', 'Cook Islands', 'COK', 184, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('CL', 'Chile', 'Republic of Chile', 'CHL', 152, 'SA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('CM', 'Cameroon', 'Republic of Cameroon', 'CMR', 120, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('CN', 'China', 'People''s Republic of China', 'CHN', 156, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('CO', 'Colombia', 'Republic of Colombia', 'COL', 170, 'SA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('CR', 'Costa Rica', 'Republic of Costa Rica', 'CRI', 188, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('CU', 'Cuba', 'Republic of Cuba', 'CUB', 192, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('CV', 'Cape Verde', 'Republic of Cape Verde', 'CPV', 132, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('CX', 'Christmas Island', 'Christmas Island', 'CXR', 162, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('CY', 'Cyprus', 'Republic of Cyprus', 'CYP', 196, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('CZ', 'Czech Republic', 'Czech Republic', 'CZE', 203, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('DE', 'Germany', 'Federal Republic of Germany', 'DEU', 276, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('DJ', 'Djibouti', 'Republic of Djibouti', 'DJI', 262, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('DK', 'Denmark', 'Kingdom of Denmark', 'DNK', 208, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('DM', 'Dominica', 'Commonwealth of Dominica', 'DMA', 212, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('DO', 'Dominican Republic', 'Dominican Republic', 'DOM', 214, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('DZ', 'Algeria', 'People''s Democratic Republic of Algeria', 'DZA', 12, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('EC', 'Ecuador', 'Republic of Ecuador', 'ECU', 218, 'SA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('EE', 'Estonia', 'Republic of Estonia', 'EST', 233, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('EG', 'Egypt', 'Arab Republic of Egypt', 'EGY', 818, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('EH', 'Western Sahara', 'Western Sahara', 'ESH', 732, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('ER', 'Eritrea', 'State of Eritrea', 'ERI', 232, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('ES', 'Spain', 'Kingdom of Spain', 'ESP', 724, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('ET', 'Ethiopia', 'Federal Democratic Republic of Ethiopia', 'ETH', 231, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('FI', 'Finland', 'Republic of Finland', 'FIN', 246, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('FJ', 'Fiji', 'Republic of the Fiji Islands', 'FJI', 242, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('FK', 'Falkland Islands', 'Falkland Islands (Malvinas)', 'FLK', 238, 'SA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('FM', 'Micronesia', 'Federated States of Micronesia', 'FSM', 583, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('FO', 'Faroe Islands', 'Faroe Islands', 'FRO', 234, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('FR', 'France', 'French Republic', 'FRA', 250, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('GA', 'Gabon', 'Gabonese Republic', 'GAB', 266, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('GB', 'United Kingdom', 'United Kingdom of Great Britain & Northern Ireland', 'GBR', 826, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('GD', 'Grenada', 'Grenada', 'GRD', 308, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('GE', 'Georgia', 'Georgia', 'GEO', 268, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('GF', 'French Guiana', 'French Guiana', 'GUF', 254, 'SA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('GG', 'Guernsey', 'Bailiwick of Guernsey', 'GGY', 831, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('GH', 'Ghana', 'Republic of Ghana', 'GHA', 288, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('GI', 'Gibraltar', 'Gibraltar', 'GIB', 292, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('GL', 'Greenland', 'Greenland', 'GRL', 304, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('GM', 'Gambia', 'Republic of the Gambia', 'GMB', 270, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('GN', 'Guinea', 'Republic of Guinea', 'GIN', 324, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('GP', 'Guadeloupe', 'Guadeloupe', 'GLP', 312, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('GQ', 'Equatorial Guinea', 'Republic of Equatorial Guinea', 'GNQ', 226, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('GR', 'Greece', 'Hellenic Republic Greece', 'GRC', 300, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('GS', 'South Georgia and South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'SGS', 239, 'AN');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('GT', 'Guatemala', 'Republic of Guatemala', 'GTM', 320, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('GU', 'Guam', 'Guam', 'GUM', 316, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('GW', 'Guinea-Bissau', 'Republic of Guinea-Bissau', 'GNB', 624, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('GY', 'Guyana', 'Co-operative Republic of Guyana', 'GUY', 328, 'SA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('HK', 'Hong Kong', 'Hong Kong Special Administrative Region of China', 'HKG', 344, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('HM', 'Heard and McDonald Islands', 'Heard Island and McDonald Islands', 'HMD', 334, 'AN');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('HN', 'Honduras', 'Republic of Honduras', 'HND', 340, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('HR', 'Croatia', 'Republic of Croatia', 'HRV', 191, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('HT', 'Haiti', 'Republic of Haiti', 'HTI', 332, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('HU', 'Hungary', 'Republic of Hungary', 'HUN', 348, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('ID', 'Indonesia', 'Republic of Indonesia', 'IDN', 360, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('IE', 'Ireland', 'Ireland', 'IRL', 372, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('IL', 'Israel', 'State of Israel', 'ISR', 376, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('IM', 'Isle of Man', 'Isle of Man', 'IMN', 833, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('IN', 'India', 'Republic of India', 'IND', 356, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory (Chagos Archipelago)', 'IOT', 86, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('IQ', 'Iraq', 'Republic of Iraq', 'IRQ', 368, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('IR', 'Iran', 'Islamic Republic of Iran', 'IRN', 364, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('IS', 'Iceland', 'Republic of Iceland', 'ISL', 352, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('IT', 'Italy', 'Italian Republic', 'ITA', 380, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('JE', 'Jersey', 'Bailiwick of Jersey', 'JEY', 832, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('JM', 'Jamaica', 'Jamaica', 'JAM', 388, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('JO', 'Jordan', 'Hashemite Kingdom of Jordan', 'JOR', 400, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('JP', 'Japan', 'Japan', 'JPN', 392, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('KE', 'Kenya', 'Republic of Kenya', 'KEN', 404, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('KG', 'Kyrgyzstan', 'Kyrgyz Republic', 'KGZ', 417, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('KH', 'Cambodia', 'Kingdom of Cambodia', 'KHM', 116, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('KI', 'Kiribati', 'Republic of Kiribati', 'KIR', 296, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('KM', 'Comoros', 'Union of the Comoros', 'COM', 174, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('KN', 'Saint Kitts and Nevis', 'Federation of Saint Kitts and Nevis', 'KNA', 659, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('KP', 'Korea, North', 'Democratic People''s Republic of Korea', 'PRK', 408, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('KR', 'Korea, South', 'Republic of Korea', 'KOR', 410, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('KW', 'Kuwait', 'State of Kuwait', 'KWT', 414, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('KY', 'Cayman Islands', 'Cayman Islands', 'CYM', 136, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('KZ', 'Kazakhstan', 'Republic of Kazakhstan', 'KAZ', 398, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('LA', 'Laos', 'Lao People''s Democratic Republic', 'LAO', 418, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('LB', 'Lebanon', 'Lebanese Republic', 'LBN', 422, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('LC', 'Saint Lucia', 'Saint Lucia', 'LCA', 662, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('LI', 'Liechtenstein', 'Principality of Liechtenstein', 'LIE', 438, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('LK', 'Sri Lanka', 'Democratic Socialist Republic of Sri Lanka', 'LKA', 144, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('LR', 'Liberia', 'Republic of Liberia', 'LBR', 430, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('LS', 'Lesotho', 'Kingdom of Lesotho', 'LSO', 426, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('LT', 'Lithuania', 'Republic of Lithuania', 'LTU', 440, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('LU', 'Luxembourg', 'Grand Duchy of Luxembourg', 'LUX', 442, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('LV', 'Latvia', 'Republic of Latvia', 'LVA', 428, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('LY', 'Libya', 'Libyan Arab Jamahiriya', 'LBY', 434, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('MA', 'Morocco', 'Kingdom of Morocco', 'MAR', 504, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('MC', 'Monaco', 'Principality of Monaco', 'MCO', 492, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('MD', 'Moldova', 'Republic of Moldova', 'MDA', 498, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('ME', 'Montenegro', 'Republic of Montenegro', 'MNE', 499, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('MF', 'Saint Martin (French part)', 'Saint Martin', 'MAF', 663, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('MG', 'Madagascar', 'Republic of Madagascar', 'MDG', 450, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('MH', 'Marshall Islands', 'Republic of the Marshall Islands', 'MHL', 584, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('MK', 'Macedonia', 'Republic of Macedonia', 'MKD', 807, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('ML', 'Mali', 'Republic of Mali', 'MLI', 466, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('MM', 'Myanmar', 'Union of Myanmar', 'MMR', 104, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('MN', 'Mongolia', 'Mongolia', 'MNG', 496, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('MO', 'Macau', 'Macao Special Administrative Region of China', 'MAC', 446, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('MP', 'Northern Mariana Islands', 'Commonwealth of the Northern Mariana Islands', 'MNP', 580, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('MQ', 'Martinique', 'Martinique', 'MTQ', 474, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('MR', 'Mauritania', 'Islamic Republic of Mauritania', 'MRT', 478, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('MS', 'Montserrat', 'Montserrat', 'MSR', 500, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('MT', 'Malta', 'Republic of Malta', 'MLT', 470, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('MU', 'Mauritius', 'Republic of Mauritius', 'MUS', 480, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('MV', 'Maldives', 'Republic of Maldives', 'MDV', 462, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('MW', 'Malawi', 'Republic of Malawi', 'MWI', 454, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('MX', 'Mexico', 'United Mexican States', 'MEX', 484, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('MY', 'Malaysia', 'Malaysia', 'MYS', 458, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('MZ', 'Mozambique', 'Republic of Mozambique', 'MOZ', 508, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('NA', 'Namibia', 'Republic of Namibia', 'NAM', 516, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('NC', 'New Caledonia', 'New Caledonia', 'NCL', 540, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('NE', 'Niger', 'Republic of Niger', 'NER', 562, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('NF', 'Norfolk Island', 'Norfolk Island', 'NFK', 574, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('NG', 'Nigeria', 'Federal Republic of Nigeria', 'NGA', 566, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('NI', 'Nicaragua', 'Republic of Nicaragua', 'NIC', 558, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('NL', 'Netherlands', 'Kingdom of the Netherlands', 'NLD', 528, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('NO', 'Norway', 'Kingdom of Norway', 'NOR', 578, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('NP', 'Nepal', 'State of Nepal', 'NPL', 524, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('NR', 'Nauru', 'Republic of Nauru', 'NRU', 520, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('NU', 'Niue', 'Niue', 'NIU', 570, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('NZ', 'New Zealand', 'New Zealand', 'NZL', 554, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('OM', 'Oman', 'Sultanate of Oman', 'OMN', 512, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('PA', 'Panama', 'Republic of Panama', 'PAN', 591, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('PE', 'Peru', 'Republic of Peru', 'PER', 604, 'SA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('PF', 'French Polynesia', 'French Polynesia', 'PYF', 258, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('PG', 'Papua New Guinea', 'Independent State of Papua New Guinea', 'PNG', 598, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('PH', 'Philippines', 'Republic of the Philippines', 'PHL', 608, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('PK', 'Pakistan', 'Islamic Republic of Pakistan', 'PAK', 586, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('PL', 'Poland', 'Republic of Poland', 'POL', 616, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('PM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'SPM', 666, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('PN', 'Pitcairn', 'Pitcairn Islands', 'PCN', 612, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('PR', 'Puerto Rico', 'Commonwealth of Puerto Rico', 'PRI', 630, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('PS', 'Palestine', 'Occupied Palestinian Territory', 'PSE', 275, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('PT', 'Portugal', 'Portuguese Republic', 'PRT', 620, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('PW', 'Palau', 'Republic of Palau', 'PLW', 585, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('PY', 'Paraguay', 'Republic of Paraguay', 'PRY', 600, 'SA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('QA', 'Qatar', 'State of Qatar', 'QAT', 634, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('RE', 'Reunion', 'Reunion', 'REU', 638, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('RO', 'Romania', 'Romania', 'ROU', 642, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('RS', 'Serbia', 'Republic of Serbia', 'SRB', 688, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('RU', 'Russian Federation', 'Russian Federation', 'RUS', 643, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('RW', 'Rwanda', 'Republic of Rwanda', 'RWA', 646, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('SA', 'Saudi Arabia', 'Kingdom of Saudi Arabia', 'SAU', 682, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('SB', 'Solomon Islands', 'Solomon Islands', 'SLB', 90, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('SC', 'Seychelles', 'Republic of Seychelles', 'SYC', 690, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('SD', 'Sudan', 'Republic of Sudan', 'SDN', 736, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('SE', 'Sweden', 'Kingdom of Sweden', 'SWE', 752, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('SG', 'Singapore', 'Republic of Singapore', 'SGP', 702, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('SH', 'Saint Helena', 'Saint Helena', 'SHN', 654, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('SI', 'Slovenia', 'Republic of Slovenia', 'SVN', 705, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('SJ', 'Svalbard and Jan Mayen Islands', 'Svalbard & Jan Mayen Islands', 'SJM', 744, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('SK', 'Slovakia', 'Slovakia (Slovak Republic)', 'SVK', 703, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('SL', 'Sierra Leone', 'Republic of Sierra Leone', 'SLE', 694, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('SM', 'San Marino', 'Republic of San Marino', 'SMR', 674, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('SN', 'Senegal', 'Republic of Senegal', 'SEN', 686, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('SO', 'Somalia', 'Somali Republic', 'SOM', 706, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('SR', 'Suriname', 'Republic of Suriname', 'SUR', 740, 'SA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('ST', 'Sao Tome and Principe', 'Democratic Republic of Sao Tome and Principe', 'STP', 678, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('SV', 'El Salvador', 'Republic of El Salvador', 'SLV', 222, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('SY', 'Syria', 'Syrian Arab Republic', 'SYR', 760, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('SZ', 'Swaziland', 'Kingdom of Swaziland', 'SWZ', 748, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'TCA', 796, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('TD', 'Chad', 'Republic of Chad', 'TCD', 148, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('TF', 'French Southern Lands', 'French Southern Territories', 'ATF', 260, 'AN');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('TG', 'Togo', 'Togolese Republic', 'TGO', 768, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('TH', 'Thailand', 'Kingdom of Thailand', 'THA', 764, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('TJ', 'Tajikistan', 'Republic of Tajikistan', 'TJK', 762, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('TK', 'Tokelau', 'Tokelau', 'TKL', 772, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('TL', 'Timor-Leste', 'Democratic Republic of Timor-Leste', 'TLS', 626, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('TM', 'Turkmenistan', 'Turkmenistan', 'TKM', 795, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('TN', 'Tunisia', 'Tunisian Republic', 'TUN', 788, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('TO', 'Tonga', 'Kingdom of Tonga', 'TON', 776, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('TR', 'Turkey', 'Republic of Turkey', 'TUR', 792, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('TT', 'Trinidad and Tobago', 'Republic of Trinidad and Tobago', 'TTO', 780, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('TV', 'Tuvalu', 'Tuvalu', 'TUV', 798, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('TW', 'Taiwan', 'Taiwan', 'TWN', 158, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('TZ', 'Tanzania', 'United Republic of Tanzania', 'TZA', 834, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('UA', 'Ukraine', 'Ukraine', 'UKR', 804, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('UG', 'Uganda', 'Republic of Uganda', 'UGA', 800, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'UMI', 581, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('US', 'United States of America', 'United States of America', 'USA', 840, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('UY', 'Uruguay', 'Eastern Republic of Uruguay', 'URY', 858, 'SA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('UZ', 'Uzbekistan', 'Republic of Uzbekistan', 'UZB', 860, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('VA', 'Vatican City', 'Holy See (Vatican City State)', 'VAT', 336, 'EU');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'VCT', 670, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('VE', 'Venezuela', 'Bolivarian Republic of Venezuela', 'VEN', 862, 'SA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('VG', 'Virgin Islands, British', 'British Virgin Islands', 'VGB', 92, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('VI', 'Virgin Islands, U.S.', 'United States Virgin Islands', 'VIR', 850, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('VN', 'Vietnam', 'Socialist Republic of Vietnam', 'VNM', 704, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('VU', 'Vanuatu', 'Republic of Vanuatu', 'VUT', 548, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('WF', 'Wallis and Futuna Islands', 'Wallis and Futuna', 'WLF', 876, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('WS', 'Samoa', 'Independent State of Samoa', 'WSM', 882, 'OC');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('YE', 'Yemen', 'Yemen', 'YEM', 887, 'AS');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('YT', 'Mayotte', 'Mayotte', 'MYT', 175, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('ZA', 'South Africa', 'Republic of South Africa', 'ZAF', 710, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('ZM', 'Zambia', 'Republic of Zambia', 'ZMB', 894, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('ZW', 'Zimbabwe', 'Republic of Zimbabwe', 'ZWE', 716, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('BQ', 'Bonaire', 'Bonaire, Sint Eustatius and Saba', 'BES', 535, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('CW', 'Curaçao', 'Curaçao', 'CUW', 531, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('SS', 'South Sudan', 'South Sudan', 'SSD', 728, 'AF');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('SX', 'Sint Maarten', 'Sint Maarten (Dutch part)', 'SXM', 534, 'NA');
INSERT INTO country (code, name, full_name, iso3, iso_number, continent) VALUES ('XK', 'Kosovo', 'Kosovo', '',0, 'EU');

--
-- PostgreSQL database dump complete
--


COMMIT;
START TRANSACTION;

-- Typecasts --

-- Foreign keys --
ALTER TABLE "country" ADD CONSTRAINT "country_ibfk_1" FOREIGN KEY ("continent") REFERENCES "continent" ("code") ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX ON "country" ("continent");


COMMIT;
--
-- PostgreSQL database dump complete
--


