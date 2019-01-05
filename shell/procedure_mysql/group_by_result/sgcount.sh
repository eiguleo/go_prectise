#!/bin/bash

for sh in *no_00
do

    line=`cat $sh`
    #echo $line
    echo $sh >> sg.html
    #mysql -uroot -prootoo voh -e "select PROVINCE_CODE as 省代码, concat(',') as 分隔符1 ,city_code as 市代码,concat(',') as 分隔符2 ,kpd as 开票端,concat(',') as 分隔符3 ,kjly 开具来源,concat(',') as 分隔符4,xzqd as 下载渠道,concat(',') as 分隔符5,xzrq as 下载日期,concat(',') as 分隔符6,cjsj as 采集时间,concat(',') as 分隔符7,fpqqlsh as 发票请求流水号,concat(',') as 分隔符8,kprq 开票日期,concat(',') as 分隔符9,fpdm as 发票代码,concat(',')as 分隔符10 ,fphm as 发票号码  from fpmx0912 where (PROVINCE_CODE!='' or PROVINCE_CODE is not   null ) and  XHDWDM in ($line)  " > ./${sh}_data
    #echo "<p>省代码和市代码: 不能为空<p> 开具来源: 不能为空,取值集合:YY=营业,WT=网厅,ZT=掌厅,SG=手工开票,ZZ=自助终端,SF=第三方平台,PD=PDA,TY=天翼生活APP,YX=易销售<p>开票端代码: 不能为空,各省自行定义<p>下载来源:  空表示未下载或者未上传下载渠道参数,取值集合 YJ,YC,YD,UJ,UC,UD,UZ,UW,XW<hr>" > ./${sh%%_*}字段上传明细.html

     #mysql -uroot -prootoo voh -e "select PROVINCE_CODE as 省代码,city_code as 市代码,kpd as 开票端,kjly 开具来源,xzqd as 下载渠道,xzrq as 下载日期,fpqqlsh as 发票请求流水号,kprq 开票日期,fpdm as 发票代码,fphm as 发票号码  from fpmx1011  where   XHDWDM in ($line) and kjly='SG' " 
     #>> ./${sh%%_*}字段上传明细.html

     mysql -uroot -prootoo voh -N  -H -e "select count(*) as 总数 from fpmx1015  where   XHDWDM in ($line) and kjly='SG' "  >> sg.html






    
    done

#/bin/cp -fv *data.txt  tmp
