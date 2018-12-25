#! /bin/bash
read -p "请输入页数和时间间隔:" n interval
time=0
currentTime=0

let time=n*interval
echo "总时间$time秒,每次间隔$interval秒"
echo "开始执行..."
x=0;
while (($currentTime<$time))
do
	
	adb shell input swipe 800 800 100 800
	let x=x+1
        let n=n-1
	echo "已执行时间${currentTime}秒,滑动$x次,剩余$n页"
	sleep $interval
	let currentTime+=$interval
done
minute=0
((minute=currentTime/x))
echo "完成，刷了$x页,共用时$minute分"


