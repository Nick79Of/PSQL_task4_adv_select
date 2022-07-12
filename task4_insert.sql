INSERT INTO Artist (name)
	VALUES  ('Depeche Mode'),
			('Metallica'),
			('Scooter'),
			('U-96'),
			('Members Of Mayday'),
			('Erasure'),
			('DJ Bobo'),
			('DeVision');
		
INSERT INTO Genre (name)
	VALUES  ('Popsync'),
			('Metall'),
			('Dance'),
			('Techno'),
			('Rave');
		
INSERT INTO	Genre_Artist 
	VALUES  (1,1),
			(1,6),
			(1,8),
			(2,2),
			(3,7),
			(4,4),
			(4,5),
			(5,3),
			(5,2),
			(2,3);
		
INSERT INTO Album (name, year)
	VALUES  ('A Broken Frame', 1982),
			('Master Of Puppets (Remastered)', 2020),
			('No Time To Chill', 1998),
			('Das Boot', 1992),
			('Members Only', 1995),
			('Chorus', 1991),
			('Dance With Me (Remixes)', 2018),
			('Void', 2000),
			('Metall-Rave Forever', 2019);

INSERT INTO	Artist_Album
	VALUES  (1,1),
			(2,2),
			(3,3),
			(4,4),
			(5,5),
			(6,6),
			(7,7),
			(8,8),
			(2,9),
			(3,9);
			
INSERT INTO Track (album_id, name, duration)
	VALUES  (1, 'My Secret Garden', 230),
			(1, 'See You', 170),
			(2, 'Battery', 306),
			(2, 'Orion', 350),
			(3, 'Last Warning', 34),
			(3, 'We Are The Greatest', 305),
			(4, 'Das Boot', 308),
			(4, 'Das Boot (Classic Version)', 96),
			(5, 'Reformed Voice Bells', 22),
			(5, 'Where Is My Bus', 315),
			(6, 'Chorus', 255),
			(6, 'Home', 248),
			(7, 'Keep On Dancing', 201),
			(7, 'Move Your Feet', 208),
			(8, 'Foreigner', 309),
			(9, 'Battery (RMX)', 350),
			(9, 'We Are The Greatest (RMX)', 400);

INSERT INTO Collection (name, year)
	VALUES  ('The Best of 1980x', 2018),
			('The Best of 1990x', 2000),
			('The Best of 2000x', 2020),
			('Metall Ballads', 1995),
			('Ravers', 2000),
			('Dance Remixes', 2022),
			('Back To The Future', 2018),
			('Techno Mixes', 2019);	
		
INSERT INTO	Collection_Track
	VALUES  (1,1),
			(2,7),
			(2,9),
			(3,15),
			(3,16),
			(4,3),
			(5,6),
			(6,14),
			(7,13),
			(8,8);	
			