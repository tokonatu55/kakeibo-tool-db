-- グループ作成
CREATE GROUP quizgrp;

-- テーブルへの権限をグループに追加
GRANT ALL ON DATABASE quizdb TO quizgrp;

-- グループにユーザを追加
ALTER GROUP quizgrp ADD USER quiz;

--スキーマの作成
CREATE SCHEMA prd;

-- オブジェクトへのアクセス権限を付与する
GRANT USAGE ON SCHEMA prd TO quizgrp;

-- CREATE TABLE などのオブジェクト作成権限を与える
GRANT CREATE ON SCHEMA prd TO quizgrp;

-- 既存のテーブルに権限を付与する
GRANT ALL ON ALL TABLES IN SCHEMA prd TO quizgrp;
GRANT ALL ON ALL SEQUENCES IN SCHEMA prd TO quizgrp;
GRANT ALL ON ALL FUNCTIONS IN SCHEMA prd TO quizgrp;

-- 今後作成される テーブル へのデフォルト権限を設定する
ALTER DEFAULT PRIVILEGES GRANT ALL ON TABLES TO quizgrp;
