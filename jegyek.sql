-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Okt 15. 13:42
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `jegy`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jegyek`
--

CREATE TABLE `jegyek` (
  `Azon` varchar(40) NOT NULL,
  `Jegy` int(11) NOT NULL,
  `Leírás` varchar(255) NOT NULL,
  `Létrehozásideje` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `jegyek`
--

INSERT INTO `jegyek` (`Azon`, `Jegy`, `Leírás`, `Létrehozásideje`) VALUES
('2d35e155-2650-4120-bc26-123f59d90037', 35, 'morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus', '2023-12-20 00:00:00'),
('aaacb9ab-e7ed-4679-944c-739859198918', 25, 'nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum', '2023-11-28 00:00:00'),
('2cb1821b-5cc0-4083-8b2f-c0687c05c39f', 7, 'blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor', '2023-12-25 00:00:00'),
('97e2b1a4-e1c3-4bfa-b8f4-1c79b1cfe735', 3, 'elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in', '2024-06-12 00:00:00'),
('0428cf2f-5fba-48d2-a0af-d520b23d2202', 22, 'lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac', '2024-09-18 00:00:00'),
('7df917c2-b28b-4c84-a3c5-0691c1932f12', 64, 'ac nulla sed vel enim sit amet nunc viverra dapibus', '2023-11-28 00:00:00'),
('03490a2a-38b3-47a6-b30f-e68fcae01411', 60, 'sit amet lobortis sapien sapien non mi integer ac neque duis bibendum', '2024-03-30 00:00:00'),
('b96635f0-5271-44af-a576-dcac055fa37a', 95, 'in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue', '2024-06-24 00:00:00'),
('6d5ff87a-b93d-4097-be5e-39aa857ae74b', 24, 'ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique', '2024-01-24 00:00:00'),
('55fc9af1-3d06-43d0-a24c-18353dcd2357', 50, 'habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur', '2024-08-16 00:00:00'),
('bb6e2ba8-c8a0-42a7-8980-0adacfb44300', 75, 'nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in', '2024-07-20 00:00:00'),
('1430aab8-d33d-4f5f-8d8d-e9700a6bb594', 28, 'neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales', '2024-03-16 00:00:00'),
('cdbf665b-c91a-4983-bb41-4b8270c264bb', 33, 'suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare', '2024-09-14 00:00:00'),
('0cd3f0be-053f-45b6-9c2e-4f07996a4e47', 85, 'sapien sapien non mi integer ac neque duis bibendum morbi non', '2024-02-09 00:00:00'),
('8b378fcf-61a2-4886-b148-6627e946b1e2', 3, 'tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi', '2024-08-21 00:00:00'),
('36105833-5654-402d-8264-0d66b8a149db', 82, 'diam cras pellentesque volutpat dui maecenas tristique est et tempus semper', '2024-01-09 00:00:00'),
('efff9b7b-7554-4c6e-b996-30f838bb1326', 43, 'nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in', '2024-01-06 00:00:00'),
('5978fcc9-d22d-4e3a-9ca7-4a618dff07ba', 37, 'lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et', '2024-05-10 00:00:00'),
('4066950e-70ba-407a-a34b-9b8e32f45a93', 70, 'in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo', '2024-09-03 00:00:00'),
('f6bb10cb-1f14-4332-b0db-d0efb3a0011c', 16, 'id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean', '2024-04-02 00:00:00'),
('ed790d6f-9432-4dd7-b653-b57e263a83df', 57, 'vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt', '2024-03-12 00:00:00'),
('0be057cc-0bfb-4738-817f-866daba18bdb', 87, 'sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam', '2023-11-20 00:00:00'),
('36f26344-67ac-4252-9002-7e1cab899449', 46, 'diam erat fermentum justo nec condimentum neque sapien placerat ante nulla', '2024-06-15 00:00:00'),
('bb65433c-37a3-4b13-9e1a-0ca13649e81c', 55, 'in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum', '2024-08-19 00:00:00'),
('b3cd9459-2963-4d39-b1f0-bd9a50d669d2', 69, 'habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt', '2024-04-05 00:00:00'),
('8660dd86-3069-49fb-ab8a-a9ce9df609fe', 88, 'ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', '2024-03-17 00:00:00'),
('95c4e042-f669-4b28-a305-94de3750c462', 31, 'sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur', '2024-09-26 00:00:00'),
('8d306217-2d2f-417b-8479-8e339f32ead2', 4, 'praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id', '2023-12-15 00:00:00'),
('34da2357-e80a-4c38-9f63-b89ec2c638f9', 53, 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus', '2023-11-02 00:00:00'),
('63c900a3-e180-46b2-881b-54cbaf1c52d6', 84, 'nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', '2024-10-12 00:00:00'),
('33c2d17c-9bb5-4a09-9f26-4e03dc5593d4', 30, 'justo eu massa donec dapibus duis at velit eu est congue elementum', '2024-10-10 00:00:00'),
('069d16ed-2f54-4356-a3fa-5a8aad918b2c', 63, 'in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque', '2024-09-20 00:00:00'),
('4d42557b-e1e2-4a73-8eba-02b59b8a257b', 18, 'quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis', '2023-10-16 00:00:00'),
('efff0f7c-eb2c-42c9-8273-20b20d6ab2a4', 82, 'turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis', '2024-02-18 00:00:00'),
('60d7ea17-4092-4b43-91e2-5d74e0ec341a', 53, 'id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras', '2024-09-30 00:00:00'),
('dc23c40e-e2c0-4290-8cd3-b1e95ec07154', 81, 'nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti', '2024-04-24 00:00:00'),
('a16a596c-38d3-4fb5-8906-26650f45ac84', 39, 'integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu', '2023-12-02 00:00:00'),
('2a2d7ddd-157d-499d-b56d-ff07269165fa', 28, 'sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at', '2023-12-10 00:00:00'),
('3489492a-ae9a-4d1d-99f2-be1f8dd40111', 10, 'volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna', '2024-05-27 00:00:00'),
('dae6e8c8-fe32-4d4c-ab7a-99eb591805e8', 92, 'posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed', '2024-04-22 00:00:00'),
('e39da0d1-88ad-4d4e-884d-123be3c3de16', 52, 'dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien', '2024-05-02 00:00:00'),
('c8973a3a-b1bc-4741-8b59-f77c6c895e7a', 23, 'nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur', '2023-11-18 00:00:00'),
('c2956ce6-a45e-4b9a-b729-6553aef5b70a', 10, 'metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus', '2024-01-10 00:00:00'),
('9c080616-cb0e-4c59-8df3-c629891c5e13', 21, 'erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at', '2024-05-26 00:00:00'),
('49f54db6-7ff1-4ab9-8e99-d394041d1b64', 10, 'integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus', '2024-01-17 00:00:00'),
('8ce709cb-e09b-49e9-96ee-36a021288209', 2, 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit', '2024-02-28 00:00:00'),
('8df3cf81-a94f-475a-8a46-5efd93c9f0cd', 63, 'tortor quis turpis sed ante vivamus tortor duis mattis egestas metus', '2023-12-12 00:00:00'),
('7d814c30-d6f0-4a95-95bf-e15b740da295', 65, 'dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit', '2024-03-26 00:00:00'),
('b707c684-70de-461c-a8d0-4f6c6e015669', 75, 'nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue', '2024-06-01 00:00:00'),
('fdabfe9e-31b8-4ec0-9b75-04bedc331f62', 89, 'in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur', '2023-11-19 00:00:00'),
('9cfaf453-a67c-4fe7-b558-3f48e37ec821', 95, 'interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus', '2024-01-17 00:00:00'),
('f2f4decc-b63a-4688-969f-64c3b4bb4a35', 11, 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut', '2024-01-25 00:00:00'),
('0e6fa819-f4d5-441f-99d2-c5d83ada8d5b', 79, 'nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat', '2024-05-04 00:00:00'),
('c7f444ef-1f97-4f23-aa49-58bd159398bb', 92, 'sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem', '2024-09-30 00:00:00'),
('1562e04b-4638-411b-be30-8e442ce98234', 46, 'ipsum ac tellus semper interdum mauris ullamcorper purus sit amet', '2024-08-30 00:00:00'),
('5d29e909-9bd4-4fc0-9edf-46e49033a48f', 47, 'dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien', '2024-07-15 00:00:00'),
('0b6b655f-5440-46d2-bb9f-300628fa7895', 24, 'sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem', '2024-04-14 00:00:00'),
('6e159405-a160-4fac-b7c4-998c9fb68e2f', 22, 'posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend', '2024-07-12 00:00:00'),
('6987ddd5-aec6-4aa2-8394-6da45da4f245', 55, 'vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod', '2024-01-09 00:00:00'),
('a2c1960d-0cf2-4bc7-83d4-2988d8d1be0b', 88, 'sed sagittis nam congue risus semper porta volutpat quam pede lobortis', '2024-03-15 00:00:00'),
('a533f9a8-5311-44c0-bdbb-fd17f1083a7d', 15, 'dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet', '2024-10-10 00:00:00'),
('f5a3cda6-f4f2-4565-bdde-8441c736f4c9', 33, 'eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus', '2023-12-13 00:00:00'),
('845084da-ba99-492c-ba57-eeac1bfd89c9', 73, 'dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem', '2023-12-03 00:00:00'),
('2cb6ad85-7d97-44e2-a0fd-9bccf5a39a35', 48, 'non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris', '2024-09-30 00:00:00'),
('8cf7b57c-5556-4204-b088-fee909467163', 87, 'dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet', '2024-06-25 00:00:00'),
('bf561379-9e4d-4b87-9f9f-f965e4212e34', 62, 'sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices', '2023-12-31 00:00:00'),
('07001ab6-0dab-4e4e-8e40-40c70c2fc57f', 17, 'lobortis ligula sit amet eleifend pede libero quis orci nullam molestie', '2024-05-17 00:00:00'),
('864bf86c-614a-4df8-ae1b-3f2120ccae50', 99, 'nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis', '2024-07-02 00:00:00'),
('12ca1caa-3fd7-4320-ba85-69f29cd3d8de', 1, 'nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum', '2024-09-02 00:00:00'),
('74b87f76-ac64-4911-a422-bf8ae308d2d1', 57, 'et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non', '2023-12-31 00:00:00'),
('0f1425c7-0903-460a-b680-147ef3be76c3', 43, 'nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit', '2023-12-02 00:00:00'),
('21be2d79-c0a8-4e39-81a1-06f88114dfe1', 31, 'libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse', '2024-05-09 00:00:00'),
('7d9c1407-e703-4cb1-a805-77ed415d3300', 44, 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et', '2024-06-16 00:00:00'),
('5500dc57-6556-4ddd-af04-aa4f630c9998', 77, 'interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', '2024-09-02 00:00:00'),
('116e3735-1729-4b1a-b7e4-de1f4179ea68', 32, 'nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras', '2024-07-19 00:00:00'),
('4c3237ed-75bb-46cf-aea9-00689fc369ad', 40, 'id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede', '2024-07-20 00:00:00'),
('29821b91-07d2-474d-beb0-08bb402d7915', 37, 'quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci', '2023-11-17 00:00:00'),
('36ee5084-7b26-49da-bf42-a6945ea3a018', 26, 'est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc', '2024-02-12 00:00:00'),
('e9256371-0c52-4b7c-80dd-24cd93a4e9bc', 50, 'turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor', '2023-11-03 00:00:00'),
('84c0e5fa-bd8f-432b-9550-85ecadf52661', 61, 'tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis', '2024-03-12 00:00:00'),
('2d6774d5-8b6a-40bb-93fc-fcad16606336', 32, 'rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat', '2024-06-24 00:00:00'),
('8c7230d0-7901-4611-957b-2368a15bd971', 81, 'in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus', '2024-07-16 00:00:00'),
('3d79cee5-fabd-40cf-ab29-b952271fb9c3', 83, 'scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas', '2024-10-11 00:00:00'),
('877d852a-5153-4959-ade1-417f93f73341', 97, 'enim leo rhoncus sed vestibulum sit amet cursus id turpis', '2023-10-25 00:00:00'),
('563e6cf6-16b2-49ff-a8ef-fe074fcfa0cc', 65, 'felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem', '2023-11-09 00:00:00'),
('084e5611-6a46-4539-b621-e13dc024591b', 97, 'aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed', '2024-03-31 00:00:00'),
('835a10c9-4f6b-4a08-a121-5a085980856c', 76, 'quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus', '2024-06-02 00:00:00'),
('111137c4-6625-4ec3-b79f-57cc5f2e420b', 22, 'pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo', '2024-06-08 00:00:00'),
('9d26e743-bae2-4e26-9a28-1a86d4ae148c', 52, 'lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam', '2024-05-29 00:00:00'),
('0c960106-bcdf-4a0e-85b9-d96cb866cea9', 57, 'eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit', '2024-06-01 00:00:00'),
('9fee861d-776d-4761-bc69-fa1032539e11', 58, 'nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce', '2024-03-26 00:00:00'),
('a1291521-0b04-4f15-b26b-30d4139a59a6', 3, 'dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel', '2024-10-09 00:00:00'),
('7321eb50-95af-4737-977f-6f9104a14bda', 89, 'donec semper sapien a libero nam dui proin leo odio porttitor id consequat in', '2024-10-04 00:00:00'),
('1fa7c21d-d99f-42d8-bd03-105bd636e58d', 7, 'potenti cras in purus eu magna vulputate luctus cum sociis', '2024-08-21 00:00:00'),
('d83f158a-350c-4609-91ea-ead62fbe8c48', 40, 'aliquam convallis nunc proin at turpis a pede posuere nonummy integer', '2023-11-23 00:00:00'),
('6aec5abe-9d14-49e9-977c-239bc74105a1', 38, 'maecenas ut massa quis augue luctus tincidunt nulla mollis molestie', '2024-07-26 00:00:00'),
('87002f1e-dac1-4d8e-8da6-a54e6ea02ec6', 98, 'amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue', '2024-03-25 00:00:00'),
('0f607be5-650b-4d60-a72a-01b4e7002250', 12, 'lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula', '2024-08-03 00:00:00'),
('1d9ff5cd-93c7-4c9f-bd9a-9f8371b97bd4', 24, 'nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis', '2024-05-13 00:00:00'),
('af19f481-5484-4127-aa9e-d71b42c505e1', 19, 'ullamcorper augue a suscipit nulla elit ac nulla sed vel enim', '2024-01-11 00:00:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
