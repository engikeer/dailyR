library(RCurl)
library(XML)

# 定义下载数据的函数
download.mc <- function(strURL) {
    h <- basicHeaderGatherer()  # 查看服务器返回的头信息
    txt <- getURL(strURL, headerfunction = h$update, .encoding = "gbk") # 字符串形式
    htmlParse(txt, asText = T, encoding = "gbk")
} 