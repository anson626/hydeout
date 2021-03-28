### 2.2.5 redis 的多实例

使用sed 修改内容

sed 's/6379/6380/g' redis_6379.conf > redis_6380.conf

sed 's/6379/6380/g' redis_6379.conf > redis_6380.conf
sed 's/6379/6381/g' redis_6379.conf > redis_6381.conf

运行起来

/apps/redis/bin/redis-server /apps/redis/etc/redis_6380.conf 
/apps/redis/bin/redis-server /apps/redis/etc/redis_6381.conf 
/apps/redis/bin/redis-server /apps/redis/etc/redis_6379.conf 

设定默认的 Unit-file 快速修改内容 - 多实例

 sed -i 's/6379/6380/' /lib/systemd/system/redis6380.service 
 sed -i 's/6379/6381/' /lib/systemd/system/redis6381.service

运行起来

systemctl enable --now redis6379 redis6380 redis6381



### 3.3.6.3.2 执行数据导入

for loop 的方式导入 100个数据



### 2.2.2.10 实战案例：一键编译安装Redis脚本

配置里不设定密码



注释调 requirepass 

vim /apps/redis/etc/redis.conf

### 2.2.4.2.2 python 连接方式

测试使用python 安装快很多

vim redis_test.py

写入10000 个测试速度

chmod +x redis_test.py

time ./redis_test.py