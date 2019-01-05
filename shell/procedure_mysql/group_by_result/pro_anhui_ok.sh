

sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql 





until [ $# -eq 0 ]
do
    echo "当前处理的参数为 $1"
    tgt_fl="$1"result.html
    echo > $tgt_fl
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
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql prov.sql city.sql kpd.sql 
	    }
	    ;;


	
	"北京")
	    {
		sed -i 's/shuih/9134/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;

	
	"福建")
	    {
		sed -i 's/shuih/9135/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"甘肃")
	    {
		sed -i 's/shuih/9162/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"广东")
	    {
		sed -i 's/shuih/9144/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"广西")
	    {
		sed -i 's/shuih/9145/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"贵州")
	    {
		sed -i 's/shuih/9152/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"海南")
	    {
		sed -i 's/shuih/9146/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"河北")
	    {
		sed -i 's/shuih/9113/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"河南")
	    {
		sed -i 's/shuih/9141/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"黑龙江")
	    {
		sed -i 's/shuih/9123/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"湖北")
	    {
		sed -i 's/shuih/9142/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"湖南")
	    {
		sed -i 's/shuih/9143/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"吉林")
	    {
		sed -i 's/shuih/9122/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"江苏")
	    {
		sed -i 's/shuih/9132/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"江西")
	    {
		sed -i 's/shuih/9136/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"辽宁")
	    {
		sed -i 's/shuih/9121/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"内蒙古")
	    {
		sed -i 's/shuih/9115/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;

	
	"宁夏")
	    {
		sed -i 's/shuih/9164/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"青海")
	    {
		sed -i 's/shuih/9163/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"山东")
	    {
		sed -i 's/shuih/9137/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"山西")
	    {
		sed -i 's/shuih/9114/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"陕西")
	    {
		sed -i 's/shuih/9161/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"上海")
	    {
		sed -i 's/shuih/9131/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"四川")
	    {
		sed -i 's/shuih/9151/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"天津")
	    {
		sed -i 's/shuih/9112/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"西藏")
	    {
		sed -i 's/shuih/9154/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"新疆")
	    {
		sed -i 's/shuih/9165/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"云南")
	    {
		sed -i 's/shuih/9153/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"浙江")
	    {
		sed -i 's/shuih/9133/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	
	"重庆")
	    {
		sed -i 's/shuih/9150/g' kjly.sql xzqd.sql 
		echo "<hr><p>开具来源<br>"  >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < kjly.sql  >> $tgt_fl 
		echo "<hr>下载渠道" >> $tgt_fl
		mysql -H -N -uroot -prootoo voh < xzqd.sql   >> $tgt_fl
		sed -i 's/91.*%/shuih%/g' kjly.sql xzqd.sql

	    }
	    ;;


	





	







	



	*)
	    {
		echo "else"

	    }
	esac
    shift
done
