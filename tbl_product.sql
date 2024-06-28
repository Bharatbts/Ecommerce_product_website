-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2024 at 10:13 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `productdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(1000) NOT NULL,
  `product_price` varchar(10) NOT NULL,
  `category_id` varchar(50) NOT NULL,
  `product_photo` varchar(100) NOT NULL,
  `product_details` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_price`, `category_id`, `product_photo`, `product_details`) VALUES
(1, 'BIRDE Premium Sports Shoes for Men Walking Shoes For Men (Green)', '299', '3', '1.img.webp', 'Exclusive design and durable materials\r\nevery step feels light and breezy'),
(2, 'SONY Alpha ILCE-6400L APSC Mirrorless Camera with 16-50 mm Power', '79989', '6', '2.img.webp', 'The Sony Alpha ILCE-6400L\r\nMirrorless camera offers fast and\r\naccurate autofocus to help you capture'),
(3, 'Vim Power Dish Cleaning Gel (Lemon, 2 L) ', '262', '1', '3.img.webp', 'Vim Gel dishwashing liquid comes\r\ninfused with the Power of lemons!'),
(4, 'Wai Wai Chicken 6 in 1 Instant Noodles Non-vegetarian (420 g)', '73', '1', '4.img.webp', 'It is pertinent to note that, actual product packaging and materials may contain more and different '),
(5, 'realme 12+ 5G (Pioneer Green, 256 GB) (8 GB RAM)', '21999', '2', '5.img.webp', 'The realme 12+ 5G is a paradigm shift\r\nin smartphone innovation, boasting a 50\r\nMP Sony LYT-600 OIS '),
(6, 'SAMSUNG Galaxy S24+ Plus Cell Phone, 512GB AI Smartphone', '80418', '2', '6.img.jpg', 'Wonder where your favorite influencer\r\ngot their shoes? Simply Circle to\r\nSearch1 with Google to see'),
(7, 'Home Sizzler 153 cm Polyester Semi Transparent Window Curtain (Pack Of 2)( Grey)', '399', '4', '7.img.webp', 'Make your home look gorgeous by bringing home these exclusively define modern and contemporary style'),
(8, 'Fezora Microfiber 500 GSM Bath Towel (Pack of 2)', '674', '4', '8.img.webp', 'Microfiber towels are easy to clean and\r\nmaintain, and they are machine washable.'),
(9, 'VeBNoR Men Regular Fit Solid Spread Collar Casual Shirt', '299', '5', '9.img.webp', 'This shirt boasts a modern yet classic\r\ndesign that seamlessly bridges the gap\r\nbetween casual and s'),
(10, 'SuperLaxmi Woven, Temple Border Narayanpet Cotton Silk Saree (Green)', '569', '5', '10.img.webp', 'Crafted with the utmost care and precision, this saree boasts a luxurious feel and intricate design'),
(11, 'SONY ZV-E10 Mirrorless Camera Body Only Vlog Camera  (Black)', '52489', '6', '11.img.webp', 'Camera, Rechargeable Battery NP-FW50, AC Adaptor, Shoulder Strap, USB-A to USB-C Cable (USB 2.0), '),
(12, 'Hundred  Raze Badminton Shoes For Men  (Blue, White)', '1399', '3', '12.img.webp', 'Get absolute support with the multilayered sole design that combines a cushioned midsole, support pl'),
(13, 'LA VERNE Fitted King Size Waterproof Mattress Cover  (Grey)', '587', '4', '13.img.webp', '\r\nProtect Your Luxury Mattresses From any Mishapening by this Luxurious MAttress protector From La V'),
(14, 'Acer 21.5 inch Full HD VA Panel with VGA, HDMI, Ergonomic Stand, 2X2W Inbuilt Speakers, ', '5695', '2', '14.img.webp', ' Its Full HD 1080p resolution delivers sharp and life-like colours that let you enjoy scenes as inte'),
(15, 'Tata Salt Lite Namak, 15% Low Sodium, Reduce Sodium for Active Health Iodized Salt  (1 kg)', '41', '1', '15.img.webp', 'The Tata Lite Iodized salt helps you manage your health while making your dishes taste delicious. '),
(16, 'HIGH STAR Men Stretchable Jeans', '1155', '5', '17.img.jpg', 'The High Star denim cargos are trendy and versatile pants designed for both fashion and function. Made from pure cotton material, these pants feature a comfortable yet sturdy construction with a range of functional pockets and unique detailing that add to their utility'),
(17, 'DJI Osmo Action 4 Adventure Combo - 4K/120fps Waterproof Action Camera with a 1/1.3-Inch Sensor', '40990', '6', '18.img.jpg', 'Deep-Freeze Resistant & Long-Lasting Battery Life - Conquer extreme environments. The camera withstands temperatures as low as -20°C (-4°F), with reliable performance. Record up to 150 minutes in the cold and enjoy up to 2.5 hours of battery life.'),
(18, 'SJCAM SJ4000 Dual Screen 4K 30FPS/16MP WiFi Action Camera | 170° Ultra Wide Angle | 2.0\'LTPS LCD+1.3\' Dual Screen | 30M Waterproof with Waterproof Case | Black', '4999', '6', '19.img.jpg', '4k30fps video is not only clear, but also more smooth, with more details than you can imagine. Mobile app can remotely control the camera at a distance of up to 10m meters via WiFi, and its ability is far more than that.'),
(19, 'Crocs Unisex-Adult Literide 360 ClogClog', '5815', '3', '16.img.jpg', 'Born in boulder, colo. As a simple, comfortable boat shoe, today crocs footwear can be found across the globe and in more than 120 styles for men, women and children. With distinct collections, crocs offers colorful, lightweight comfort for any occasion and every season. All crocs shoes are uniquely designed and manufactured using the company’s proprietary closed-cell resin, croslite, a technology that gives each pair of shoes the soft, comfortable, lightweight, non-marking and odor-resistant qualities that crocs wearers know and love. Crocs footwear is ideal for casual wear, as well as for professional use and recreational activities.'),
(20, 'Bata Womens MeshWalking Shoe', '487', '3', '20.img.jpg', 'Very comfortable and stylish shoes from house of Bata'),
(21, 'JM LOOKS Transparent kitten Heel For Womens & Girls', '629', '3', '21.img.jpg', 'Comfortable - Allows the feet to move as naturally as possible, particularly around the toe area where maximum flexibility is required.; Occasion: Casual, Formal & Partywear'),
(22, 'Garnier Men Acno Fight, Anti Pimple with Salicylic Acid and Herba Repair Face Wash  (300 g)', '443', '7', '22.img.webp', 'or Men\r\nGel Based\r\nFor All Skin Types\r\nApplied For: Oil Control, Blackhead Remover, Anti-acne & Pimples, Skin Brightening\r\nComes in Tube'),
(23, 'Lakmé 7% Niacinamide Complex Perfect Radiance Anti Pigmentation Serum 2X Brighter Skin  (30 ml)', '326', '7', '23.img.webp', 'Model Name\r\n7% Niacinamide Complex Perfect Radiance Anti Pigmentation Serum 2X Brighter Skin\r\nSales Package\r\nSerum\r\nProfessional Care\r\nYes\r\nSkin Type\r\nAll Skin Types\r\nApplied For\r\nRadiance & Glow\r\nTreatment Form\r\nSerum\r\nNet Quantity\r\n30 ml'),
(24, 'SET WET Cool, Charm and Swag Avatar Deodorant Spray - For Men  (450 ml, Pack of 3)', '225', '7', '24.img.webp', '\r\nKickstart your day with the masculine and refreshing fragrances of this Set Wet deo set. It contains the Set Wet Cool Avatar, Charm Avatar and Swag Avatar. Spritz on a few drops of any deo from this pack according to your mood and get ready to take on the world.'),
(25, 'HP DeskJet 2331 Multi-function Color Inkjet Printer with Scanner and Copier , Compact Size, Reliable, Easy Set-Up Through HP Smart App On Your PC Connected Through USB, Ideal for Home  (Ink Cartridge)', '3999', '2', '25.img.webp', '\r\nYou can experience hassle-free printing, scanning, and copying with the HP DeskJet 2331 All-in-one Printer. This printer not only offers a seamless setup from your PC but also delivers reliable and high-quality results. In addition, with the help of the HP Smart app, you can set up this printer effortlessly and enjoy added convenience in your everyday tasks. '),
(26, 'OnePlus OP 13 Trimmer 120 min Runtime 20 Length Settings  (Black)', '749', '2', '26.img.webp', 'Introducing the One Plus Beard Trimmer – your ultimate grooming companion for a precise and stylish beard look. Engineered with cutting-edge technology and a sleek design, this beard trimmer is set to redefine your grooming experience.'),
(27, 'Vaseline Intensive Care Aloe Fresh Hydrating Body Lotion, For Dry Skin  (400 ml)', '332', '7', '27.img.webp', '\r\nThe Vaseline Intensive Care Aloe Fresh Hydrating Body Lotion, 400ml is a nutrient-rich, ultra-light soothing lotion that provides dry and rough skin with vital comfort and hydration. This moisturizer is suitable for both day and night skincare routines and is suitable for both men and women'),
(28, 'POND Bright Beauty Spot-less Glow Brightening With Vitamin B3 Face Wash  (200 g)', '227', '7', '28.img.webp', '\r\nOil Control, Skin Brightening, Spot Removal, Sun Protection, Tan Removal, Refreshing, Deep Cleansing, Anti-dullness, Blackhead Remover'),
(29, 'Fortune Premium kachi ghani pure Mustard Oil Can (Sarsav nu Tel)  (5 L)', '736', '1', '29.img.webp', '\r\nFortune Premium Kachi Ghani Pure Mustard Oil, traditionally extracted from the first press of mustard seeds, comes with a high pungency level and strong aroma. Being pure, our cooking oil retains its natural properties and mustard oil benefits. Its strong aroma and pungency will spice up your cooking. Made from Cold Pressed (Kachi Ghani) Technology using Finest Mustard Seeds - Rich in Omega 3 & 6 that boost Immunity. Rich in Vitamins A,E and Beta Carotene. Naturally Cholesterol Free. High in PUFA (Poly Unsaturated Fatty Acids). High Pungency and Strong Aroma - Mustard Oil with Long Shelf Life.'),
(30, 'Amul Pure Ghee 1 L Pouch', '589', '1', '30.img.webp', 'General\r\nBrand\r\nAmul\r\nModel Name\r\nPure\r\nContainer Type\r\nPouch\r\nQuantity\r\n1 L\r\nMaximum Shelf Life\r\n9 Months\r\nSource Type\r\nCow Milk\r\nOrganic\r\nNo\r\nIngredients\r\nNA\r\nNet Quantity\r\n1 L'),
(31, 'SmartBuy Inner Stainless Steel Thermoware Casserole Pack of 3 Thermoware Casserole Set  (3300 ml)', '389', '1', '31.img.webp', 'Model Name\r\nInner Stainless Steel Thermoware Casserole\r\nModel Number\r\nLGCPO3\r\nSales Package\r\n1 Pc 500 ml Casserole, 1 Pc 1000 ml Casserole, 1 Pc 1800 ml Casserole\r\nLid Included\r\nYes\r\nNet Quantity\r\n3'),
(32, 'HERSHEYS Genuine Chocolates  (623 g, Pack of 1)', '190', '1', '32.img.webp', '\r\nNothing says sweet like the classic taste of HERSHEYS SYRUP, which comes in an easy squeeze bottle. Drizzle it over any ice cream, to a glass of milk, pancake or waffles and so much more! Add the perfect twist to your dishes with a genuine rich chocolate flavor that goes brilliantly with everything! Choose over 100+ Recipes, exclusively curated by Chef Ranveer Brar! '),
(33, 'Unstitched Crepe Kurta Fabric Solid, Printed', '399', '5', '33.img.webp', 'Type\r\nKurta Fabric\r\nSales Package\r\nKurti Fabric\r\nIdeal For\r\nWomen\r\nOccasion\r\nWedding\r\nFabric Care\r\nHand wash\r\nStyle Code\r\nPallav No 7878 Green 5 MTR (Flipkart)\r\nColor\r\nMulticolor\r\nFabric\r\nCrepe'),
(34, 'Boys Full Sleeve Printed Hooded Sweatshirt', '699', '5', '34.img.webp', 'Color\r\nMulticolor\r\nFabric\r\nCotton Blend\r\nPattern\r\nPrinted\r\nNeck\r\nHooded Neck\r\nSleeve\r\nFull Sleeve\r\nStyle Code\r\nHFT-A2B-2S23HW10-BE_BU\r\nSales Package\r\nPack of 2 Sweatshirts for Boys\r\nOccasion\r\nCasual\r\nPockets\r\n2 Pockets\r\nHooded\r\nYes\r\nReversible\r\nNo\r\nSuitable For\r\nWestern Wear\r\nFabric Care\r\nMachine Wash as per Tag\r\nNet Quantity\r\n2'),
(35, 'Women Full Sleeve Solid Sweatshirt', '343', '5', '35.img.webp', 'Color\r\nLight Blue\r\nFabric\r\nPure Cotton\r\nPattern\r\nSolid\r\nNeck\r\nRound Neck\r\nSleeve\r\nFull Sleeve\r\nStyle Code\r\nWMN-RN-SWEATSHIRT-SBLUE\r\nSales Package\r\n1 Cotton Round Neck Sweatshirt\r\nOccasion\r\nCasual\r\nHooded\r\nNo\r\nReversible\r\nNo\r\nSuitable For\r\nWestern Wear\r\nFabric Care\r\nDo Not Bleach, Machine Wash as per Tag, Reverse and Dry, Wash with Like Colors'),
(36, 'Trevi Riya Solid Wood Premium Fabric 3 Seater Sofa  (Finish Color - Cerulean Blue, DIY(Do-It-Yourself))', '9990', '4', '36.img.webp', '\r\nThe color of the product may vary slightly from the picture displayed on your screen: this is due to lighting, pixel quality and color settings. Please check the product dimensions to ensure the product will fit in the desired location. Also, check if the product will fit through the entrance(s) and door(s) of the premises. And if there is no elevator in a multi-storey building, we might be unable to deliver the item to your doorstep.'),
(37, 'misha enterprise Plastic Living Room Chair  (Finish Color - Design 1 - Pack of 2, Pre-assembled)', '1519', '4', '37.img.webp', 'The color of the product may vary slightly compared to the picture displayed on your screen. This is due to lighting, pixel quality and color settings\r\nIn case the product appears to lack shine, wiping the surface with a cloth will help clear the surface of dust particles'),
(38, 'USB Wireless Console Game Stick Video Game Console Built-in 3000 Classic Games 8 Bit Mini Retro Controller HDMI Output Dual Player- 4K Ultra HD Game Stick Limited Edition Limited Edition  (Code in the Box - for PC)', '1510', '2', '38.img.webp', 'Model Name\r\nUSB Wireless Console Game Stick Video Game Console Built-in 3000 Classic Games 8 Bit Mini Retro Controller HDMI Output Dual Player- 4K Ultra HD Game Stick Limited Edition\r\nMedia Format\r\nPC\r\nEdition\r\nLimited Edition\r\nType\r\nFull Game\r\nGenre\r\nAction-Adventure, Action, Adventure, Dance, Fighting, First-Person Shooter, Fitness, Hack and Slash, Racing, Third-Person Shooter, Sports, Simulation, Rhythm\r\nVideo Encoding\r\nNTSC\r\nGame Modes\r\nMulti-Player\r\nPublisher\r\nZushi Games\r\nDeveloper\r\nNA\r\nOnline Platform\r\nNA\r\nSteps to Redeem Game\r\nConnect with TV'),
(39, 'Lenovo Lenovo V15 Intel Celeron Dual Core 4th Gen - (8 GB/256 GB SSD/Windows 11 Home) 82QYA00MIN Laptop  (15.6 inch, Black)', '20890', '2', '39.img.webp', '\r\nProcessor: Intel Celeron N4500 processor, base speed 1.10 Ghz, max speed 2.8 Ghz, 2 Core, 1024KB Cache | Memory: 8GB DDR4 RAM 2400 MHz | Storage: 256GB SSD Operating System: Windows 11 Home SL Display: 15.6-inch screen with FHD 220 Nits Antiglare display |Graphics: Integrated Intel UHD Graphics, Ports: 2x USB 2.0 Type-A | 1x USB Type-C | 1x HDMI | 1x Ethernet RJ-45 (LAN Port) | 1x Audio combo jack Keyboard: 6-row, spill-resistant, Full-sized keyboard | Touchpad: Two-button touchpad Connectivity: 802.11ac 2x2 Wi-Fi + Bluetooth 5.0 | Audio: Stereo speakers | Security: TPM 2.0 | Physical Locks: Kensington Nano Security Slot Battery Life: Upto 11 hours as per MobileMark | Integrated Li-Polymer 45Wh battery, with 45W AC adapter | Design: Thin & Light Laptop, 180 Degree Hinge Reliable and Durable laptop '),
(40, 'ZEBRONICS Intel Core i5 (8 GB / 1 TB / Windows 10) Assembled Desktop Computer  (19 inch Display)', '12270', '2', '40.img.webp', 'General\r\nBrand\r\nZEBRONICS\r\nModel Number\r\nzeb256\r\nBrand Color\r\nblack\r\nColor\r\nBlack\r\nOperating System\r\nWindows 10\r\nChipset\r\nH61\r\nProcessor\r\nIntel Core i5\r\nProcessor Speed\r\n3.2 GHz\r\nRAM Type\r\nDDR3\r\nRAM Capacity\r\n8 GB\r\nHDD Type\r\nHDD\r\nHDD Capacity\r\n1 TB\r\nGraphics Card\r\nNo\r\nGraphics Processor\r\nIntel® HD Graphics\r\nOptical Drive\r\nNA\r\nUPS Support\r\nYes\r\nCache Memory\r\n4 MB\r\nMaximum Processor Speed\r\n3.4 GHz\r\nNumber of Cores\r\n4'),
(41, 'SAMSUNG Original 25W, Type C Power Adaptor compatible for all Samsung Devices (Super Fast Charge 3.0)  (Black)', '1299', '2', '41.img.webp', 'General\r\nSales Package\r\n1 Adapter\r\nModel Number\r\nEP-TA800NBEGIN\r\nOutput Interface\r\n25w\r\nLED Indicator\r\nNo\r\nDisplay\r\nNo\r\nConnector Type\r\nUSB Type C Cable\r\nNumber Of Devices/Batteries Charged\r\n1\r\nDesigned For\r\nSamsung phones\r\nNumber Of Charger Pins\r\n1\r\nOther Features\r\nSuper Fast Charge 3.0\r\nCable Type\r\nAdapter Only'),
(42, 'VOLTDIC Wall Charger Accessory Combo for Oppo F19 Pro, Oppo Reno, Oppo F15, 30W 5V/6A, (Upto 65W Supported)  (White)', '552', '2', '42.img.webp', '\r\nFeaturing a compact design, this Vooc flash Adapter gives fast, efficient charging, The durable adapter comes with corrosion-resistant connectors, which allow it to be connected and disconnected over and over again without signal loss. Enjoy a consistently superior signal every time. Best to Use with the brand Which you are looking for Currently, Input: 100 240V~50 60Hz 0.7A Output 30W 5V/4A Adapter Like Wall Charger QC 3.0 to QC 2.0 Quick Charge Adaptive Fast Charging Fast Charging To Save Your Time,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
