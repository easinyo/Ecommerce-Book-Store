SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


CREATE TABLE IF NOT EXISTS `cart` (
  `Customer` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Product` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Quantity` int(5) NOT NULL,
  PRIMARY KEY (`Customer`,`Product`),
  KEY `Product` (`Product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `cart` (`Customer`, `Product`, `Quantity`) VALUES
('hello', 'ENT-12', 1),
('sebastien', 'ACA-6', 1),
('emmanuel', 'NEW-4', 5),
('brahim', 'ENT-1', 3);

CREATE TABLE IF NOT EXISTS `products` (
  `PID` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MRP` float NOT NULL,
  `Price` float NOT NULL,
  `Discount` int(11) DEFAULT NULL,
  `Available` int(11) NOT NULL,
  `Publisher` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Edition` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` text COLLATE utf8_unicode_ci,
  `Language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page` int(5) DEFAULT NULL,
  `weight` int(4) DEFAULT '500',
  PRIMARY KEY (`PID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `products` (`PID`, `Title`, `Author`, `MRP`, `Price`, `Discount`, `Available`, `Publisher`, `Edition`, `Category`, `Description`, `Language`, `page`, `weight`) VALUES
('ACA-1', 'Code complete 2', 'Steve McConnell', 225, 200, 30, 12, 'G.K Publication', '2', 'Academic and Professional', '', 'English', 456, 500),
('ACA-2', 'Intermediate PYTHON Programming', 'RICHARD OZER', 339, 233, 5, 11, 'Wiley India', '1', 'Academic and Professional', 'Python is called the "Super-heroic Framework" by The Code Project. It''s an open source client side framework maintained by Google that greatly simplifies frontend development, making it easy and fun to write complex web apps. The online documentation and existing books on the subject lack simple explanations of some of the more advanced concepts, and how they work together. As a result, many developers get used to the basic concepts of AngularJS fairly quickly, but struggle when it comes to building more complex (real world) applications. ', 'English', 396, 500),
('ACA-3', 'WEB Scraping with Python 2', 'Ryan Mitchell', 204, 101, 20, 20, 'Chapman and Hall/CRC', '1', 'Academic and Professional', 'Builfing Web app with python.', 'English', 240, 500);

INSERT INTO `products` (`PID`, `Title`, `Author`, `MRP`, `Price`, `Discount`, `Available`, `Publisher`, `Edition`, `Category`, `Description`, `Language`, `page`, `weight`) VALUES
('CHILD-1', 'JUST STUPID', 'Andy Griffiths', 50, 45, 05, 12, 'KID Books International', '1', 'Children and Teens', '', 'English', 220, 500),
('CHILD-2', 'The Unteachables', 'KID BOOKS', 299, 194, 34, 12, 'Penguin Books', '1', 'Children and Teens', '', 'English', 224, 500),
('CHILD-3', 'WOULD YOU RATHER', 'RIDDLELAND', 30, 30, 0, 4, 'KID Books International', '1', 'Children and Teens', '', 'English', 236, 500),
('CHILD-4', 'NOTORIOUS', 'GORDON KORMAN', 40, 24, 47, 6, 'KID Books International', '1', 'Children and Teens', '', 'English', 220, 500);

INSERT INTO `products` (`PID`, `Title`, `Author`, `MRP`, `Price`, `Discount`, `Available`, `Publisher`, `Edition`, `Category`, `Description`, `Language`, `page`, `weight`) VALUES
('LIT-1', 'UNESCO and the fate of the literary', 'Sarah Brouillette', 59, 25, 49, 12, 'Random House', '1', 'Literature and Fiction', '', 'English', 320, 500),
('LIT-2', 'Music from a Speeding Train', 'Harriet Murav', 57, 57, 0, 5, 'Litterature Books', '1', 'Literature and Fiction', NULL, 'English', 248, 500),
('LIT-3', 'Phono Poetics', 'Jason Camlot', 99, 50, 50, 13, 'The making of Early Literary Recordings', '2', 'Literature and Fiction', NULL, 'English', 228, 500);

INSERT INTO `products` (`PID`, `Title`, `Author`, `MRP`, `Price`, `Discount`, `Available`, `Publisher`, `Edition`, `Category`, `Description`, `Language`, `page`, `weight`) VALUES
('SPO-1', 'Moneyball: The Art of Winning an Unfair Game', 'Michael Lewis', 15, 10, 33.33, 111, 'Michael Lewis', '1', 'Sports', 'Moneyball: The Art of Winning an Unfair Game is a book by Michael Lewis, published in 2003, about the Oakland Athletics baseball team and its general manager Billy Beane. Its focus is the teams analytical, evidence-based, sabermetric approach to assembling a competitive baseball team despite Oaklands small budget.', 'English', 288, 350),
('SPO-2', 'Open', 'Andre Agassi', 20, 10, 50, 60, 'Andre Agassi', '1', 'Sports', 'Far more than a superb memoir about the highest levels of professional tennis, Open is the engrossing story of a remarkable life.
 
Andre Agassi had his life mapped out for him before he left the crib. Groomed to be a tennis champion by his moody and demanding father, by the age of twenty-two Agassi had won the first of his eight grand slams and achieved wealth, celebrity, and the game’s highest honors. But as he reveals in this searching autobiography, off the court he was often unhappy and confused, unfulfilled by his great achievements in a sport he had come to resent. Agassi writes candidly about his early success and his uncomfortable relationship with fame, his marriage to Brooke Shields, his growing interest in philanthropy, and—described in haunting, point-by-point detail—the highs and lows of his celebrated career.', 'English', 255, 400),
('SPO-3', 'The Game', 'Ken Dryden', 15, 12, 25, 23, 'Wiley', '1', 'Sports', 'The Game is a book written by former ice hockey goaltender Ken Dryden. Published in 1983, the book is a non-fiction account of the 1978-79 Montreal Canadiens, detailing the life of a professional hockey player.', 'English', 308, 500),
('SPO-4', 'The Illustrated History of Football: Hall of Fame', 'David Squires', 25, 20, 25, 11, 'Wiley', '1', 'Sports', '‘A fresh look at the beautiful game’ - NMEWelcome back to the inimitable work of illustrator David Squires.Most football fans can only dream of pulling on the shirt of their favourite team and running out in front of thousands of adoring fans. Pitch invaders aside, few of us get to experience that adrenalin rush.', 'English', 402, 670);


CREATE TABLE IF NOT EXISTS `users` (
  `UserName` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`UserName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`UserName`, `Password`) VALUES
('sebastien', 'admin'),
('emmanuel', 'admin'),
('hello', 'hello'),
('brahim', 'admin');