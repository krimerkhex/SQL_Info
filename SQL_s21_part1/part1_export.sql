create or replace procedure Export(tableName varchar, filePath varchar, delimiter varchar)
as $$
  begin
    execute format('copy %s TO ''%s'' DELIMITER ''%s'' CSV HEADER;',
    tableName, filePath, delimiter);
  end;
$$ language plpgsql;

create EXTENSION if not exists pgcrypto;

call  Export('peers',  pg_get_data_directory() || '/peers.csv', ',');
call  Export('tasks',  pg_get_data_directory() || '/tasks.csv', ',');
call  Export('checks',  pg_get_data_directory() || '/checks.csv', ',');
call  Export('p2p',  pg_get_data_directory() || '/p2p.csv', ',');
call  Export('verter',  pg_get_data_directory() || '/verter.csv', ',');
call  Export('TransferredPoints',  pg_get_data_directory() || '/transferred_points.csv', ',');
call  Export('Friends',  pg_get_data_directory() || '/friends.csv', ',');
call  Export('Recommendations',  pg_get_data_directory() || '/recommendations.csv', ',');
call  Export('XP',  pg_get_data_directory() || '/xp.csv', ',');
call  Export('TimeTracking',  pg_get_data_directory() || '/time_tracking.csv', ',');