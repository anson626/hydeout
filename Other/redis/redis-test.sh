NUM=100
PASS=
for i in `seq $NUM`;do
	redis-cli -h 127.0.0.1 -a "$PASS" --no-auth-warning set testkey${i} testvalue${i}
	echo "testkey${i} testvalue${i} 写入完成"
done
echo "$NUM个key写入到Redis完成"
