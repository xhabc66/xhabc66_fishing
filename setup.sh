clear
echo "loading..."
cd .code
g++ fishing.cpp -o fishing.run -O2 > /dev/null 2>&1
if [[ $? =~ 1 ]];then
    clear
    echo "编译错误，正在显示编译结果"
    g++ fishing.cpp -o fishing.run
    cd ../
    exit 1
fi
clear
cd ../
clear
./.code/fishing.run
clear
