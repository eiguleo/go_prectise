#!/bin/bash



#select province_code,city_code,kpd,kjly,fpqqlsh,fpdm,fphm  from fpmx1008  as a where 3> (select count(*) from fpmx1008  where kjly = a.kjly  and fphm < a.fphm and XHDWDM like '9121%' )  and  XHDWDM like '9121%' order by a.kjly ,a.fphm  ;





for sh in *no_00
do

    line=`cat $sh` 
    echo $line 
    #ss=${line:1:4}%
    #echo $ss
    
    
    
    #mysql -uroot -prootoo voh -e "select PROVINCE_CODE as 省代码, concat(',') as 分隔符1 ,city_code as 市代码,concat(',') as 分隔符2 ,kpd as 开票端,concat(',') as 分隔符3 ,kjly 开具来源,concat(',') as 分隔符4,xzqd as 下载渠道,concat(',') as 分隔符5,xzrq as 下载日期,concat(',') as 分隔符6,cjsj as 采集时间,concat(',') as 分隔符7,fpqqlsh as 发票请求流水号,concat(',') as 分隔符8,kprq 开票日期,concat(',') as 分隔符9,fpdm as 发票代码,concat(',')as 分隔符10 ,fphm as 发票号码  from fpmx0912 where (PROVINCE_CODE!='' or PROVINCE_CODE is not   null ) and  XHDWDM in ($line)  " > ./${sh}_data

     #mysql -uroot -prootoo -H voh -e "select PROVINCE_CODE as 省代码, city_code as 市代码, kpd as 开票端, kjly as 开具来源, xzqd as 下载渠道, xzrq as 下载日期,fpqqlsh as 发票请求流水号,kprq 开票日期,fpdm as 发票代码,fphm as 发票号码  from fpmx1008 
     #where   XHDWDM in ($line)  order by PROVINCE_CODE,city_code,kpd,kjly,xzqd,xzrq  " > ./${sh}_data.html

    echo "<h2>开具来源统计</h2>" > ./${sh}_data.html
    echo "<p>取值集合:YY=营业,WT=网厅,ZT=掌厅,SG=手工开票,ZZ=自助终端,SF=第三方平台,PD=PDA,TY=天翼生活APP,YX=易销售 " >> ./${sh}_data.html
     mysql -uroot -prootoo -H voh -e "select XHDWMC as 销方名称,kjly as 开具来源,fpqqlsh as 发票请求流水号,kprq as 开票日期,fpdm as 发票代码,fphm as 发票号码 from fpmx1008  as a where 2> (select count(*) from fpmx1008  where kjly = a.kjly  and fphm < a.fphm and XHDWDM in ($line) ) and  XHDWDM  in ($line)   order by a.kjly ,a.fphm  ;" >> ./${sh}_data.html
     echo "<br> <hr>" >> ./${sh}_data.html

     echo "<h2>下载渠道统计</h2>" >> ./${sh}_data.html
     echo "<br><p> ps:下载渠道取值集合为 YJ,YC,YD,UJ,UC,UD,UZ,UW,XW 下面结果全部为NULL可能有问题 " >> ./${sh}_data.html
     mysql -uroot -prootoo -H voh -e "select XHDWMC as 销货方名称, xzqd as 下载渠道,fpqqlsh as 发票请求流水号,kprq as 开票日期,fpdm 发票代码,fphm as 发票号码  from fpmx1008  as a where 2> (select count(*) from fpmx1008  where xzqd = a.xzqd  and fphm < a.fphm and XHDWDM in ($line))  and  XHDWDM in ($line)  order by a.xzqd ,a.fphm  ;" >> ./${sh}_data.html
     echo "<br> <hr>" >> ./${sh}_data.html




     
     echo  "<h2>省代码字段统计</h2>" >> ./${sh}_data.html
     echo "<br><p>ps: 该字段不能为空" >> ./${sh}_data.html
     mysql -uroot -prootoo -H voh -e "select XHDWMC as 销方名称,province_code as 省代码, fpqqlsh as 发票请求流水号, kprq as 开票日期,fpdm as 发票代码, fphm as 发票号码 from fpmx1008  as a where 2> (select count(*) from fpmx1008  where province_code = a.province_code  and fphm < a.fphm and XHDWDM in ($line))  and  XHDWDM in ($line)  order by a.province_code ,a.fphm  ;" >> ./${sh}_data.html
     echo  "<br> <hr>" >> ./${sh}_data.html




 

     
     echo   "<h2>地市代码</h2>" >> ./${sh}_data.html
     echo "<br><p> ps: 字段不能为空" >> ./${sh}_data.html
     mysql -uroot -prootoo -H voh -e "select XHDWMC as 销方名称,city_code as 地市代码 , fpqqlsh as 发票请求流水号, kprq as 开票日期,fpdm as 发票代码 , fphm as 发票号码 from fpmx1008  as a where 1> (select count(*) from fpmx1008  where city_code = a.city_code  and fphm < a.fphm and XHDWDM in ($line))  and  XHDWDM in ($line)  order by a.city_code ,a.fphm  ;" >> ./${sh}_data.html
     echo  "<br> <hr>" >> ./${sh}_data.html


     
     echo "<h2>开票点编码</h2>" >> ./${sh}_data.html
     echo "<br><p> ps: 开票点编码自行维护" >> ./${sh}_data.html
     mysql -uroot -prootoo -H voh -e "select XHDWMC as 销方名称,kpd as 开票点编码,fpqqlsh as 发票请求流水号,kprq as 开票日期,fpdm as 发票代码,fphm as 发票号码  from fpmx1008  as a where 1> (select count(*) from fpmx1008  where kpd = a.kpd  and fphm < a.fphm and XHDWDM in ($line))  and  XHDWDM in ($line)  order by a.kpd ,a.fphm  ;" >> ./${sh}_data.html









    
    done

#/bin/cp -fv *data.txt  tmp
