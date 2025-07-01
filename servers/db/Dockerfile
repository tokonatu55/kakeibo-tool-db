FROM postgres:latest

# DB作成用の指定
ENV POSTGRES_USER quiz
ENV POSTGRES_PASSWORD quiz
ENV POSTGRES_DB quizdb

# 初期化用資材の反映
COPY ./init/sql/ /docker-entrypoint-initdb.d/
COPY ./init/csv/ /tmp/init_data/

# ポートの公開
EXPOSE 5432
