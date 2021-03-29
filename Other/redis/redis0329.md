### 2.3.1 redis 主要配置项

配置redis 密码

```sh
vim /etc/redis.conf
requirepass 123456
```

使用密码登录

redis-cli -a 123456



需要约束，不然就后出现OOM 情况

maxmemeory <byte>

```sh 
maxmemory  536870912
```

内存可以考虑设置你的内存的一半

512Mb = 算法 》 512 * 1024 * 1024 = 536,870,912

------------------

### 2.3.2 CONFIG 动态修改配置

动态修改，不用重启的情况下做修改

redis-cli 进入redis 模式后

```sh
#查看
CONFIG GET maxmemory
#修改
CONFIG SET maxmemory 209715200
```

### 2.3.3 慢查询

SLOWLOG LEN #查看慢日志的记录条数

SLOWLOG GET [n] #查看慢日志的n条记录

### 2.3.4 redis 持久化

### 2.3.4.2.4 实现RDB方式
save: 同步,会阻赛其它命令,不推荐使用
bgsave: 异步后台执行,不影响其它命令的执行
自动: 制定规则,自动执行