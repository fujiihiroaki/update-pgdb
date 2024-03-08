// 一行ごとに実行するSQL文を記述する
drop view v_hoge
alter table  t_hoge alter column hoge_cd type varchar(10);
alter table  m_hoge alter column hoge_cd type varchar(10);

create view v_user(hoge_cd, hoge_nm, password, password_upd_dtm, hoge_type_cd, hogehoge_cd) as
SELECT t_hoge.hoge_cd      AS hoge_cd,
       t_hoge.hoge_nm      AS hoge_nm,
       t_hoge.password,
       t_hoge.password_upd_dtm,
       t_hoge.hoge_type_cd AS user_type_cd,
       t_hoge.hogehoge_cd  AS hogehoge_cd
FROM t_hoge
WHERE t_hoge.del_flg = 0::numeric
UNION
SELECT m_hoge.hoge_cd    AS hoge_cd,
       m_hoge.student_nm    AS hoge_nm,
       m_hoge.password,
       m_hoge.password_upd_dtm,
       NULL::character varying AS user_type_cd,
       NULL::character varying AS hogehoge_cd
FROM m_hoge
WHERE m_hoge.del_flg = 0::numeric;
