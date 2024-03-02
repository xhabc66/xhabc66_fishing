clear
echo "loading..."

./.code/fishing.run 2>/dev/null
if [[ $? =~ 1 ]];then
    clear
    echo "运行错误"
    exit 1
fi
clear