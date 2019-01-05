sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql

tgt_fl_jt=./jituan/集团总数.txt
echo > $tgt_fl_jt

until [ $# -eq 0 ]
do
    echo "当前处理的参数为 $1"
    tgt_fl=./mingxi/"$1"错误字段明细.html


    echo "<!DOCTYPE html> <html> <head> <meta charset="utf-8">  </head>  <body>" >$tgt_fl
    echo "<p>省代码和市代码: 统计中出现NULL说明有问题,需要修改<p> 开具来源: 统计中出现NULL说明有问题需要修改,取值集合:YY=营业,WT=网厅,ZT=掌厅,SG=手工开票,ZZ=自助终端,SF=第三方平台,PD=PDA,TY=天翼生活APP,YX=易销售<p>开票端代码: 统计中出现NULL说明有问题需要修改,各省自行定义<p>下载来源:  不能全部为NULL,NULL表示未下载或者未上传下载渠道参数,取值集合 YJ,YC,YD,YK,YZ,UJ,UC,UD,UZ,UW,XW<hr>" >> $tgt_fl
    case $1 in
	"安徽")
	    {
		sed -i 's/shuih/9134/g' tozhangc.sql  tojituan.sql  tojituan.sql 

		
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl

		
		#echo -n "$1,"  >> $tgt_fl_jt
		#mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 
	    }
	    ;;


	
	"北京")
	    {
		sed -i 's/shuih/9111/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;

	
	"福建")
	    {
		sed -i 's/shuih/9135/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"甘肃")
	    {
		sed -i 's/shuih/9162/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"广东")
	    {
		sed -i 's/shuih/9144/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"广西")
	    {
		sed -i 's/shuih/9145/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"贵州")
	    {
		sed -i 's/shuih/9152/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"海南")
	    {
		sed -i 's/shuih/9146/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"河北")
	    {
		sed -i 's/shuih/9113/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"河南")
	    {
		sed -i 's/shuih/9141/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"黑龙江")
	    {
		sed -i 's/shuih/9123/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"湖北")
	    {
		sed -i 's/shuih/9142/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"湖南")
	    {
		sed -i 's/shuih/9143/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"吉林")
	    {
		sed -i 's/shuih/9122/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"江苏")
	    {
		sed -i 's/shuih/9132/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"江西")
	    {
		sed -i 's/shuih/9136/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"辽宁")
	    {
		sed -i 's/shuih/9121/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"内蒙古")
	    {
		sed -i 's/shuih/9115/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;

	
	"宁夏")
	    {
		sed -i 's/shuih/9164/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"青海")
	    {
		sed -i 's/shuih/9163/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"山东")
	    {
		sed -i 's/shuih/9137/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"山西")
	    {
		sed -i 's/shuih/9114/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"陕西")
	    {
		sed -i 's/shuih/9161/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"上海")
	    {
		sed -i 's/shuih/9131/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"四川")
	    {
		sed -i 's/shuih/9151/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"天津")
	    {
		sed -i 's/shuih/9112/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"西藏")
	    {
		sed -i 's/shuih/9154/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"新疆")
	    {
		sed -i 's/shuih/9165/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"云南")
	    {
		sed -i 's/shuih/9153/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"浙江")
	    {
		sed -i 's/shuih/9133/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

	    }
	    ;;


	
	"重庆")
	    {
		sed -i 's/shuih/9150/g' tozhangc.sql  tojituan.sql 
		
		mysql -H -uroot -prootoo voh < tozhangc.sql  >> $tgt_fl 

		echo -n "$1,"  >> $tgt_fl_jt
		mysql -uroot -prootoo -N voh < tojituan.sql  >> $tgt_fl_jt

		sed -i 's/91.*%/shuih%/g' tozhangc.sql  tojituan.sql 

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
