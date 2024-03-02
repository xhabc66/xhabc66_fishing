rm -rf err
g++ .code/fishing.cpp -o /dev/null >/dev/null 2>&1
a=$?
clear
if [[ $a =~ 1 ]];then
    echo "编译错误"
    g++ .code/fishing.cpp -o /dev/null
    g++ .code/fishing.cpp -o /dev/null 2>&1 > err
    sleep 5
else
    echo "ok"
fi