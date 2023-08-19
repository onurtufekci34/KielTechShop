-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 18, 2023 at 12:20 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mydb`;

-- --------------------------------------------------------

--
-- Table structure for table `alle_produkte`
--

CREATE TABLE `alle_produkte` (
  `id_produkt` int(11) NOT NULL,
  `preis` double NOT NULL,
  `verfügbarkeit` tinyint(4) NOT NULL,
  `unter_k_id` int(11) NOT NULL,
  `p_name` tinytext DEFAULT NULL,
  `Beschreibung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `alle_produkte`
--

INSERT INTO `alle_produkte` (`id_produkt`, `preis`, `verfügbarkeit`, `unter_k_id`, `p_name`, `Beschreibung`) VALUES
(1, 133, 2, 1, 'Brother HL-L2350DW, Laserdrucker', 'Schnell, leise und umweltfreundlich: der HL-L2350DW mit automatischem Duplexdruck, bis zu 30 Seiten/Minute Druckgeschwindigkeit und 1.200 x 1.200 dpi Druckauflösung ist der zuverlässige Arbeiter im Home-Office und am Arbeitsplatz.'),
(2, 249, 15, 2, 'Canton GLE 490.2, Lautsprecher', 'Die GLE-Serie baut optisch bewusst auf dem Design der erfolgreichen LE-Serie auf. Technologisch ist sie vollständig neu entwickelt. Mit optimierten Tieftonkörben für schlankere Bauformen und Aluminium-Membranen, die bisher nur der Vento- und Karat-Serie vorbehalten waren, untermauert der Canton GLE 490.2 Lautsprecher seinen Anspruch: Er vergleicht sich nach oben, wo er mit seinem enormen Klangpotenzial auch anzusiedeln ist.'),
(3, 209, 43, 1, 'Brother MFC-J6540DWE, Multifunktionsdrucker', 'Der MFC-J6540DWE liefert zuverlässige 4-in-1-Funktionalität für das Homeoffice oder kleine Büros. Dieser Multifunktionsdrucker arbeitet mit vier Tintenpatronen äußerst effizient und mit hohen Reichweiten, wobei er eine Geschwindigkeit von bis zu 35 Seiten Schwarzdruck und 32 Seiten Farbdruck erreicht. Neben der Druckfunktion bis zum Format DIN A3 sind ein Scanner mit Flachbetteinheit und 50 Blatt (DIN A3) fassendem Einzug sowie ein Kopierer an Bord. Der MFC-J6540DWE verfügt über Schnittstellen für WLAN, LAN und USB - er unterstützt außerdem den Direktdruck von Mobilgeräten mit iOS oder Android.'),
(4, 140, 29, 1, 'CANON Pixma TS7451A Drucker', 'Ein intelligentes und doch einfach bedienbares Multifunktionssystem mit enormem kreativen Potenzial und der Möglichkeit, Zuhause zu arbeiten.\r\n\r\nDrucken, Scannen, Kopieren – der TS7451a ist dank 2 x 100 Blatt Papiervorrat, automatischem beidseitigen Druck und 35-Blatt-ADF für alles bereit.'),
(5, 60, 34, 1, 'HP Deskjet 3762 Drucker', 'Kopieren und Scannen mit HP DeskJet 3762 grün All-in-One ( T8X23B#686 )\r\nDank der multifunktionalen Ausführung ist der HP DeskJet 3762 grün All-in-One fähig zu drucken, kopieren sowie scannen und ist eine großartige Lösung für die Standardarbeit mit Dokumenten. Der Tintenstrahldrucker HP DeskJet 3762 grün All-in-One kann mit folgenden Papierformaten arbeiten: A4, A5 und A6.'),
(6, 240, 18, 2, 'CANTON GLE 426.2 Lautsprecher', 'Dieser 2-Wege-Lautsprecher deckt das Frequenzspektrum mit einem Hochtöner sowie einem Tief- und Mitteltöner ab, sodass ein vorzüglicher Klang erzeugt wird.\r\n\r\nFür die Kombination mit einem Verstärker ist es wichtig, die Impedanz des Lautsprechers zu kennen. Diese beläuft sich hier auf 4-8 Ohm. Der Hersteller gibt die Nennbelastbarkeit (RMS) mit 70 Watt an.'),
(7, 405, 15, 2, 'TEUFEL Ultima 40 HiFi-Standlautsprecher-Paar Lautsprecher', 'HiFi-Standlautsprecher-Paar der Spitzenklasse aus unserer beliebtesten Lautsprecher-Serie\r\nHoher Klanggenuss für Musik, Filmton und Games für Räume bis 35 qm\r\nHochtöner mit Phase-Plug für optimale Klangabstrahlung sowie ausgewogenem Klang\r\n3-Wege-System mit zwei hoch belastbaren Tieftönern für hohe'),
(8, 339, 21, 2, 'JBL PartyBox 110 Lautsprecher', 'Wo die Musik für die nächste Feier herkommt ist klar. Was noch fehlt, sind passende Lautsprecher zur Wiedergabe. Genau hier kommt der tragbare Lautsprecher \"PartyBox 110\" von JBL ins Spiel. Äußerlich überzeugt das Produkt durch eine dezente, schwarze Farbgebung.\r\n\r\nDer Frequenzbereich liegt bei 45-20.000 Hz.'),
(9, 149, 11, 3, 'PHILIPS 271V8LA 27 Zoll Full-HD Monitor', 'Der Philips V-Line Wide-View-Monitor bietet eine bislang unerreichte Bildqualität, enthält viele wichtige Funktionen und überzeugt durch ein hervorragendes Preis-Leistungs-Verhältnis. Adaptive-Sync sorgt für eine reibungslose Videoanzeige. Durch Funktionen wie Blendschutz, LowBlue-Modus und Flimmerfreiheit ist er zudem besonders schonend für Ihre Augen.'),
(10, 129, 42, 3, 'LENOVO L24e-30 23,8 Zoll Full-HD Monitor', 'Das nur 7,1 mm schlanke Display ist dünner als manche Smartphone und die extra-schmalen Displayrahmen an drei Seiten sehen super aus und bringen möglichst viel Bildschirmfläche im Gehäuse unter. Das VA-Display stellt Bilder farbgenau aus allen Betrachtungswinkeln dar, sodass jeder vor dem Monitor beispielsweise ein Video genau gleich gut sehen kann.'),
(11, 227, 12, 3, 'SAMSUNG S32C390EAU 32 Zoll Full-HD Monitor ', 'Egal ob arbeiten, spielen oder Filme ansehen: Der Monitor S32C390EAU von SAMSUNG wird Sie begeistern! Die schwarze Farbe gibt dem Produkt einen zeitlosen Touch und passt sich gekonnt an jedes Mobiliar an.'),
(12, 299, 29, 3, 'SAMSUNG ViewFinity S50C Monitor', 'Egal ob arbeiten, spielen oder Filme ansehen: Der Monitor ViewFinity S50C von SAMSUNG wird Sie begeistern! Dank seiner stilvollen schwarzen Farbe lässt sich das Produkt hervorragend in verschiedene Raumkonzepte integrieren.'),
(13, 198, 17, 4, 'ASUS Geforce® GTX 1660 SUPER™ TUF Gaming OC 6GB', 'Pixelbeschleuniger in Perfektion: Mit der GrafikkarteASUS GeForce TUF GTX 1660 Super O6G Gaming (90YV0DT2-M0NA00) fliegen auf dem Bildschirm die Fetzen! Verzichten Sie nicht länger auf Spielen bei hoher Auflösung und schlagen Sie unversehens zu.'),
(14, 219, 34, 4, 'ASROCK RX6600 CLD 8G (AMD, Grafikkarte)', 'Steckplatz\r\nPCIe 4.0 x16\r\nAnschlüsse 1\r\nBesondere Merkmale\r\nGPU: Radeon RX 6600 Boost-Takt: 2491 MHz Max. Auflösung: 7680 x 4320 Pixel Speichergröße: 8 GB\r\nBreite  134 mm\r\nHöhe 41 mm\r\nTiefe 269 mm\r\nGewicht (laut Hersteller) 0,93 kg'),
(15, 268, 45, 4, 'POWERCOLOR AXRX 6650 XT 8GBD6-3DH (AMD, Grafikkarte)', '- Memory Clock: 17.5 Gbps\r\n- Interface: PCI-E 4.0 x8\r\n- Connector: 1x HDMI 2.1; 3x DisplayPort 1.4\r\n- DirectX Support 12; Vulkan (TM) API\r\n- Cooler: Aktiv (2.2 -Slot Fan), Dual Fan,\r\n- AMD RDNA 2 Architektur'),
(16, 223, 32, 4, 'SAPPHIRE Radeon RX 6600 (AMD, Grafikkarte)', 'Hersteller: Sapphire\r\nHersteller Nr: 11310-01-20G\r\n\r\n\r\nGrafikkarte\r\n\r\nGrafikchipsatz-Hersteller\r\n\r\nAMD\r\n\r\nReihe\r\n\r\n11310-01-20G'),
(17, 100, 9, 5, 'SAMSUNG 980 Festplatte Retail, 1 TB SSD M.2 via NVMe, intern', 'Performance-Power für flüssiges Gaming und große Grafiken: Die SSD 980 bietet deinem Computer viel Leistung und Tempo dank PCIe® 3.0-Schnittstelle und NVMe™-Technologie. Sie ermöglicht sequenzielle Lese- und Schreibgeschwindigkeiten von bis zu 3.500 bzw. 3.000 MB/s¹ und ist damit bis zu 6 Mal schneller als eine Samsung SATA SSD.'),
(18, 149, 29, 5, 'SAMSUNG 980 PRO, Playstation 5 kompatibel, Festplatte Retail, 2 TB SSD M.2 via NVMe, intern', 'Auf Highspeed ausgerichtet: Die SSD 980 PRO bietet Gamern, Grafikern, Videoproduzenten und allen, die hohe Ansprüche an ihre Hardware haben, eine starke Performance, eine überzeugende Bandbreite sowie hohe Durchsatzraten. Die NVMe™-Schnittstelle der 4. PCIe®-Generation – in Verbindung mit dem eigens von Samsung entwickelten Controller – ermöglicht doppelt so schnelle Datentransfers im Vergleich zu SSDs mit der Vorgängerversion PCIe® 3.0.'),
(19, 69, 40, 5, 'SAMSUNG 970 EVO Plus Festplatte Retail, 1 TB SSD M.2 via NVMe, intern', 'Die SSD 970 EVO Plus bietet mit bis zu 3.300 MB/s eine um bis zu 53% höhere sequentielle Schreibrate im Vergleich zum Vorgängermodell. Auch die Leistung bei zufälligen I/O-Zugriffen wurde verbessert. Damit steht anspruchsvollen Anwendern eine leistungsstarke Speicherlösung zur Verfügung, die die Messlatte bei intensiven Workloads wie der Bearbeitung von 4K-Inhalten, 3D-Simulationen oder High-End-Gaming spürbar anhebt.'),
(20, 159, 37, 5, 'SAMSUNG Portable SSD T7 Shield Festplatte, 2 TB SSD, extern, Schwarz', 'Suchen Sie für Ihre Daten nicht nur einen schnellen, kompakten sondern auch widerstandsfähigen Speicher? Dann sind sie mit der portablen SSD T7 Shield von Samsung perfekt für Ihre (Outdoor-) Aktivitäten aufgestellt. Verfügbar in den attraktiven Farben Schwarz, Blau und Beige kann zudem zwischen den Speicherkapazitäten 1 TB und 2 TB gewählt werden. Bewahren Sie Ihre schönsten Erinnerungen, auch unter rauen äußeren Bedingungen!'),
(21, 81, 37, 6, 'ASUS TUF GAMING B450M-PRO II Arbeitspeicher', 'Umfassende Kühlung: VRM-Kühler, PCH-Kühler und Fan Xpert 2+Next-Gen-Konnektivität: Unterstützung für USB 3.2 Gen 2 Typ-A und Typ-CRealtek S1200A Codec: Unverfälschte Audioqualität mit einem nie dagewesenen Signal-Rauschabstand (SNR) von 108dB für den Stereoausgang und 103dB SNR für den Line-InAI-Noise-Cancelling-Mikrofon: Bietet eine kristallklare Kommunikation im SpielAura Sync RGB-Beleuchtung: Synchronisiere die LED-Beleuchtung mit einer großen Auswahl kompatibler PC-Hardware'),
(22, 243, 14, 6, 'ASUS ROG STRIX B560-E GAMING WIFI Arbeitspeicher', '\r\nIntel LGA-1200-Sockel: Bereit für die Intel Core-Prozessoren der 11. Generation &amp; Intel-Core-, Pentium- Gold- und Celeron-Prozessoren der 10. GenerationRobuste Stromversorgung: Teamed-Leistungsstufen mit ProCool-Stromanschluss, hochwertigen Alloy-Spulen und langlebigen Kondensatoren zur Unterstützung von Mehrkern-Prozessoren.Hochleistungsnetzwerk: Integriertes Intel WiFi 6E (802.11ax) und Intel 2,5Gbit/s-Ethernet mit ASUS LANGuardOptimale Gaming-Anschlussmöglichkeiten:'),
(23, 109, 45, 6, 'GIGABYTE B550M AORUS ELITE Arbeitspeicher', 'Produkttyp Mainboards \r\nMainboard-Formfaktor micro ATX\r\nProzessorsockel Socket AM4\r\nChipsatz AMD B550\r\n'),
(24, 60, 31, 6, 'ASUS PRIME B450M-A II Arbeitspeicher', 'Produkttyp Mainboards \r\nMainboard-Formfaktor micro ATX\r\nProzessorsockel Socket AM4\r\nChipsatz AMD B450'),
(25, 9, 67, 7, 'HAMA High Speed HDMI Kabel, 3 m', 'Der Zukunft voraus! Sie haben sich einen 8K-TV gegönnt - zum Gesamtpaket gehört auch das Kabel. Mit unserem 8K-Kabel genießen Sie die scharfen Vorteile dieser Auflösung: reibungslose Bildübertragung ohne Stottern, kontrastreich und farbintensiv - gerade für Inhalte mit High-Speed-Action.'),
(26, 14, 56, 7, 'SANDISK SSD Notebook Upgrade Kit USB 3.0 auf SATA Kabel, extern, Schwarz', '	\r\nCloning-Software (Download)1 - Schritt-für-Schritt-Anleitung - Schnelles USB 3.0 auf SATA Kabel'),
(27, 8, 78, 7, 'TUPOWER K02 USB C Kabel auf USB A 3.0 1m QuickCharge für Samsung Handy USB C Kabel Ladekabel Datenkabel', '- Samsung Galaxy S21/S20/S20+/S20 Ultra, S10/S10+/S10e, S9/S9+, Note 10\r\n- Samsung Galaxy A41 A42 A51 A52 A71 A72 A81, Galaxy Book, Galaxy Tab S3/S4/S5/S5e/S6, Galaxy Tabpro S/S2\r\n- HTC U13, U11/Plus, U12/Plus, U Ultra'),
(28, 13, 81, 7, 'INF 290155 HDMI-Kabel', 'Kristallklare Bilder: Tauchen Sie mit unserem HDMI2.1-Kabel in die Welt der High Definition ein. Es liefert atemberaubend scharfe und lebendige Bilder, die jedes Detail zum Leben erwecken.\r\n\r\nVerbesserte Bildwiederholfrequenz: Dieses Kabel unterstützt eine beeindruckende Bildwiederholfrequenz von 8K bei 60 Hz, sorgt für extrem flüssige Bewegungen und reduziert Verzögerungen bei rasanten Spielen, actiongeladenen Filmen und dynamischen Inhalten.'),
(29, 18, 67, 8, 'SAMSUNG EP-TA20EBEC Schnellladegerät', '	\r\nAnschluss: USB-Type-C-Stecker; Länge: 1,2 m; Eingangsspannungsbereich: 100 - 240 V; Max. Ausgangsleistung: 15 W; Max. Ausgangsstrom: 3 A; Ausgangsspannung/Ausgangsstrom: 5V/ 3A; Spannung: 5 V; Farbe: Schwarz; Verwendungszweck: Handy/Smartphone'),
(30, 219, 89, 8, 'MICROSOFT Surface Dock 2 Dockingstation', '\r\nMarke	‎Microsoft\r\nHersteller	‎Microsoft\r\nModell/Serie	‎Surface Dock 2\r\nProduktabmessungen	‎13 x 7 x 3 cm; 1 Kilogramm\r\nModellnummer	‎SVS-00002\r\nFarbe	‎Matt Schwarz\r\nWatt	‎199 Watt\r\nAntriebsart	‎Handbetrieben\r\nBetriebssystem	‎Windows\r\nBatterien enthalten	‎Nein\r\nAnzahl der Lithium-Ionen-Zellen	‎1\r\nArtikelgewicht	‎1 Kilograms	‎'),
(31, 18, 30, 8, 'SAMSUNG EP-TA800N Schnellladeadapter universal 25 W, Schwarz', 'Kompakte Stromversorgung für Smartphone oder Tablet.\r\nSchnellladeadapter zum Aufladen kompatibler Geräte\r\nUSB Type-C\r\nUnterstützt Super Schnellladen mit bis zu 25 Watt'),
(32, 18, 30, 8, 'SAMSUNG EP-TA800N Ladegerät universal 25 W, Weiß', 'Kompakte Stromversorgung für Smartphone oder Tablet.\r\nSchnellladeadapter zum Aufladen kompatibler Geräte\r\nUSB Type-C\r\nUnterstützt Super Schnellladen mit bis zu 25 Watt'),
(33, 11, 40, 9, 'VERICO VERICO LiIon-Batterie Loop Energy AA, mit USB-C Buchse, 2er Pack Lithium-Ionen', 'ochwertige Lithium Batterie AA mit hoher Kapazität und integrierter USB-C Ladebuchse. Einfaches Aufladen des Akkus durch ein handelsübliches USB-C Ladekabel möglich. Als Stromversorgung kann u.a. ein PC, eine Powerbank oder ein USB-Netzteil (5V)'),
(34, 15, 30, 9, 'VERICO VERICO Li-Ion-Batterie Loop Energy AAA, mit USB-C Buchse, 4er Pack Lithium-Ione', 'Hochwertiger Lithium Akku AAA mit hoher Kapazität und integrierter USB-C Ladebuchse. Einfaches Aufladen des Akkus durch ein handelsübliches USB-C Ladekabel möglich. Als Stromversorgung kann u.a. ein PC, eine Powerbank oder ein USB-Netzteil (5V)'),
(35, 12, 17, 9, 'CAMELION CAMELION NiMH-Micro-Batterie 1000 mAh', 'Die NiMH- Akku\'s von Camelion können mit fast jedem Ladegerät für NiMH Akku\'s geladen werden. Die Akku\'s können in den meisten Fällen herkömmliche Batterien ersetzten und dadurch Kosten sparen und die Umwelt schonen. Camelion bietet eine große'),
(36, 7, 57, 9, 'GP GP Super Alkaline-Micro-Batterie LR03, 1,5V, 20 Stück Alkaline Batterie', 'Die Super Alkaline-Batterien von GP wurden entwickelt für Geräte, die fast täglich benutzt werden, aber nur wenig Strom verbrauchen, wie etwa ein drahtloses Telefon, eine Fernbedienung und eine PC-Maus. Auch in Spielzeug, Taschenlampen'),
(37, 339, 14, 1, 'Brother DCP-L3550CDW, Multifunktionsdrucker', 'Das Multifunktionsgerät DCP-L3550CDW mit LAN und WLAN, Wifi direct printing, automatischem Duplexdruck und Touchscreen-Farbdisplay ist eine solide Lösung für den Einzel-Arbeitsplatz oder die kleine Arbeitsgruppe. Es verfügt über eine Druck-, Kopier-, und Scanfunktion in Farbe mit fortschrittlicher LED-Druckeinheit und automatischem Einzug mit 50 Blatt Kapazität. Mit dem DCP-L3550CDW lassen sich ganz einfach beidseitige Business-Dokumente erstellen - schnell und komfortabel durch eine Geschwindigkeit von bis zu 18 Seiten pro Minute im Schwarz- oder Farbdruck. Dieses Gerät unterstützt zudem den einfachen Direktdruck von Mobilgeräten wie Smartphones und Tablets.'),
(38, 605, 38, 1, 'Creality K1, 3D-Drucker', 'Der K1 von Creality erreicht 600 mm/s Druckgeschwindigkeit in nur 0,03 Sekunden mit einer Beschleunigung von 20000 mm/s². Und er hält die volle Geschwindigkeit für ca 90 % der Druckzeit. Er kombiniert hierfür die schnelle XY-Core-Drucktechnik mit einem 190 Gramm leichten Druckkopf. Die Leichtbauweise aller bewegten Teile in Verbindung mit dem stabilen Rahmenaufbau erlauben vibrationsfreie Bewegungen.'),
(39, 133, 34, 1, 'Brother HL-L270DW, Laserdrucker', 'Der HL-L2470DW ist ein kompakter und einfach zu bedienender Laserdrucker, der sich äußerst flexibel einsetzen lässt. Er unterstützt den Druck über WLAN und WiFi direct printing und empfängt Daten von mobilen Geräten wie Smartphones oder Tablets mit iOS, Android oder Windows Phone. Dabei gibt er bis zu 30 Seiten pro Minute aus und verfügt neben einer 250 Blatt fassenden Papierkassette über einen praktischen Einzelblatteinzug.'),
(40, 345, 4, 1, 'Canon Maxify GX3050, Multifunktionsdrucker', 'Mit dem Maxify GX3050 von Canon lassen sich hohe Druckaufkommen kostengünstig und effizient bewältigen. Dieser Multifunktions-Tintenstrahldrucker arbeitet nicht mit klassischen Tintenpatronen, sondern mit Tintentanks, in die Tinte direkt eingefüllt wird. Das spart nicht nur Ressourcen, sondern reduziert auch die Kosten pro gedruckter Seite. Bereits im Lieferumfang ist Tinte für mehrere tausend Seiten enthalten. Darüber hinaus bietet der GX3050 solide Netzwerkfunktionalität per WLAN, Unterstützung für Direktdruck von Tablets und Smartphones per App, einen Flachbettscanner und eine Kopierfunktion. Das Gerät wird komplett an der Vorderseite bedient und unterstützt den Druck auf viele unterschiedliche Medien sowie Karton.'),
(41, 199, 1, 1, 'Canon PIXMA G3570, Multifunktionsdrucker', 'Kompakte Bauweise, hocheffizienter Druck, 3-in-1-Funktionalität: Der PIXMA G3570 von Canon ist ein kostengünstiger Multifunktions-Drucker für den Alltagsgebrauch, der mit nachfüllbaren Tintentanks arbeitet. Durch diese Bauweise bleiben die Druckkosten niedrig. Im Lieferumfang ist bereits Tinte für tausende von Seiten enthalten. Dabei ist der G3570 ein leistungsfähiges Werkzeug für den Druck gestochen scharfer Dokumente und Fotos mit lebendigen Farben. Er unterstützt den Randlosdruck in vielen Formaten und kann per USB mit einem PC oder Notebook verbunden werden.'),
(42, 109.9, 32, 1, 'Epson WF-2960DWF, Multifunktionsdrucker', 'Zuverlässige 4-in-1-Leistung für das Homeoffice und kleine Büros: Mit dem WorkForce WF-2960DWF lässt sich qualitativ hochwertiger und effizienter Druck auf Tintenstrahlbasis realisieren. Dieses Multifunktionssystem gibt bis zu 33 Seiten pro Minute in schwarz-weiß aus und verfügt außerdem über eine Scan-, Kopier und Faxfunktion. Vorlagen können dabei über einen 30 Seiten fassenden Einzug an der Oberseite ausgegeben werden'),
(43, 134, 21, 1, 'Brother DCP-J1050DW, Multifunktionsdrucker', 'Mit dem DCP-J1050DW steht ein kompakt gebauter 3-in-1-Multifunktionsdrucker bereit. Seine Tintenstrahl-Druckfunktion mit vier getrennten Patronen gibt bis zu 17 Seiten Schwarzdruck und bis zu 9,5 Seiten Farbdruck im Standardmodus aus. Zusätzlich sind eine Kopierfunktion und ein Flachbettscanner vorhanden. Da der DCP-J1050DW per WLAN vernetzbar ist und auch Wi-Fi direct printing unterstützt, kann er nahtlos auch mit Mobilgeräten wie Smartphones oder Tablets mit iOS oder Android genutzt werden. Dabei beherrscht er dank automatischer Duplexfunktion auch doppelseitige Ausdrucke.'),
(44, 248, 23, 1, 'Epson EcoTank ET-2850, Multifunktionsdrucker', 'Effizientes Drucken mit Tinte und Multifunktion: Der EcoTank ET-2850 setzt auf Epsons Tintenflaschen-System, bei dem keine Tintenpatronen mehr genutzt werden, sondern Tinte direkt in einen Tank im Drucker eingefüllt wird. Das reduziert die Kosten und erhöht die Reichweite des Drucksystems. Der EcoTank ET-2850 kommt mit Tinten für eine Reichweite von bis zu 14000 Seiten Schwarzdruck (ISO) und 5200 Seiten Farbdruck (ISO) im Lieferumfang und bietet neben der Druckfunktion einen Flachbettscanner und eine Kopiereinheit. Darüber hinaus lässt er sich per WLAN in ein Netzwerk integrieren. Mobilgeräte können über Wi-Fi direct mit dem Drucker kommunizieren'),
(45, 699, 16, 2, 'JBL Partybox 710, Lautsprecher', 'Das Highlight einer jeden Party. Die JBL Partybox 710 überzeugt mit einer Gesamtleistung von ganzen 800 Watt und liefert mit JBL Pro Sound einen eindrucksvollen Sound - ganz egal wo man ist. Die integrierte Beleuchtung bringt jede Party in Stimmung und kann nach Lust und Laune angepasst werden. Die am Lautsprecher angebrachten Räder sowie der Griff erleichtern den Transport auch an schwierigste Stellen.'),
(46, 82, 13, 2, 'Creative SBS E2900, Lautsprecher', 'Mit dem SBS E2900 kann man kabellos über Bluetooth (Version 5.0) streamen, bevorzugte FM-Radiokanäle anhören oder via USB / SD-Karte auf Audioinhalte zugreifen. Das 2.1 Kanal Lautsprechersystem bietet eine 60 Watt Sinus und 120 Watt Spitzenleistung für ein intensives Audioerlebnis. Die Lautsprecher sind mit abgestimmten Fernfeldtreibern ausgestattet, um einen raumfüllenden Klang zu erzeugen. Die Bedienung erfolgt komfortable an der Front des Subwoofers oder bequem über die Fernbedienung. Dank der universellen 3,5 mm Klinkenbuchse können nahezu alle Geräte mit dem SBS E2900 verbunden werden.'),
(47, 99, 18, 2, 'Edifier Studio R1280T, PC-Lautsprecher', 'Ausgestattet mit zwei StereoCinch-Buchsen bietet das Aktiv-Lautsprechersystem Edifier Studio 1280T bis zu 42 Watt Ausgangsleistung. Ein 10,6 cm (4\") großer Basstreiber und ein nach vorne ausgerichteter Bassreflex-Port ermöglichen fühlbaren Bass und hochwertigen Klang. Das Studio 1280T ermöglicht den gleichzeitigen Anschluss von bis zu zwei Geräten und durch die Drehregler für Lautstärke, Bass und Höhen an der Seite des aktiven Lautsprechers lässt sich das Klangbild noch genauer an die persönlichen Wünsche anpassen. Eine Fernbedienung zur Steuerung der Lautstärke und der Mute-Funktion ist ebenfalls enthalten.'),
(48, 349, 34, 2, 'Canton Chrono 20, Lautsprecher', 'In der Chrono Serie kommen im Mittel- und Tieftonbereich hochwertige Titanium-Chassis zum Einsatz. Im Tieftonbereich der Chrono 20 wird zudem eine Double-Cone-Membran mit durchgängiger Membranfläche verwendet. Die flache Sockelkonstruktion mit nach hinten abstrahlender Bassreflexöffnung stellt im Gesamterscheinungsbild einen neuen Lautsprechertyp dar.'),
(49, 189, 34, 2, 'SAMSUNG Sound Tower MX-ST40B, Lautsprecher', 'Mit dem SAMSUNG Sound Tower MX-ST40B bringt man jede Party zum Beben - der bidirektionale Raumklang erstrahlt bis in jede Ecke und der kraftvolle Bass ist bei einer Gesamtleistung von 160 Watt nicht nur hör- sondern auch spürbar. Durch den integrierten Akku kann der Sound Tower MX-ST40B bis zu 12 Stunden lang ununterbrochen und wirklich überall genutzt werden. Der Sound Tower funktioniert auch unter schwierigen Wetterbedingungen und ist dank IPX5 vor Wasser geschützt, damit man auch im Regen weitertanzen kann.'),
(50, 99, 34, 2, 'Creative GigaWorks T40 Series II, PC-Lautsprecher', 'Mit dem GigaWorks T40 Series II Lautsprechersystem von Creative kann Musik in einer ganz neuen Qualität erlebt werden. Das für HiFi-Klang am PC konzipierte 2.0-System in schwarzer Hochglanzoptik kombiniert hochwertige Komponenten und eine beeindruckende Leistung mit allen Vorzügen der renommierten GigaWorks-Familie, um Musik in bester, unverfälschter Qualität wiederzugeben. Jeder Lautsprecher verfügt über zwei Mitteltontreiber mit Glasfasergewebe-Konus für warme Mitten und einen Hochtöner mit Gewebekalotte für kristallklare Höhen.'),
(51, 155, 21, 2, 'JBL Quantum DUO, Lautsprecher', 'Das Spiel mit den leistungsstarken JBL Quantum Duo PC-Gaming-Lautsprechern auf das nächste Level bringen: Mit der unglaublichen Soundqualität und einzigartigen Lichteffekten taucht man noch tiefer ins Geschehen ein. Man kann präzise bedrohliches Gewehrfeuer orten, hören, wie sich die Feinde anschleichen, und den Knall einer Explosion hautnah erleben. Mit JBL-eigenem Gaming Surround Sound und Dolby Digital in einem coolen, unverwechselbaren Design. Die offenen Lautsprechertreiber und Hochtöner mit ihrem klaren Sound sorgen dafür, dass man nie mehr einen Schritt, Schuss oder Sprung verpasst.'),
(52, 239, 25, 2, 'Polk Audio Signature Elite ES15, Lautsprecher', 'Mit den Polk Audio Signature Elite ES15 erlebt man Filme, Spiele und Mehrkanalmusik in hochauflösendem Kino-Sound. Die kompakten Lautsprecher mit Full-Range Surround Sound sind Hi-Res Audio zertifiziert und mit Dolby Atmos sowie DTS:X kompatibel. Die Signature Elite ES15 bieten ein akustisches Array mit Dynamic Balance, Präzisions-Frequenzweichen sowie PowerPort Technologie für kräftigen, spürbaren Bass.'),
(53, 399, 24, 3, 'iiyama GB3466WQSU-B1, Gaming-Monitor', 'Der iiyama G-Master GB3466WQSU-B1 ist ein echter Gaming-Spezialist: Das 86 cm (34\") große VA-Panel besticht mit brillanter UWQHD Auflösung (3.440 x 1.440 Pixel) und liefert maximale Details bei maximaler Bilddiagonale. Egal wie rasant es auch zugeht, mit einer Bildwiederholrate von 144 Hz sowie einer geringen Reaktionszeit von nur 1 ms (MPRT) behält der Spieler einen klaren Überblick und kann sofort reagieren. Dank der AMD Free-Sync Technologie werden Artefakte, Schlieren und andere Störfaktoren eliminiert noch bevor diese entstehen um ein absolut fließendes Spielerlebnis zu ermöglichen.'),
(54, 369, 6, 3, 'MSI Optix MAG342CQPVDE, Gaming-Monitor', 'Mit dem MSI Optix MAG342CQPV Curved-Gaming-Monitor ist der nächste Sieg bereits gesichert: Ausgestattet mit einem UWQHD-Panel (3.440 x 1.440 Pixel), einer Bildwiederholfrequenz von 100 Hz und einer Reaktionszeit von 1 ms (MPRT), verschafft der Optix MAG342CQPV den Wettbewerbsvorteil, den man braucht, um jeden einzelnen Gegner zu besiegen. Ausgestattet mit Adaptive-Sync kann der MAG342CQPV die Bildwiederholfrequenz des Bildschirms an die GPU anpassen und sorgt so für ein besonders flüssiges Gameplay. Der MSI Optix MAG342CQPVDE ist mit einem ergonomischen Standfuß ausgestattet, sodass man auch nach stundelanger Nutzung noch bequem auf das Panel schauen kann.'),
(55, 180, 40, 3, 'ASUS TUF Gaming VG277Q1A, Gaming-Monitor', 'Der ASUS TUF Gaming VG277Q1A LED-Monitor verfügt über eine blitzschnelle Bildwiederholrate von ganzen 165 Hz und unterstützt die AMD Free-Sync Technologie für ein ruckelfreies und stabiles Gaming Erlebnis. Die Diagonale des VG277Q1A liegt bei 69 cm (27\") und besticht durch eine brillante FullHD Auflösung mit 1.920 x 1.080 Pixeln. Durch die geringe Reaktionszeit von 1 ms (MPRT) sowie der ASUS -Extreme-Low-Motion-Blur-Sync-Technologie wird ein fließenderes Bild geschaffen und es bleibt jederzeit scharf ohne zu verschwimmen. Per ASUS Shadow Boost lassen sich auch dunkle Bildbereiche aufhellen, sodass Gegner im Schatten sichtbar werden und ein Sieg sicher ist.'),
(56, 849, 5, 3, 'Acer Predator XB323QKNV, Gaming-Monitor', 'er Acer Predator XB323QKNV ist vollgepackt mit verschiedensten Features und Technologien: Man erlebt sein eigenes, ultimatives Gaming-Erlebnis mit extrem hoher Auflösung (3.840 x 2.160 Pixel), schneller Reaktionszeit (1 ms MPRT) und rasanten Bildwiederholraten von 144 Hz. Dank zwei HDMI 2.1 Ports ist man für Next-Gen Gaming gerüstet und kann dabei mittels VESA DisplayHDR 400 auf brillante und satte Farben zugreifen. Über den USB-Hub sind sämtliche Peripheriegeräte schnell verbunden, sodass man sofort loslegen kann.'),
(57, 201, 19, 3, 'ASRock PG27FF1A, Gaming-Monitor', 'Der ASRock Phantom Gaming PG27FF1A ist ein 69 cm (27\") Gaming-Monitor mit gekrümmtem VA-Panel, welches durch seine Auflösung von 1.920 x 1.080 Pixel (FullHD) jedes kleine Details darstellt. Als echter Gaming-Monitor besitzt der PG27FF1A eine Bildwiederholrate von 165 Hz sowie eine Reaktionszeit von nur 1 ms (MPRT) und lässt Rucklern oder verzögerten Eingaben damit keine Chance. Zusätzlich dazu unterstützt der PG27FF1A AMDs Free-Sync Technologie und lässt Gaming-Herzen damit höher schlagen. Um auch bei langen Gaming-Sessions immer bequem sitzen zu können lässt sich der PG27FF1A ergonomisch einfach ausrichten und ist damit stets im idealen Blickwinkel.'),
(58, 99, 12, 3, 'AOC 24B2XH, LED-Monitor', 'Der AOC 24B2XH verfügt über ein nahezu rahmenloses, 60 cm (24\") großes Display mit FullHD Auflösung (1.920 x 1.080 Pixel) und stellt damit brillant scharfe Inhalte dar. Durch das rahmenlose Design kann der 24B2XH optimal in Mutli-Monitor Setups eingebunden werden und lässt sich unkompliziert erweitern. Dank der IPS-Technologie werden die Inhalte aus Betrachtungswinkeln bis 178° problemlos dargestellt, damit diese jederzeit erkennbar sind. Durch flimmerfreie LEDs und einen Blaulichtfilter schont der 24B2XH die Augen des Nutzers aktiv und beugt einer Schädigung bei häufiger Benutzung vor.'),
(59, 319, 18, 3, 'ASUS TUF Gaming VG32AQA1A, Gaming-Monitor', 'Der ASUS TUF Gaming VG32AQA1A Monitor verfügt über eine blitzschnelle Bildwiederholrate von ganzen 170 Hz und unterstützt die Adaptive Sync Technologie (NVIDIA G-Sync kompatibel + AMD Free-Sync) für ein ruckelfreies und stabiles Gaming Erlebnis. Die Diagonale des VG32AQA1A liegt bei 80 cm (32\") und besticht durch eine brillante QHD Auflösung mit 2.560 x 1.440 Pixeln. Durch die geringe Reaktionszeit von 1 ms (MPRT) sowie der ASUS -Extreme-Low-Motion-Blur-Sync-Technologie wird ein fließenderes Bild geschaffen und es bleibt jederzeit scharf ohne zu verschwimmen. Das Panel überzeugt dank HDR + HDR10 Unterstützung mit natürlichen Farben, satten Kontrasten und einer brillanten Helligkeit.'),
(60, 599, 31, 3, 'Cooler Master GP27-FQS, Gaming-Monitor', 'Der Cooler Master GP27-FQS ist ein leistungsstarker Gaming-Monitor mit brillantem AHVA-Panel, welches in QHD (2.560 x 1.440 Pixel) auflöst und damit gestochen scharfe Inhalte darstellt. Durch Flicker-Free sowie einen dedizierten Low Blue Light Modus werden die Augen des Nutzers selbst bei langer, anspruchsvoller Nutzung geschont. Um anspruchsvollem Gaming gerecht zu werden, ist der GP27-FQS mit einer Bildwiederholrate von 165 Hz sowie einer Reaktionszeit von nur 1 ms (MPRT) ausgestattet - ohne dabei an Farbqualität einzubüßen. Der Cooler Master GP27-FQS ist mit AMDs Free-Sync (Premium) Technologie kompatibel, um so ein flüssigeres und störungsfreies Gameplay sicher zu stellen, darüber hinaus überzeugt er mit einem USB-C Port, der auch Power Delivery mit bis zu 90 Watt Ladeleistung unterstützt und unterstützt HDMI 2.1.'),
(61, 277, 34, 4, 'Gainward GeForce RTX 4060 Ghost , Grafikkarte', 'Die Gainward GeForce RTX 4060 Ghost ist eine High-End-Grafikkarte mit der GeForce RTX 4060 GPU von NVIDIA. Die leistungsfähigen GeForce RTX 40-Grafikkartenserie basiert auf der NVIDIA Ada Architektur und bietet neue Stufen von Gaming Realismus, Geschwindigkeit und Leistungseffizienz, RTX IO und realistische VR-Erlebnisse. Weitere Features sind Real-Time Ray Tracing, NVIDIA Ansel, mit umfangreichen Werkzeugen zur Erstellung von Screenshots in Spielen sowie NVIDIA G-SYNC, G-SYNC HDR, DirectX 12 Ultimate, NVIDIA DLSS 3.0, '),
(62, 599, 27, 4, 'Gainward GeForce RTX 4070 Ghost, Grafikkarte\r\n', 'Die Gainward GeForce RTX 4070 Ghost ist eine High-End-Grafikkarte mit der GeForce RTX 4070 GPU von NVIDIA. Die leistungsfähigen GeForce RTX 40-Grafikkartenserie basiert auf der NVIDIA Ada Architektur und bietet neue Stufen von Gaming Realismus, Geschwindigkeit und Leistungseffizienz, RTX IO und realistische VR-Erlebnisse. Weitere Features sind Real-Time Ray Tracing, NVIDIA Ansel, mit umfangreichen Werkzeugen zur Erstellung von Screenshots in Spielen sowie NVIDIA G-SYNC, G-SYNC HDR,'),
(63, 279, 71, 4, 'Gainward GeForce RTX 3060 GHOST, Grafikkarte', 'Die Gainward GeForce RTX 3060 GHOST ist eine High-End-Grafikkarte mit der GeForce RTX 3060 GPU von NVIDIA. Die leistungsfähigen GeForce RTX 30-Grafikkartenserie basiert auf der NVIDIA Ampere Architektur und bietet neue Stufen von Gaming Realismus, Geschwindigkeit und Leistungseffizienz und realistische VR-Erlebnisse. Weitere Features sind Real-Time Ray Tracing, NVIDIA Ansel, mit umfangreichen Werkzeugen zur Erstellung von Screenshots in Spielen sowie NVIDIA G-SYNC, G-SYNC HDR, '),
(64, 799, 31, 4, 'Gainward GeForce RTX 4070 Ti Panther, Grafikkarte', 'Die Gainward GeForce RTX 4070 Ti Panther ist eine High-End-Grafikkarte mit der GeForce RTX 4070 Ti GPU von NVIDIA. Die leistungsfähigen GeForce RTX 40-Grafikkartenserie basiert auf der NVIDIA Ada Architektur und bietet neue Stufen von Gaming Realismus, Geschwindigkeit und Leistungseffizienz, RTX IO und realistische VR-Erlebnisse. Weitere Features sind Real-Time Ray Tracing, NVIDIA Ansel, mit umfangreichen Werkzeugen zur Erstellung von Screenshots in Spielen sowie NVIDIA G-SYNC, G-SYNC HDR, DirectX 12 Ultimate,'),
(65, 659, 39, 4, 'GIGABYTE GeForce RTX 4070 EAGLE OC, Grafikkarte', 'Die GIGABYTE GeForce RTX 4070 EAGLE OC ist eine High-End-Grafikkarte mit der GeForce RTX 4070 GPU von NVIDIA. Die leistungsfähigen GeForce RTX 40-Grafikkartenserie basiert auf der NVIDIA Ada Architektur und bietet neue Stufen von Gaming Realismus, Geschwindigkeit und Leistungseffizienz, RTX IO und realistische VR-Erlebnisse. Weitere Features sind Real-Time Ray Tracing, NVIDIA Ansel, mit umfangreichen Werkzeugen zur Erstellung von Screenshots in Spielen sowie NVIDIA G-SYNC, G-SYNC HDR,'),
(66, 329, 31, 4, 'ASUS GeForce RTX 4060 DUAL OC, Grafikkarte', 'Die ASUS GeForce RTX 4060 DUAL OC ist eine High-End-Grafikkarte mit der GeForce RTX 4060 GPU von NVIDIA. Die leistungsfähigen GeForce RTX 40-Grafikkartenserie basiert auf der NVIDIA Ada Architektur und bietet neue Stufen von Gaming Realismus, Geschwindigkeit und Leistungseffizienz, RTX IO und realistische VR-Erlebnisse. Weitere Features sind Real-Time Ray Tracing, NVIDIA Ansel, mit umfangreichen Werkzeugen zur Erstellung von Screenshots in Spielen sowie NVIDIA G-SYNC, '),
(67, 1699, 20, 4, 'Gainward GeForce RTX 4090 Phantom GS, Grafikkarte', 'Die Gainward GeForce RTX 4090 Phantom GS ist eine High-End-Grafikkarte mit der GeForce RTX 4090 GPU von NVIDIA. Die leistungsfähigen GeForce RTX 40-Grafikkartenserie basiert auf der NVIDIA Ada Architektur und bietet neue Stufen von Gaming Realismus, Geschwindigkeit und Leistungseffizienz, RTX IO und realistische VR-Erlebnisse. Weitere Features sind Real-Time Ray Tracing, NVIDIA Ansel, mit umfangreichen Werkzeugen zur Erstellung von Screenshots in Spielen sowie NVIDIA G-SYNC, G-SYNC HDR, DirectX 12 Ultimate, NVIDIA DLSS 3.0, '),
(68, 549, 15, 4, 'SAPPHIRE Radeon RX 6800 OC Pulse Gaming 16GB, Grafikkarte', 'Die GPU der SAPPHIRE Radeon RX 6800 OC Pulse Gaming 16GB basiert auf der RDNA 2-Architektur und wurde für 4K und 1440p-Leistung, Energieeffizienz und anspruchsvolles Gaming entwickelt. Mit 16 GB GDDR6 Videospeicher, Unterstützung des PCIe 4.0 Standards und Features wie Infinity Cache sorgen die AMD RX 6800 XT GPUs mit Hilfe der RDNA2-Technologie für ein flüssiges Spielerlebnis mit toller Optik. Mit bis zu 40 neu entwickelten 7nm Recheneinheiten und Funktionen wie Radeon Bildschärfung, FidelityFX, TressFX, TrueAudio Next und VR-Technologien sorgt der Radeon RX 6800 XT Chip der SAPPHIRE Radeon RX 6800 OC Pulse Gaming 16GB für hohe IPC-Werte.'),
(69, 34, 12, 5, 'WD WD10EZEX 1 TB, Festplatte', 'Die WD WD10EZEX der Serie WD Blue mit 7200 U/min weist einen Cache von 64 MB für blitzschnelle Leistung auf, hat einen leisen und kühlen Betrieb sowie 1000 GB Speicher für ressourcenintensive Anwendungen. Das zuverlässige Laufwerk ist nicht nur schnell, sondern es bietet auch gleichzeitig eine technologisch hoch entwickelte Akustik sowie niedrige Betriebstemperaturen. Es wurde entwickelt für High-End-Computer, Multimedia- und Gaming-Systeme.'),
(70, 87, 13, 5, 'Seagate IronWolf NAS 4 TB CMR, Festplatte', 'Die IronWolf NAS ist für alles rund um NAS ausgelegt. Bei der IronWolf NAS kann man sich auf hohe, stets einsatzbereite und skalierbare Leistung im Dauerbetrieb verlassen und zwar in Umgebungen mit mehreren Festplatten und bei einer großen Auswahl an Speicherkapazitäten. AgileArray ermöglicht Zwei-Ebenen-Auswuchtung und RAID-Optimierung in Umgebungen mit mehreren Laufwerksschächten nebst höchst fortschrittlicher Stromverwaltung.'),
(71, 299, 7, 5, 'Toshiba MG10 20 TB, Festplatte', 'Big Data geht einher mit einem erhöhten Bedarf an verteiltem lokalem und Cloud-Speicher, daher müssen die Server- und Speichersysteme in Unternehmen auf bewährten Lösungen basieren. Die MG10ACA20TE aus der Enterprise Capacity Hard Drive MG10-Serie von Toshiba implementiert die Microwave Assisted Magnetic Recording (FC-MAMR)-Technologie, um die Dichte der konventionellen Magnetaufzeichnung (CMR) auf 2 TB pro Platte zu erhöhen, wodurch eine Gesamtkapazität von 20 TB erreicht wird.'),
(72, 243, 17, 5, 'Seagate Exos X18 16 TB, Festplatte', 'Die Seagate Festplatte (ST16000NM000J) aus der Exos X18 Serie zeichnet sich durch Langlebigkeit, Zuverlässigkeit und Geschwindigkeit aus. Geringer Stromverbrauch, 256 MB Cache und ausgefeilte Effizienzmechanismen qualifizieren die 3,5\"-Festplatte der Enterprise Kapazitätsklasse für den 24-Stunden-Dauerbetrieb. Diese Festplatte mit 16 TB Kapazität verfügt über einen SATA-Anschluss mit bis zu 6 Gb/s Übertragungsgeschwindigkeit und ist für den Betrieb in RAID- und NAS-Systemen ausgelegt.'),
(73, 83, 3, 5, 'WD Blue 4 TB, Festplatte', 'Die WD40EZAZ Festplatte aus der WD Blue-Serie bietet 5.400 U/min und 256 MB Cache für hohe Leistung und Zuverlässigkeit beim Speichern. Die NoTouch-Rampload-Technologie parkt den Schreib-/Lesekopf zum Schutz der Daten an sicherer Position außerhalb der Festplattenoberfläche. Dazu glänzt die mit einer SATA-III-Schnittstelle (6 Gb/s) ausgestattete Festplatte mit einem leisen und kühlen Betrieb.'),
(74, 82, 0, 5, 'WD Purple 4 TB, Festplatte', 'WD Purple-Festplatten eignen sich für den Dauerbetrieb in HD-Sicherheitssystemen. WD Purple-Festplatten sind durch eine Workload von bis zu 180 TB/Jahr und die Unterstützung von bis zu 64 Kameras für Überwachungssysteme optimiert. Die WD Purple-Festplatten für Überwachungssysteme sind mit der exklusiven AllFrame-Technologie von WD ausgestattet, die es einem ermöglicht, ein für die geschäftlichen Anforderungen maßgeschneidertes Sicherheitssystem zu erstellen.'),
(75, 113, 45, 5, 'Seagate BarraCuda 5 TB, Festplatte', 'Die Festplatten der Seagate Barracuda Serie vereinen hohe Kapazität, Leistung und Zuverlässigkeit. Das 5-TB-Modell ST5000LM000 st mit 128 MB Cache ausgestattet und unterstützt SATA 6Gb/s. Das Laufwerk eignet sich für vielfältige Einsatzbereiche in Workstations, Desktops, High-End-Gaming-PCs oder auch als Speicherlösung in externen Gehäusen.'),
(76, 98, 13, 5, 'Toshiba P300 6 TB, Festplatte', 'Diese 3,5\"-Festplatte von Toshiba bietet 6 TB Kapazität und gehört zur P300 Serie (High-Performance-Hard Drive). Sie wird über einen SATA-Port mit 6 Gbit/s angeschlossen und eignet sich ideal zum Einsatz in Office-PCs, Gaming-Systemen und Workstations. Der Dual-Stage Actuator sorgt dabei für flüssige, schnelle Systemperformance. Daten und Medien sind zudem durch Ramp Loading und einen Stoßsensor geschützt.'),
(77, 538, 14, 6, 'GIGABYTE Z790 AORUS MASTER, Arbeitspeicher', 'Das GIGABYTE Z790 AORUS MASTER Mainboard basiert auf dem Intel®-Z790-Chipsatz und unterstützt Intel®-Prozessoren für den Sockel 1700 der 13ten und 12ten Generation. Es verfügt über vier DDR5-DIMM-Slots im Dual-Channel-Betrieb für bis zu 128 GB Arbeitsspeicher. Zur weiteren Ausstattung des GIGABYTE Z790 AORUS MASTER gehören ein PCIe-5.0-x16-Slot und zwei PCIe-3.0-x16-Slots. Außerdem verfügt das GIGABYTE Z790 AORUS MASTER über 8-Kanal-Sound, eine 10 Gigabit-LAN-Schnittstelle, vier SATA3-Anschlüsse, fünf M.2-Anschlüsse, WiFi 6E, Bluetooth 5.2 und eine Reihe an USB Schnittstellen.'),
(78, 188, 8, 6, 'ASUS ROG STRIX B550-F GAMING WIFI II,Arbeitspeicher\n', 'Das ASUS ROG STRIX B550-F GAMING WIFI II basiert auf dem AMD-B550-Chipsatz und unterstützt AMD-Prozessoren für den Sockel AM4. Es verfügt über vier DDR4-Slots für bis zu 128 GB Arbeitsspeicher. Zur weiteren Ausstattung des ASUS ROG STRIX B550-F GAMING gehören ein PCIe-4.0-x16-Slot, ein PCIe 3.0 x16 und drei PCIe 3.0 x1 Slots. Außerdem verfügt das ASUS ROG STRIX B550-F GAMING WIFI II über 8-Kanal-Sound, eine 2,5-Gigabit-LAN-Schnittstelle, Wi-Fi 6, sechs SATA3-Anschlüsse, zwei M.2-Anschlüsse und eine Reihe an USB Schnittstellen.'),
(79, 133, 28, 6, 'GIGABYTE B550 AORUS ELITE V2, Arbeitspeicher', 'Das GIGABYTE B550 AORUS ELITE V2 basiert auf dem AMD-B550-Chipsatz und unterstützt AMD-Prozessoren für den Sockel AM4. Es verfügt über vier DDR4-Slots für bis zu 128 GB Arbeitsspeicher. Zur weiteren Ausstattung des GIGABYTE B550 AORUS ELITE V2 gehören ein PCIe-4.0-x16-Slot, zwei PCIe-3.0-x16-Slots und ein PCIe-3.0-x1-Slot. Außerdem verfügt das GIGABYTE B550 AORUS ELITE V2 über 8-Kanal-Sound, eine 2.5 Gigabit-LAN-Schnittstelle, vier SATA3-Anschlüsse, zwei M.2-Anschlüsse und eine Reihe an USB Schnittstellen.'),
(80, 285, 0, 6, 'ASUS TUF GAMING Z690-PLUS DDR4, Arbeitspeicher', 'Das ASUS TUF GAMING Z690-PLUS DDR4 Mainboard basiert auf dem Intel®-Z690-Chipsatz und unterstützt Intel®-Prozessoren für den Sockel 1700 der 12ten Generation. Es verfügt über vier DDR4-DIMM-Slots im Dual-Channel-Betrieb für bis zu 128 GB Arbeitsspeicher. Zur weiteren Ausstattung des ASUS TUF GAMING Z690-PLUS DDR4 gehören ein PCIe-5.0-x16-Slot, ein PCIe-3.0-x16-Slot, ein PCIe-3.0-x4-Slot und zwei PCIe-3.0-x1-Slots. Außerdem verfügt das ASUS TUF GAMING Z690-PLUS DDR4 über 8-Kanal-Sound, eine 2,5 Gigabit-LAN-Schnittstelle, vier SATA3-Anschlüsse, vier M.2-Anschlüsse und eine Reihe an USB Schnittstellen'),
(81, 378, 53, 6, 'ASUS ROG STRIX Z690-A GAMING WIFI DDR4, Arbeitspeicher', 'Das ASUS ROG STRIX Z690-A GAMING WIFI DDR4 Mainboard basiert auf dem Intel®-Z690-Chipsatz und unterstützt Intel®-Prozessoren für den Sockel 1700 der 12ten Generation. Es verfügt über vier DDR4-DIMM-Slots im Dual-Channel-Betrieb für bis zu 128 GB Arbeitsspeicher. Zur weiteren Ausstattung des ASUS ROG STRIX Z690-A GAMING WIFI DDR4 gehören ein PCIe-5.0-x16-Slot, ein PCIe-3.0-x16-Slot und ein PCIe-3.0-x1-Slot. Außerdem verfügt das ASUS ROG STRIX Z690-A GAMING WIFI DDR4 über 8-Kanal-Sound, eine 2,5 Gigabit-LAN-Schnittstelle, sechs SATA3-Anschlüsse, vier M.2-Anschlüsse, WiFi 6, Bluetooth 5.2 und eine Reihe an USB Schnittstellen.'),
(82, 342, 15, 6, 'ASUS ROG STRIX B650E-E GAMING WIFI, Arbeitspeicher', 'Das ASUS ROG STRIX B650E-E GAMING WIFI basiert auf dem AMD-B650-Chipsatz und unterstützt AMD-Prozessoren für den Sockel AM5. Es verfügt über vier DDR5-Slots für bis zu 128 GB Arbeitsspeicher. Zur weiteren Ausstattung des ASUS ROG STRIX B650E-E GAMING WIFI gehören zwei PCIe-5.0-x16-Slots und ein PCIe-4.0-x16-Slot. Außerdem verfügt das ASUS ROG STRIX B650E-E GAMING WIFI über 8-Kanal-Sound, eine 2.5 Gigabit-LAN-Schnittstelle, WiFi 6E, Bluetooth 5.2, vier SATA3-Anschlüsse, vier M.2-Anschlüsse und eine Reihe an USB Schnittstellen.'),
(83, 296, 9, 6, 'GIGABYTE Z790 AORUS ELITE AX, Arbeitspeicher', 'Das GIGABYTE Z790 AORUS ELITE AX Mainboard basiert auf dem Intel®-Z790-Chipsatz und unterstützt Intel®-Prozessoren für den Sockel 1700 der 13ten und 12ten Generation. Es verfügt über vier DDR5-DIMM-Slots im Dual-Channel-Betrieb für bis zu 192 GB Arbeitsspeicher. Zur weiteren Ausstattung des GIGABYTE Z790 AORUS ELITE AX gehören ein PCIe-5.0-x16-Slot, ein PCIe-4.0 -x16 Slot und ein PCIe-3.0-x16-Slot. Außerdem verfügt das GIGABYTE Z790 AORUS ELITE AX über 8-Kanal-Sound, eine 2,5 Gigabit-LAN-Schnittstelle, sechs SATA3-Anschlüsse, vier M.2-Anschlüsse, WiFi 6, Bluetooth 5.2 und eine Reihe an USB Schnittstellen.'),
(84, 405, 29, 6, 'MSI MPG Z790 CARBON WIFI, Arbeitspeicher', 'Das MSI MEG Z790 ACE Mainboard basiert auf dem Intel®-Z790-Chipsatz und unterstützt Intel®-Prozessoren für den Sockel 1700 der 13ten und 12ten Generation. Es verfügt über vier DDR5-DIMM-Slots im Dual-Channel-Betrieb für bis zu 128 GB Arbeitsspeicher. Zur weiteren Ausstattung des MSI MEG Z790 ACE gehören ein PCIe-5.0-x16-Slot, ein PCIe-4.0-x16-Slot und ein PCIe-3.0-x1-Slot. Außerdem verfügt das MSI MEG Z790 ACE über 8-Kanal-Sound, eine 2,5 Gigabit-LAN-Schnittstellen, sechs SATA3-Anschlüsse, fünf M.2-Anschlüsse, WiFi 6E, Bluetooth 5.2 und eine Reihe an USB Schnittstellen.'),
(85, 12, 18, 7, 'Sharkoon Kabel Displayport 1.4 (Stecker > Stecker) 8K', 'Mit dem Kabel DisplayPort 1.4 8K von Sharkoon kann man z.B. einen Monitor, TV oder Beamer über eine freie DisplayPort Schnittstelle des Systems anschließen. Das Kabel unterstützt eine Auflösung bis 8K Ultra HD (7.680 x 4.320 @ 60Hz) und ist abwärtskompatibel zu Full-HD 1.080p.'),
(86, 3, 6, 7, 'Sharkoon SATA II Kabel gewinkelt', 'Das Sharkoon SATA II Kabel mit gewinkeltem Stecker und Sicherheitslasche dient zum Anschluss von SATA Laufwerken. Das Kabel hat zwei Abgriffe und kann somit ein Laufwerk mit dem Mainboard oder einem SATA Controller verbinden.'),
(87, 3, 21, 7, 'Sharkoon Sata III Kabel 90° gewinkelt', 'Das Sharkoon SATA-III-Kabel eignet sich zum Anschluss von Festplatten, optischen Laufwerken oder anderen SATA-Geräten ans Mainboard. Das Kabel hat eine Länge von 30cm und wurde mit einem blickdichten Sleeve ummantelt. Einer der beiden Stecker ist um 90° abgewinkelt.'),
(88, 19, 12, 7, 'be quiet! 12VHPWR PCIe Adapter Kabel', 'Das Adapter-Kabel BC072 ist die optimale Lösung, um eine 12+4 Pin Grafikkarte mit einem ATX 2.X be quiet! Netzteil zu betreiben. Das elegant wirkende Kabel mit attraktivem, schwarzem Sleeve ist ausgelegt für 600 Watt und ermöglicht den Betrieb aller Grafikkarten mit einem 12V HPWR-Anschluss. Dabei ist es komfortabel in der Anwendung und ersetzt die Notwendigkeit eines breiten Standard-Adapte'),
(89, 3, 18, 7, 'goobay USB 2.0 Kabel, USB-A Stecker > USB-C Stecker', 'Das Ladekabel 45735 von goobay dient zum sehr schnellen Laden und zum Synchronisieren von Geräten mit USB-C Anschluss. Das USB-A > USB-C Ladekabel unterstützt Ausgangströme von bis zu maximal 3A und erlaubt High Speed Datenübertragungen bis 480 Mbit/s. Dabei ist das Kabel abwärtskompatibel zum älteren Standard USB 1.1.'),
(90, 4, 10, 7, 'Sharkoon USB 3.2 Gen 2 Kabel, USB-A Stecker > USB-C Stecker', 'Dieses Sharkoon USB 3.2 (Gen. 2)-Kabel ist ein Verbindungskabel von Stecker A auf Stecker C. Einen USB-Typ-C Anschluss findet man häufig bei Mobiltelefonen, MP3-Playern und externen Festplatten. Es dient als Verbindungskabel vom PC zu dem entsprechenden externen Gerät und bietet eine Datenübertragungsrate von bis zu 10 Gbit/s.'),
(91, 9, 13, 7, 'goobay Ultra High-Speed HDMI Kabel mit Ethernet, HDMI 2.1', 'Das Ultra High Speed HDMI Kabel 41084 mit Ethernet von goobay unterstützt eine maximale Auflösung von Ultra HD bis 8K@60Hz (4.320p), 4K@120Hz (2.160p) und 3D 50/60Hz. Die Datenleitungen sind HDCP 2.2 konform und bieten vergoldete Kontakte, die eine optimale Digitalübertragung sichern. Das Ultra High Speed HDMI Kabel sorgt für unterbrechungsfreie Bewegungen (Ruckeln), Übergänge und dynamische Bildwiederholfrequenzen (VRR) und überzeugt als neuer HDMI Standard für einwandfreie Film- und Spieleerlebnisse, für Filmliebhaber und Gamer. Es eignet sich besonders für Spielekonsolen mit hochauflösendem Bild (4k/120Hz, 8k/60Hz) wie z.B. die Sony Playstation 5 (PS 5) oder die Microsoft Xbox X.'),
(92, 1, 6, 7, 'DeLOCK SATA Kabel', 'Dieses Kabel dient zum Anschluss von SATA-Laufwerken. Das Kabel ist mit Sicherheitslaschen ausgestattet, die ein versehentliches Abziehen der Steckverbindungen verhindern. Das Kabel enstspricht der SATAII-Spezifikation, besitzt eine max. Übertragungsrate von 300MB/s und ist abwärtskompatibel zu SATA.'),
(93, 43, 9, 8, 'Varta LCD Ultra Fast Charger+, Ladegerät', 'Das Ladegerät LCD Ultra Fast Charger+ mit blauem LCD Display als Ladestandsanzeige lädt bis zu 4x AA oder AAA Akkus zur selben Zeit. Durchdachte Produktfunktionen wie Einzelschachtladung und höchste Sicherheitsstandards machen die Ladegeräte zur perfekten Wahl für jeden Energiebedarf.'),
(94, 12, 61, 8, 'Bosch Ladegerät', 'Das Bosch Ladegerät ist für folgende Bosch Werkzeuge geeignet: 3 603 J54 200 (PSR 10,8 LI), 3 603 J85 000 (PSR 1080 LI), 3 603 J85 001 (PSR 1080 LI) und 3 603 JA4 100 (PSB 1080 LI-2). Bitte die 10-stellige Gerätenummer des Typenschilds beachten, bevor das Ladegerät verwendet wird.'),
(95, 20, 12, 8, 'Varta LCD Plug Charger+, Ladegerät', 'Das Ladegerät LCD Plug Charger+ lädt AA, AAA, 9V und ein USB-Gerät zur selben Zeit. Die Einzelschachtladung sorgt für höchste Flexibilität und beste Ladeergebnisse, die größere und vereinfachte LCD-Anzeige für mehr Komfort. Sicherheit bieten die intelligente Abschaltung und die umfassenden Sicherheitseigenschaften. Das exklusive Design ist einzigartig und bietet höchste VARTA Qualität'),
(96, 13, 0, 8, 'Ansmann Lithium 2, Ladegerät', 'Speziell im Lithium-Segment werden eine Vielzahl von Akkugrößen angeboten. Mit dem Lithium 2 Ladegerät von ANSMANN entscheiden Sie sich für den universellen Allrounder mit bestem Preis-Leistungsverhältnis. Mit den beiden Ladeschächten kann man 1-2 Li-Ion Akkus der Baugrößen 26650, 22650, 18650, 18500, 17670, 16340, 14500 uvm. oder 1-2 NiMH Mignon AA / Micro AAA Akkus unabhängig voneinander laden. Das Gerät erkennt den eingelegten Akku vollkommen automatisch und ohne lästiges Einstellen. Der Ladevorgang beginnt direkt, nachdem Sie die Zelle polrichtig eingelegt haben.'),
(97, 13, 7, 8, 'Ansmann Home Charger HC430, Ladegerät', 'Der Home Charger HC430 von Ansmann bietet intelligente Ladesteuerung und Multisafe-Technologie für bis zu vier Geräte. Dieses Ladegerät mit vier USB-Anschlüssen lädt mit bis zu 30 Watt Smartphones, Tablets oder andere USB-Geräte.'),
(98, 25, 51, 8, 'APPLE Gewebtes USB‑C Ladekabel, Weiß', 'Dieses 1 m lange gewebte Ladekabel mit USB‑C Anschlüssen an beiden Enden ist ideal zum Laden, Synchronisieren und Übertragen von Daten zwischen USB‑C Geräten. Kombiniere das USB-C Gewebte Ladekabel mit einem kompatiblen USB‑C Netzteil, um deine Geräte an einer Steckdose zu laden und schnelles Laden zu nutzen. USB‑C Netzteil separat erhältlich.'),
(99, 23, 16, 8, 'Ansmann Home Charger 247PD, Ladegerät', 'Der Home Charger 247PD lädt mit einer Leistung von 45 Watt an zwei Anschlüssen: 1x USB-A und 1x USB-C. Dieses Ladegerät unterstützt PowerDelivery, wodurch das Gerät optimiert geladen wird. Die Multisafe-Technologie sorgt für hohe Sicherheit. Darüber hinaus sorgt der geringe Stand-By-Verbrauch für Effizienz.'),
(100, 7, 13, 8, 'Ansmann Home Charger HC212, Ladegerät', 'Der Home Charger HC212 von Ansmann bietet intelligente Ladesteuerung für zwei Geräte. Dieses Ladegerät mit zwei USB-Anschlüssen lädt mit bis zu 12 Watt Smartphones, Tablets oder andere USB-Geräte.'),
(101, 1, 101, 9, 'Duracell LR44 Batterie', 'Die Alkalibatterie LR44 Batterie von Duracell wurde zur Anwendung in Elektrogeräten (Fahrradcomputer, Briefwagen, Radioweckern, elektronischen Tagebüchern), Sicherheitsgeräten (Bankkartenlesegeräten), medizinischen Geräten (Blutzuckermessgeräten, Pulsmessern), Fitnessgeräten (Schrittzählern) und Lampen entwickelt.'),
(102, 1, 13, 9, 'Ansmann Alkaline Red, Batterie', 'Die Ansmann Alkaline Red eignen sich besonders für Geräte mit hohem Strombedarf wie z. B. Digitalkameras, Blitzgeräte und Spielzeug. Sie haben eine sehr lange Lebensdauer, eine hohe Stromstärke, sind lange lagerfähig und bieten einen sicheren Auslaufschutz. Mit dieser E-Block-Batterie (9-Volt-Block) geht einem die Energie nicht so schnell aus.'),
(103, 2, 71, 9, 'Varta LITHIUM Coin CR2025, Batterie', 'Die hochwertigen Varta Lithium Coin Knopfzellen wurden entwickelt, um kleine elektronische Geräte zuverlässig mit Energie zu versorgen. Perfekt für verschiedene Smart-Home-Geräte und Standardanwendungen wie Autoschlüssel, Fernbedienungen, Waagen und viele weitere kleine elektronische Geräte.');
INSERT INTO `alle_produkte` (`id_produkt`, `preis`, `verfügbarkeit`, `unter_k_id`, `p_name`, `Beschreibung`) VALUES
(104, 3, 34, 9, 'Varta Silberoxid-Knopfzelle 377, Batterie', 'Die quecksilberfreien Silberoxid-Knopfzellen von VARTA werden in einer Vielzahl an verschiedenen Anwendungen eingesetzt. Durch die hohe Qualität und Zuverlässigkeit der Produkte werden Knopfzellen von VARTA in der Medizintechnik verwendet. Aber auch andere anspruchsvolle Hersteller elektronischer Geräte, wie Uhren, Taschenrechner und Fernbedienungen vertrauen auf die Silberoxid-Knopfzellen \'\'Made in Germany\'\'. Durch jahrzehntelange Erfahrung können die Experten von VARTA individuelle Batterielösungen entwickeln und somit bei der Verwirklichung Ihrer Produktidee aktiv mitwirken.'),
(105, 2, 45, 9, 'Panasonic Lithium Knopfzelle CR-2032EL/6B, Batterie', 'Die Panasonic Lithium Knopfzelle CR-2032EL/6B bietet eine hohe Spannung von 3V und kann beispielsweise in elektronischen Geräten, wie Taschenrechner, Armbanduhren, verschiedene Geräte, Fitnessgeräte und Spielzeuge verwendet werden.'),
(106, 2, 13, 9, 'Varta LITHIUM Coin CR2016, Batterie', 'Die hochwertigen Varta Lithium Coin Knopfzellen wurden entwickelt, um kleine elektronische Geräte zuverlässig mit Energie zu versorgen. Perfekt für verschiedene Smart-Home-Geräte und Standardanwendungen wie Autoschlüssel, Fernbedienungen, Waagen und viele weitere kleine elektronische Geräte.'),
(107, 1, 43, 9, 'Ansmann X-Power Alkaline Batterie Block E / 6LR61', 'Mit einer langanhaltenden, präzisen und sehr hohen Energieabgabe ist die Ansmann X-Power Alkaline Batterie Block E die ideale Energiequelle für anspruchsvolle Anwendungen mit hohem Energiebedarf. Besonders geeignet für Digitalkameras, Blitzgeräte, Spielekonsolen, Taschenlampen sowie für die dauerhafte Nutzung in Spielzeugen und Audiogeräten.'),
(108, 1, 0, 9, 'Varta Longlife, Batterie', 'Die Batterie Varta Longlife eignet sich besonders für Geräte mit hohem Strombedarf wie z.B. Digitalkameras, Blitzgeräte und Spielzeug. Sie hat eine sehr lange Lebensdauer, sehr hohe Stromstärke, ist äußerst hitzebeständig, lange lagerfähig und bietet einen sicheren Auslaufschutz.');

-- --------------------------------------------------------

--
-- Table structure for table `bestellung`
--

CREATE TABLE `bestellung` (
  `idBestellung` int(11) NOT NULL,
  `id_produkt` int(11) NOT NULL,
  `id_kunden` int(11) NOT NULL,
  `datum` date NOT NULL,
  `zahl` int(11) NOT NULL,
  `gesamte_preis` double NOT NULL,
  `id_warenkorb` int(11) NOT NULL,
  `Warenkorb_id_warenkorb` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bestellung`
--

INSERT INTO `bestellung` (`idBestellung`, `id_produkt`, `id_kunden`, `datum`, `zahl`, `gesamte_preis`, `id_warenkorb`, `Warenkorb_id_warenkorb`) VALUES
(4, 17, 1, '2023-08-18', 3, 300, 156, NULL),
(5, 18, 1, '2023-08-18', 2, 298, 157, NULL),
(6, 19, 1, '2023-08-18', 2, 138, 158, NULL),
(7, 6, 1, '2023-08-18', 1, 240, 159, NULL),
(8, 7, 1, '2023-08-18', 1, 405, 160, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bestellung_has_alle_produkte`
--

CREATE TABLE `bestellung_has_alle_produkte` (
  `Bestellung_idBestellung` int(11) NOT NULL,
  `alle_produkte_id_produkt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategorien`
--

CREATE TABLE `kategorien` (
  `id_kategorien` int(11) NOT NULL,
  `kategorien` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kategorien`
--

INSERT INTO `kategorien` (`id_kategorien`, `kategorien`) VALUES
(2, 'Hardware'),
(3, 'Peripherie'),
(4, 'Zubehör');

-- --------------------------------------------------------

--
-- Table structure for table `kunden`
--

CREATE TABLE `kunden` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kunden`
--

INSERT INTO `kunden` (`id`, `email`, `password`) VALUES
(1, 'ateo@ateo.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `unterkategorien`
--

CREATE TABLE `unterkategorien` (
  `id_unterKategorien` int(11) NOT NULL,
  `untergategorien` varchar(45) NOT NULL,
  `kategorien_id_kategorien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `unterkategorien`
--

INSERT INTO `unterkategorien` (`id_unterKategorien`, `untergategorien`, `kategorien_id_kategorien`) VALUES
(1, 'Drucker', 3),
(2, 'Lautsprecher', 3),
(3, 'Monitor', 3),
(4, 'Grafikkarte', 2),
(5, 'Festplate', 2),
(6, 'Arbeitspeicher', 2),
(7, 'Kabel', 4),
(8, 'Ladegerate', 4),
(9, 'Batterien', 4);

-- --------------------------------------------------------

--
-- Table structure for table `warenkorb`
--

CREATE TABLE `warenkorb` (
  `id_warenkorb` int(11) NOT NULL,
  `id_kunden` int(11) DEFAULT NULL,
  `id_produkt` int(11) DEFAULT NULL,
  `zahl` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alle_produkte`
--
ALTER TABLE `alle_produkte`
  ADD PRIMARY KEY (`id_produkt`),
  ADD KEY `fk_alle_produkte_unterKategorien1_idx` (`unter_k_id`);

--
-- Indexes for table `bestellung`
--
ALTER TABLE `bestellung`
  ADD PRIMARY KEY (`idBestellung`),
  ADD KEY `fk_Bestellung_Warenkorb1_idx` (`Warenkorb_id_warenkorb`);

--
-- Indexes for table `bestellung_has_alle_produkte`
--
ALTER TABLE `bestellung_has_alle_produkte`
  ADD PRIMARY KEY (`Bestellung_idBestellung`,`alle_produkte_id_produkt`),
  ADD KEY `fk_Bestellung_has_alle_produkte_alle_produkte1_idx` (`alle_produkte_id_produkt`),
  ADD KEY `fk_Bestellung_has_alle_produkte_Bestellung1_idx` (`Bestellung_idBestellung`);

--
-- Indexes for table `kategorien`
--
ALTER TABLE `kategorien`
  ADD PRIMARY KEY (`id_kategorien`);

--
-- Indexes for table `kunden`
--
ALTER TABLE `kunden`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unterkategorien`
--
ALTER TABLE `unterkategorien`
  ADD PRIMARY KEY (`id_unterKategorien`,`kategorien_id_kategorien`),
  ADD KEY `fk_unterKategorien_kategorien1_idx` (`kategorien_id_kategorien`);

--
-- Indexes for table `warenkorb`
--
ALTER TABLE `warenkorb`
  ADD PRIMARY KEY (`id_warenkorb`),
  ADD UNIQUE KEY `id_kunden` (`id_kunden`,`id_produkt`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alle_produkte`
--
ALTER TABLE `alle_produkte`
  MODIFY `id_produkt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `bestellung`
--
ALTER TABLE `bestellung`
  MODIFY `idBestellung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kategorien`
--
ALTER TABLE `kategorien`
  MODIFY `id_kategorien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kunden`
--
ALTER TABLE `kunden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `unterkategorien`
--
ALTER TABLE `unterkategorien`
  MODIFY `id_unterKategorien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `warenkorb`
--
ALTER TABLE `warenkorb`
  MODIFY `id_warenkorb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alle_produkte`
--
ALTER TABLE `alle_produkte`
  ADD CONSTRAINT `fk_alle_produkte_unterKategorien1` FOREIGN KEY (`unter_k_id`) REFERENCES `unterkategorien` (`id_unterKategorien`);

--
-- Constraints for table `bestellung`
--
ALTER TABLE `bestellung`
  ADD CONSTRAINT `fk_Bestellung_Warenkorb1` FOREIGN KEY (`Warenkorb_id_warenkorb`) REFERENCES `warenkorb` (`id_kunden`);

--
-- Constraints for table `bestellung_has_alle_produkte`
--
ALTER TABLE `bestellung_has_alle_produkte`
  ADD CONSTRAINT `fk_Bestellung_has_alle_produkte_Bestellung1` FOREIGN KEY (`Bestellung_idBestellung`) REFERENCES `bestellung` (`idBestellung`),
  ADD CONSTRAINT `fk_Bestellung_has_alle_produkte_alle_produkte1` FOREIGN KEY (`alle_produkte_id_produkt`) REFERENCES `alle_produkte` (`id_produkt`);

--
-- Constraints for table `unterkategorien`
--
ALTER TABLE `unterkategorien`
  ADD CONSTRAINT `fk_unterKategorien_kategorien1` FOREIGN KEY (`kategorien_id_kategorien`) REFERENCES `kategorien` (`id_kategorien`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
