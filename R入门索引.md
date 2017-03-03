## 数据科学工作流程
![1_数据科学工作流程](https://raw.githubusercontent.com/engikeer/markdown/master/cache/1_%E6%95%B0%E6%8D%AE%E7%A7%91%E5%AD%A6%E5%B7%A5%E4%BD%9C%E6%B5%81%E7%A8%8B.png)
1. 数据导入
2. 数据整理
3. 反复理解数据
    * 数据可视化
    * 数据转换
    * 统计建模
4. 作出推断（比如预测）
5. 沟通交流
6. 自动化分析
7. 程序开发

## 每个步骤使用的R包
### 数据导入
+ [feather]()：一种快速，轻量级的文件格式。在R和python上都可使用。
+ [readr]()：实现表格数据的快速导入。中文介绍可参考[这里]()。
+ [xlsx]()：读取Excel表格数据。
+ [readxl]()：读取Excel表格数据。
+ [openxlsx]()：读取Excel表格数据。
+ [googlesheets]()：读取google表格数据。
+ [haven]()：读取SAS，SPSS和Stata格式的数据。
+ [httr]()：从网站开放的API中读取数据。
+ [rvest]()：网页数据抓取包。
+ [xml2]()：读取HTML和XML格式的数据。
+ [webreadr]()：读取常见的Web日志格式数据。
+ [DBI]()：数据库管理系统通用接口包。
    + [RMySQL]()：用于链接MySQL数据库。
    + [RPostgres]()：用于链接PostgreSQL数据库。
    + [bigrquery]()：用于链接[Google BigQuery]()。
+ [ROBDC](https://cran.r-project.org/web/packages/RODBC/)：ODBC数据库访问。
+ [PivotalR]()：用于读取Pivitol（Greenplum）和HAWQ数据库中的数据。
+ [dplyr]()：提供一个访问常见数据库的接口。
+ [data.table]()：data.table包的`fread()`函数可以快速读取大数据集。
+ [git2r]()：用于访问git仓库。

### 数据整理
+ [reshape2](https://github.com/hadley/reshape)：用于灵活地整合与重构数据。
+ 

### 数据可视化
