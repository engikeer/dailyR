EDA <- function(x) {
  # 探索性数据分析方法
  par(mfrow = c(2, 2))  # 每页4个图
  hist(x)	# 直方图
  dotchart(x)	#点图
  boxplot(x, horizontal = T) 	# 水平箱线图
  qqnorm(x); qqline(x)		#正态概率图
  par(mfrow = c(1, 1))		# 恢复每页1图
}

