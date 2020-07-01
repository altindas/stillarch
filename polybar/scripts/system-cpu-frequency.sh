echo "`lscpu | grep 'İşlemci MHz' | awk '{print $3}'| awk -F\. '{print $1}' | sed 's/./&,/1' | cut -c1-3` Ghz"

echo "`lscpu | grep 'İşlemci MHz' | awk '{print $3}'| awk -F\. '{print $1}' | sed 's/./&,/1'` Ghz"


cpu : cat <(grep 'cpu ' /proc/stat) <(sleep 1 && grep 'cpu ' /proc/stat) | awk -v RS="" '{print ($13-$2+$15-$4)*100/($13-$2+$15-$4+$16-$5)}' | cut -c1

