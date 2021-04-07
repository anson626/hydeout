nero博客: https://nerois.github.io/categories/prometheus/

### Prometheus的生态组件
Prometheus 生态圈中包含了多个组件，其中部分组件可选
Prometheus Server : 收集和存储时间序列数据；
Client Library : 客户端库，目的在于为那些期望原生提供 Instrumentation 功能的应用程序提
供便捷的开发途径；
Push Gateway : 接收那些通常由短期作业生成的指标数据的网关，并支持由 Prometheus
Server 进行指标拉取操作；
Exporters : 用于暴露现有应用程序或服务（不支持 Instrumentation ）的指标给 Prometheus
Server
Alertmanager : 从 Prometheus Server 接收到“告警通知”后，通过去重、分组、路由等预处
理功能后以高效向用户完成告警信息发送；
Data Visualization Prometheus Web UI Prometheus Server 内建），及 Grafana 等；
Service Discovery ：动态发现待监控的 Target ，从而完成监控配置的重要组件，在容器化环
境中尤为有用；该组件目前由 Prometheus Server 内建支持；



### 部署Prometheus

prometheus.io/download

下载安装

https://github.com/prometheus/prometheus/releases/download/v2.26.0/prometheus-2.26.0.linux-amd64.tar.gz



export 启动后可以通过 metrics 查看

```sh
192.168.124.111:9100/metrics
```

