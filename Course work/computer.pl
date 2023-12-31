% ==================================================================================================
% ========================================== База знань ============================================
% ==================================================================================================

%----------Процесори---------
%
component('Intel Core i7-11700K', 'процесор').
component('AMD Ryzen 9 5950X', 'процесор').
component('Intel Core i5-11600K', 'процесор').
component('Intel Core i5-11400F', 'процесор').
component('Intel Pentium Gold G6400', 'процесор').
component('AMD Athlon 3000G', 'процесор').
component('Intel Core i5-11600', 'процесор').
component('Intel 4004', 'процесор').
component('Sun Microsystems UltraSPARC T2', 'процесор').
component('IBM POWER6', 'процесор').
component('AMD Ryzen 7 5800X', 'процесор').
component('AMD Ryzen 5 5600X', 'процесор').
component('AMD Ryzen Threadripper 3990X', 'процесор').

%-----------Пам'ять---------
%
component('Kingston HyperX Fury', 'оперативна пам\'ять').
component('Corsair Vengeance LPX', 'оперативна пам\'ять').
component('Crucial Ballistix Sport', 'оперативна пам\'ять').
component('G.Skill Ripjaws V', 'оперативна пам\'ять').
component('Patriot Viper 4', 'оперативна пам\'ять').
component('Kingston ValueRAM DDR4', 'оперативна пам\'ять').

%--------Накопичувач--------
%
component('Kingston A400', 'накопичувач').
component('Western Digital Blue', 'накопичувач').
component('Samsung 970 EVO', 'накопичувач').
component('Toshiba P300', 'накопичувач').
component('Seagate Barracuda', 'накопичувач').
component('Crucial MX500', 'накопичувач').
component('Seagate ST31000524AS', 'накопичувач').
component('Samsung 870 QVO', 'накопичувач').
component('Crucial P5', 'накопичувач').
component('SanDisk Extreme Pro', 'накопичувач').

%-----------Миша------------

component('SteelSeries Rival 650 Quantum Wireless', 'миша').
component('Logitech B100', 'миша').
component('Microsoft Basic Optical Mouse', 'миша').
component('Logitech M185', 'миша').
component('HP X500', 'миша').
component('Razer DeathAdder V2', 'миша').
component('Logitech G Pro', 'миша').
component('Razer Viper Ultimate', 'миша').

%-------Відеокарта----------
%
component('AMD Radeon Pro WX 9100', 'відеокарта').
component('NVIDIA Quadro RTX 8000', 'відеокарта').
component('AMD Radeon RX 6800 XT', 'відеокарта').
component('NVIDIA GeForce RTX 3090', 'відеокарта').
component('NVIDIA Quadro P400', 'відеокарта').
component('NVIDIA GeForce RTX 3070', 'відеокарта').
component('AMD Radeon RX 5700 XT', 'відеокарта').
component('AMD Radeon Pro VII', 'відеокарта').
component('Nvidia GeForce RTX 3080', 'відеокарта').
component('AMD Radeon Pro VII', 'відеокарта').
component('Nvidia Quadro P620', 'відеокарта').
component('AMD Radeon RX 6800 XT', 'відеокарта').
component('Nvidia GeForce GT 710', 'відеокарта').
component('GeForce RTX 4090', 'відеокарта').
component('Intel Arc A770 16GB Limited Edition', 'відеокарта').
component('Asus ROG Strix GeForce RTX 3080 Ti', 'відеокарта').
component('Intel Iris Xe Graphics G7 96EU', 'відеокарта').

%--------Клавіатура---------

component('Logitech G Pro X', 'клавіатура').
component('HyperX Alloy FPS Pro', 'клавіатура').
component('Dell KB216', 'клавіатура').
component('Microsoft Wired Keyboard 600', 'клавіатура').
component('Corsair K100', 'клавіатура').

%---------Монітор-----------
%
component('AOC 24G2', 'монітор').
component('LG 32GK850G-B', 'монітор').
component('ASUS TUF Gaming VG249Q1R', 'монітор').
component('DELL Alienware AW2720HF', 'монітор').
component('Dell P2419H', 'монітор').
component('HP VH240a', 'монітор').

%-----------ОС--------------

component('Windows 10', 'операційна_система').
component('macOS Mojave', 'операційна_система').
component('Ubuntu 18.04', 'операційна_система').
component('Fedora', 'операційна_система').
component('OpenSUSE', 'операційна_система').
component('FreeBSD', 'операційна_система').
component('Ubuntu 20.04', 'операційна_система').
component('macOS Big Sur', 'операційна_система').
component('SteamOS', 'операційна_система').
component('Windows 11', 'операційна_система').

% ==================================================================================================
% ======================================= Приклади компонент =======================================
% ==================================================================================================

%----------Процесори---------

characteristic('Intel Core i7-11700K', 'виробник', 'Intel').
characteristic('Intel Core i7-11700K', 'швидкість', 3.6).
characteristic('Intel Core i7-11700K', 'кількість_ядер', 8).
characteristic('Intel Core i7-11700K', 'кеш_пам\'ять', 16).
characteristic('Intel Core i7-11700K', 'вартість', 11999).

characteristic('AMD Ryzen 9 5950X', 'виробник', 'AMD').
characteristic('AMD Ryzen 9 5950X', 'швидкість', 3.4).
characteristic('AMD Ryzen 9 5950X', 'кількість_ядер', 16).
characteristic('AMD Ryzen 9 5950X', 'кеш_пам\'ять', 64).
characteristic('AMD Ryzen 9 5950X', 'вартість', 29999).

characteristic('Intel Core i5-11600K', 'виробник', 'Intel').
characteristic('Intel Core i5-11600K', 'швидкість', 3.9).
characteristic('Intel Core i5-11600K', 'кількість_ядер', 6).
characteristic('Intel Core i5-11600K', 'кеш_пам\'ять', 12).
characteristic('Intel Core i5-11600K', 'вартість', 7899).

characteristic('Intel Core i5-11400F', 'виробник', 'Intel').
characteristic('Intel Core i5-11400F', 'швидкість', 2.6).
characteristic('Intel Core i5-11400F', 'кількість_ядер', 6).
characteristic('Intel Core i5-11400F', 'кеш_пам\'ять', 12).
characteristic('Intel Core i5-11400F', 'вартість', 4749).

characteristic('Intel Pentium Gold G6400', 'виробник', 'Intel').
characteristic('Intel Pentium Gold G6400', 'швидкість', 4.0).
characteristic('Intel Pentium Gold G6400', 'кількість_ядер', 2).
characteristic('Intel Pentium Gold G6400', 'кеш_пам\'ять', 4).
characteristic('Intel Pentium Gold G6400', 'вартість', 1499).

characteristic('AMD Athlon 3000G', 'виробник', 'AMD').
characteristic('AMD Athlon 3000G', 'швидкість', 3.5).
characteristic('AMD Athlon 3000G', 'кількість_ядер', 2).
characteristic('AMD Athlon 3000G', 'кеш_пам\'ять', 5).
characteristic('AMD Athlon 3000G', 'вартість', 3199).

characteristic('Intel Core i5-11600', 'виробник', 'Intel').
characteristic('Intel Core i5-11600', 'швидкість', 2.8).
characteristic('Intel Core i5-11600', 'кількість_ядер', 6).
characteristic('Intel Core i5-11600', 'кеш_пам\'ять', 12).
characteristic('Intel Core i5-11600', 'вартість', 7199).

characteristic('Intel 4004', 'виробник', 'Intel').
characteristic('Intel 4004', 'швидкість', 0.074).
characteristic('Intel 4004', 'кількість_ядер', 1).
characteristic('Intel 4004', 'кеш_пам\'ять', 0).
characteristic('Intel 4004', 'вартість', 5400).

characteristic('Sun Microsystems UltraSPARC T2', 'виробник', 'Sun Microsystems').
characteristic('Sun Microsystems UltraSPARC T2', 'швидкість', 1.4).
characteristic('Sun Microsystems UltraSPARC T2', 'кількість_ядер', 8).
characteristic('Sun Microsystems UltraSPARC T2', 'кеш_пам\'ять', 4).
characteristic('Sun Microsystems UltraSPARC T2', 'вартість', 81000).

characteristic('IBM POWER6', 'виробник', 'IBM').
characteristic('IBM POWER6', 'швидкість', 4.7).
characteristic('IBM POWER6', 'кількість_ядер', 8).
characteristic('IBM POWER6', 'кеш_пам\'ять', 32).
characteristic('IBM POWER6', 'вартість', 189000).

characteristic('AMD Ryzen 7 5800X', 'виробник', 'AMD').
characteristic('AMD Ryzen 7 5800X', 'швидкість', 3.8).
characteristic('AMD Ryzen 7 5800X', 'кількість_ядер', 8).
characteristic('AMD Ryzen 7 5800X', 'кеш_пам\'ять', 36).
characteristic('AMD Ryzen 7 5800X', 'вартість', 10800).

characteristic('AMD Ryzen Threadripper 3990X', 'виробник', 'AMD').
characteristic('AMD Ryzen Threadripper 3990X', 'швидкість', 2.9).
characteristic('AMD Ryzen Threadripper 3990X', 'кількість_ядер', 64).
characteristic('AMD Ryzen Threadripper 3990X', 'кеш_пам\'ять', 288).
characteristic('AMD Ryzen Threadripper 3990X', 'вартість', 107730).

characteristic('AMD Ryzen 5 5600X', 'виробник', 'AMD').
characteristic('AMD Ryzen 5 5600X', 'швидкість', 3.7).
characteristic('AMD Ryzen 5 5600X', 'кількість_ядер', 6).
characteristic('AMD Ryzen 5 5600X', 'кеш_пам\'ять', 35).
characteristic('AMD Ryzen 5 5600X', 'вартість', 8100).

%-----------Пам'ять---------
%
characteristic('Kingston HyperX Fury', 'тип', 'DDR4').
characteristic('Kingston HyperX Fury', 'обсяг', 16).
characteristic('Kingston HyperX Fury', 'вартість', 1000).

characteristic('Corsair Vengeance LPX', 'тип', 'DDR4').
characteristic('Corsair Vengeance LPX', 'обсяг', 32).
characteristic('Corsair Vengeance LPX', 'вартість', 2000).

characteristic('Crucial Ballistix Sport', 'тип', 'DDR3').
characteristic('Crucial Ballistix Sport', 'обсяг', 8).
characteristic('Crucial Ballistix Sport', 'вартість', 500).

characteristic('G.Skill Ripjaws V', 'тип', 'DDR4').
characteristic('G.Skill Ripjaws V', 'обсяг', 64).
characteristic('G.Skill Ripjaws V', 'вартість', 4000).

characteristic('Patriot Viper 4', 'тип', 'DDR4').
characteristic('Patriot Viper 4', 'обсяг', 16).
characteristic('Patriot Viper 4', 'вартість', 1200).

characteristic('Kingston ValueRAM DDR4', 'тип', 'DDR4').
characteristic('Kingston ValueRAM DDR4', 'обсяг', 8).
characteristic('Kingston ValueRAM DDR4', 'вартість', 700).

%--------Накопичувач--------

characteristic('Kingston A400', 'тип', 'SSD').
characteristic('Kingston A400', 'обсяг', 240).
characteristic('Kingston A400', 'вартість', 1650).

characteristic('Western Digital Blue', 'тип', 'HDD').
characteristic('Western Digital Blue', 'обсяг', 2000).
characteristic('Western Digital Blue', 'вартість', 1820).

characteristic('Samsung 970 EVO', 'тип', 'SSD').
characteristic('Samsung 970 EVO', 'обсяг', 500).
characteristic('Samsung 970 EVO', 'вартість', 3380).

characteristic('Toshiba P300', 'тип', 'HDD').
characteristic('Toshiba P300', 'обсяг', 2000).
characteristic('Toshiba P300', 'вартість', 2120).

characteristic('Seagate Barracuda', 'тип', 'HDD').
characteristic('Seagate Barracuda', 'обсяг', 500).
characteristic('Seagate Barracuda', 'вартість', 1020).

characteristic('Crucial MX500', 'тип', 'SSD').
characteristic('Crucial MX500', 'обсяг', 128).
characteristic('Crucial MX500', 'вартість', 1320).

characteristic('Seagate ST31000524AS', 'тип', 'HDD').
characteristic('Seagate ST31000524AS', 'обсяг', 1).
characteristic('Seagate ST31000524AS', 'вартість', 1020).

characteristic('Samsung 870 QVO', 'тип', 'SSD').
characteristic('Samsung 870 QVO', 'обсяг', 1000).
characteristic('Samsung 870 QVO', 'вартість', 2600).

characteristic('Crucial P5', 'тип', 'SSD').
characteristic('Crucial P5', 'обсяг', 2000).
characteristic('Crucial P5', 'вартість', 7650).

characteristic('SanDisk Extreme Pro', 'тип', 'SSD').
characteristic('SanDisk Extreme Pro', 'обсяг', 1500).
characteristic('SanDisk Extreme Pro', 'вартість', 6475).

%-----------Миша------------

characteristic('SteelSeries Rival 650 Quantum Wireless', 'тип', 'лазерна').
characteristic('SteelSeries Rival 650 Quantum Wireless', 'кількість_кнопок', 7).
characteristic('SteelSeries Rival 650 Quantum Wireless', 'кількість_режимів_роботи', 3).
characteristic('SteelSeries Rival 650 Quantum Wireless', 'підсвічування', 'є').
characteristic('SteelSeries Rival 650 Quantum Wireless', 'тип_підключення', 'бездротове').
characteristic('SteelSeries Rival 650 Quantum Wireless', 'dpi', 12000).
characteristic('SteelSeries Rival 650 Quantum Wireless', 'вартість', 4500).

characteristic('Logitech B100', 'тип', 'оптична').
characteristic('Logitech B100', 'кількість_кнопок', 3).
characteristic('Logitech B100', 'кількість_режимів_роботи', 1).
characteristic('Logitech B100', 'підсвічування', 'немає').
characteristic('Logitech B100', 'тип_підключення', 'провідне').
characteristic('Logitech B100', 'dpi', 800).
characteristic('Logitech B100', 'вартість', 150).

characteristic('Microsoft Basic Optical Mouse', 'тип', 'оптична').
characteristic('Microsoft Basic Optical Mouse', 'кількість_кнопок', 3).
characteristic('Microsoft Basic Optical Mouse', 'кількість_режимів_роботи', 1).
characteristic('Microsoft Basic Optical Mouse', 'підсвічування', 'немає').
characteristic('Microsoft Basic Optical Mouse', 'тип_підключення', 'провідне').
characteristic('Microsoft Basic Optical Mouse', 'dpi', 800).
characteristic('Microsoft Basic Optical Mouse', 'вартість', 250).

characteristic('Logitech M185', 'тип', 'оптична').
characteristic('Logitech M185', 'кількість_кнопок', 3).
characteristic('Logitech M185', 'кількість_режимів_роботи', 1).
characteristic('Logitech M185', 'підсвічування', 'немає').
characteristic('Logitech M185', 'тип_підключення', 'бездротове').
characteristic('Logitech M185', 'dpi', 1000).
characteristic('Logitech M185', 'вартість', 300).

characteristic('HP X500', 'тип', 'оптична').
characteristic('HP X500', 'кількість_кнопок', 3).
characteristic('HP X500', 'кількість_режимів_роботи', 1).
characteristic('HP X500', 'підсвічування', 'немає').
characteristic('HP X500', 'тип_підключення', 'провідне').
characteristic('HP X500', 'dpi', 1200).
characteristic('HP X500', 'вартість', 200).

characteristic('Razer DeathAdder V2', 'тип', 'оптична').
characteristic('Razer DeathAdder V2', 'кількість_кнопок', 8).
characteristic('Razer DeathAdder V2', 'кількість_режимів_роботи', 5).
characteristic('Razer DeathAdder V2', 'підсвічування', 'є').
characteristic('Razer DeathAdder V2', 'тип_підключення', 'провідне').
characteristic('Razer DeathAdder V2', 'dpi', 20000).
characteristic('Razer DeathAdder V2', 'вартість', 3500).

characteristic('Logitech G Pro', 'тип', 'оптична').
characteristic('Logitech G Pro', 'кількість_кнопок', 6).
characteristic('Logitech G Pro', 'кількість_режимів_роботи', 5).
characteristic('Logitech G Pro', 'підсвічування', 'є').
characteristic('Logitech G Pro', 'тип_підключення', 'провідне').
characteristic('Logitech G Pro', 'dpi', 16000).
characteristic('Logitech G Pro', 'вартість', 3500).

characteristic('Razer Viper Ultimate', 'тип', 'лазерна').
characteristic('Razer Viper Ultimate', 'кількість_кнопок', 8).
characteristic('Razer Viper Ultimate', 'кількість_режимів_роботи', 5).
characteristic('Razer Viper Ultimate', 'підсвічування', 'є').
characteristic('Razer Viper Ultimate', 'тип_підключення', 'бездротове').
characteristic('Razer Viper Ultimate', 'dpi', 20000).
characteristic('Razer Viper Ultimate', 'вартість', 7000).

%-------Відеокарта----------
%
characteristic('AMD Radeon Pro WX 9100', 'виробник', 'amd').
characteristic('AMD Radeon Pro WX 9100', 'обсяг_вбудованої_пам\'яті', 16).
characteristic('AMD Radeon Pro WX 9100', 'частота_ядра', 1200).
characteristic('AMD Radeon Pro WX 9100', 'вартість', 57000).

characteristic('NVIDIA Quadro RTX 8000', 'виробник', 'nvidia').
characteristic('NVIDIA Quadro RTX 8000', 'обсяг_вбудованої_пам\'яті', 48).
characteristic('NVIDIA Quadro RTX 8000', 'частота_ядра', 1395).
characteristic('NVIDIA Quadro RTX 8000', 'вартість', 28000).

characteristic('AMD Radeon RX 6800 XT', 'виробник', 'amd').
characteristic('AMD Radeon RX 6800 XT', 'обсяг_вбудованої_пам\'яті', 16).
characteristic('AMD Radeon RX 6800 XT', 'частота_ядра', 1825).
characteristic('AMD Radeon RX 6800 XT', 'вартість', 32000).

characteristic('NVIDIA GeForce RTX 3090', 'виробник', 'nvidia').
characteristic('NVIDIA GeForce RTX 3090', 'обсяг_вбудованої_пам\'яті', 24).
characteristic('NVIDIA GeForce RTX 3090', 'частота_ядра', 1395).
characteristic('NVIDIA GeForce RTX 3090', 'вартість', 98000).

characteristic('NVIDIA Quadro P400', 'виробник', 'nvidia').
characteristic('NVIDIA Quadro P400', 'обсяг_вбудованої_пам\'яті', 2).
characteristic('NVIDIA Quadro P400', 'частота_ядра', 1170).
characteristic('NVIDIA Quadro P400', 'вартість', 8000).

characteristic('NVIDIA GeForce RTX 3070', 'виробник', 'nvidia').
characteristic('NVIDIA GeForce RTX 3070', 'обсяг_вбудованої_пам\'яті', 8).
characteristic('NVIDIA GeForce RTX 3070', 'частота_ядра', 1500).
characteristic('NVIDIA GeForce RTX 3070', 'вартість', 29000).

characteristic('AMD Radeon RX 5700 XT', 'виробник', 'AMD').
characteristic('AMD Radeon RX 5700 XT', 'обсяг_вбудованої_пам\'яті', 8).
characteristic('AMD Radeon RX 5700 XT', 'частота_ядра', 1605).
characteristic('AMD Radeon RX 5700 XT', 'вартість', 18000).

characteristic('AMD Radeon Pro VII', 'виробник', 'amd').
characteristic('AMD Radeon Pro VII', 'обсяг_вбудованої_пам\'яті', 16).
characteristic('AMD Radeon Pro VII', 'частота_ядра', 1815).
characteristic('AMD Radeon Pro VII', 'вартість', 68000).

characteristic('Nvidia GeForce RTX 3080', 'виробник', 'nvidia').
characteristic('Nvidia GeForce RTX 3080', 'обсяг_вбудованої_пам\'яті', 10).
characteristic('Nvidia GeForce RTX 3080', 'частота_ядра', 1440).
characteristic('Nvidia GeForce RTX 3080', 'вартість', 54000).

characteristic('Nvidia Quadro P620', 'виробник', 'nvidia').
characteristic('Nvidia Quadro P620', 'обсяг_вбудованої_пам\'яті', 2).
characteristic('Nvidia Quadro P620', 'частота_ядра', 1430).
characteristic('Nvidia Quadro P620', 'вартість', 12000).

characteristic('AMD Radeon RX 6800 XT', 'виробник', 'amd').
characteristic('AMD Radeon RX 6800 XT', 'обсяг_вбудованої_пам\'яті', 16).
characteristic('AMD Radeon RX 6800 XT', 'частота_ядра', 2015).
characteristic('AMD Radeon RX 6800 XT', 'вартість', 32000).

characteristic('Nvidia GeForce GT 710', 'виробник', 'nvidia').
characteristic('Nvidia GeForce GT 710', 'обсяг_вбудованої_пам\'яті', 2).
characteristic('Nvidia GeForce GT 710', 'частота_ядра', 954).
characteristic('Nvidia GeForce GT 710', 'вартість', 2500).

characteristic('GeForce RTX 4090', 'виробник', 'nvidia').
characteristic('GeForce RTX 4090', 'обсяг_вбудованої_пам\'яті', 24).
characteristic('GeForce RTX 4090', 'частота_ядра', 2000).
characteristic('GeForce RTX 4090', 'вартість', 80000).

characteristic('Intel Arc A770 16GB Limited Edition', 'виробник', 'intel').
characteristic('Intel Arc A770 16GB Limited Edition', 'обсяг_вбудованої_пам\'яті', 16).
characteristic('Intel Arc A770 16GB Limited Edition', 'частота_ядра', 2000).
characteristic('Intel Arc A770 16GB Limited Edition', 'вартість', 45000).

characteristic('Intel Iris Xe Graphics G7 96EU', 'виробник', 'intel').
characteristic('Intel Iris Xe Graphics G7 96EU', 'обсяг_вбудованої_пам\'яті', 4).
characteristic('Intel Iris Xe Graphics G7 96EU', 'частота_ядра', 1500).
characteristic('Intel Iris Xe Graphics G7 96EU', 'вартість', 8000).

characteristic('Asus ROG Strix GeForce RTX 3080 Ti', 'виробник', 'asus').
characteristic('Asus ROG Strix GeForce RTX 3080 Ti', 'обсяг_вбудованої_пам\'яті', 12).
characteristic('Asus ROG Strix GeForce RTX 3080 Ti', 'частота_ядра', 1365).
characteristic('Asus ROG Strix GeForce RTX 3080 Ti', 'вартість', 60000).

%--------Клавіатура---------
%
characteristic('Logitech G Pro X', 'тип', 'механічна').
characteristic('Logitech G Pro X', 'підсвічування', 'є').
characteristic('Logitech G Pro X', 'наявність_мультимедійних_клавіш', 'є').
characteristic('Logitech G Pro X', 'вартість', 3000).

characteristic('HyperX Alloy FPS Pro', 'тип', 'механічна').
characteristic('HyperX Alloy FPS Pro', 'підсвічування', 'є').
characteristic('HyperX Alloy FPS Pro', 'наявність_мультимедійних_клавіш', 'немає').
characteristic('HyperX Alloy FPS Pro', 'вартість', 2200).

characteristic('Dell KB216', 'тип', 'мембранна').
characteristic('Dell KB216', 'підсвічування', 'немає').
characteristic('Dell KB216', 'наявність_мультимедійних_клавіш', 'є').
characteristic('Dell KB216', 'вартість', 450).

characteristic('Microsoft Wired Keyboard 600', 'тип', 'мембранна').
characteristic('Microsoft Wired Keyboard 600', 'підсвічування', 'немає').
characteristic('Microsoft Wired Keyboard 600', 'наявність_мультимедійних_клавіш', 'є').
characteristic('Microsoft Wired Keyboard 600', 'вартість', 550).

characteristic('Corsair K100', 'тип', 'механічна').
characteristic('Corsair K100', 'підсвічування', 'немає').
characteristic('Corsair K100', 'наявність_мультимедійних_клавіш', 'є').
characteristic('Corsair K100', 'вартість', 5700).

%-----------ОС--------------
%
characteristic('Windows 10', 'виробник', 'microsoft').
characteristic('Windows 10', 'версія', '10').
characteristic('Windows 10', 'підтримка_64-розрядної_архітектури', 'так').
characteristic('Windows 10', 'вартість', 5000).

characteristic('macOS Mojave', 'виробник', 'apple').
characteristic('macOS Mojave', 'версія', 'Mojave').
characteristic('macOS Mojave', 'підтримка_64-розрядної_архітектури', 'так').
characteristic('macOS Mojave', 'вартість', 0).

characteristic('Ubuntu 18.04', 'виробник', 'linux').
characteristic('Ubuntu 18.04', 'версія', '18.04').
characteristic('Ubuntu 18.04', 'підтримка_64-розрядної_архітектури', 'так').
characteristic('Ubuntu 18.04', 'вартість', 0).

characteristic('Fedora', 'виробник', 'linux').
characteristic('Fedora', 'версія', '34').
characteristic('Fedora', 'підтримка_64-розрядної_архітектури', 'так').
characteristic('Fedora', 'вартість', 0).

characteristic('OpenSUSE', 'виробник', 'linux').
characteristic('OpenSUSE', 'версія', '15.3').
characteristic('OpenSUSE', 'підтримка_64-розрядної_архітектури', 'так').
characteristic('OpenSUSE', 'вартість', 0).

characteristic('FreeBSD', 'виробник', 'freebsd').
characteristic('FreeBSD', 'версія', '13.0').
characteristic('FreeBSD', 'підтримка_64-розрядної_архітектури', 'так').
characteristic('FreeBSD', 'вартість', 0).

characteristic('Ubuntu 20.04', 'виробник', 'linux').
characteristic('Ubuntu 20.04', 'версія', '20.04').
characteristic('Ubuntu 20.04', 'підтримка_64-розрядної_архітектури', 'так').
characteristic('Ubuntu 20.04', 'вартість', 0).

characteristic('macOS Big Sur', 'виробник', 'apple').
characteristic('macOS Big Sur', 'версія', 'Big Sur').
characteristic('macOS Big Sur', 'підтримка_64-розрядної_архітектури', 'так').
characteristic('macOS Big Sur', 'вартість', 0).

characteristic('SteamOS', 'виробник', 'valve').
characteristic('SteamOS', 'версія', '2.0').
characteristic('SteamOS', 'підтримка_64-розрядної_архітектури', 'так').
characteristic('SteamOS', 'вартість', 0).

characteristic('Windows 11', 'виробник', 'microsoft').
characteristic('Windows 11', 'версія', '11').
characteristic('Windows 11', 'підтримка_64-розрядної_архітектури', 'так').
characteristic('Windows 11', 'вартість', 6000).

%---------Монітор-----------

characteristic('AOC 24G2', 'діагональ', 23.8).
characteristic('AOC 24G2', 'роздільна_здатність', [1920, 1080]).
characteristic('AOC 24G2', 'тип_панелі', 'ips').
characteristic('AOC 24G2', 'відгук', 1).
characteristic('AOC 24G2', 'частота оновлення', 144).
characteristic('AOC 24G2', 'тип_матриці', 'матова').
characteristic('AOC 24G2', 'наявність_вбудованих_динаміків', 'немає').
characteristic('AOC 24G2', 'яскравість', 250).
characteristic('AOC 24G2', 'контрастність', '1000:1').
characteristic('AOC 24G2', 'вартість', 6500).

characteristic('LG 32GK850G-B', 'діагональ', 31.5).
characteristic('LG 32GK850G-B', 'роздільна_здатність', [2560, 1440]).
characteristic('LG 32GK850G-B', 'тип_панелі', 'lcd').
characteristic('LG 32GK850G-B', 'відгук', 5).
characteristic('LG 32GK850G-B', 'частота оновлення', 144).
characteristic('LG 32GK850G-B', 'тип_матриці', 'глянцева').
characteristic('LG 32GK850G-B', 'наявність_вбудованих_динаміків', 'є').
characteristic('LG 32GK850G-B', 'яскравість', 350).
characteristic('LG 32GK850G-B', 'контрастність', '1000:1').
characteristic('LG 32GK850G-B', 'вартість', 19000).

characteristic('ASUS TUF Gaming VG249Q1R', 'діагональ', 23.8).
characteristic('ASUS TUF Gaming VG249Q1R', 'роздільна_здатність', [1920, 1080]).
characteristic('ASUS TUF Gaming VG249Q1R', 'тип_панелі', 'ips').
characteristic('ASUS TUF Gaming VG249Q1R', 'відгук', 5).
characteristic('ASUS TUF Gaming VG249Q1R', 'частота оновлення', 144).
characteristic('ASUS TUF Gaming VG249Q1R', 'тип_матриці', 'глянцева').
characteristic('ASUS TUF Gaming VG249Q1R', 'наявність_вбудованих_динаміків', 'є').
characteristic('ASUS TUF Gaming VG249Q1R', 'яскравість', 250).
characteristic('ASUS TUF Gaming VG249Q1R', 'контрастність', '1000:1').
characteristic('ASUS TUF Gaming VG249Q1R', 'вартість', 8000).

characteristic('DELL Alienware AW2720HF', 'діагональ', 27).
characteristic('DELL Alienware AW2720HF', 'роздільна_здатність', [1920, 1080]).
characteristic('DELL Alienware AW2720HF', 'тип_панелі', 'lcd').
characteristic('DELL Alienware AW2720HF', 'відгук', 1).
characteristic('DELL Alienware AW2720HF', 'частота оновлення', 240).
characteristic('DELL Alienware AW2720HF', 'тип_матриці', 'глянцева').
characteristic('DELL Alienware AW2720HF', 'наявність_вбудованих_динаміків', 'немає').
characteristic('DELL Alienware AW2720HF', 'яскравість', 350).
characteristic('DELL Alienware AW2720HF', 'контрастність', '1000:1').
characteristic('DELL Alienware AW2720HF', 'вартість', 18500).

characteristic('Dell P2419H', 'діагональ', 23.8).
characteristic('Dell P2419H', 'роздільна_здатність', [1920, 1080]).
characteristic('Dell P2419H', 'тип_панелі', 'ips').
characteristic('Dell P2419H', 'відгук', 4).
characteristic('Dell P2419H', 'частота оновлення', 60).
characteristic('Dell P2419H', 'тип_матриці', 'матова').
characteristic('Dell P2419H', 'наявність_вбудованих_динаміків', 'ні').
characteristic('Dell P2419H', 'яскравість', 250).
characteristic('Dell P2419H', 'контрастність', '1000:1').
characteristic('Dell P2419H', 'вартість', 7500).

characteristic('HP VH240a', 'діагональ', 23.8).
characteristic('HP VH240a', 'роздільна_здатність', [1920, 1080]).
characteristic('HP VH240a', 'тип_панелі', 'ips').
characteristic('HP VH240a', 'відгук', 4.5).
characteristic('HP VH240a', 'частота оновлення', 60).
characteristic('HP VH240a', 'тип_матриці', 'матова').
characteristic('HP VH240a', 'наявність_вбудованих_динаміків', 'немає').
characteristic('HP VH240a', 'яскравість', 250).
characteristic('HP VH240a', 'контрастність', '1000:1').
characteristic('HP VH240a', 'вартість', 4500).


% ==================================================================================================
% ======================================= Допоміжні функції ========================================
% ==================================================================================================

% Функція для отримання списку всіх компонентів, що мають задану характеристику зі значенням value
get_components_with_characteristic(ComponentType, Characteristic, Value, ComponentsList) :-
    findall(Component, (
        component(Component, ComponentType),
        characteristic(Component, Characteristic, X),
        Value == X
    ), ComponentsList).

% Функція для отримання списку всіх компонентів, що мають задану характеристику зі значенням, не меншим за задане.
get_components_with_characteristic_or_greater(ComponentType, Characteristic, Value, ComponentsList) :-
    findall(Component, (
        component(Component, ComponentType),
        characteristic(Component, Characteristic, X),
        X >= Value
    ), ComponentsList).

% Функція для отримання списку всіх компонентів, що мають задану
% характеристику зі значенням, не більше за задане.
get_components_with_characteristic_or_less(ComponentType, Characteristic, Value, ComponentsList) :-
    findall(Component, (
        component(Component, ComponentType),
        characteristic(Component, Characteristic, X),
        X =< Value
    ), ComponentsList).

% Функція для отримання списку всіх компонентів, які мають хоча б одну характеристику зі значеннями values
get_components_with_any_characteristic_values(CharacteristicValuesList, ComponentsList) :-
    findall(Component, (
                member((Characteristic, Value), CharacteristicValuesList),
                characteristic(Component, Characteristic, X),
                Value == X
        ), ComponentsList).

% Пошук елемента з максимальною характеристикою
% у вказаному списку
max_by_characteristic(List, Characteristic, MaxElement) :-
    % Знаходимо характеристику для кожного елементу списку
    findall(Val, (member(Element, List), characteristic(Element, Characteristic, Val)), Vals),
    % Знаходимо максимальне значення характеристики
    % Перевіряємо, чи список Vals не є порожнім
    ( Vals = [] ->
        % Якщо список порожній, повертаємо порожній список
        write('На жаль, оптимальна конфігурація персонального комп\'ютера із наявних компонентів в базі не знайдена. Спробуйте додати до бюджету ще грошей, або додати до бази даних нові компоненти за новими цінами.'), nl, fail;
        % Якщо список не є порожнім, знаходимо максимальне значення характеристики
        max_list(Vals, MaxVal),
        % Знаходимо елемент, який має максимальне значення характеристики
        (characteristic(MaxElement, Characteristic, MaxVal),
        member(MaxElement, List))
    ).

get_type(List, Type) :-
    nth0(0, List, H),
    component(H, Type).

get_max_component(ComponentList, MaxPrice, MaxElement, MoneyLeft) :-
    get_type(ComponentList, Type),
    get_components_with_characteristic_or_less(Type, 'вартість', MaxPrice, List),
    max_by_characteristic(List, 'вартість', MaxElement),
    characteristic(MaxElement, 'вартість', Price),
    MoneyLeft is MaxPrice - Price.

% ==================================================================================================
% ======================================== Функції обробки =========================================
% ==================================================================================================


% Функція для отримання списку всіх рекомендованих компонентів для заданого типу використання (робота, ігри)
get_recommended_components(UsageType, ComponentsList) :-
    recommended_cpu(UsageType, CPU),
    recommended_ram(UsageType, RAM),
    recommended_storage(UsageType, Storage),
    recommended_mouse(UsageType, Mouse),
    recommended_gpu(UsageType, GPU),
    recommended_monitor(UsageType, Monitor),
    ComponentsList = [CPU, RAM, Storage, Mouse, GPU, Monitor].


% Функція для отримання рекомендованого процесора для заданого типу використання (робота, ігри)
recommended_cpu(UsageType, RecommendedCPUs) :-
% Визначити мінімальну швидкість в залежності від типу використання
    get_min_speed(UsageType, MinSpeed),
    % Визначити мінімальну кількість ядер в залежності від типу використання
    get_min_cores(UsageType, MinCores),
    % Вибрати ті, що мають характеристику "швидкість" зі значенням не менше заданого
    get_components_with_characteristic_or_greater('процесор','швидкість', MinSpeed, CPUsWithMinSpeed),
    % Вибрати ті, що мають характеристику "кількість ядер" зі значенням не менше заданого
    get_components_with_characteristic_or_greater('процесор','кількість_ядер', MinCores, CPUsWithMinCores),
    % Вибрати ті, що мають хоча б одну характеристику зі значеннями, що задані в опціях рекомендації
    get_components_with_any_characteristic_values([
        ('виробник', 'Intel'),
        ('виробник', 'AMD')
    ], CPUsWithBrand),
    % Об'єднати всі списки компонентів в один список
    intersection(CPUsWithMinSpeed, CPUsWithMinCores, Temp1),
    intersection(CPUsWithBrand, Temp1, RecommendedCPUs).

% Функція для визначення мінімальної швидкості процесора в залежності від типу використання
get_min_speed(UsageType, MinSpeed) :-
    % Якщо тип використання - робота, то повертаємо мінімальну швидкість 2 ГГц
    (UsageType = 1 -> MinSpeed = 2.0);
    % Якщо тип використання - ігри, то повертаємо мінімальну швидкість 3 ГГц
    (UsageType = 2 -> MinSpeed = 3.0).

% Функція для отримання мінімальної кількості ядер процесора в залежності від типу використання
get_min_cores(UsageType, MinCores) :-
    % Визначити мінімальну кількість ядер в залежності від типу використання
    % Якщо тип використання - робота
    (UsageType = 1 -> MinCores is 4);
    % Якщо тип використання - ігри
    (UsageType = 2 -> MinCores is 6).

% Функція для отримання рекомендованої оперативної пам'яті для заданого типу використання (робота, ігри)
recommended_ram(UsageType, RecommendedRAMs) :-
    % Визначити мінімальну кількість оперативної пам'яті в залежності від типу використання
    get_min_ram(UsageType, MinRAM),
    % Вибрати ті, що мають характеристику "об'єм оперативної пам'яті" зі значенням не менше заданого
    get_components_with_characteristic_or_greater('оперативна пам\'ять', 'обсяг', MinRAM, RAMsWithMinSize),
    % Вибрати ті, що мають хоча б одну характеристику зі значеннями, що задані в опціях рекомендації
    get_components_with_any_characteristic_values([
        ('тип', 'DDR4')
    ], RAMsWithType),
    % Об'єднати всі списки компонентів в один список
    intersection(RAMsWithMinSize, RAMsWithType, RecommendedRAMs).

% Функція для отримання мінімальної кількості оперативної пам'яті в залежності від типу використання
get_min_ram(UsageType, MinRAM) :-
    % Якщо тип використання - робота
    (UsageType = 1 -> MinRAM is 8);
    % Якщо тип використання - ігри
    (UsageType = 2 -> MinRAM is 16).

recommended_storage(UsageType, Storage) :-
    % Визначаємо мінімальний обсяг накопичувача для даної мети використання
    get_min_storage(UsageType, MinStorage),
    % Визначаємо тип накопичувача для даної мети використання
    get_min_storage_type(UsageType, StorageType),
    % Знаходимо всі компоненти зі знайденим типом накопичувача та мінімальним обсягом
    get_components_with_characteristic('накопичувач', 'тип', StorageType, ComponentsWithType),
    get_components_with_characteristic_or_greater('накопичувач', 'обсяг', MinStorage, ComponentsWithCapacity),
    % Об'єднуємо результати двох функцій
    intersection(ComponentsWithType, ComponentsWithCapacity, Storage).

% Функція для визначення типу накопичувача в залежності від типу використання
get_min_storage_type(UsageType, StorageType) :-
    % Якщо тип використання - робота, то повертаємо тип HDD
    (UsageType = 1 -> StorageType = 'HDD');
    % Якщо тип використання - ігри, то повертаємо тип SSD
    (UsageType = 2 -> StorageType = 'SSD').

% Функція для визначення мінімального обсягу накопичувача в залежності від типу використання
get_min_storage(UsageType, MinStorage) :-
    % Якщо тип використання - робота, то повертаємо мінімальний обсяг 128 ГБ
    (UsageType = 1 -> MinStorage = 128);
    % Якщо тип використання - ігри, то повертаємо мінімальний обсяг 512 ГБ
    (UsageType = 2 -> MinStorage = 512).

% Функція для отримання рекомендованої миші для заданого типу використання (робота, ігри)
recommended_mouse(UsageType, RecommendedMice) :-
    % Визначити мінімальну кількість кнопок в залежності від типу використання
    get_min_buttons(UsageType, MinButtons),
    % Визначити мінімальну кількість режимів роботи в залежності від типу використання
    get_min_modes(UsageType, MinModes),
    % Визначити мінімальну роздільну здатність в залежності від типу використання
    get_min_dpi(UsageType, MinDPI),
    % Вибрати миші, що мають характеристику "кількість кнопок" зі значенням не менше заданого
    get_components_with_characteristic_or_greater('миша', 'кількість_кнопок', MinButtons, MiceWithMinButtons),
    % Вибрати миші, що мають характеристику "кількість режимів роботи" зі значенням не менше заданого
    get_components_with_characteristic_or_greater('миша', 'кількість_режимів_роботи', MinModes, MiceWithMinModes),
    % Вибрати миші, що мають характеристику "роздільна здатність" зі значенням не менше заданого
    get_components_with_characteristic_or_greater('миша', 'dpi', MinDPI, MiceWithMinDPI),
    % Об'єднати всі списки компонентів в один список
    intersection(MiceWithMinButtons, MiceWithMinModes, MiceWithMinButtonsAndModes),
    intersection(MiceWithMinButtonsAndModes, MiceWithMinDPI, RecommendedMice).

% Отримати мінімальну кількість кнопок для заданого типу використання
get_min_buttons(UsageType, MinButtons) :-
    % Визначити мінімальну кількість кнопок в залежності від типу використання
    (UsageType == 1 -> MinButtons = 2; UsageType == 2 -> MinButtons = 3).

% Отримати мінімальну кількість режимів роботи для заданого типу використання
get_min_modes(UsageType, MinModes) :-
    % Визначити мінімальну кількість режимів роботи в залежності від типу використання
    (UsageType == 1 -> MinModes = 1; UsageType == 2 -> MinModes = 2).

% Отримати мінімальну кількість роздільної здатності для заданого типу використання
get_min_dpi(UsageType, MinDPI) :-
    % Визначити мінімальну кількість роздільної здатності в залежності від типу використання
    (UsageType == 1 -> MinDPI = 800; UsageType == 2 -> MinDPI = 1200).

filter_mice(MouseReq, MouseList, FilteredMice):-
    ( MouseReq == 1 ->
         get_components_with_characteristic('миша','підсвічування', 'є', LEDMice),
         intersection(MouseList, LEDMice, FilteredMice);
      MouseReq == 2 ->
         get_components_with_characteristic('миша','тип_підключення', 'бездротове', WirelessMice),
         intersection(MouseList, WirelessMice, FilteredMice);
      MouseReq == 3 ->
         get_components_with_characteristic('миша','підсвічування', 'є', LEDMice),
         get_components_with_characteristic('миша','тип_підключення', 'бездротове', WirelessMice),
         intersection(LEDMice, WirelessMice, LEDWirelessMice),
         intersection(MouseList, LEDWirelessMice, FilteredMice);
      MouseReq == 4 ->  FilteredMice = MouseList).

% Функція для отримання рекомендованої відеокарти для заданого типу використання (робота, ігри)
recommended_gpu(UsageType, RecommendedGPU) :-
    % Визначити мінімальну кількість пам'яті в залежності від типу використання
    get_min_memory(UsageType, MinMemory),
    % Визначаємо мінімальну частоту ядра в залежності від типу використання
    get_min_core_clock(UsageType, MinCoreClock),
    % Вибрати відеокарти, що мають характеристику "кількість пам'яті" зі значенням не менше заданого
    get_components_with_characteristic_or_greater('відеокарта', 'обсяг_вбудованої_пам\'яті', MinMemory, GPUsWithMinMemory),
    % Вибрати відеокарти, що мають характеристику "частота ядра" зі значенням не менше заданого
    get_components_with_characteristic_or_greater('відеокарта', 'частота_ядра', MinCoreClock, GPUsWithMinCoreClock),
    % Об'єднати всі списки компонентів в один список
    intersection(GPUsWithMinMemory, GPUsWithMinCoreClock, RecommendedGPU).

% Отримати мінімальний обсяг вбудованої пам'яті для заданого типу використання
get_min_memory(UsageType, MinMemory) :-
    % Визначити мінімальний об'єм пам'яті в залежності від типу використання
    (UsageType == 1 -> MinMemory = 4; UsageType == 2 -> MinMemory = 8).

% Отримати мінімальну частоту ядра для заданого типу використання
get_min_core_clock(UsageType, MinCoreClock) :-
    % Визначити мінімальну частоту ядра в залежності від типу використання
    (UsageType == 1 -> MinCoreClock = 800; UsageType == 2 -> MinCoreClock = 1350).

recommended_monitor(UsageType, RecommendedMonitor) :-
    % Визначити мінімальну діагональ екрану в залежності від типу використання
    get_min_diagonal(UsageType, MinDiagonal),
    % Визначити мінімальну роздільну здатність в залежності від типу використання
    get_min_resolution(UsageType, MinResolution),
    % Визначити мінімальну частоту оновлення в залежності від типу використання
    get_min_refresh_rate(UsageType, MinRefreshRate),
    % Вибрати монітори, що мають характеристику "діагональ" зі значенням не менше заданого
    get_components_with_characteristic_or_greater('монітор', 'діагональ', MinDiagonal, MonitorsWithMinDiagonal),
    % Вибрати монітори, що мають характеристику "роздільна здатність" зі значенням не менше заданого
    nth0(0, MinResolution, FirstResolution),
    findall(Component, (
        component(Component, 'монітор'),
        characteristic(Component, 'роздільна_здатність', X),
        nth0(0, X, XResolution),
        XResolution >= FirstResolution
    ), MonitorsWithMinResolution),
    % Вибрати монітори, що мають характеристику "частота оновлення" зі значенням не менше заданого
    get_components_with_characteristic_or_greater('монітор', 'частота оновлення', MinRefreshRate, MonitorsWithMinRefreshRate),
    % Об'єднати всі списки компонентів в один список
    intersection(MonitorsWithMinDiagonal, MonitorsWithMinResolution, MonitorsWithMinDiagonalAndResolution),
    intersection(MonitorsWithMinDiagonalAndResolution, MonitorsWithMinRefreshRate, RecommendedMonitor).

% Функція для отримання мінімального діагонального розміру монітора в залежності від типу використання
get_min_diagonal(UsageType, MinDiagonal) :-
    % Визначаємо мінімальний діагональний розмір в залежності від типу використання
    (UsageType == 1 -> MinDiagonal = 19;
    UsageType == 2 -> MinDiagonal = 23).

% Визначити мінімальну роздільну здатність в залежності від типу використання
get_min_resolution(UsageType, MinResolution) :-
    % Визначити мінімальну роздільну здатність для роботи
    (UsageType == 1 ->
        MinResolution = [1080, 720];
    % Визначити мінімальну роздільну здатність для ігор
    UsageType == 2 ->
        MinResolution = [1920, 1080]
    ).

% Визначити мінімальну частоту оновлення в залежності від типу використання
get_min_refresh_rate(UsageType, MinRefreshRate) :-
    % Визначити мінімальну частоту оновлення для роботи та для ігор
    (UsageType = 1, MinRefreshRate is 60);
    (UsageType = 2, MinRefreshRate is 120).

get_keyboard(KeyboardType, KeyboardReq, KeyboardList) :-
    (KeyboardType == 1 -> get_components_with_characteristic('клавіатура', 'тип', 'механічна', KeyboardTypeList);
    KeyboardType == 2 -> get_components_with_characteristic('клавіатура', 'тип', 'мембранна', KeyboardTypeList)),
    (KeyboardReq == 1 -> get_components_with_characteristic('клавіатура', 'підсвічування', 'є', KeyboardReqList);
    KeyboardReq == 2 -> get_components_with_characteristic('клавіатура', 'наявність_мультимедійних_клавіш', 'є', KeyboardReqList);
    KeyboardReq == 3 ->
    get_components_with_characteristic('клавіатура', 'підсвічування', 'є', LEDKeyboardList),
    get_components_with_characteristic('клавіатура', 'наявність_мультимедійних_клавіш', 'є', ButtonsKeyboardList),
    intersection(LEDKeyboardList, ButtonsKeyboardList, KeyboardReqList);
    KeyboardReq == 4 -> KeyboardReqList = KeyboardTypeList),
    intersection(KeyboardTypeList, KeyboardReqList, KeyboardList).

get_OS(OSReq, OSList):-
    (OSReq == 1 -> OSCompany = 'microsoft'; OSReq == 2 -> OSCompany = 'apple'; OSReq == 3 -> OSCompany = 'linux'),
    get_components_with_characteristic('операційна_система', 'виробник', OSCompany, OSList).


distribute_budget(Budget, UsageType, [ProcessorPrice, MemoryPrice, StoragePrice, GraphicsPrice, MonitorPrice, KeyboardPrice, MousePrice]):-
    (   UsageType == 1
    ->  ProcessorPercentage is 30,
        MemoryPercentage is 20,
        StoragePercentage is 20,
        GraphicsPercentage is 10,
        MonitorPercentage is 10,
        KeyboardPercentage is 5,
        MousePercentage is 5
    ;   UsageType == 2
    ->  ProcessorPercentage is 25,
        MemoryPercentage is 15,
        StoragePercentage is 10,
        GraphicsPercentage is 35,
        MonitorPercentage is 10,
        KeyboardPercentage is 3,
        MousePercentage is 2
    ),

    ProcessorPrice is Budget * ProcessorPercentage // 100,
    MemoryPrice is Budget * MemoryPercentage // 100,
    StoragePrice is Budget * StoragePercentage // 100,
    GraphicsPrice is Budget * GraphicsPercentage // 100,
    MonitorPrice is Budget * MonitorPercentage // 100,
    KeyboardPrice is Budget * KeyboardPercentage // 100,
    MousePrice is Budget * MousePercentage // 100.

% ==================================================================================================
% ======================================== Модуль виводу ===========================================
% ==================================================================================================


print_components(CPU, RAM, Storage, Mouse, GPU, Monitor, Keyboard, OS, Money) :-
    writeln('-------------------------------------------------------'),
    write('Оптимальний вибір процесору: '),
    writeln(CPU),
    print_CPU(CPU),
    writeln('-------------------------------------------------------'),
    write('Оптимальний вибір оперативної пам\'яті: '),
    writeln(RAM),
    print_RAM(RAM),
    writeln('-------------------------------------------------------'),
    write('Оптимальний вибір накопичувача: '),
    writeln(Storage),
    print_storage(Storage),
    writeln('-------------------------------------------------------'),
    write('Оптимальний вибір відеокарти: '),
    writeln(GPU),
    print_GPU(GPU),
    writeln('-------------------------------------------------------'),
    write('Оптимальний вибір монітору: '),
    writeln(Monitor),
    print_monitor(Monitor),
    writeln('-------------------------------------------------------'),
    write('Оптимальний вибір клавіатури: '),
    writeln(Keyboard),
    print_keyboard(Keyboard),
    writeln('-------------------------------------------------------'),
    write('Оптимальний вибір миші: '),
    writeln(Mouse),
    print_mouse(Mouse),
    writeln('-------------------------------------------------------'),
    write('Оптимальний вибір оперативної системи: '),
    writeln(OS),
    write_list(OS),
    writeln('-------------------------------------------------------'),
    write('Гроші, що залишились (збірка не включає в себе вартість ОС): '),
    write(Money), writeln(' грн.').

print_CPU(CPU) :-
    % Знаходимо виробника процесору
    characteristic(CPU, 'виробник', Manufacturer),
    write('Виробник: '), write(Manufacturer), nl,
    % Знаходимо швидкість процесору
    characteristic(CPU, 'швидкість', Speed),
    write('Швидкість: '), write(Speed), write(' ГГц'), nl,
    % Знаходимо кеш пам'яті процесору
    characteristic(CPU, 'кеш_пам\'ять', Cache),
    write('Кеш пам\'ять: '), write(Cache), write(' Мб'), nl,
    % Знаходимо вартість процесору
    characteristic(CPU, 'вартість', Price),
    write('Вартість: '), write(Price), write(' грн'), nl.

print_RAM(RAM) :-
    % Знаходимо тип оперативної пам'яті
    characteristic(RAM, 'тип', Type),
    write('Тип: '), write(Type), nl,
    % Знаходимо об'єм оперативної пам'яті
    characteristic(RAM, 'обсяг', Volume),
    write('Об\'єм: '), write(Volume), write(' Гб'), nl,
    % Знаходимо вартість оперативної пам'яті
    characteristic(RAM, 'вартість', Price),
    write('Вартість: '), write(Price), write(' грн'), nl.

print_storage(Storage) :-
    % Знаходимо тип накопичувача
    characteristic(Storage, 'тип', Type),
    write('Тип: '), write(Type), nl,
    % Знаходимо об'єм накопичувача
    characteristic(Storage, 'обсяг', Capacity),
    write('Об\'єм: '), write(Capacity), write(' Гб'), nl,
    % Знаходимо вартість накопичувача
    characteristic(Storage, 'вартість', Price),
    write('Вартість: '), write(Price), write(' грн'), nl.

print_GPU(GPU) :-
    % Знаходимо виробника відеокарти
    characteristic(GPU, 'виробник', Manufacturer),
    write('Виробник: '), write(Manufacturer), nl,
    % Знаходимо обсяг вбудованої пам'яті відеокарти
    characteristic(GPU, 'обсяг_вбудованої_пам\'яті', Memory),
    write('Обсяг вбудованої пам\'яті: '), write(Memory), write(' Гб'), nl,
    % Знаходимо частоту ядра відеокарти
    characteristic(GPU, 'частота_ядра', CoreClock),
    write('Частота ядра: '), write(CoreClock), write(' МГц'), nl,
    % Знаходимо вартість відеокарти
    characteristic(GPU, 'вартість', Price),
    write('Вартість: '), write(Price), write(' грн'), nl.

print_monitor(Monitor) :-
    % Знаходимо діагональ монітора
    characteristic(Monitor, 'діагональ', Diagonal),
    write('Діагональ: '), write(Diagonal), write(' дюймів'), nl,
    % Знаходимо роздільну здатність монітора
    characteristic(Monitor, 'роздільна_здатність', [Width, Height]),
    write('Роздільна здатність: '), write(Width), write('x'), write(Height), nl,
    % Знаходимо тип панелі монітора
    characteristic(Monitor, 'тип_панелі', Panel),
    write('Тип панелі: '), write(Panel), nl,
    % Знаходимо відгук монітора
    characteristic(Monitor, 'відгук', Response),
    write('Відгук: '), write(Response),  write(' мс'),nl,
    % Знаходимо частоту оновлення монітора
    characteristic(Monitor, 'частота оновлення', RefreshRate),
    write('Частота оновлення: '), write(RefreshRate), write(' Гц'), nl,
    % Знаходимо тип матриці монітора
    characteristic(Monitor, 'тип_матриці', MatrixType),
    write('Тип матриці: '), write(MatrixType), nl,
    % Знаходимо наявність вбудованих динаміків монітора
    characteristic(Monitor, 'наявність_вбудованих_динаміків', Speakers),
    write('Наявність вбудованих динаміків: '), write(Speakers), nl,
    % Знаходимо яскравість монітора
    characteristic(Monitor, 'яскравість', Brightness),
    write('Яскравість: '), write(Brightness), write(' кд/м²'), nl,
    % Знаходимо контрастність монітора
    characteristic(Monitor, 'контрастність', Contrast),
    write('Контрастність: '), write(Contrast), nl,
    % Знаходимо вартість монітора
    characteristic(Monitor, 'вартість', Price),
    write('Вартість: '), write(Price), write(' грн'), nl.

print_keyboard(Keyboard) :-
    % Знаходимо тип клавіатури
    characteristic(Keyboard, 'тип', Type),
    write('Тип: '), write(Type), nl,
    % Знаходимо наявність підсвічування
    characteristic(Keyboard, 'підсвічування', Backlight),
    write('Підсвічування: '), write(Backlight), nl,
    % Знаходимо наявність мультимедійних клавіш
    characteristic(Keyboard, 'наявність_мультимедійних_клавіш', Multimedia),
    write('Мультимедійні клавіші: '), write(Multimedia), nl,
    % Знаходимо вартість клавіатури
    characteristic(Keyboard, 'вартість', Price),
    write('Вартість: '), write(Price), write(' грн'), nl.

print_mouse(Mouse) :-
    % Знаходимо тип миші
    characteristic(Mouse, 'тип', Type),
    write('Тип: '), write(Type), nl,
    % Знаходимо кількість кнопок миші
    characteristic(Mouse, 'кількість_кнопок', Buttons),
    write('Кількість кнопок: '), write(Buttons), nl,
    % Знаходимо кількість режимів роботи миші
    characteristic(Mouse, 'кількість_режимів_роботи', Modes),
    write('Кількість режимів роботи: '), write(Modes), nl,
    % Знаходимо наявність підсвічування миші
    characteristic(Mouse, 'підсвічування', Backlit),
    write('Підсвічування: '), write(Backlit), nl,
    % Знаходимо тип підключення миші
    characteristic(Mouse, 'тип_підключення', Connection),
    write('Тип підключення: '), write(Connection), nl,
    % Знаходимо DPI миші
    characteristic(Mouse, 'dpi', DPI),
    write('DPI: '), write(DPI), nl,
    % Знаходимо вартість миші
    characteristic(Mouse, 'вартість', Price),
    write('Вартість: '), write(Price), write(' грн'), nl.

print_OS(OS) :-
    writeln(OS),
    % Знаходимо виробника операційної системи
    characteristic(OS, 'виробник', Manufacturer),
    write('Виробник: '), write(Manufacturer), nl,
    % Знаходимо версію операційної системи
    characteristic(OS, 'версія', Version),
    write('Версія: '), write(Version), nl,
    % Знаходимо підтримку 64-розрядної архітектури
    characteristic(OS, 'підтримка_64-розрядної_архітектури', Support),
    write('Підтримка 64-розрядної архітектури: '), write(Support), nl,
    % Знаходимо вартість операційної системи
    characteristic(OS, 'вартість', Price),
    write('Вартість: '), write(Price), write(' грн'), nl.

% Виводить список ОС
write_list([]).
write_list([OS | OSs]) :-
    writeln('---'),
    print_OS(OS),
    write_list(OSs).

% ==================================================================================================
% ======================================== Модуль вводу ============================================
% ==================================================================================================

ask_usage_type(UsageType) :-
    writeln('Для якої мети ви будете використовувати комп\'ютер?'),
    writeln('1. Для роботи'),
    writeln('2. Для ігор'),
    read(UsageType),
    (UsageType = 1; UsageType = 2) % перевіряємо, чи коректно введене значення
    -> true;
    (writeln('Будь ласка, введіть 1 або 2.'), ask_usage_type(UsageType)).

ask_os_req(OSReq) :-
    writeln('Яку операційну систему ви більше за все використовуєте або хотіли би встановити на новому комп\'ютері?'),
    writeln('1. Windows'),
    writeln('2. MacOS'),
    writeln('3. Linux'),
    read(OSReq),
    (between(1, 3, OSReq)) % перевіряємо, чи коректно введене значення
    -> true;
    (writeln('Будь ласка, введіть число від 1 до 3.'), ask_os_req(OSReq)).

ask_keyboard_type(KeyboardType) :-
    writeln('Який тип клавіатури вам потрібен?'),
    writeln('1. Механічна'),
    writeln('2. Мембранна'),
    read(KeyboardType),
    (KeyboardType = 1; KeyboardType = 2) % перевіряємо, чи коректно введене значення
    -> true;
    (writeln('Будь ласка, введіть 1 або 2.'), ask_keyboard_type(KeyboardType)).

ask_keyboard_req(KeyboardReq) :-
    writeln('Які ваші вимоги до клавіатури?'),
    writeln('1. Наявність підсвічування'),
    writeln('2. Наявність мультимедійних кнопок'),
    writeln('3. Наявність мультимедійних кнопок та підсвічування'),
    writeln('4. Жодних'),
    read(KeyboardReq),
    (between(1, 4, KeyboardReq)) % перевіряємо, чи коректно введене значення
    -> true;
     (writeln('Будь ласка, введіть число від 1 до 4.'), ask_keyboard_req(KeyboardReq)).

ask_mouse_req(MouseReq) :-
    writeln('Які ваші вимоги до миші?'),
    writeln('1. Наявність підсвічування'),
    writeln('2. Бездротова'),
    writeln('3. З підсвічуванням та бездротова'),
    writeln('4. Жодних'),
    read(Req),
    (between(1, 4, Req) % перевіряємо, чи коректно введене значення
    -> MouseReq is Req, true;
    (writeln('Будь ласка, введіть число від 1 до 4.'), ask_mouse_req(MouseReq))).

% Правило для запуску експертної системи
run :-
    % Запитуємо мету використання комп'ютера
    ask_usage_type(UsageType),
    % Запитуємо бюджет користувача
    writeln('Який ваш бюджет на придбання комп\'ютера (в гривнях)?'),
    read(Budget),
    % Запитуємо операційну систему користувача
    ask_os_req(OSReq),
    % Запитуємо вимоги користувача до клавіатури
    ask_keyboard_type(KeyboardType),
    ask_keyboard_req(KeyboardReq),
    % Запитуємо вимоги користувача до миші
    ask_mouse_req(MouseReq),
    get_recommended_components(UsageType, [CPU, RAM, Storage, Mouse, GPU, Monitor]),
    filter_mice(MouseReq, Mouse, ReqMouse),
    get_keyboard(KeyboardType, KeyboardReq, Keyboard),
    distribute_budget(Budget, UsageType, [ProcessorPrice, MemoryPrice, StoragePrice, GraphicsPrice, MonitorPrice, KeyboardPrice, MousePrice]),
    get_max_component(CPU, ProcessorPrice, MaxCPU, AddMoney),
    MemoryPrice2 is MemoryPrice+AddMoney,
    get_max_component(RAM, MemoryPrice2, MaxRAM, AddMoney2),
    StoragePrice2 is StoragePrice+AddMoney2,
    get_max_component(Storage, StoragePrice2, MaxStorage, AddMoney3),
    GraphicsPrice2 is GraphicsPrice+AddMoney3,
    get_max_component(GPU, GraphicsPrice2, MaxGPU, AddMoney4),
    MonitorPrice2 is MonitorPrice+AddMoney4,
    get_max_component(Monitor, MonitorPrice2, MaxMonitor, AddMoney5),
    MousePrice2 is MousePrice+AddMoney5,
    get_max_component(ReqMouse, MousePrice2, MaxMouse, AddMoney6),
    KeyboardPrice2 is KeyboardPrice+AddMoney6,
    get_max_component(Keyboard, KeyboardPrice2, MaxKeyboard, MoneyLeft),
    get_OS(OSReq, OSList),
    print_components(MaxCPU, MaxRAM, MaxStorage, MaxMouse, MaxGPU, MaxMonitor, MaxKeyboard, OSList, MoneyLeft).

