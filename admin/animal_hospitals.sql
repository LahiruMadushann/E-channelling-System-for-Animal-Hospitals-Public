-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2022 at 06:28 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `animal_hospitals`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `Appoinment_Id` int(50) NOT NULL,
  `Hospital_Id` char(6) NOT NULL,
  `User_Id` char(6) NOT NULL,
  `Doctor_id` int(11) DEFAULT NULL,
  `Petowner_name` varchar(50) NOT NULL,
  `Doctor_name` varchar(50) DEFAULT NULL,
  `Slot_num` int(30) DEFAULT NULL,
  `Treatment_type` varchar(50) NOT NULL,
  `Animal_category` varchar(30) NOT NULL,
  `Hospital_name` varchar(50) NOT NULL,
  `Hospital_district` varchar(20) NOT NULL,
  `additional_info` varchar(200) DEFAULT NULL,
  `appointmentDate` date NOT NULL,
  `reservedDate` date NOT NULL,
  `paymentType` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`Appoinment_Id`, `Hospital_Id`, `User_Id`, `Doctor_id`, `Petowner_name`, `Doctor_name`, `Slot_num`, `Treatment_type`, `Animal_category`, `Hospital_name`, `Hospital_district`, `additional_info`, `appointmentDate`, `reservedDate`, `paymentType`) VALUES
(1, '1', '1', 0, 'Michel Silvester', NULL, 1, 'Normal Treatment ', 'Dog', 'Magic Paws', 'Gampaha', 'Vaccination', '2022-09-09', '2022-09-08', 'debitCard'),
(2, '1', '1', 1, 'Michel Silvester', 'Lahiru Kulathunga', 1, 'Special Treatment ', 'Cat', 'Magic Paws', 'Gampaha', 'vaccine', '2022-09-10', '2022-09-08', 'debitCard'),
(3, '2', '1', 0, 'Michel Silvester', NULL, 1, 'Normal Treatment ', 'Dog', 'Animal House', 'Gampaha', 'leg accident', '2022-09-15', '2022-09-08', 'debitCard'),
(4, '3', '1', 11, 'Michel Silvester', 'Mike Anderson', 1, 'Special Treatment ', 'Dog', 'Puppy Love', 'Gampaha', 'accident', '2022-09-10', '2022-09-08', 'debitCard'),
(5, '26', '1', 0, 'Michel Silvester', NULL, 1, 'Normal Treatment ', 'Dog', 'Argyle Veterinary', 'Gampaha', 'body check', '2022-09-09', '2022-09-08', 'debitCard'),
(6, '1', '2', 0, 'Jane Perera', NULL, 1, 'Normal Treatment ', 'Dog', 'Magic Paws', 'Gampaha', '', '2022-09-13', '2022-09-08', 'debitCard'),
(7, '1', '3', 0, 'Johnny Fernando', NULL, 2, 'Normal Treatment ', 'Dog', 'Magic Paws', 'Gampaha', 'accident', '2022-09-09', '2022-09-08', 'debitCard'),
(8, '1', '4', 2, 'Kamal Gunarathna', 'Jeewake Perera', 1, 'Special Treatment ', 'Dog', 'Magic Paws', 'Gampaha', 'vaccination', '2022-09-09', '2022-09-08', 'debitCard'),
(9, '1', '1', 0, 'Michel Silvester', NULL, 1, 'Normal Treatment ', 'Cat', 'Magic Paws', 'Gampaha', 'Accident', '2022-09-12', '2022-09-08', 'debitCard'),
(10, '1', '1', 1, 'Michel Silvester', 'Lahiru Kulathunga', 2, 'Special Treatment ', 'Dog', 'Magic Paws', 'Gampaha', 'vaccination', '2022-09-10', '2022-09-08', 'debitCard');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `Doctor_id` int(6) NOT NULL,
  `Hospital_id` int(6) NOT NULL,
  `F_name` varchar(50) NOT NULL,
  `L_name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Channelling_day` varchar(10) NOT NULL,
  `Channelling_time` varchar(20) NOT NULL,
  `Num_slotsPerDay` int(30) NOT NULL,
  `Specialist_area` varchar(50) NOT NULL,
  `Phone_number` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Doctor_id`, `Hospital_id`, `F_name`, `L_name`, `Email`, `Channelling_day`, `Channelling_time`, `Num_slotsPerDay`, `Specialist_area`, `Phone_number`) VALUES
(1, 1, 'Lahiru', 'Kulathunga', 'lahiru@gmail.com', 'Monday', '2.00 p.m.', 5, 'Dermatology', 765259905),
(2, 1, 'Jeewake', 'Perera', 'jeewake@gmail.com', 'Tuesday', '8.00 a.m.', 10, 'Emergency & Critical Care', 764323567),
(3, 1, 'Tharaka', 'Samarasighe', 'tharaka@gmail.com', 'Wednesday', '10.00 a.m.', 12, 'Internal Medicine', 753456789),
(4, 1, 'Geeth', 'Adasooriya', 'geeth@gmail.com', 'Thursday', '4.00 p.m.', 9, 'Ophthalmology (Eye)', 704567890),
(5, 1, 'Tharusha', 'Vithanage', 'tharusha@gmail.com', 'Friday', '9.00 a.m.', 11, 'Veterinary Pathology', 785643213),
(6, 2, 'Anthony ', 'Goh', 'anthony@gmail.com', 'Saturday', '6.00 p.m.', 8, 'Veterinary Preventive Medicine', 712345678),
(7, 2, 'Nathalee', ' Prakash', 'nathali@gmail.com', 'Sunday', '8.00 a.m.', 14, 'Surgery', 763489765),
(8, 2, 'Keshia ', 'Beng', 'keshia@gmail.com', 'Sunday', '10.00 a.m.', 15, 'Dermatology', 786543123),
(9, 2, 'Olivia', 'Silvester', 'olivia@gmail.com', 'Monday', '2.00 p.m.', 12, 'Internal Medicine', 761234567),
(10, 2, 'Robin', 'Peterson', 'robin@gmail.com', 'Friday', '4.00 p.m.', 12, 'Ophthalmology (Eye)', 756789054),
(11, 3, 'Mike', 'Anderson', 'mike@gmail.com', 'Monday', '8.00 a.m.', 12, 'Dermatology', 784532678),
(12, 3, 'Romesh', 'Silva', 'romeshSilva@gmail.com', 'Friday', '9.00 a.m.', 9, 'Veterinary Preventive Medicine', 763490786),
(13, 3, 'Rohan', 'Perera', 'rohanPerera@gmail.com', 'Tuesday', '6.00 p.m.', 8, 'Veterinary Preventive Medicine', 789045234),
(14, 3, 'Jagath', 'Samarawikrama', 'jagath@gmail.com', 'Saturday', '9.00 a.m.', 13, 'Ophthalmology (Eye)', 789040567),
(15, 3, 'Nirwan', 'Fernando', 'nirwan@gmail.com', 'Sunday', '2.00 p.m.', 12, 'Emergency & Critical Care', 768907654),
(16, 4, 'Dimuth', 'Herath', 'dimuth@gmail.com', 'Monday', '9.00 a.m.', 10, 'Emergency & Critical Care', 764532678),
(17, 4, 'Nataliya', 'Perera', 'nataliya@gmail.com', 'Wednesday', '2.00 p.m.', 11, 'Ophthalmology (Eye)', 714589678),
(18, 4, 'Ushani', 'Silva', 'ushani@gmail.com', 'Friday', '4.00 p.m.', 10, 'Dermatology', 761200987),
(19, 4, 'Iresh', 'Liyanage', 'iresh@gmail.com', 'Saturday', '8.00 a.m.', 15, 'Internal Medicine', 789675456),
(20, 4, 'Ashan', 'Jayalath', 'ashan@gmail.com', 'Sunday', '9.00 a.m.', 10, 'Veterinary Preventive Medicine', 764589076),
(21, 5, 'Jean', 'Anderson', 'jean@gmail.com', 'Sunday', '8.00 a.m.', 9, 'Veterinary Pathology', 785612908),
(22, 5, 'Jimmy', 'Wilson', 'jimmy@gmail.com', 'Friday', '10.00 a.m.', 10, 'Ophthalmology (Eye)', 723456789),
(23, 5, 'Joshep', 'Perera', 'joshep@gmail.com', 'Thursday', '2.00 p.m.', 13, 'Dermatology', 725678906),
(24, 5, 'Nelum', 'Aththanayaka', 'nelum@gmail.com', 'Wednesday', '8.00 a.m.', 14, 'Veterinary Pathology', 763478567),
(25, 5, 'Mery', 'Christina', 'mery@gmail.com', 'Monday', '6.00 p.m.', 10, 'Internal Medicine', 763478523),
(26, 6, 'Rehana', 'Peris', 'rehana@gmail.com', 'Monday', '8.00 a.m.', 11, 'Veterinary Pathology', 708945678),
(27, 6, 'Johanathn', 'Fernando', 'johanathan@gmail.com', 'Wednesday', '10.00 a.m.', 10, 'Emergency & Critical Care', 786998345),
(28, 6, 'Kusal', 'Perera', 'kusal@gmail.com', 'Friday', '2.00 p.m.', 12, 'Dermatology', 726993456),
(29, 6, 'Niroshan', 'Mendis', 'niroshanl@gmail.com', 'Saturday', '6.00 p.m.', 11, 'Ophthalmology (Eye)', 726997834),
(30, 6, 'Dilshan', 'Perera', 'dilshan@gmail.com', 'Sunday', '4.00 p.m.', 14, 'Internal Medicine', 707896567),
(31, 7, 'Michel', 'Silvester', 'michel@gmail.com', 'Monday', '2.00 p.m.', 12, 'Veterinary Preventive Medicine', 765489678),
(32, 8, 'James', 'Anderson', 'james@gmail.com', 'Saturday', '9.00 a.m.', 14, 'Emergency & Critical Care', 729856234),
(33, 9, 'Malki', 'Gunarathna', 'malki@gmail.com', 'Tuesday', '2.00 p.m.', 9, 'Ophthalmology (Eye)', 723456789),
(34, 10, 'Rashmi', 'Pathirana', 'rashmi@gmail.com', 'Monday', '9.00 a.m.', 8, 'Dermatology', 786543678),
(35, 11, 'Shashini', 'Bandara', 'shashini@gmail.com', 'Saturday', '8.00 a.m.', 11, 'Veterinary Preventive Medicine', 723490876),
(36, 12, 'Imalka', 'Perera', 'imalka@gmail.com', '13', '4.00 p.m.', 11, 'Veterinary Preventive Medicine', 723456765);

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `Hospital_id` int(6) NOT NULL,
  `H_name` varchar(50) NOT NULL,
  `H_address` varchar(150) NOT NULL,
  `H_city` varchar(30) NOT NULL,
  `H_district` text NOT NULL,
  `H_email` varchar(30) NOT NULL,
  `H_phoneNumber` int(10) NOT NULL,
  `Num_slotsPerDay` int(30) NOT NULL,
  `About_us` text NOT NULL,
  `Facilities` text NOT NULL,
  `image_main` varchar(200) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `requestActivation` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`Hospital_id`, `H_name`, `H_address`, `H_city`, `H_district`, `H_email`, `H_phoneNumber`, `Num_slotsPerDay`, `About_us`, `Facilities`, `image_main`, `status`, `requestActivation`) VALUES
(1, 'Magic Paws', 'Magic Paws, B17,Melsiripura,Gampaha,Sri Lanka .', 'Gampaha', 'Gampaha', 'magicPaws@gmail.com', 764567890, 12, 'Welcome to the Magic Paws. If itâ€™s not too much trouble pause for a minute to peruse through our administrations and read about our devoted staff. Our veterinarians and staff are focused on furnishing you and your pets with the best in veterinary consideration.\r\n\r\nWe will work intimately with you to comprehend your petâ€™s exceptional social insurance needs and will endeavor to create symptomatic, treatment, and preventive designs that best meet your worries.\r\n\r\nWe are largely pet proprietors ourselves and welcome the significance of the unequivocal love that pets convey to our lives. It is our objective not simply to guarantee the wellbeing and prosperity of your pet, however to be your accomplice in reinforcing the bond you share with your pet.\r\n\r\nThe â€˜Clinic Nameâ€™ was established in 1957 by Dr. Gerald Rosen. Its name was picked because of its area close by Brown Deer Park. After a few ages of serving Milwaukeeâ€™s north shore networks, many pet proprietors have come to depend on us as empathetic, talented professionals and place their trust in our capacities to encourage their cherished sidekicks.\r\n\r\nWe perceive that giving the most noteworthy quality veterinary consideration incorporates keeping you, our customers, at the focal point of everything we do, and realize that it is so essential to be treated with deference by a staff that is learned, inviting, and affable.\r\n\r\nWe pride ourselves on being tenacious about advancing customer instruction and dependable pet proprietorship, and expectation that youâ€™ll allow us to substantiate ourselves to you.\r\n\r\nIf you donâ€™t mind investigate our site. A considerable lot of the veterinary administrations that we furnish are recorded alongside profiles of our specialists, nursing and secretary staff. At that point call us to set up an arrangement today!', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'image/1.jpeg', 'activated', 'no'),
(2, 'Animal House', 'Animal House, 56/28, Nittambuwa 11880, Sri Lanka', 'Nittambuwa', 'Gampaha', 'animalHouse@gmail.com', 765259905, 13, 'Animal House is pleased to serve the Jackson WI zone for everything pet related. Our veterinary facility and creature healing facility is controlled by Dr. Amy Spaeth, who is an authorized, experienced Jackson veterinarian.\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great sustenance and exercise.\r\n\r\nAnimal Hospital remains over the most recent advances in veterinary innovation or more all, recollects that all creatures and pets should be treated with adoring consideration in each registration, system, or medical procedure.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'image/2.jpg', 'activated', 'no'),
(3, 'Puppy Love', 'Puppy Love, Peliyagoda 11300, Sri Lanka', 'Kelaniya', 'Gampaha', 'puppyLove@gmail.com', 704567898, 14, 'Puppy Love is pleased to serve the Corsicana TX territory for everything pet-related. Our veterinary facility and creature clinic is controlled by Owner Ricky Rogers, who is an authorized, experienced Corsicana veterinarian.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great nourishment and exercise.\r\n\r\nâ€˜Hospital Nameâ€™ remains over the most recent advances in veterinary innovation or more all, recalls that all creatures and pets should be treated with cherishing care in each registration, system, or medical procedure.\r\n\r\nWe gladly give care to customers pets in Navarro County', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'image/3.jpg', 'activated', 'no'),
(4, 'Pet Life Care', 'Pet Life Care, No1/2, McCallum Rd, Colombo, Sri Lanka.', 'Colombo', 'Colombo', 'petLifeCare@gmail.com', 702809765, 15, 'Welcome to the Pet Life Care. If itâ€™s not too much trouble pause for a minute to peruse through our administrations and read about our devoted staff. Our veterinarians and staff are focused on furnishing you and your pets with the best in veterinary consideration.\r\n\r\nWe will work intimately with you to comprehend your petâ€™s exceptional social insurance needs and will endeavor to create symptomatic, treatment, and preventive designs that best meet your worries.\r\nWe are largely pet proprietors ourselves and welcome the significance of the unequivocal love that pets convey to our lives. It is our objective not simply to guarantee the wellbeing and prosperity of your pet, however to be your accomplice in reinforcing the bond you share with your pet.\r\n\r\nThe â€˜Clinic Nameâ€™ was established in 1957 by Dr. Gerald Rosen. Its name was picked because of its area close by Brown Deer Park. After a few ages of serving Milwaukeeâ€™s north shore networks, many pet proprietors have come to depend on us as empathetic, talented professionals and place their trust in our capacities to encourage their cherished sidekicks.\r\n\r\nWe perceive that giving the most noteworthy quality veterinary consideration incorporates keeping you, our customers, at the focal point of everything we do, and realize that it is so essential to be treated with deference by a staff that is learned, inviting, and affable.\r\n\r\nWe pride ourselves on being tenacious about advancing customer instruction and dependable pet proprietorship, and expectation that youâ€™ll allow us to substantiate ourselves to you.\r\n\r\nIf you donâ€™t mind investigate our site. A considerable lot of the veterinary administrations that we furnish are recorded alongside profiles of our specialists, nursing and secretary staff. At that point call us to set up an arrangement today!.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'image/4.jpg', 'activated', 'no'),
(5, 'Comfort Treatment', 'Comfort Treatment, No.220 ,SA, Station Rd, Homagama, Sri Lanka', 'Homagama', 'Colombo', 'comfortTreatment@gmail.com', 765456905, 11, 'Comfort Treatment is pleased to serve the Jackson WI zone for everything pet related. Our veterinary facility and creature healing facility is controlled by Dr. Amy Spaeth, who is an authorized, experienced Jackson veterinarian.\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great sustenance and exercise.\r\n\r\nâ€˜Hospital Nameâ€™ remains over the most recent advances in veterinary innovation or more all, recollects that all creatures and pets should be treated with adoring consideration in each registration, system, or medical procedure.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'image/5.jpg', 'activated', 'no'),
(6, 'Precise Vet', 'Precise Vet, 33 3rd Lane, Dehiwala-Mount Lavinia, Sri Lanka', 'Ratmalana', 'Colombo', 'preciseVet@gmail.com', 785656897, 13, 'Hospital Nameâ€™ is pleased to serve the Corsicana TX territory for everything pet-related. Our veterinary facility and creature clinic is controlled by Owner Ricky Rogers, who is an authorized, experienced Corsicana veterinarian.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great nourishment and exercise.\r\n\r\nâ€˜Hospital Nameâ€™ remains over the most recent advances in veterinary innovation or more all, recalls that all creatures and pets should be treated with cherishing care in each registration, system, or medical procedure.\r\n\r\nWe gladly give care to customers pets in Navarro County\r\n\r\n', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'image/6.jpg', 'activated', 'no'),
(7, 'White House Vets', 'White House Vets, No 2, Riverside Rd, Kalutara, Sri Lanka', 'Kalutara', 'Kalutara', 'whiteHouseVets@gmail.com', 756765789, 14, 'Welcome to the White House Vet. If itâ€™s not too much trouble pause for a minute to peruse through our administrations and read about our devoted staff. Our veterinarians and staff are focused on furnishing you and your pets with the best in veterinary consideration.\r\n\r\nWe will work intimately with you to comprehend your petâ€™s exceptional social insurance needs and will endeavor to create symptomatic, treatment, and preventive designs that best meet your worries.', 'We pride ourselves on being tenacious about advancing customer instruction and dependable pet proprietorship, and expectation that youâ€™ll allow us to substantiate ourselves to you.\r\n\r\nIf you donâ€™t mind investigate our site. A considerable lot of the veterinary administrations that we furnish are recorded alongside profiles of our specialists, nursing and secretary staff. At that point call us to set up an arrangement today!', 'image/7.jpg', 'activated', 'no'),
(8, 'Vet Partners', 'Vet Partners, 10/3,hemaloka Mw, Yatiyana, Agalawatta 12200, Sri Lanka', 'Agalawatta', 'Kalutara', 'vetPartners@gmail.com', 768998765, 12, 'Vet Partners is pleased to serve the Jackson WI zone for everything pet related. Our veterinary facility and creature healing facility is controlled by Dr. Amy Spaeth, who is an authorized, experienced Jackson veterinarian.\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great sustenance and exercise.\r\n\r\nVet Partners remains over the most recent advances in veterinary innovation or more all, recollects that all creatures and pets should be treated with adoring consideration in each registration, system, or medical procedure.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'image/8.jpg', 'activated', 'no'),
(9, 'Fairview Animal', 'Fairview Animal, NO: 87/A Seelarathana Road, Horana 12400, Sri Lanka.', 'Horana ', 'Kalutara', 'fairviewAnimal@gmail.com', 708956789, 14, 'Fair View is pleased to serve the Corsicana TX territory for everything pet-related. Our veterinary facility and creature clinic is controlled by Owner Ricky Rogers, who is an authorized, experienced Corsicana veterinarian.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great nourishment and exercise.\r\n\r\nâ€˜Hospital Nameâ€™ remains over the most recent advances in veterinary innovation or more all, recalls that all creatures and pets should be treated with cherishing care in each registration, system, or medical procedure.\r\n\r\nWe gladly give care to customers pets in Navarro County', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'image/9.jpg', 'activated', 'no'),
(10, 'Pleasant Ridge', 'Pleasant Ridge, No 558/B D S Senanayake Mawatha, Anuradhapura, Sri Lanka', 'Anuradhapura', 'Anuradhapura', 'pleasantRidge@gmail.com', 763456789, 15, 'Welcome to the Pleasant Ridge. If itâ€™s not too much trouble pause for a minute to peruse through our administrations and read about our devoted staff. Our veterinarians and staff are focused on furnishing you and your pets with the best in veterinary consideration.\r\n\r\nWe will work intimately with you to comprehend your petâ€™s exceptional social insurance needs and will endeavor to create symptomatic, treatment, and preventive designs that best meet your worries.\r\nWe perceive that giving the most noteworthy quality veterinary consideration incorporates keeping you, our customers, at the focal point of everything we do, and realize that it is so essential to be treated with deference by a staff that is learned, inviting, and affable.\r\n\r\nWe pride ourselves on being tenacious about advancing customer instruction and dependable pet proprietorship, and expectation that youâ€™ll allow us to substantiate ourselves to you.\r\n\r\nIf you donâ€™t mind investigate our site. A considerable lot of the veterinary administrations that we furnish are recorded alongside profiles of our specialists, nursing and secretary staff. At that point call us to set up an arrangement today!\r\n\r\n', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'image/10.jpg', 'activated', 'no'),
(11, 'Emergency Vets', 'Emergency Vets, 55 Galkulama - Anuradhapura Rd, Galenbindunuwewa, Sri Lanka', 'Galenbindunuwewa', 'Anuradhapura', 'emergencyVets@gmail.com', 705456789, 14, 'Emergency Vets is pleased to serve the Jackson WI zone for everything pet related. Our veterinary facility and creature healing facility is controlled by Dr. Amy Spaeth, who is an authorized, experienced Jackson veterinarian.\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great sustenance and exercise.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great sustenance and exercise.\r\n\r\nâ€˜Hospital Nameâ€™ remains over the most recent advances in veterinary innovation or more all, recollects that all creatures and pets should be treated with adoring consideration in each registration, system, or medical procedure.\r\n\r\n remains over the most recent advances in veterinary innovation or more all, recollects that all creatures and pets should be treated with adoring consideration in each registration, system, or medical procedure.\r\n\r\n', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'image/11.jpg', 'activated', 'no'),
(12, 'Companion Care', 'Companion Care, Kurunegala - Dambulla Rd, Habarana 50150, Sri Lanka', 'Habarana ', 'Anuradhapura', 'companionCare@gmail.com', 785643234, 15, 'Companion Care is pleased to serve the Corsicana TX territory for everything pet-related. Our veterinary facility and creature clinic is controlled by Owner Ricky Rogers, who is an authorized, experienced Corsicana veterinarian.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great nourishment and exercise.\r\n\r\nâ€˜Hospital Nameâ€™ remains over the most recent advances in veterinary innovation or more all, recalls that all creatures and pets should be treated with cherishing care in each registration, system, or medical procedure.\r\n\r\nWe gladly give care to customers pets in Navarro County', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'image/12.jpg', 'activated', 'no'),
(13, 'Travis Respondek', 'Travis Respondek, 28th Mile Post Cemetery, Kaduruwela, Polonnaruwa, Sri Lanka', 'Polonnaruwa', 'Polonnaruwa', 'travisRespondek@gmail.com', 764534567, 14, 'Welcome to the Travis Respondek. If itâ€™s not too much trouble pause for a minute to peruse through our administrations and read about our devoted staff. Our veterinarians and staff are focused on furnishing you and your pets with the best in veterinary consideration.\r\n\r\nWe will work intimately with you to comprehend your petâ€™s exceptional social insurance needs and will endeavor to create symptomatic, treatment, and preventive designs that best meet your worries.\r\nWe perceive that giving the most noteworthy quality veterinary consideration incorporates keeping you, our customers, at the focal point of everything we do, and realize that it is so essential to be treated with deference by a staff that is learned, inviting, and affable.\r\n\r\nWe pride ourselves on being tenacious about advancing customer instruction and dependable pet proprietorship, and expectation that youâ€™ll allow us to substantiate ourselves to you.\r\n\r\nIf you donâ€™t mind investigate our site. A considerable lot of the veterinary administrations that we furnish are recorded alongside profiles of our specialists, nursing and secretary staff. At that point call us to set up an arrangement today!', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/13.jpg', 'activated', 'no'),
(14, 'Paces Ferry', 'Paces Ferry,1st Cross St, Hingurakgoda 51400, Sri Lanka.', 'Hingurakgoda', 'Polonnaruwa', 'pacesFerry@gmail.com', 765434278, 15, 'Welcome to the Paces Ferry At our doctorâ€™s facility, we endeavor to give your pet the most far-reaching therapeutic consideration in any circumstance. Likewise, we pride ourselves on being merciful and understanding. Furnished with the most recent innovation, we can analyze (utilizing x-beams, ultrasound, or blood work).\r\n\r\nWhatâ€™s more, we offer needle therapy and pressure point massage medications related to conventional medicinal treatments.\r\n\r\nAdditionally available to us, is a cutting edge dental office, finish with an intraoral computerized x-beam framework and the most recent symptomatic apparatuses.\r\n\r\nOur veterinarians and ensured dental professional will play out all the vital dental systems (from basic extractions to root trench therapies)to make your feline, puppy, rabbit or ferret have a solid mouth.\r\n\r\nOur drug store is completely loaded to help in your petâ€™s treatment. We additionally offer a full line of characteristic supplements.In option, we can turn your petâ€™s drugs in an uncommonly seasoned fluid.\r\n\r\nThis makes sedating your pet less unpleasant for them and a lot simpler for you. We likewise convey a full line of Hills nourishments including all their remedial Science Diets, and also another solution abstains from food. We likewise offer top-notch nourishment for feathered creatures and ferrets. Counsel with our learned veterinarians to discover what diet is best for your pet.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/14.jpg', 'activated', 'no'),
(15, 'Pacific Veterinary', 'Pacific Veterinary, 84E, Batticolo junction, Manampitiya, Sri Lanka', 'Manampitiya', 'Polonnaruwa', 'pacificVeterinary', 786765456, 13, 'Pacific Veterinary is pleased to serve the Corsicana TX territory for everything pet-related. Our veterinary facility and creature clinic is controlled by Owner Ricky Rogers, who is an authorized, experienced Corsicana veterinarian.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great nourishment and exercise.\r\n\r\nPacific Veterinary remains over the most recent advances in veterinary innovation or more all, recalls that all creatures and pets should be treated with cherishing care in each registration, system, or medical procedure.\r\n\r\nWe gladly give care to customers pets in Navarro County', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/15.jpg', 'activated', 'no'),
(16, 'White Waves', 'White Waves, No 15 Co-op Building, Kandy-Jaffna Highway, Matale 21000, Sri Lanka', 'Matale ', 'Matale', 'whiteWaves', 753456789, 11, 'Welcome to the White Waves. If itâ€™s not too much trouble pause for a minute to peruse through our administrations and read about our devoted staff. Our veterinarians and staff are focused on furnishing you and your pets with the best in veterinary consideration.\r\n\r\nWe will work intimately with you to comprehend your petâ€™s exceptional social insurance needs and will endeavor to create symptomatic, treatment, and preventive designs that best meet your worries.\r\nWe perceive that giving the most noteworthy quality veterinary consideration incorporates keeping you, our customers, at the focal point of everything we do, and realize that it is so essential to be treated with deference by a staff that is learned, inviting, and affable.\r\n\r\nWe pride ourselves on being tenacious about advancing customer instruction and dependable pet proprietorship, and expectation that youâ€™ll allow us to substantiate ourselves to you.\r\n\r\nIf you donâ€™t mind investigate our site. A considerable lot of the veterinary administrations that we furnish are recorded alongside profiles of our specialists, nursing and secretary staff. At that point call us to set up an arrangement today!\r\n\r\n', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/16.jpg', 'activated', 'no'),
(17, 'Pet Safe', 'Pet Safe, 512, Kandy-Jaffna, Rd, Dambulla 21100, Sri Lanka', 'Dambulla ', 'Matale', 'petSafe@gmail.com', 762345567, 12, 'Pet Safe is pleased to serve the Jackson WI zone for everything pet related. Our veterinary facility and creature healing facility is controlled by Dr. Amy Spaeth, who is an authorized, experienced Jackson veterinarian.\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great sustenance and exercise.\r\n\r\nPet Safe remains over the most recent advances in veterinary innovation or more all, recollects that all creatures and pets should be treated with adoring consideration in each registration, system, or medical procedure.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/17.jpg', 'activated', 'no'),
(18, 'Health Quest Animal', 'Health Quest Animal, 156/17,A Samagi Mw, Ukuwela 21300, Sri Lanka', 'Ukuwela ', 'Matale', 'healthQuestAnimal@gmail.com', 763421345, 14, 'Health Quest Animal is pleased to serve the Corsicana TX territory for everything pet-related. Our veterinary facility and creature clinic is controlled by Owner Ricky Rogers, who is an authorized, experienced Corsicana veterinarian.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great nourishment and exercise.\r\n\r\nâ€˜Hospital Nameâ€™ remains over the most recent advances in veterinary innovation or more all, recalls that all creatures and pets should be treated with cherishing care in each registration, system, or medical procedure.\r\n\r\nWe gladly give care to customers pets in Navarro County', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/18.jpg', 'activated', 'no'),
(19, 'My Cattle Vet', 'William Gopallawa Mawatha, Kandy 20000, Sri Lanka', 'Kandy', 'Kandy', 'myCattleVet', 764589104, 10, 'Welcome to the My Cattle Vet. If itâ€™s not too much trouble pause for a minute to peruse through our administrations and read about our devoted staff. Our veterinarians and staff are focused on furnishing you and your pets with the best in veterinary consideration.\r\n\r\nWe will work intimately with you to comprehend your petâ€™s exceptional social insurance needs and will endeavor to create symptomatic, treatment, and preventive designs that best meet your worries.\r\nWe perceive that giving the most noteworthy quality veterinary consideration incorporates keeping you, our customers, at the focal point of everything we do, and realize that it is so essential to be treated with deference by a staff that is learned, inviting, and affable.\r\n\r\nWe pride ourselves on being tenacious about advancing customer instruction and dependable pet proprietorship, and expectation that youâ€™ll allow us to substantiate ourselves to you.\r\n\r\nIf you donâ€™t mind investigate our site. A considerable lot of the veterinary administrations that we furnish are recorded alongside profiles of our specialists, nursing and secretary staff. At that point call us to set up an arrangement today!\r\n\r\n', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/19.jpg', 'activated', 'no'),
(20, 'Anacapa Animal', '4HG8+JHR, Nawalapitiya Road Ethgala, Gampola 20500, Sri Lanka', 'Gampola ', 'Kandy', 'AnacapaAnimal@gmail.com', 784567890, 13, 'Anacapa Animal is pleased to serve the Jackson WI zone for everything pet related. Our veterinary facility and creature healing facility is controlled by Dr. Amy Spaeth, who is an authorized, experienced Jackson veterinarian.\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great sustenance and exercise.\r\n\r\nAnacapa Animal remains over the most recent advances in veterinary innovation or more all, recollects that all creatures and pets should be treated with adoring consideration in each registration, system, or medical procedure.\r\n\r\n\r\n\r\n', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/20.jpg', 'activated', 'no'),
(21, 'Avonhead Vets', 'No.18 super commercial complex, Nawalapitiya 20650, Sri Lanka', 'Nawalapitiya ', 'Kandy', 'avonheadVets@gmail.com', 764523456, 14, 'Avonhead Vets is pleased to serve the Corsicana TX territory for everything pet-related. Our veterinary facility and creature clinic is controlled by Owner Ricky Rogers, who is an authorized, experienced Corsicana veterinarian.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great nourishment and exercise.\r\n\r\nAvonhead Vets remains over the most recent advances in veterinary innovation or more all, recalls that all creatures and pets should be treated with cherishing care in each registration, system, or medical procedure.\r\n\r\nWe gladly give care to customers pets in Navarro County\r\n\r\n', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/21.jpg', 'activated', 'no'),
(22, 'Critter Care', 'No.29 Badulla Road, Vijithapura,, Nuwara Eliya 22200, Sri Lanka', 'Nuwara Eliya', 'Nuwara Eliya', 'critterCare@gmail.com', 712345678, 11, 'Welcome to the Critter Care. If itâ€™s not too much trouble pause for a minute to peruse through our administrations and read about our devoted staff. Our veterinarians and staff are focused on furnishing you and your pets with the best in veterinary consideration.\r\n\r\nWe will work intimately with you to comprehend your petâ€™s exceptional social insurance needs and will endeavor to create symptomatic, treatment, and preventive designs that best meet your worries.\r\nWe perceive that giving the most noteworthy quality veterinary consideration incorporates keeping you, our customers, at the focal point of everything we do, and realize that it is so essential to be treated with deference by a staff that is learned, inviting, and affable.\r\n\r\nWe pride ourselves on being tenacious about advancing customer instruction and dependable pet proprietorship, and expectation that youâ€™ll allow us to substantiate ourselves to you.\r\n\r\nIf you donâ€™t mind investigate our site. A considerable lot of the veterinary administrations that we furnish are recorded alongside profiles of our specialists, nursing and secretary staff. At that point call us to set up an arrangement today!', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/22.jpg', 'activated', 'no'),
(23, 'Pet Health Center', 'Railway Station, World\'s End Rd, Ambewela, Sri Lanka', 'Ambewela', 'Nuwara Eliya', 'PetHealthCenter@gmail.com', 768934567, 13, 'Pet Health Center is pleased to serve the Jackson WI zone for everything pet related. Our veterinary facility and creature healing facility is controlled by Dr. Amy Spaeth, who is an authorized, experienced Jackson veterinarian.\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great sustenance and exercise.\r\n\r\nPet Health Center remains over the most recent advances in veterinary innovation or more all, recollects that all creatures and pets should be treated with adoring consideration in each registration, system, or medical procedure.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/23.jpg', 'activated', 'no'),
(24, 'Sunrise Pet ', '86 Maskeliya - Upcot Rd, Maskeliya, Sri Lanka', 'Maskeliya ', 'Nuwara Eliya', 'SunrisePet@gmail.com', 715678904, 12, 'Sunrise Pet is pleased to serve the Corsicana TX territory for everything pet-related. Our veterinary facility and creature clinic is controlled by Owner Ricky Rogers, who is an authorized, experienced Corsicana veterinarian.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great nourishment and exercise.\r\n\r\nâ€˜Hospital Nameâ€™ remains over the most recent advances in veterinary innovation or more all, recalls that all creatures and pets should be treated with cherishing care in each registration, system, or medical procedure.\r\n\r\nWe gladly give care to customers pets in Navarro County', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/24.jpg', 'activated', 'no'),
(25, 'Bates County', '54 Spill Rd, Puttalam, Sri Lanka', 'Puttalam', 'Puttalam', 'BatesCounty@gmail.com', 712345678, 13, 'Welcome to the Bates County. If itâ€™s not too much trouble pause for a minute to peruse through our administrations and read about our devoted staff. Our veterinarians and staff are focused on furnishing you and your pets with the best in veterinary consideration.\r\n\r\nWe will work intimately with you to comprehend your petâ€™s exceptional social insurance needs and will endeavor to create symptomatic, treatment, and preventive designs that best meet your worries.\r\nWe perceive that giving the most noteworthy quality veterinary consideration incorporates keeping you, our customers, at the focal point of everything we do, and realize that it is so essential to be treated with deference by a staff that is learned, inviting, and affable.\r\n\r\nWe pride ourselves on being tenacious about advancing customer instruction and dependable pet proprietorship, and expectation that youâ€™ll allow us to substantiate ourselves to you.\r\n\r\nIf you donâ€™t mind investigate our site. A considerable lot of the veterinary administrations that we furnish are recorded alongside profiles of our specialists, nursing and secretary staff. At that point call us to set up an arrangement today!\r\n\r\n', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/25.jpg', 'activated', 'no'),
(26, 'Argyle Veterinary', '38, Galgamuwa Rd, Maha Galgamuwa, Sri Lanka', 'Anamaduwa', 'Gampaha', 'argyleVeterinary', 719087654, 14, 'Argyle Veterinary is pleased to serve the Jackson WI zone for everything pet related. Our veterinary facility and creature healing facility is controlled by Dr. Amy Spaeth, who is an authorized, experienced Jackson veterinarian.\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great sustenance and exercise.\r\n\r\nArgyle Veterinary remains over the most recent advances in veterinary innovation or more all, recollects that all creatures and pets should be treated with adoring consideration in each registration, system, or medical procedure.\r\n\r\n', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/26.jpg', 'activated', 'no'),
(28, 'Veterinary Specialty Services', 'No. 176, Ambepussa - Trincomalee Hwy, Kurunegala 60000, Sri Lanka', 'Kurunegala ', 'Kurunegala', 'VeterinarySpecialtyServices', 712345987, 12, 'Veterinary Specialty Services is pleased to serve the Corsicana TX territory for everything pet-related. Our veterinary facility and creature clinic is controlled by Owner Ricky Rogers, who is an authorized, experienced Corsicana veterinarian.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great nourishment and exercise.\r\n\r\nVeterinary Specialty Services remains over the most recent advances in veterinary innovation or more all, recalls that all creatures and pets should be treated with cherishing care in each registration, system, or medical procedure.\r\n\r\nWe gladly give care to customers pets in Navarro County', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/29.jpg', 'activated', 'no');
INSERT INTO `hospital` (`Hospital_id`, `H_name`, `H_address`, `H_city`, `H_district`, `H_email`, `H_phoneNumber`, `Num_slotsPerDay`, `About_us`, `Facilities`, `image_main`, `status`, `requestActivation`) VALUES
(29, 'Petersen Pet', 'No 449/1 Colombo - Kandy Rd, Kegalle, Sri Lanka', 'Kegalle', 'Kegalle', 'PetersenPet@gmail.com', 765434567, 14, 'Petersen Pet is pleased to serve the Corsicana TX territory for everything pet-related. Our veterinary facility and creature clinic is controlled by Owner Ricky Rogers, who is an authorized, experienced Corsicana veterinarian.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great nourishment and exercise.\r\n\r\nPetersen Pet remains over the most recent advances in veterinary innovation or more all, recalls that all creatures and pets should be treated with cherishing care in each registration, system, or medical procedure.\r\n\r\nWe gladly give care to customers pets in Navarro County', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/30.jpg', 'activated', 'no'),
(30, 'Animal Health', '15 Sripada Mawatha, Ratnapura 70000, Sri Lanka', 'Rathnapura', 'Ratnapura', 'AnimalHealth@gmail.com', 712345678, 13, 'Animal Health is pleased to serve the Corsicana TX territory for everything pet-related. Our veterinary facility and creature clinic is controlled by Owner Ricky Rogers, who is an authorized, experienced Corsicana veterinarian.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great nourishment and exercise.\r\n\r\nAnimal Health remains over the most recent advances in veterinary innovation or more all, recalls that all creatures and pets should be treated with cherishing care in each registration, system, or medical procedure.\r\n\r\nWe gladly give care to customers pets in Navarro County', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/30.jpg', 'activated', 'no'),
(31, 'Santa Paula Animal ', 'No. 855 Hospital St, Jaffna, Sri Lanka', 'Jaffna', 'Jaffna', 'SantaPaulaAnimal@gmail.com', 723445678, 15, 'Santa Paula Animal  is pleased to serve the Corsicana TX territory for everything pet-related. Our veterinary facility and creature clinic is controlled by Owner Ricky Rogers, who is an authorized, experienced Corsicana veterinarian.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great nourishment and exercise.\r\n\r\nSanta Paula Animal  remains over the most recent advances in veterinary innovation or more all, recalls that all creatures and pets should be treated with cherishing care in each registration, system, or medical procedure.\r\n\r\nWe gladly give care to customers pets in Navarro County', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/31.jpeg', 'activated', 'no'),
(32, 'Pets on Broadway Animal', '6/1,selvanagar, Kilinochchi, Sri Lanka', 'Kilinochchi', 'Kilinochchi', 'PetsonBroadway@gmail.com', 723457821, 13, 'Pets on Broadway Animal is pleased to serve the Corsicana TX territory for everything pet-related. Our veterinary facility and creature clinic is controlled by Owner Ricky Rogers, who is an authorized, experienced Corsicana veterinarian.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great nourishment and exercise.\r\n\r\nPets on Broadway Animal remains over the most recent advances in veterinary innovation or more all, recalls that all creatures and pets should be treated with cherishing care in each registration, system, or medical procedure.\r\n\r\nWe gladly give care to customers pets in Navarro County', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/32.jpg', 'activated', 'no'),
(33, 'Tri County', 'Thalvupadu - Mannar Rd, Mannar 41000, Sri Lanka', 'Mannar', 'Mannar', 'TriCounty@gmail.com', 765443213, 14, 'Tri County is pleased to serve the Corsicana TX territory for everything pet-related. Our veterinary facility and creature clinic is controlled by Owner Ricky Rogers, who is an authorized, experienced Corsicana veterinarian.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great nourishment and exercise.\r\n\r\nTri County remains over the most recent advances in veterinary innovation or more all, recalls that all creatures and pets should be treated with cherishing care in each registration, system, or medical procedure.\r\n\r\nWe gladly give care to customers pets in Navarro County', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/33.jpg', 'deactivated', 'no'),
(34, 'Bulger Veterinary', '7R98+3H5, Main Road, Mullaitivu, Sri Lanka', 'Mullaitivu', 'Mullaitivu', 'BulgerVeterinary@gmail.com', 782312345, 15, 'Bulger Veterinary is pleased to serve the Corsicana TX territory for everything pet-related. Our veterinary facility and creature clinic is controlled by Owner Ricky Rogers, who is an authorized, experienced Corsicana veterinarian.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great nourishment and exercise.\r\n\r\nBulger Veterinary remains over the most recent advances in veterinary innovation or more all, recalls that all creatures and pets should be treated with cherishing care in each registration, system, or medical procedure.\r\n\r\nWe gladly give care to customers pets in Navarro County', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/34.jpg', 'deactivated', 'no'),
(36, 'Everhart Veterinary Medicine', '137 Kandy Rd, Vavuniya, Sri Lanka.', 'Vavuniya', 'Vavuniya', 'EverhartVeterinary@gmail.com', 786765345, 13, 'Everhart Veterinary Medicine is pleased to serve the Corsicana TX territory for everything pet-related. Our veterinary facility and creature clinic is controlled by Owner Ricky Rogers, who is an authorized, experienced Corsicana veterinarian.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great nourishment and exercise.\r\n\r\nEverhart Veterinary Medicine remains over the most recent advances in veterinary innovation or more all, recalls that all creatures and pets should be treated with cherishing care in each registration, system, or medical procedure.\r\n\r\nWe gladly give care to customers pets in Navarro County', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/37.jpg', 'deactivated', 'no'),
(37, 'Family Pet Of Shawnee', 'No 128 Kandy Rd, Trincomalee, Sri Lanka', 'Trincomalee', 'Trincomalee', 'FamilyPet@gmail.com', 763478906, 13, 'Family Pet Of Shawnee is pleased to serve the Corsicana TX territory for everything pet-related. Our veterinary facility and creature clinic is controlled by Owner Ricky Rogers, who is an authorized, experienced Corsicana veterinarian.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great nourishment and exercise.\r\n\r\nFamily Pet Of Shawnee remains over the most recent advances in veterinary innovation or more all, recalls that all creatures and pets should be treated with cherishing care in each registration, system, or medical procedure.\r\n\r\nWe gladly give care to customers pets in Navarro County', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/38.jpg', 'deactivated', 'no'),
(38, 'All Pets Animal', '609 Trinco Rd, Batticaloa, Sri Lanka', 'Batticaloa', 'Batticaloa', 'AllPetsAnimal@gmail.com', 723456789, 14, 'Pet Life Care is pleased to serve the Corsicana TX territory for everything pet-related. Our veterinary facility and creature clinic is controlled by Owner Ricky Rogers, who is an authorized, experienced Corsicana veterinarian.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great nourishment and exercise.\r\n\r\nPet Life Care remains over the most recent advances in veterinary innovation or more all, recalls that all creatures and pets should be treated with cherishing care in each registration, system, or medical procedure.\r\n\r\nWe gladly give care to customers pets in Navarro County', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/39.jpg', 'deactivated', 'no'),
(39, 'Relia Care Veterinary', 'Litilton estate kuda waskaduwa, Ampara 12580, Sri Lanka', 'Ampara', 'Ampara', 'ReliaCare@gmail.com', 707895432, 12, 'Relia Care Veterinary is pleased to serve the Corsicana TX territory for everything pet-related. Our veterinary facility and creature clinic is controlled by Owner Ricky Rogers, who is an authorized, experienced Corsicana veterinarian.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great nourishment and exercise.\r\n\r\nRelia Care Veterinary remains over the most recent advances in veterinary innovation or more all, recalls that all creatures and pets should be treated with cherishing care in each registration, system, or medical procedure.\r\n\r\nWe gladly give care to customers pets in Navarro County', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/40.jpg', 'deactivated', 'no'),
(40, 'Caring Hands Veterinary', 'Daya Gunasekara Mawatha, Badulla, Sri Lanka', 'Badulla', 'Badulla', 'CaringHands@gmail.com', 704567843, 11, 'Caring Hands Veterinary is pleased to serve the Corsicana TX territory for everything pet-related. Our veterinary facility and creature clinic is controlled by Owner Ricky Rogers, who is an authorized, experienced Corsicana veterinarian.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great nourishment and exercise.\r\n\r\nCaring Hands Veterinary remains over the most recent advances in veterinary innovation or more all, recalls that all creatures and pets should be treated with cherishing care in each registration, system, or medical procedure.\r\n\r\nWe gladly give care to customers pets in Navarro County', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'image/41.jpg', 'deactivated', 'no'),
(41, 'Broadway Pet', 'Colombo - Ratnapura - Wellawaya - Batticaloa Rd, Monaragala, Sri Lanka', 'Monaragala', 'Monaragala', 'BroadwayPet@gmail.com', 712367865, 13, 'Broadway Pet is pleased to serve the Corsicana TX territory for everything pet-related. Our veterinary facility and creature clinic is controlled by Owner Ricky Rogers, who is an authorized, experienced Corsicana veterinarian.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great nourishment and exercise.\r\n\r\nBroadway Pet remains over the most recent advances in veterinary innovation or more all, recalls that all creatures and pets should be treated with cherishing care in each registration, system, or medical procedure.\r\n\r\nWe gladly give care to customers pets in Navarro County', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 'image/42.jpg', 'deactivated', 'no'),
(42, 'Care Vets Bridgend', 'no 14/4, lewaya egodaha, samodagama, Hambantota, Sri Lanka arabokka road, Hambantota, Hambantota 82100, Sri Lanka.', 'Hambantota', 'Hambantota', 'CareVetsBridgend@gmail.com', 764532456, 13, 'Care Vets Bridgend is pleased to serve the Corsicana TX territory for everything pet-related. Our veterinary facility and creature clinic is controlled by Owner Ricky Rogers, who is an authorized, experienced Corsicana veterinarian.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great nourishment and exercise.\r\n\r\nCare Vets Bridgend remains over the most recent advances in veterinary innovation or more all, recalls that all creatures and pets should be treated with cherishing care in each registration, system, or medical procedure.\r\n\r\nWe gladly give care to customers pets in Navarro County', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 'image/43.jpeg', 'deactivated', 'no'),
(43, 'Health Animal Rescue', 'Pubudu Mawatha Madiha, Sri Lanka', 'Matara', 'Matara', 'HealthAnimalRescue@gmail.com', 785634123, 14, 'Health Animal Rescue is pleased to serve the Corsicana TX territory for everything pet-related. Our veterinary facility and creature clinic is controlled by Owner Ricky Rogers, who is an authorized, experienced Corsicana veterinarian.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great nourishment and exercise.\r\n\r\nHealth Animal Rescue remains over the most recent advances in veterinary innovation or more all, recalls that all creatures and pets should be treated with cherishing care in each registration, system, or medical procedure.\r\n\r\nWe gladly give care to customers pets in Navarro County', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 'image/44.jpg', 'deactivated', 'no'),
(44, 'Valley Veterinary', '10 Gamini Mawatha, Galle 80000, Sri Lanka', 'Galle', 'Galle', 'ValleyVeterinary@gmail.com', 786543213, 14, 'Valley Veterinary is pleased to serve the Corsicana TX territory for everything pet-related. Our veterinary facility and creature clinic is controlled by Owner Ricky Rogers, who is an authorized, experienced Corsicana veterinarian.\r\n\r\nOur group is focused on instructing our customers in how to keep your pets solid all year, with great nourishment and exercise.\r\n\r\nValley Veterinary remains over the most recent advances in veterinary innovation or more all, recalls that all creatures and pets should be treated with cherishing care in each registration, system, or medical procedure.\r\n\r\nWe gladly give care to customers pets in Navarro County', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 'image/45.jpg', 'deactivated', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(6) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` text NOT NULL,
  `code` mediumint(9) NOT NULL,
  `status` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `Username`, `Password`, `code`, `status`) VALUES
(1, 'Michel ', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(2, 'Jane', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(3, 'Johnny', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(4, 'Kamal', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(5, 'Alex', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(6, 'Nihal', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(7, 'Senali', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(8, 'Nehara', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(9, 'Sadali', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(10, 'Sarath', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(11, 'Sasindu', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(12, 'Rusiru', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(13, 'Daglas', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(14, 'Sohan', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(15, 'Sumith', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(16, 'Janith', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(17, 'Somasiri', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(18, 'Chathuranga', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(19, 'Chamod ', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(20, 'Pathum', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(21, 'Navodya', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(22, 'Nethmi', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(23, 'Geeth', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(24, 'Thanujan', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(25, 'Thakshan', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(26, 'Nawaradan', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(27, 'Johnathan', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(28, 'Tharaka', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(29, 'Jeewaka', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(30, 'Shashitha', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(31, 'Kavinda', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(32, 'Tharindu', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(33, 'Lahiru', 'a99442d2a736365f5fe637e299b0e339', 0, ''),
(34, 'Sanath', 'a99442d2a736365f5fe637e299b0e339', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `login_admin`
--

CREATE TABLE `login_admin` (
  `admin_id` int(11) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_admin`
--

INSERT INTO `login_admin` (`admin_id`, `Username`, `Password`) VALUES
(1, 'Admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `login_hospital`
--

CREATE TABLE `login_hospital` (
  `Hospital_id` int(11) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` text NOT NULL,
  `code` mediumint(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_hospital`
--

INSERT INTO `login_hospital` (`Hospital_id`, `Username`, `Password`, `code`) VALUES
(1, 'magicpaws', 'a99442d2a736365f5fe637e299b0e339', 0),
(2, 'Animal House', 'a99442d2a736365f5fe637e299b0e339', 0),
(3, 'PuppyLove', 'a99442d2a736365f5fe637e299b0e339', 0),
(4, 'Pet Life Care', 'a99442d2a736365f5fe637e299b0e339', 0),
(5, 'Comfort Treatment', 'a99442d2a736365f5fe637e299b0e339', 0),
(6, 'Precise Vet', 'a99442d2a736365f5fe637e299b0e339', 0),
(7, 'White House Vets', 'a99442d2a736365f5fe637e299b0e339', 0),
(8, 'Vet Partners', 'a99442d2a736365f5fe637e299b0e339', 0),
(9, 'Fairview Animal', 'a99442d2a736365f5fe637e299b0e339', 0),
(10, 'Pleasant Ridge', 'a99442d2a736365f5fe637e299b0e339', 0),
(11, 'Emergency Vets', 'a99442d2a736365f5fe637e299b0e339', 0),
(12, 'Companion Care', 'a99442d2a736365f5fe637e299b0e339', 0),
(13, 'Travis Respondek', 'a99442d2a736365f5fe637e299b0e339', 0),
(14, 'Paces Ferry', 'a99442d2a736365f5fe637e299b0e339', 0),
(15, 'Pacific Veterinary', 'a99442d2a736365f5fe637e299b0e339', 0),
(16, 'White Waves', 'a99442d2a736365f5fe637e299b0e339', 0),
(17, 'Pet Safe', 'a99442d2a736365f5fe637e299b0e339', 0),
(18, 'Health Quest Animal', 'a99442d2a736365f5fe637e299b0e339', 0),
(19, 'My Cattle Vet', 'a99442d2a736365f5fe637e299b0e339', 0),
(20, 'Anacapa Animal', 'a99442d2a736365f5fe637e299b0e339', 0),
(21, 'Avonhead Vets', 'a99442d2a736365f5fe637e299b0e339', 0),
(22, 'Critter Care', 'a99442d2a736365f5fe637e299b0e339', 0),
(23, 'Pet Health Center', 'a99442d2a736365f5fe637e299b0e339', 0),
(24, 'Sunrise Pet ', 'a99442d2a736365f5fe637e299b0e339', 0),
(25, 'Bates County', 'a99442d2a736365f5fe637e299b0e339', 0),
(26, 'Argyle Veterinary', 'a99442d2a736365f5fe637e299b0e339', 0),
(28, 'Veterinary Specialty Services', 'a99442d2a736365f5fe637e299b0e339', 0),
(29, 'Petersen Pet', 'a99442d2a736365f5fe637e299b0e339', 0),
(30, 'Animal Health', 'a99442d2a736365f5fe637e299b0e339', 0),
(31, 'Santa Paula Animal ', 'a99442d2a736365f5fe637e299b0e339', 0),
(32, 'Pets on Broadway Animal', 'a99442d2a736365f5fe637e299b0e339', 0),
(33, 'Tri County', 'a99442d2a736365f5fe637e299b0e339', 0),
(34, 'Bulger Veterinary', 'a99442d2a736365f5fe637e299b0e339', 0),
(36, 'Everhart Veterinary Medicine', 'a99442d2a736365f5fe637e299b0e339', 0),
(37, 'Family Pet Of Shawnee', 'a99442d2a736365f5fe637e299b0e339', 0),
(38, 'All Pets Animal', 'a99442d2a736365f5fe637e299b0e339', 0),
(39, 'Relia Care Veterinary', 'a99442d2a736365f5fe637e299b0e339', 0),
(40, 'Caring Hands Veterinary', 'a99442d2a736365f5fe637e299b0e339', 0),
(41, 'Broadway Pet', 'a99442d2a736365f5fe637e299b0e339', 0),
(42, 'Care Vets Bridgend', 'a99442d2a736365f5fe637e299b0e339', 0),
(43, 'Health Animal Rescue', 'a99442d2a736365f5fe637e299b0e339', 0),
(44, 'Valley Veterinary', 'a99442d2a736365f5fe637e299b0e339', 0);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `petowner`
--

CREATE TABLE `petowner` (
  `user_id` int(6) NOT NULL,
  `Phone_number` int(10) NOT NULL,
  `District` varchar(20) NOT NULL,
  `F_name` varchar(50) NOT NULL,
  `L_name` varchar(50) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `profilepic` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petowner`
--

INSERT INTO `petowner` (`user_id`, `Phone_number`, `District`, `F_name`, `L_name`, `Gender`, `Address`, `Email`, `profilepic`) VALUES
(1, 712345678, 'Gampaha', 'Michel', 'Silvester', 'Female', '28 Colombo Rd, Gampaha 11000, Sri Lanka', 'jeevakeperera@gmail.com', 'user/userpics/1.jpg'),
(2, 765432567, 'Gampaha', 'Jane', 'Perera', 'Female', '108 Colombo Rd, Gampaha, Sri Lanka', 'jane@gmail.com', 'user/userpics/2.jpg'),
(3, 723456789, 'Gampaha', 'Johnny', 'Fernando', 'Male', 'No. 10/A, Court Lane, Gampaha 11000, Sri Lanka', 'johnny@gmail.com', 'user/userpics/3.jpg'),
(4, 702806745, 'Gampaha', 'Kamal', 'Gunarathna', 'Male', 'No.80 Bauddhaloka Mawatha, Gampaha, Sri Lanka.', 'kamal@gmail.com', 'user/userpics/4.jpg'),
(5, 712345098, 'Gampaha', 'Alex', 'Silva', 'Male', 'No.49/A Bauddhaloka Mawatha, Gampaha, Sri Lanka', 'alexl@gmail.com', 'user/userpics/5.jpg'),
(6, 786543789, 'Colombo', 'Nihal', 'Bandara', 'Male', '23 , Deshamanya, H K Dharmadasa Mawatha, 00200, Sri Lanka', 'nihal@gmail.com', 'user/userpics/6.jpg'),
(7, 764534789, 'Colombo', 'Senali', 'Aththanayaka', 'Female', '199 Union Pl, Colombo 00200, Sri Lanka.', 'senali@gmail.com', 'user/userpics/7.jpg'),
(8, 756789907, 'Colombo', 'Nehara', 'Fernando', 'Female', '101 Vinayalankara Mawatha, Colombo 01000, Sri Lanka', 'nehara@gmail.com', 'user/userpics/8.jpg'),
(9, 786545876, 'Colombo', 'Sadali', 'Alwis', 'Female', 'No.400 Deans Road, Colombo 01000, Sri Lanka', 'sadali@gmail.com', 'user/userpics/9.jpg'),
(10, 769089765, 'Colombo', 'Sarath', 'Kulathilaka', 'Male', '114 Norris Canal Rd, Colombo 01000, Sri Lanka.', 'sarath@gmail.com', 'user/userpics/10.jpg'),
(11, 762390876, 'Kalutara ', 'Sasindu', 'Udawatta', 'Male', '48, KatukithulKanda, Duwe Temple Rd, Kalutara 12000, Sri Lanka', 'sasindu@gmail.com', 'user/userpics/11.jpg'),
(12, 753467890, 'Anuradhapura', 'Rusiru', 'Silva', 'Male', '89CX+5WM, Maithripala Senanayake Mawatha, Anuradhapura, Sri Lanka.', 'rusiru@gmail.com', 'user/userpics/12.jpg'),
(13, 789654234, 'Polonnaruwa', 'Daglas', 'Perera', 'Male', '69 Hijra Mawatha, Polonnaruwa, Sri Lanka.', 'daglas@gmail.com', 'user/userpics/13.jpg'),
(14, 712367890, 'Matale', 'Sohan', 'Gunarathna', 'Male', 'Rahula Mawatha, Matale, Sri Lanka', 'sohan@gmail.com', 'user/userpics/14.jpg'),
(15, 789834567, 'Kandy', 'Sumith', 'Peris', 'Male', '8J4P+H2P, Katugastota Rd, Kandy, Sri Lanka', 'sumith@gmail.com', 'user/userpics/15.jpg'),
(16, 768976145, 'Nuwara Eliya', 'Janith', 'Liyanage', 'Male', '34, Upper Lake Rd, Nuwara Eliya, Sri Lanka', 'janith@gmail.com', 'user/userpics/16.jpg'),
(17, 768972312, 'Puttalam', 'Somasiri', 'Perera', 'Male', 'No.23, 6th Lane, Spill Rd, Puttalam 61300, Sri Lanka', 'somasiri@gmail.com', 'user/userpics/17.jpg'),
(18, 725672312, 'Anamaduwa', 'Chathuranga', 'Adasooriya', 'Male', 'No 24, Chilaw Rd, Anamaduwa 61500, Sri Lanka', 'chathuranga@gmail.com', 'user/userpics/18.jpg'),
(19, 715676312, 'Kurunegala', 'Chamod', 'Gunawardana', 'Male', '385 Dickson Moters Rd, Kurunegala, Sri Lanka', 'chamod@gmail.com', 'user/userpics/19.jpg'),
(20, 725634167, 'Kegalle', 'Pathum', 'Bandara', 'Male', 'No 37 Main Street, Kegalle 71000, Sri Lanka', 'pathum@gmail.com', 'user/userpics/20.jpg'),
(21, 784590876, 'Rathnapura', 'Navodya', 'Kodisinghe', 'Female', '590 Colombo Road, Ratnapura 70000, Sri Lanka', 'navodya@gmail.com', 'user/userpics/21.jpg'),
(22, 753478912, 'Jaffna', 'Nethmi', 'Jayalath', 'Female', 'No. 855 Hospital St, Jaffna, Sri Lanka', 'nethmi@gmail.com', 'user/userpics/22.jpg'),
(23, 785634789, 'Kilinochchi', 'Geeth', 'Bandara', 'Male', '276 Aananthapuram East, Kilinochchi, Sri Lanka', 'geeth@gmail.com', 'user/userpics/23.jpg'),
(24, 762378907, 'Mannar', 'Thanujan', 'Vijayakumar', 'Male', '81 Road, Mannar 41000, Sri Lanka', 'thanujan@gmail.com', 'user/userpics/24.jpg'),
(25, 789856345, 'Mullaitivu', 'Thakshan', 'Siwaparan', 'Male', 'Market, Road, Mullaitivu, Sri Lanka', 'thakshan@gmail.com', 'user/userpics/25.jpg'),
(26, 753467890, 'Vavuniya', 'Nawaradan', 'Kumara', 'Male', '84 2nd Cross St, Vavuniya 43000, Sri Lanka', 'nawaradan@gmail.com', 'user/userpics/26.jpg'),
(27, 753465634, 'Trincomalee', 'Johnathan', 'Silvester', 'Male', 'No 305 Anpuvalipuram Rd, Trincomalee 31000, Sri Lanka', 'johnathan@gmail.com', 'user/userpics/27.jpg'),
(28, 753461256, 'Batticaloa', 'Tharaka', 'Samarasigha', 'Male', 'Mylvakanam Rd, Boundary Rd, Navetkeny 30000, Sri Lanka', 'tharaka@gmail.com', 'user/userpics/28.jpg'),
(29, 752345256, 'Ampara', 'Jeewaka', 'Perera', 'Male', 'L/165 Kachcheri Rd, Ampara, Sri Lanka', 'jeewaka@gmail.com', 'user/userpics/29.jpg'),
(30, 723456765, 'Badulla', 'Shashitha', 'Fernando', 'Male', '18, Dharmaduta Road, Badulla 90000, Sri Lanka', 'shashitha@gmail.com', 'user/userpics/30.jpg'),
(31, 783456769, 'Monaragala', 'Kavinda', 'Rajapaksha', 'Male', 'No 67/27,Kumaradola Road Left, 91000, Sri Lanka', 'kavinda@gmail.com', 'user/userpics/31.jpg'),
(32, 723456765, 'Hambantota', 'Tharindu', 'Kudathanna', 'Male', 'China SLK Harbour Service, Mirijjawila - Sooriyawewa Rd, Hambantota, Sri Lanka', 'tharindu@gmail.com', 'user/userpics/32.jpg'),
(33, 703489765, 'Matara', 'Lahiru', 'Kulathunga', 'Male', '391 Anagarika Dharmapala Mawatha, Matara, Sri Lanka', 'lahirumadu2341@gmail.com', 'user/userpics/33.jpg'),
(34, 783489769, 'Galle', 'Sanath', 'Samarawikrama', 'Male', '9 Wakwella Rd, Galle 80000, Sri Lanka', 'sanath@gmail.com', 'user/userpics/34.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reservationdetail`
--

CREATE TABLE `reservationdetail` (
  `Reservation_id` int(11) NOT NULL,
  `Petowner_name` varchar(150) NOT NULL,
  `Treatment_type` varchar(150) NOT NULL,
  `Hospital_name` varchar(150) NOT NULL,
  `appointmentDate` date NOT NULL,
  `reservedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservationdetail`
--

INSERT INTO `reservationdetail` (`Reservation_id`, `Petowner_name`, `Treatment_type`, `Hospital_name`, `appointmentDate`, `reservedDate`) VALUES
(1, 'Michel Silvester', 'Normal Treatment ', 'Magic Paws', '2022-09-23', '2022-09-07'),
(2, 'Michel Silvester', 'Normal Treatment ', 'Magic Paws', '2022-09-23', '2022-09-07'),
(3, 'Michel Silvester', 'Normal Treatment ', 'Magic Paws', '2022-09-23', '2022-09-07');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `Hospital_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `date` date NOT NULL,
  `petowner_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `Hospital_id`, `user_id`, `review`, `comment`, `date`, `petowner_name`) VALUES
(1, 1, 3, 'Awesome', 'Excellent Service', '2022-09-06', 'Johnny'),
(2, 1, 6, 'Poor', 'Very late on treatment', '2022-09-05', 'Nihal'),
(3, 1, 3, 'Good', 'Very quick to response', '2022-09-02', 'Johnny'),
(4, 1, 1, 'Average', 'Not very good, takes longer time', '2022-09-04', 'Michel '),
(5, 1, 1, 'Awesome', 'Very kind to animals', '2022-09-03', 'Michel '),
(6, 1, 1, 'Good', 'Very good facilities', '2022-09-06', 'Michel '),
(7, 1, 1, 'Awesome', 'Best service', '2022-09-08', 'Michel '),
(8, 1, 2, 'Excellent', 'Very kind to animals', '2022-09-08', 'Jane');

-- --------------------------------------------------------

--
-- Table structure for table `specialfacilities`
--

CREATE TABLE `specialfacilities` (
  `sp_id` int(11) NOT NULL,
  `Hospital_id` int(6) NOT NULL,
  `specialArea` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specialfacilities`
--

INSERT INTO `specialfacilities` (`sp_id`, `Hospital_id`, `specialArea`) VALUES
(1, 4, 'Parasitology'),
(2, 4, 'Neurology'),
(3, 4, 'Dermatology'),
(4, 4, 'Radiology'),
(5, 4, 'Cardiology'),
(6, 3, 'Dermatology'),
(7, 3, 'Immunology'),
(8, 3, 'Behavior'),
(9, 3, 'Oncology'),
(10, 3, 'Cardiology'),
(11, 3, 'Anesthesia'),
(30, 7, 'Lab Animal'),
(29, 7, 'Oncology'),
(28, 7, 'Cardiology'),
(27, 5, 'Dentistry'),
(26, 6, 'Behavior'),
(25, 6, 'Anesthesia'),
(18, 2, 'Anesthesia'),
(19, 2, 'Behavior'),
(20, 2, 'Lab Animal'),
(21, 2, 'Pharmacology'),
(22, 2, 'Endocrinology'),
(47, 1, 'Dentistry'),
(32, 26, 'Pharmacology'),
(33, 26, 'Sports Medicine'),
(34, 5, 'Surgery Orthopedics'),
(35, 26, 'Behavior'),
(36, 26, 'Immunology'),
(37, 9, 'Dermatology'),
(38, 9, 'Endocrinology'),
(39, 26, 'Neurology'),
(40, 26, 'Parasitology'),
(41, 10, 'Microbiology'),
(42, 26, 'Nutrition'),
(46, 14, 'Behavior'),
(45, 13, 'Anesthesia'),
(48, 13, 'Cardiology'),
(49, 1, 'Lab Animal'),
(50, 1, 'Radiology'),
(51, 1, 'Pharmacology'),
(52, 26, 'Sports Medicine'),
(53, 24, 'Surgery Orthopedics'),
(54, 22, 'Behavior'),
(55, 1, 'Immunology'),
(56, 15, 'Dermatology'),
(57, 15, 'Endocrinology'),
(58, 16, 'Neurology'),
(59, 16, 'Parasitology'),
(60, 17, 'Microbiology'),
(61, 19, 'Nutrition'),
(62, 1, 'Pathology'),
(63, 1, 'Preventive');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`Appoinment_Id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Doctor_id`),
  ADD KEY `Hospital_Id_fk` (`Hospital_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`Hospital_id`),
  ADD UNIQUE KEY `H_name` (`H_name`),
  ADD UNIQUE KEY `H_email` (`H_email`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `User_Id_fk` (`user_id`);

--
-- Indexes for table `login_admin`
--
ALTER TABLE `login_admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`);

--
-- Indexes for table `login_hospital`
--
ALTER TABLE `login_hospital`
  ADD PRIMARY KEY (`Hospital_id`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `petowner`
--
ALTER TABLE `petowner`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `reservationdetail`
--
ALTER TABLE `reservationdetail`
  ADD PRIMARY KEY (`Reservation_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `specialfacilities`
--
ALTER TABLE `specialfacilities`
  ADD PRIMARY KEY (`sp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `Appoinment_Id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `Doctor_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `Hospital_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `login_admin`
--
ALTER TABLE `login_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_hospital`
--
ALTER TABLE `login_hospital`
  MODIFY `Hospital_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petowner`
--
ALTER TABLE `petowner`
  MODIFY `user_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `reservationdetail`
--
ALTER TABLE `reservationdetail`
  MODIFY `Reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `specialfacilities`
--
ALTER TABLE `specialfacilities`
  MODIFY `sp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
