CREATE TABLE `hotel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `city` String(40) DEFAULT NULL,
  `pricePerNight` Integer DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

-- This file initializes our database every time we restart the app.
insert into hotel (name, city, pricePerNight)
  values ('St Regis',Detroit , 109.65);
insert into hotel (name, city, pricePerNight)
  values ('St Regis',Detroit , 129.00);
insert into hotel (name, city, pricePerNight)
  values ('St Regis',New York , 1,088);
insert into hotel (name, city, pricePerNight)
  values ('St Regis', New York, 1067);
insert into hotel (name, city, pricePerNight)
  values ('Detroit Foundation’, Detroit , 199);

insert into hotel (name, city, pricePerNight)
  values ('Aloft Detroit',Detroit , 199);
insert into hotel (name, city, pricePerNight)
  values ('The Inn on Ferry Street',Detroit, 152);
insert into hotel (name, city, pricePerNight)
  values ('Crosby Street Hotel',New York ,795 );
insert into hotel (name, city, pricePerNight)
  values ('The Lowell Hotel', New York ,775 );
insert into hotel (name, city, pricePerNight)
  values ('The Ritz-Carlton',New York , 735);
insert into hotel (name, city, pricePerNight)
  values ('Lotte New York Palace',New York ,340 );
insert into hotel (name, city, pricePerNight)
  values ('The Peninsula',New York , 754);
insert into hotel (name, city, pricePerNight)
  values ('The Surrey',New York , 606);
insert into hotel (name, city, pricePerNight)
  values ('Park Hyatt Seoul', Seoul , 300);
insert into hotel (name, city, pricePerNight)
  values ('Park Hyatt Busan',Busan , 218);