# README
启动数据库
```bash
docker run -d      --name db-for-mangosteen      -e POSTGRES_USER=mangosteen      -e POSTGRES_PASSWORD=123456      -e POSTGRES_DB=mangosteen_dev      -e PGDATA=/var/lib/postgresql/data/pgdata      -v mangosteen-data:/var/lib/postgresql/data      --network=network1      postgres:14
```
启动服务
```bash
bin/rails s
```
数据库建表
```bash
bin/rails g model user email:string name:string
bin/rails db:migrate
```
数据库回滚
```bash
/*回滚两步*/
bin/tails db:rollback step=2  
```