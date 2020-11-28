# 从小木虫网站批量提取考研调剂信息
library(RCurl)
library(XML)


# 下载网页html文档
download <- function(strURL){
    h <- basicTextGatherer()# 查看服务器返回的头信息
    txt <- getURL(strURL, headerfunction = h$update,.encoding="gbk") # 返回字符串形式的html
    htmlParse(txt,asText=T,encoding="gbk")      #选择gbk进行网页的解析
}

# 解析网页内所有地址
extradress <- function(strURL){
    prefix <- "http://muchong.com/"
    pattern <- "html/[0-9/]+.html"
    links <- getHTMLLinks(strURL)
    needlinks <- gregexpr(pattern,links)
    needlinkslist <- list()
    for (i in which(unlist(needlinks)>0)){
        preadress <- substr(links[i],needlinks[[i]],needlinks[[i]]+attr(needlinks[[i]],'match.length')-1)
        needlinkslist<- c(needlinkslist,list(preadress))
        adresses <- lapply(needlinkslist,function(x)paste(prefix,x,sep=""))
    }
    return (adresses)
}

# 获取发帖主题
gettopic <- function(doc){
    xmlValue(getNodeSet(doc,'//p')[[2]])
}

# 用于正则匹配并获取结果的函数
greg <- function(pattern,istring){
    gregout <- gregexpr(pattern,istring)
    substr(istring,gregout[[1]],gregout[[1]]+attr(gregout[[1]],'match.length')-1)
}

# 获取发帖信息
getinf <- function(topic){
    pattern1 <- "招[\u4E00-\u9FA5]+[0-9-]*[\u4E00-\u9FA5]*[：、；，,;]*[\u4E00-\u9FA5]*[：、；，,;]*[\u4E00-\u9FA5]*[：、；，,;]*[\u4E00-\u9FA5]*[：、；，,;]*[\u4E00-\u9FA5]*(研究生)|(调剂)"
    pattern2 <- "([\u4E00-\u9FA5]*课题组|[\u4E00-\u9FA5]*团队)"  
    pattern21 <- "[\u4E00-\u9FA5]*[：、；，,;]*(教授|博士)"
    pattern3 <- "[\u4E00-\u9FA5]*[：、；，,;]*[-A-Za-z0-9_.%]+@[-A-Za-z0-9_.%]+\\.[A-Za-z]+[.A-Za-z]*"
    #匹配@163.com类或者@abc.edu.cn两类邮箱
    pattern4 <- "[\u4E00-\u9FA5]+老师"  #匹配某老师
    pattern5 <- "[\u4E00-\u9FA5]*[：:]*1[3,5,8]{1}[0-9]{1}[0-9]{8}|0[0-9]{2,3}-[0-9]{7,8}(-[0-9]{1,4})?" #匹配联系人和号码
    pattern6 <- "(主|从事)*[\u4E00-\u9FA5]*(的研究|方向)为*[：、；，,;]*[\u4E00-\u9FA5]*"
    pattern7 <- "[\u4E00-\u9FA5]+(大学|学院|研究院|研究所)"
    pattern8 <-"[-A-Za-z0-9_.%]+@[-A-Za-z0-9_.%]+\\.[A-Za-z]+[.A-Za-z]*" #精确匹配邮箱
    
    
    cate <- greg(pattern1,topic)
    proj <- greg(pattern2,topic)
    PI <- greg(pattern21,topic)
    email <- greg(pattern3,topic)
    man <- greg(pattern4,topic)
    phone <- greg(pattern5,topic)
    direc <- greg(pattern6,topic)
    univ <- greg(pattern7,topic)
    print(cate)
    if (greg("(分子|生物|植物|细胞|医学|动物|水)+",topic) !=""){
        if (man =="" && proj != ""){
            man <- unlist(strsplit(proj,"课题组")[1])
        }
        
        if (email != ""){
            email <- greg(pattern8,email)
        }
        
        data.frame("类别"=cate,"大学"=univ,"课题"=proj,"PI"=PI,"联系人"=man,"邮箱"=email,"方向"=direc,"电话"=phone)
    }
    else{
        return("")
    }
}

strURLs="http://muchong.com/html/f430.html" #  调剂信息第一页地址
n=50
dat <- data.frame("URL"="URL","类别"="类别","大学"="大学","课题"="课题","PI"="PI","联系人"="联系人","邮箱"="邮箱","方向"="方向","电话"="电话")
# 生成调剂信息每一页的地址
strURLs <- c(strURLs,paste(rep("http://muchong.com/html/f430_",n),c(2:n),".html",sep=""))
output1 <- "a2017.2.21.txt" #  未处理数据，用于进一步处理
output2 <- "b2017.2.21.txt" #  进一步筛选的数据，用于查看

# 获取所有发帖的地址，并进行条目化
for ( strURL in strURLs){
    adresses <- extradress(strURL)
    for (adress in adresses){
        message(adress)
        doc <- download(adress)
        topic <- gettopic(doc)
        inf <- getinf(topic)
        if (inf != ""){
            URL <- data.frame("URL"=adress)
            inf <- cbind(URL,inf)
            dat<- rbind(dat,inf)
        }
    }
}

write.table(dat, file = output, row.names = F, col.names=F,quote = F, sep="\t")  # tab 分隔的文件
message("完成！")

dat <- read.table(output1,sep="\t",header=T)
dat <- dat[dat$邮箱, ] #去除没有邮箱数据
dat <- dat[!duplicated(dat$邮箱), ]  #去除重复邮箱数据
dat$index <- as.numeric(rownames(dat))
dat <- dat[order(dat$index,decreasing=F),] #将乱序后的数据重新按照index排序
dat$index <- NULL
write.table(dat, file = output2, row.names = F, col.names=F,quote = F, sep="\t")  # tab 分隔的文件
message("完成！")
