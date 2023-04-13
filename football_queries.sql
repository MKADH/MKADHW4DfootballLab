-- find all matches from 2017
-- SELECT * FROM public.matches WHERE season = 2017;

-- --find all matches featuring barcelona
-- SELECT * FROM public.matches WHERE hometeam = 'Barcelona' OR awayteam = 'Barcelona';

--What are the names of the Scottish divisions included?
-- SELECT * FROM public.divisions WHERE country = 'Scotland';

-- --Find the value of the code for the Bundesliga division. Use that code to find out how many matches Freiburg have played in that division. HINT: You will need to query both tables
-- SELECT code FROM public.divisions WHERE name = 'Bundesliga';
-- SELECT COUNT(division_code LIKE 'D1') FROM public.matches INNER JOIN public.divisions ON public.divisions.code=public.matches.division_code WHERE awayteam = 'Freiburg' OR hometeam = 'Freiburg';

-- --Find the teams which include the word "City" in their name.
-- SELECT * FROM public.matches WHERE hometeam LIKE '%City%' OR awayteam LIKE '%City%';

-- -- --How many different teams have played in matches recorded in a French division?
-- SELECT COUNT(DISTINCT hometeam) FROM public.matches WHERE division_code LIKE 'F1' OR division_code LIKE 'F2';

-- Have Huddersfield played Swansea in any of the recorded matches?
-- SELECT * FROM public.matches WHERE (hometeam = 'Huddersfield' AND awayteam = 'Swansea') OR (hometeam = 'Swansea' AND awayteam = 'Huddersfield');

--How many draws were there in the Eredivisie between 2010 and 2015?
-- SELECT  FROM public.matches WHERE division_code LIKE 'N1' AND season = '2010' AND season = '2015';

--Select the matches played in the Premier League in order of total goals scored from highest to lowest. When two matches have the same total the match with more home goals should come first.
-- SELECT id, hometeam, awayteam, fthg, ftag, fthg + ftag AS sum_goals FROM public.matches WHERE division_code = 'E0' ORDER BY sum_goals DESC, fthg DESC;

--In which division and which season were the most goals scored?
-- SELECT division_code, season, SUM(fthg + ftag) AS total_goals FROM public.matches GROUP BY division_code, season ORDER BY total_goals DESC LIMIT 1;
