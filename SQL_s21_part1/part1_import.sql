create or replace procedure Import(tableName varchar, filePath varchar, delimiter varchar)
as $$
  begin
    execute format('COPY %s FROM ''%s'' DELIMITER ''%s'' CSV HEADER;',
    tableName, filePath, delimiter);
  end;
$$ language plpgsql;

call Import('peers', 'C:\School_21\SQL2_Info21_v1.0-1\src\SQL_s21_part1\data\peers.csv', ',');
call  Import('tasks',  'C:\School_21\SQL2_Info21_v1.0-1\src\SQL_s21_part1\data\tasks.csv', ',');
call  Import('checks',  'C:\School_21\SQL2_Info21_v1.0-1\src\SQL_s21_part1\data\checks.csv', ',');
call  Import('p2p',  'C:\School_21\SQL2_Info21_v1.0-1\src\SQL_s21_part1\data\p2p.csv', ',');
call  Import('verter',  'C:\School_21\SQL2_Info21_v1.0-1\src\SQL_s21_part1\data\verter.csv', ',');
call  Import('TransferredPoints',  'C:\School_21\SQL2_Info21_v1.0-1\src\SQL_s21_part1\data\transferred_points.csv', ',');
call  Import('Friends',  'C:\School_21\SQL2_Info21_v1.0-1\src\SQL_s21_part1\data\friends.csv', ',');
call  Import('Recommendations',  'C:\School_21\SQL2_Info21_v1.0-1\src\SQL_s21_part1\data\recommendations.csv', ',');
call  Import('XP',  'C:\School_21\SQL2_Info21_v1.0-1\src\SQL_s21_part1\data\xp.csv', ',');
call  Import('TimeTracking',  'C:\School_21\SQL2_Info21_v1.0-1\src\SQL_s21_part1\data\time_tracking.csv', ',');