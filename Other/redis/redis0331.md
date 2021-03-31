### 2.3.4.2.4 实现RDB方式

使用python 导入数据生产500万调数据

bgsave: 异步后台执行,不影响其它命令的执行

手动保存

```sh
redis-cli -a 123456 bgsave
```



### 2.3.4.2.4 实现RDB方式

PDF 执行脚本保存，可以做定时任务保存

*** 测试 ***

把dump.rdb移走，然后重启redis 

redis-cli info 查看 #keyspace 值是空的

还原方式是把 dump.rdb 转移回来dump.rdb 的路径重启就会恢复

名字和路径要放对



### 2.3.4.2 AOF 模式

AOF 是追加模式，会快很多

开启AOF 到 redis.conf

```sh
appendonly yes #改为yes
```

### 范例: 启用AOF功能的正确方式

要注意不能通过配置文件修改，不能通过配置文件修改会把文件rdb 文件给覆盖

1. 先通过redis-cli 里做修改，这举动会从rdb复制一份去aof
2. 在到配置文件里做修改，然后操作重启也不会影响了

查看实时数据

```sh
pstree -p |grep redis-server ; ll /data/redis/
```

### AOF rewrite 过程

比如你要删除以前的数据，但是无法正常删除，只能通过 rewrite的方式来处理