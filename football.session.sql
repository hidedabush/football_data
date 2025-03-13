-- @block
CREATE TABLE Roster (
    roster_id SMALLINT PRIMARY KEY,
    team_name VARCHAR(100) NOT NULL,
    stadium_name VARCHAR(100) NOT NULL,
    team_city VARCHAR(100) NOT NULL,

    team_coach VARCHAR(100) NOT NULL,
    team_owner VARCHAR(100) NOT NULL,
    team_established_DATE DATE NOT NULL, 

    team_record VARCHAR(9) NOT NULL
);

-- @block
INSERT INTO Roster (roster_id, team_name, stadium_name, team_city, team_coach, team_owner, team_established_DATE, team_record)

VALUES (1, 'New York Giants', 'MetLife Stadium', 'East Rutherford', 'Brian Daboll', 'John Mara', '1925-11-04', '6-2')



-- @block
ALTER TABLE Roster
ADD division ENUM('AFC East', 'AFC North', 'AFC South', 'AFC West', 'NFC East', 'NFC North', 'NFC South', 'NFC West') NOT NULL;


-- @block

UPDATE Roster
SET roster_id = 12024,
    division = 'NFC East'
WHERE roster_id = 1;


-- @block
ALTER TABLE Roster
MODIFY COLUMN roster_id INT NOT NULL AUTO_INCREMENT;


-- @block
INSERT INTO Roster (roster_id, team_name, stadium_name, team_city, team_coach, team_owner, team_established_DATE, team_record)
VALUES 
(022024, 'Dallas Cowboys', 'AT&T Stadium', 'Arlington', 'Mike McCarthy', 'Jerry Jones', '1960-01-28', '5-3'),
(032024, 'Philadelphia Eagles', 'Lincoln Financial Field', 'Philadelphia', 'Nick Sirianni', 'Jeffrey Lurie', '1933-07-08', '7-1'),
(042024, 'Washington Commanders', 'FedExField', 'Landover', 'Ron Rivera', 'Daniel Snyder', '1932-07-09', '4-4'),
(052024, 'Green Bay Packers', 'Lambeau Field', 'Green Bay', 'Matt LaFleur', 'Mark Murphy', '1919-08-11', '6-2'),
(062024, 'Chicago Bears', 'Soldier Field', 'Chicago', 'Matt Eberflus', 'Virginia Halas McCaskey', '1920-09-17', '3-5'),
(072024, 'Minnesota Vikings', 'U.S. Bank Stadium', 'Minneapolis', 'Kevin O Connell', 'Zygi Wilf', '1961-01-28', '5-3'),
(082024, 'Detroit Lions', 'Ford Field', 'Detroit', 'Dan Campbell', 'Sheila Ford Hamp', '1930-07-12', '4-4'),
(092024, 'San Francisco 49ers', 'Levis Stadium', 'Santa Clara', 'Kyle Shanahan', 'Jed York', '1946-06-04', '6-2'),
(102024, 'Los Angeles Rams', 'SoFi Stadium', 'Inglewood', 'Sean McVay', 'Stan Kroenke', '1936-02-12', '3-5'),
(112024, 'Seattle Seahawks', 'Lumen Field', 'Seattle', 'Pete Carroll', 'Jody Allen', '1976-06-04', '5-3'),
(122024, 'Arizona Cardinals', 'State Farm Stadium', 'Glendale', 'Jonathan Gannon', 'Michael Bidwill', '1920-09-17', '2-6'),
(132024, 'New Orleans Saints', 'Caesars Superdome', 'New Orleans', 'Dennis Allen', 'Gayle Benson', '1967-11-01', '4-4'),
(142024, 'Tampa Bay Buccaneers', 'Raymond James Stadium', 'Tampa', 'Todd Bowles', 'Glazer Family', '1976-04-24', '3-5'),
(152024, 'Atlanta Falcons', 'Mercedes-Benz Stadium', 'Atlanta', 'Arthur Smith', 'Arthur Blank', '1965-06-30', '4-4'),
(162024, 'Carolina Panthers', 'Bank of America Stadium', 'Charlotte', 'Frank Reich', 'David Tepper', '1993-10-26', '2-6');


-- @block
INSERT INTO Roster (roster_id, team_name, stadium_name, team_city, team_coach, team_owner, team_established_DATE, team_record, division)
VALUES
(172024, 'New England Patriots', 'Gillette Stadium', 'Foxborough', 'Bill Belichick', 'Robert Kraft', '1960-11-16', '2-6', 'AFC East'),
(182024, 'Buffalo Bills', 'Highmark Stadium', 'Orchard Park', 'Sean McDermott', 'Terry Pegula', '1960-11-16', '5-3', 'AFC East'),
(192024, 'Miami Dolphins', 'Hard Rock Stadium', 'Miami Gardens', 'Mike McDaniel', 'Stephen Ross', '1966-08-16', '6-2', 'AFC East'),
(202024, 'New York Jets', 'MetLife Stadium', 'East Rutherford', 'Robert Saleh', 'Woody Johnson', '1960-11-16', '4-4', 'AFC East'),
(212024, 'Baltimore Ravens', 'M&T Bank Stadium', 'Baltimore', 'John Harbaugh', 'Steve Bisciotti', '1996-02-09', '7-1', 'AFC North'),
(222024, 'Cincinnati Bengals', 'Paycor Stadium', 'Cincinnati', 'Zac Taylor', 'Mike Brown', '1968-05-06', '5-3', 'AFC North'),
(232024, 'Pittsburgh Steelers', 'Heinz Field', 'Pittsburgh', 'Mike Tomlin', 'Art Rooney II', '1933-07-08', '4-4', 'AFC North'),
(242024, 'Cleveland Browns', 'FirstEnergy Stadium', 'Cleveland', 'Kevin Stefanski', 'Jimmy Haslam', '1946-10-07', '3-5', 'AFC North'),
(252024, 'Tennessee Titans', 'Nissan Stadium', 'Nashville', 'Mike Vrabel', 'Amy Adams Strunk', '1960-11-16', '3-5', 'AFC SOUTH'),
(262024, 'Indianapolis Colts', 'Lucas Oil Stadium', 'Indianapolis', 'Shane Steichen', 'Jim Irsay', '1953-11-04', '3-5', 'AFC SOUTH'),
(272024, 'Jacksonville Jaguars', 'TIAA Bank Field', 'Jacksonville', 'Doug Pederson', 'Shahid Khan', '1995-11-30', '6-2', 'AFC SOUTH'),
(282024, 'Houston Texans', 'NRG Stadium', 'Houston', 'DeMeco Ryans', 'Cal McNair', '2002-10-06', '3-5', 'AFC SOUTH'),
(292024, 'Kansas City Chiefs', 'Arrowhead Stadium', 'Kansas City', 'Andy Reid', 'Clark Hunt', '1960-11-16', '7-1', 'AFC West'),
(302024, 'Los Angeles Chargers', 'SoFi Stadium', 'Inglewood', 'Brandon Staley', 'Dean Spanos', '1960-11-16', '4-4' , 'AFC West'),
(312024, 'Denver Broncos', 'Empower Field at Mile High', 'Denver', 'Sean Payton', 'Greg Penner and Carrie Penner Trusts', '1960-11-16', '3-5' , 'AFC West'),
(322024, 'Las Vegas Raiders', 'Allegiant Stadium', 'Paradise', 'Josh McDaniels', 'Mark Davis', '1960-11-16', '3-5' , 'AFC West');


-- @block
UPDATE Roster
SET team_record = '3-14-0'
WHERE roster_id = 12024;

UPDATE Roster
SET team_record = '7-10-0',
    division = 'NFC East'
WHERE roster_id = 22024;

UPDATE Roster
SET team_record = '14-3-0',
    division = 'NFC East'
WHERE roster_id = 32024;

UPDATE Roster
SET team_record = '12-5-0',
    division = 'NFC East'
WHERE roster_id = 42024;



-- @block
UPDATE Roster
SET team_record = '11-6-0',
    division = 'NFC North'
WHERE roster_id = 52024;

UPDATE Roster
SET team_record = '5-12-0',
    division = 'NFC North'
WHERE roster_id = 62024;

UPDATE Roster
SET team_record = '14-3-0',
    division = 'NFC North'
WHERE roster_id = 72024;

UPDATE Roster
SET team_record = '15-2-0',
    division = 'NFC North'
WHERE roster_id = 82024;


-- @block
UPDATE Roster
SET team_record = '6-11-0',
    division = 'NFC West'
WHERE roster_id = 92024;

UPDATE Roster
SET team_record = '10-7-0',
    division = 'NFC West'
WHERE roster_id = 102024;

UPDATE Roster
SET team_record = '10-7-0',
    division = 'NFC West'
WHERE roster_id = 112024;

UPDATE Roster
SET team_record = '8-9-0',
    division = 'NFC West'
WHERE roster_id = 122024;

UPDATE Roster
SET team_record = '5-12-0',
    division = 'NFC South'
WHERE roster_id = 132024;

UPDATE Roster
SET team_record = '10-7-0',
    division = 'NFC South'
WHERE roster_id = 142024;

UPDATE Roster
SET team_record = '8-9-0',
    division = 'NFC South'
WHERE roster_id = 152024;

UPDATE Roster
SET team_record = '5-12-0',
    division = 'NFC South'
WHERE roster_id = 162024;

-- @block
UPDATE Roster
SET team_record = '4-13-0'
WHERE roster_id = 172024;

UPDATE Roster
SET team_record = '13-4-0'
WHERE roster_id = 182024;

UPDATE Roster
SET team_record = '8-9-0'
WHERE roster_id = 192024;

UPDATE Roster
SET team_record = '5-12-0'
WHERE roster_id = 202024;

-- @block
SELECT * FROM roster;

-- @block
UPDATE Roster
SET team_record = '12-5-0'
WHERE roster_id = 212024;

UPDATE Roster
SET team_record = '9-8-0'
WHERE roster_id = 222024;

UPDATE Roster
SET team_record = '10-7-0'
WHERE roster_id = 232024;

UPDATE Roster
SET team_record = '3-14-0'
WHERE roster_id = 242024;

-- @block
UPDATE Roster
SET team_record = '3-14-0'
WHERE roster_id = 252024;

UPDATE Roster
SET team_record = '8-9-0'
WHERE roster_id = 262024;

UPDATE Roster
SET team_record = '4-13-0'
WHERE roster_id = 272024;

UPDATE Roster
SET team_record = '10-7-0'
WHERE roster_id = 282024;

UPDATE Roster
SET team_record = '15-2-0'
WHERE roster_id = 292024;

UPDATE Roster
SET team_record = '11-6-0'
WHERE roster_id = 302024;

UPDATE Roster
SET team_record = '10-7-0'
WHERE roster_id = 312024;

UPDATE Roster
SET team_record = '4-13-0'
WHERE roster_id = 322024;

-- @block
UPDATE roster
SET stadium_name = 'Arisure Stadium'
WHERE roster_id = '232024';

-- @block
UPDATE roster
SET team_coach = 'Brian Schottenheimer'
WHERE roster_id = '22024';

UPDATE roster
SET team_coach = 'Dan Quinn'
WHERE roster_id = '42024';

UPDATE roster
SET team_coach = 'Ben Johnson'
WHERE roster_id = '62024';

UPDATE roster
SET team_coach = 'Mike Macdonald'
WHERE roster_id = '112024';

UPDATE roster
SET team_coach = 'Kellen Moore'
WHERE roster_id = '132024';

UPDATE roster
SET team_coach = 'Raheem Morris'
WHERE roster_id = '152024';

UPDATE roster
SET team_coach = 'Dave Canales'
WHERE roster_id = '162024';

UPDATE roster
SET team_coach = 'Mike Vrabel'
WHERE roster_id = '172024';

UPDATE roster
SET team_coach = 'Aaron Glenn'
WHERE roster_id = '202024';

UPDATE roster
SET team_coach = 'Brian Callahan'
WHERE roster_id = '252024';

UPDATE roster
SET team_coach = 'Liam Coen',
    stadium_name = 'EverBank Stadium'
WHERE roster_id = '272024';

UPDATE roster
SET team_coach = 'Jim Harbaugh'
WHERE roster_id = '302024';

UPDATE roster
SET team_coach = 'Pete Carroll'
WHERE roster_id = '322024';


