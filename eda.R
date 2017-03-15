EDA <- function(x) {
    # 探索性数据分析方法
    par(mfrow = c(2, 2))  # 每页4个图
    hist(x)	# 直方图
    dotchart(x)	#点图
    boxplot(x, horizontal = T) 	# 水平箱线图
    qqnorm(x); qqline(x)		#正态概率图
    par(mfrow = c(1, 1))		# 恢复每页1图
}
sk <- function(x, na.omit=FALSE) {
    # 计算偏度与峰度
    if (na.omit)
        x <- x[!is.na(x)]
    m <- mean(x)
    n <- length(x)
    s <- sd(x)
    skew <- sum((x-m)^3/s^3)/n
    kurt <- sum((x-m)^4/s^4)/n - 3
    return(c(n=n, mean=m, stdev=s, skew=skew, kurtosis=kurt))
}

