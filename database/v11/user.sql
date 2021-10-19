-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2021 at 09:34 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alec`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(75) NOT NULL,
  `tele` varchar(10) DEFAULT NULL,
  `pass` varchar(255) NOT NULL,
  `user_type` varchar(5) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email`, `tele`, `pass`, `user_type`, `img`) VALUES
(8, 'admin', 'alec', 'admin@gmail.com', '0112691411', '$2y$10$rEc8oEWtCCp0xTq8J7A/Au8v3RgvubuZHrTGBw2/1VgDxFoX01pEu', 'admin', NULL),
(12, 'Charith', 'Anjana', 'ch@gmail.com', '0766455833', '$2y$10$w6UXM9qmb6WHOh9MpSxLGOSn6NOzDCf5/6Ruy8RKcFI7s/knXk.rW', 'stu', NULL),
(14, 'Sumudu', 'Wathsala', 'wathsala@gmail.com', '0703357144', '$2y$10$d68tx8w87Zcw8dgmbh.KLO1gF/glbrvCU998O3XsgCyfPizTm4aza', 'stu', NULL),
(16, 'Maneth', 'Wijetunga', 'maneth@gmail.com', '0765282976', '$2y$10$nbOjSMAWBwXsfgT/KnV4z.xA3jriygc3faw0QbQLAdPX7NWFqhB7C', 'stu', NULL),
(26, 'Dulitha', 'Ratnayake', 'janithadevinratnayake@gmail.com', NULL, '$2y$10$/hnHE3xlCZlB47khsAArpe2dvvPKya9TpZ80WJPIkqQnArw1w56BC', 'stu', NULL),
(78, 'Janitha', 'Ratnayake', 'janithadevin@gmail.com', NULL, '$2y$10$YUF0B0cNf21gXpZOJklyS.riZylLhDh2MxqPOh2L.R6x6xDsELbke', 'stu', NULL),
(92, 'Suwasana', 'Dammithu', 'suwasana@gmail.com', NULL, '$2y$10$w1cLuJqpe572kNf7ug.b1.NfOi/WiVeYZzp/uOCb3w6Tf49suZXEK', 'stu', NULL),
(93, 'Kasunika', 'Wickreamarachchi', 'kasunika@gmail.com', NULL, '$2y$10$3RD57d1oG6REbch4kUT4WOoB/ffuASBytzYIXoxJeO..46.vHJSmq', 'stu', NULL),
(94, 'Roshan', 'Senavirathne', 'roshan@gmail.com', NULL, '$2y$10$TfWHGrNoRdHnnVgRM4XC8O6yCdMYSuTeK1wJISQrIc4nOsMCVzLn6', 'stu', NULL),
(101, 'Lec', 'Alec', 'lec@gmail.com', '', '$2y$10$2mnLM.QR1rrfxvV6AVcVvup6n9baTHEDWWbPwsp/Ft7WM1Rc2qDm2', 'lec', '101.jpeg'),
(102, 'Jean', 'Edgil', 'atomichamsterscalliopes@cantaloupefledglings.edu', NULL, '$2y$10$entSG6KeXBSbfuYYcKoat.hO7dIRDSYbuNOiEVwjhxZhbLeqzgj1i', 'lec', NULL),
(103, 'Cristobal', 'Ferrante', 'loxnightienumerically@backslashtheftslawless.org', NULL, '$2y$10$cYoMxy0q5ek6JSUV/RTT/.lik/p87XdH3mTD2BIY73yL8mcGcI3le', 'lec', NULL),
(104, 'Val', 'Urling', 'navalstakeValentins@canteensexperiences.org', NULL, '$2y$10$JTlbhmnEemItG33jz4JbTOQAjnSRTjiEJHEF7Y.dwtQ/7yx9.80Pu', 'lec', NULL),
(105, 'Darryl', 'Kreski', 'fiendsBramptondisarmaments@iconoclastsshabbinesss.me', NULL, '$2y$10$gWyEbEb3gKuxTsKGy.eX8.kIficT/Fm6crG7rEFV0aWEFz.gDHel6', 'lec', NULL),
(106, 'Robin', 'Mccammant', 'Baptistsderived@poshAtheniansembryologist.edu', NULL, '$2y$10$wRA6qBUtOyQnyM04UeFhdeOh5NY/E9e1bpaEJVHrMYZhVvKlkDJZG', 'lec', NULL),
(107, 'Walter', 'Tavelli', 'Chancellorsvilles@earthwormassembler.edu', NULL, '$2y$10$mO/E1F/L4byV7Szwq0bN1uAZKJ7xOaVQ0S4dPT.1jdXjYGGQoK2ii', 'lec', NULL),
(108, 'Coleman', 'Allison', 'Kennysmoodsbud@HuertaFrybronchial.me', NULL, '$2y$10$3JOhdE5wrzeUBIoLL43C8OCiLP7g2TRLo5fCmShZpQ0pf2bZm8Oqa', 'lec', NULL),
(109, 'Leonard', 'Casavan', 'lassoingaquaequintuplets@Wyothoughts.org', NULL, '$2y$10$nxwAHHqwxZHHz9sMNBlJ.uOLijrWKFVJqDB1VqALcmCyXEQRi0Gam', 'lec', NULL),
(110, 'Milford', 'Jukich', 'Ugandarestorations@Anchorageanonymously.gov', NULL, '$2y$10$3kWYZyqhmPgDu7yMrL2EneP7zUVLYYxOOt.eC1EBVDys3VWkO5xbi', 'lec', NULL),
(111, 'Buster', 'Gallus', 'fearfullestinfected@greetingsbrowbeaten.org', NULL, '$2y$10$TE/yS4yB5PTggTfGj5dspeECU3nTcOoSbJofSHJVOfgREET7d8XJ2', 'lec', NULL),
(112, 'Vernon', 'Mccole', 'disclaiming@Shaulashowersswaggerer.com', NULL, '$2y$10$TT.z4ifuYZA99IXlRDswmucDlc3HV5gpBKQwuMCdN/D2rxxp4VT86', 'lec', NULL),
(113, 'Denver', 'Lantier', 'landwardpumicesobtain@hartsvictims.gov', NULL, '$2y$10$3OZvwPFQSH2Cied4HgZRVur1oXVZnfmFcMd.utlbXrvsZznO3TvQi', 'lec', NULL),
(114, 'Stanton', 'Zaloom', 'defectorsKazanshandfuls@canopysinitiators.gov', NULL, '$2y$10$Dj3O0ZatsoHqWqPvGJV5zeWPPF2pm6CGnTRikYdoNvIEjWFzLckiu', 'lec', NULL),
(115, 'Edwin', 'Parikh', 'Sabrinasludgedhopscotched@noelaniondisuniting.gov', NULL, '$2y$10$C7qWCSarpW8jD441wy6o1.9GKam2TsLL5EodXHNNcwQKZ3GesHMWu', 'lec', NULL),
(116, 'Santiago', 'Baggio', 'squadronhennasGeorges@Hatterascrotches.edu', NULL, '$2y$10$JjNi8J2RR4crv.6IXpKMfOFrNpwWyFHcUR7Iv84iEMp2kdRU7XPju', 'lec', NULL),
(117, 'Hans', 'Byndom', 'insolventKhwarizmiproducer@cooliescircumcision.info', NULL, '$2y$10$Pa7EcqbxdFs1MICm8RVbU.//mHctAHDU70wfLgY8Mn5gbLCdJmb4O', 'lec', NULL),
(118, 'Emery', 'Litecky', 'AdanaidealizeAlhambras@oneselfslavedpikeShea.com', NULL, '$2y$10$X7xqoAnpf2eTZXoFDJqk..Y7caVH0DUu1du.tGs4WARvknvixh4.K', 'lec', NULL),
(119, 'Reginald', 'Bleam', 'confusionsstaving@protgs.gov', NULL, '$2y$10$BoxC4OEVam3AAvQaLAGht.KxaLER3WVaQRTxwNFwSV34uR69OHvvi', 'lec', NULL),
(120, 'Lavern', 'Cripe', 'convulsions@degeneratealtruistically.org', NULL, '$2y$10$xPZJGhO5xz/.qbLYJ.SqPeNSlXAICE/9ab5ZF42oLVnMp2VplhWyK', 'lec', NULL),
(121, 'Reuben', 'Shalla', 'trustfuletas@malingers.gov', NULL, '$2y$10$lwiz9s.pktFs2z3Xbppqc..sEPbcyvl5kWB5nVay3Nj/kEk1oYBqi', 'lec', NULL),
(122, 'Jerold', 'Cravalho', 'greeteddiabetic@insulin.edu', NULL, '$2y$10$GHZHkS87dAHg0UF5q1zFMuO9MFM0t1XjuXi8Qj.ayVisscyyaZM5O', 'lec', NULL),
(123, 'stu', 'alec', 'stu@gmail.com', NULL, '$2y$10$UER4ZyhG0GUsMmicAkjIKeS4iQom3OR50Z.ttH3VQJ.wHsZCLH8nm', 'stu', NULL),
(126, 'Nick', 'Styskal', 'sheikdoms@eschewing.com', NULL, '$2y$10$82xSEc7KVKja4trCHAK9IOwDjxkaOUr5s3zUNXxIyL3wDDpgSTDw.', 'stu', NULL),
(127, 'Abdul', 'Mazone', 'CasalsspurenessValkyrie@Suzukicontends.org', NULL, '$2y$10$JfpQvVwupKRrMtT6sxaNju1zn5Yo1rlNRL05QZhXhJEkl2ChOHmO2', 'stu', NULL),
(128, 'Lenard', 'Tsoh', 'Leblancsgeometers@pharmacologistspyxing.gov', NULL, '$2y$10$YDJYeN29FK64gjbYoYK.teIH47J97GTblgWZW4VuqJBa6le7i0YYy', 'stu', NULL),
(129, 'Roger', 'Gilkes', 'ennoblements@communism.net', NULL, '$2y$10$5H/pKlDLoxAnH6kFlfMK4./WARhQhpYvfI8jbjDHTUy3eXewczcfK', 'stu', NULL),
(130, 'Garland', 'Renecker', 'McKinneysfoibletwinges@nationalizes.edu', NULL, '$2y$10$8OYvGN5vLcYarAaN5ny4XugrU4GtyAcVWZUiq6.GaFj9EOAxzr1De', 'stu', NULL),
(131, 'Miquel', 'Newboles', 'fulminating@GuntherNetherlanders.info', NULL, '$2y$10$mrOQDNM8ZkQqGgwpSWx56O4DUOkGXO5MeUvoWfNWB6XuCT0Nal0sW', 'stu', NULL),
(132, 'Edgar', 'Percefull', 'neuralgiassupervising@suavityspitefully.info', NULL, '$2y$10$SAVb4NOn6sEA.jVxIVLthuEwpNXHCL3L6lt2qGBZ9fyYWFcN.UuWS', 'stu', NULL),
(133, 'Tracy', 'Scholfield', 'clandestineIbsens@betakes.gov', NULL, '$2y$10$jDSKvCfH7eYfz/Ptna2w9entLvSF.3jtRUmYj3AhyF5Ped8ts/RZC', 'stu', NULL),
(134, 'Barrett', 'Huntsman', 'auctionlards@LaylamudguardDoctorows.me', NULL, '$2y$10$n1005TlcGBjl7k9.G/.eMOlFUo2B65a6Om8cEFfFkFoViU4grZlwm', 'stu', NULL),
(135, 'Josue', 'Libel', 'Julsducklingcoronas@enlivens.com', NULL, '$2y$10$aq2cA.RW1zoTtXrnIUnKlugGibBppjxw57hUqezdHhZ3.c9pnugrS', 'stu', NULL),
(136, 'Ike', 'Lyerly', 'troikasinnocuously@wildflowerflosss.net', NULL, '$2y$10$kZBsD2nMJ7kW55usqrXfe.dgTyZHpZ2yccFJ.7mEOSTv02Vwdqf/K', 'stu', NULL),
(137, 'Brendan', 'Rakestraw', 'foreplayurchins@serumspowwows.com', NULL, '$2y$10$WbSVsiKbUCthyKrfZTDQiuMIueBEj/jtpuwae83evFnTmPTi9bpqG', 'stu', NULL),
(138, 'Reuben', 'Hubble', 'untieribaldhalvedcinematography@stringiestoutplays.me', NULL, '$2y$10$qi7AvP1XhyP3h5cG3QxIZe41Uf9hX3SSm6V49UexeA3MVnKRz00TC', 'stu', NULL),
(139, 'Willie', 'Paculba', 'weaknessesembargoKroneckers@playbill.info', NULL, '$2y$10$MsNe7Oh662rUc7mp/WNIJeE1y3uKKJ92EFyBQE2PMtPDvILRc3W2C', 'stu', NULL),
(140, 'Mose', 'Madlem', 'fulfillmentsdishrag@nitroglycerinsstudies.gov', NULL, '$2y$10$NF9505bG2z.v/wjU6dvqKeGHI74D5GYpvVU8BGFtA3nCOGNguu5E2', 'stu', NULL),
(141, 'Emmitt', 'Czirr', 'cooliesisotopes@draperies.me', NULL, '$2y$10$1QSlSmdaPGvIbpSD81nLneQfCJpAnU2sXtrcpMeKuOsGOiNf48dfW', 'stu', NULL),
(142, 'Wamp', 'Blasini', 'capitolsartsiestseparable@undisputed.info', NULL, '$2y$10$83cDruoZTz//wPfaKp1LNOkIIvfiLB0grG91xA3sQ3JRdUpi0H8fC', 'stu', NULL),
(143, 'Tobias', 'Ronzio', 'spongerdecolletes@burglarySagans.info', NULL, '$2y$10$3newfaSe4Q.zFX8czViF/OIcWx8N3SfZ5wO561HqRNQB5XqVpXU7u', 'stu', NULL),
(144, 'Porfirio', 'Lochtefeld', 'meshsbeaverwonder@habitatsJinnys.info', NULL, '$2y$10$0bMbEh/CWWDPkgUe8gaxZexfswVVYDBu/1eRsnC807CQeBKuqyp8e', 'stu', NULL),
(145, 'Marlon', 'Sondrup', 'hephaestuss@ingestsappendages.gov', NULL, '$2y$10$TJ9BgeFgFvyOqR0DhVj.cet2U/Je2Y4i.WYvDibwlcqNhg3bl0QgK', 'stu', NULL),
(146, 'Julian', 'Flockhart', 'overprotectiveAyrshires@tequila.info', NULL, '$2y$10$DF5Vwo3Y2FOovN/7vYepUehhMMsB0/X3suciZpfHFEh7.bElI3hmC', 'stu', NULL),
(147, 'Edric', 'Garibo', 'prettilyfeathered@muumuus.org', NULL, '$2y$10$hc3zxa5XLGzcOg4V5Rq6De9UP5swqM7puJiECtLGpbaoUEzTJv81G', 'stu', NULL),
(148, 'Jody', 'Etkin', 'inflictpatrimonial@manquecontinual.edu', NULL, '$2y$10$qK4rK8Q7l32Vher55Mi9feIdA9yHhPY42ywsYMUifoaFKI61z5D3e', 'stu', NULL),
(149, 'Kasey', 'Bresett', 'coxskippedcuckolds@shantiesbatcricking.gov', NULL, '$2y$10$CakUIkhETNczjyLoWbF./ukuzahvIhiDHpiPywBskz3.F9KRHyclm', 'stu', NULL),
(150, 'Daryl', 'Humrich', 'slothsBethany@inexorable.net', NULL, '$2y$10$uEpBGfrpKmy9xSr7JDyEq.ZWrRCUDmz9ZbTzOegLTlfcE8a6y0MwS', 'stu', NULL),
(151, 'Carol', 'Stichter', 'lenardsrefutinganalyzer@Arbitrondistinguishable.net', NULL, '$2y$10$GYwuP2P414OK8A21TUKeBeM8NHPJiubyVXChnSNNCLWt2l.xRdEqG', 'stu', NULL),
(152, 'Melvin', 'Kuota', 'furyprotectionsflyer@unbreakabletruing.com', NULL, '$2y$10$0f3EI2uasnpuSO8Q1t/az.G6XZQUpYpMw06YBLlh5kxwPCAPRLtRK', 'stu', NULL),
(153, 'Benito', 'Brunson', 'inuitsEakinsJamel@roamerforthrightnesss.me', NULL, '$2y$10$w7Ur/MVaJQN9PsUDd.hpduiFgyeSP3OahtALpqjmlz7CNVNdHyEGC', 'stu', NULL),
(154, 'Duncan', 'Leteff', 'yappedMaddenstagnating@Lavalsallys.com', NULL, '$2y$10$aXCbLUuT/GHZBmbh5nDqBO26LkNP4h8tgte5KgAoObvbkw1F7M.SO', 'stu', NULL),
(155, 'Chase', 'Manila', 'screenwritersgiraffe@piggybackszings.net', NULL, '$2y$10$Rdjvv/4I3GxJzlSpwUABk.AXIYn18BiD7KwccqNcpPgBxIkAh9hI2', 'stu', NULL),
(156, 'Donnell', 'Sonza', 'typesetsunalterable@haulers.info', NULL, '$2y$10$gO4uzjVCpAE5OFBrVhvWXOlI5iFxP3RJwkwQeCi.kYjHbwFi07PzG', 'stu', NULL),
(157, 'Enrique', 'Myren', 'lawsonvanityMansfields@enlargementattackers.org', NULL, '$2y$10$8J7fRWY.IZQKigXzikjNKu/aE2K5s.AQVirrHKhTaQoF7beBC1LpG', 'stu', NULL),
(158, 'Cleo', 'Tillson', 'clytemnestras@Ryukyuscredospragmatic.me', NULL, '$2y$10$mQBtSElJKRh1PF9Ia6zIn.jCgVQxtn1g4NTaUIkCCa/E4sPHfjn9m', 'stu', NULL),
(159, 'Kenty', 'Cameau', 'foreheadsmoderately@roundabouts.edu', NULL, '$2y$10$7q1ikFrb1z4iTwND9CDouuXv6nWEspSQKFx/ik8P86b9XdAhadURG', 'stu', NULL),
(160, 'Pete', 'Gosier', 'projectorclueCooper@stovesundefended.gov', NULL, '$2y$10$XCX2e3.JxDeFDqH8bJTicOKC.WbKimgfrCR6WkPB1gAUIF7CpWQye', 'stu', NULL),
(161, 'Julio', 'Dellasanta', 'benchesunseencredenzas@apologizestrailerJarrods.net', NULL, '$2y$10$za0LoT7GZlyAkJkKwZSoYeqyArU7jXIDWhptaUwWtdgNH2L0m/8MG', 'stu', NULL),
(162, 'Bart', 'Sesker', 'vexlengthwaysmeritocracy@bakerLegrees.edu', NULL, '$2y$10$OEi1HsWimWPyRweNLGWH9O934pwrrXuugmxwAfRhWHUUPCwqi5tGC', 'stu', NULL),
(163, 'Denny', 'Colgate', 'celibacyarithmeticgodfathers@balloonedgroovenobody.edu', NULL, '$2y$10$Kz/dHHH7ynhldIpIyjL3auxy2aKQcB3QFdARwNiDLabGg2IuVGcCi', 'stu', NULL),
(164, 'Lester', 'Arment', 'compilationmaria@unsubstantiated.com', NULL, '$2y$10$rWr9vvcb0HxB/oR0FdXWvOdsTLjH7ntCS96A4IJDdGs5w83e4xfRy', 'stu', NULL),
(165, 'Wilber', 'Biewer', 'tandemshampooedElliotts@Sennettschurlishness.edu', NULL, '$2y$10$N/i3ju.EXW.2TIdn42ARyO7D/fDotK5oO71AJBspcRwVoPnShAela', 'stu', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
