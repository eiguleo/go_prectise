

	
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql  prov.sql 





until [ $# -eq 0 ]
do
    echo "当前处理的参数为 $1"
    tgt_fl="$1"按字段分类上传明细.html
    #echo > $tgt_fl
    echo "<!DOCTYPE html> <html> <head> <meta charset="utf-8">  </head>  <body>" >$tgt_fl
    echo "<p>省代码和市代码: 统计中出现NULL说明有问题,需要修改<p> 开具来源: 统计中出现NULL说明有问题需要修改,取值集合:YY=营业,WT=网厅,ZT=掌厅,SG=手工开票,ZZ=自助终端,SF=第三方平台,PD=PDA,TY=天翼生活APP,YX=易销售<p>开票端代码: 统计中出现NULL说明有问题需要修改,各省自行定义<p>下载来源:  不能全部为NULL,NULL表示未下载或者未上传下载渠道参数,取值集合 YJ,YC,YD,UJ,UC,UD,UZ,UW,XW<p>下面是自动统计的字段上传明细.<p style="background-color:red">统计说明:第一列为统计字段的某个特征值,后边几个固定为特征值占统计样本百分比,特征值数量,销货方名称,发票请求流水号,发票号码,发票代码<p>每一行为一个目标字段的特征记录,比如一共三个开具来源为SG的记录,本统计只会记录其中的一个" >> $tgt_fl
    case $1 in
	"安徽")
	    {
		sed -i 's/shuih/9134/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql
	    }
	    ;;


	
	"北京")
	    {
		sed -i 's/shuih/9111/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;

	
	"福建")
	    {
		sed -i 's/shuih/9135/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"甘肃")
	    {
		sed -i 's/shuih/9162/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"广东")
	    {
		sed -i 's/shuih/9144/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"广西")
	    {
		sed -i 's/shuih/9145/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"贵州")
	    {
		sed -i 's/shuih/9152/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"海南")
	    {
		sed -i 's/shuih/9146/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"河北")
	    {
		sed -i 's/shuih/9113/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"河南")
	    {
		sed -i 's/shuih/9141/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"黑龙江")
	    {
		sed -i 's/shuih/9123/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"湖北")
	    {
		sed -i 's/shuih/9142/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"湖南")
	    {
		sed -i 's/shuih/9143/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"吉林")
	    {
		sed -i 's/shuih/9122/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"江苏")
	    {
		sed -i 's/shuih/9132/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"江西")
	    {
		sed -i 's/shuih/9136/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"辽宁")
	    {
		sed -i 's/shuih/9121/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"内蒙古")
	    {
		sed -i 's/shuih/9115/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;

	
	"宁夏")
	    {
		sed -i 's/shuih/9164/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"青海")
	    {
		sed -i 's/shuih/9163/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"山东")
	    {
		sed -i 's/shuih/9137/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"山西")
	    {
		sed -i 's/shuih/9114/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"陕西")
	    {
		sed -i 's/shuih/9161/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"上海")
	    {
		sed -i 's/shuih/9131/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"四川")
	    {
		sed -i 's/shuih/9151/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"天津")
	    {
		sed -i 's/shuih/9112/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"西藏")
	    {
		sed -i 's/shuih/9154/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"新疆")
	    {
		sed -i 's/shuih/9165/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"云南")
	    {
		sed -i 's/shuih/9153/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"浙江")
	    {
		sed -i 's/shuih/9133/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	
	"重庆")
	    {
		sed -i 's/shuih/9150/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
				echo "<hr> 省代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < prov.sql   >> $tgt_fl
		echo "<hr> 市代码" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < city.sql    >> $tgt_fl
		echo "<hr> 开票端" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kpd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql kpd.sql city.sql 

	    }
	    ;;


	





	







	



	*)
	    {
		echo "else"

	    }
    esac
    echo "</body> </html>" >> $tgt_fl
    
    shift
done
