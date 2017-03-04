## 数据科学工作流程
![1_数据科学工作流程](https://raw.githubusercontent.com/engikeer/markdown/master/cache/1_%E6%95%B0%E6%8D%AE%E7%A7%91%E5%AD%A6%E5%B7%A5%E4%BD%9C%E6%B5%81%E7%A8%8B.png)

1. 数据导入：将数据导入R与保存数据
2. 数据整理：将数据整理为易处理的形式，以便后续建模分析
3. 反复理解数据
    + 数据可视化：数据以图形形式呈现
    + 数据转换：奖数据转为新的数据类型
    + 统计建模：建立分析模型
4. 作出推断（比如预测）
5. 沟通交流：结论输出与报告格式化
6. 自动化分析：创建自动化分析结果的数据科学产品
7. 程序开发：开发自定义R包。

## 每个步骤使用的R包
### 数据导入
+ [feather](https://blog.rstudio.org/2016/03/29/feather/)：一种快速，轻量级的文件格式。在R和python上都可使用。
+ [readr](https://blog.rstudio.org/2015/10/28/readr-0-2-0/)：实现表格数据的快速导入。中文介绍可参考[这里](http://www.xueqing.tv/cms/article/102)。
+ [xlsx](https://mirrors.tuna.tsinghua.edu.cn/CRAN/web/packages/xlsx/index.html)：读取Excel表格数据。
+ [readxl](https://blog.rstudio.org/2015/04/15/readxl-0-1-0/)：读取Excel表格数据。
+ [openxlsx](https://github.com/awalker89/openxlsx)：读取Excel表格数据。
+ [googlesheets](https://github.com/jennybc/googlesheets)：读取google表格数据。
+ [haven](https://blog.rstudio.org/2015/03/04/haven-0-1-0/)：读取SAS，SPSS和Stata格式的数据。
+ [httr](https://blog.rstudio.org/2016/02/02/httr-1-1-0/)：从网站开放的API中读取数据。
+ [rvest](https://blog.rstudio.org/2014/11/24/rvest-easy-web-scraping-with-r/)：网页数据抓取包。
+ [xml2](https://github.com/hadley/xml2)：读取HTML和XML格式的数据。
+ [webreadr](https://mirrors.tuna.tsinghua.edu.cn/CRAN/web/packages/webreadr/vignettes/Introduction.html)：读取常见的Web日志格式数据。
+ [DBI](https://github.com/rstats-db/DBI)：数据库管理系统通用接口包。
    + [RMySQL](https://github.com/rstats-db/RMySQL)：用于链接MySQL数据库。
    + [RPostgres](https://github.com/rstats-db/RPostgres)：用于链接PostgreSQL数据库。
    + [bigrquery](https://github.com/rstats-db/bigrquery)：用于链接[Google BigQuery](https://cloud.google.com/bigquery/docs/)。
+ [ROBDC](https://cran.r-project.org/web/packages/RODBC/)：ODBC数据库访问。
+ [PivotalR](https://github.com/pivotalsoftware/PivotalR)：用于读取Pivitol（Greenplum）和HAWQ数据库中的数据。
+ [dplyr](https://github.com/hadley/dplyr)：提供一个访问常见数据库的接口。
+ [data.table](https://github.com/Rdatatable/data.table)：data.table包的`fread()`函数可以快速读取大数据集。
+ [git2r](https://github.com/ropensci/git2r)：用于访问git仓库。

### 数据整理
+ [reshape2](https://github.com/hadley/reshape)：用于灵活地整合与重构数据。
+ [tidyr](https://github.com/hadley/tidyr)：用于整理表格数据的布局。
+ [dplyr](https://github.com/hadley/dplyr)：用于将多个数据表联结成一个整齐的数据集。
+ [purrr](https://github.com/hadley/purrr)：函数式编程工具，在做数据整理时非常有用。
+ [broom](http://varianceexplained.org/r/broom-intro/)：用于奖统计模型的结果整理成数据框形式。
+ [zoo](https://cran.r-project.org/web/packages/zoo/index.html)：定义了一个名为zoo的S3类型对象，用于描述规则的和不规则的有序的时间序列数据。
+ [mice](https://mirrors.tuna.tsinghua.edu.cn/CRAN/web/packages/mice/index.html)：用于填补缺失值。

### 数据可视化
+ [ggplot2](http://docs.ggplot2.org/current/)及其[扩展](http://www.ggplot2-exts.org/)：ggplot2包提供了一个强大的绘图系统，并实现了以下扩展：
    + [ggthemes](https://github.com/jrnold/ggthemes)：提供扩展的图形风格主题。
    + [ggmap](https://github.com/dkahle/ggmap)：提供Google Maps，Open Street Maps等流行的在线地图服务模块。
    + [ggiraph](https://github.com/davidgohel/ggiraph)：绘制交互式的ggplot图形。
    + [ggstance](https://github.com/lionel-/ggstance)：实现常见图形的横向版本。
    + [GGally](https://github.com/ggobi/ggally)：绘制散点图矩阵。
    + [ggalt](https://github.com/hrbrmstr/ggalt)：添加额外的坐标轴，geoms等。
    + [ggforce](https://github.com/thomasp85/ggforce)：添加额外的geoms。
    + [ggrepel](https://github.com/slowkow/ggrepel)：用于避免图形标签重叠。
    + [ggraph](https://github.com/thomasp85/ggraph)：用于绘制网格状、树状等特定形状的图形。
    + [ggpmisc](https://cran.rstudio.com/web/packages/ggpmisc/)：有关光生物学相关的扩展。
    + [geomnet](https://github.com/sctyner/geomnet)：绘制网络状图形。
    + [ggExtra](https://github.com/daattali/ggExtra)：绘制图形的边界直方图。
    + [gganimate](https://github.com/dgrtwo/gganimate)：绘制动画图。
    + [plotROC](https://github.com/sachsmc/plotROC)：绘制交互式ROC曲线图。
    + [ggspectra](https://cran.rstudio.com/web/packages/ggspectra/)：绘制光谱图。
    + [ggnetwork](https://github.com/briatte/ggnetwork)：网络状图形的geoms。
    + [ggradar](https://github.com/ricardo-bion/ggradar)：绘制雷达图。
    + [ggTimeSeries](https://github.com/Ather-Energy/ggTimeSeries)：时间序列数据可视化。
    + [ggtree](https://bioconductor.org/packages/release/bioc/html/ggtree.html)：树图可视化。
    + [ggseas](https://github.com/ellisp/ggseas)：季节调整工具。
+ [lattice](http://lattice.r-forge.r-project.org/)：生成栅栏图。
+ [rgl](https://cran.r-project.org/web/packages/rgl/vignettes/rgl.html)：交互式3D绘图。
+ [ggvis](http://ggvis.rstudio.com/)：交互式图标多功能系统。
+ [htmlwidgets](http://www.htmlwidgets.org/)：一个专为R语言打造的可视化JS库。
    + [leaflet](http://rstudio.github.io/leaflet/)：绘制交互式地图。
    + [dygraphs](http://rstudio.github.io/dygraphs/)：绘制交互式时间序列图。
    + [plotly](https://plot.ly/r/)：交互式绘图包，中文介绍见[这里](http://www.xueqing.tv/cms/article/93)。
    + [rbokeh](http://hafen.github.io/rbokeh/)：用于创建交互式图表和地图，中文介绍见[这里](http://www.xueqing.tv/cms/article/133)。
    + [Highcharter](http://jkunst.com/highcharter/)：绘制交互式Highcharts图。
    + [visNetwork](http://datastorm-open.github.io/visNetwork/)：绘制交互式网状图。
    + [networkD3](http://christophergandrud.github.io/networkD3/)：绘制交互式网状图。
    + [d3heatmap](https://github.com/rstudio/d3heatmap)：绘制交互式热力图，中文介绍见[这里](http://www.xueqing.tv/cms/article/171)。
    + [DT](http://rstudio.github.io/DT/)：用于创建交互式表格。
    + [threejs](http://cran.at.r-project.org/web/packages/rglwidget/index.html)：绘制交互式3d图形和地球仪
    + [rglwidget](http://cran.at.r-project.org/web/packages/rglwidget/index.html)：绘制交互式3d图形。
    + [DiagrammeR](http://rich-iannone.github.io/DiagrammeR/)：绘制交互式图表。
    + [MetricsGraphics](http://hrbrmstr.github.io/metricsgraphics/)：绘制交互式MetricsGraphics图
+ [rCharts](http://rdatascience.io/rCharts/)：提供了对多个javascript数据可视化库的R封装，如highcharts、nvd3、polychart。
+ [coefplot](http://github.com/jaredlander/coefplot)：可视化统计模型结果。
+ [quantmod](http://www.quantmod.com/)：可视化金融图表。
+ [colorspace](https://cran.r-project.org/web/packages/colorspace/vignettes/hcl-colors.pdf)：基于HSL的调色板
+ [viridis](https://github.com/sjmgarnier/viridis)：Matplotlib viridis调色板
+ [munsell](https://github.com/cwickham/munsell)：Munsell调色板
+ [RColorBrewer](https://mirrors.tuna.tsinghua.edu.cn/CRAN/web/packages/RColorBrewer/index.html)：图形调色板
+ [igraph](http://igraph.org/)：用于网络分析和可视化。
+ [latticeExtra](http://latticeextra.r-forge.r-project.org/)：lattice绘图系统扩展包。
+ [sp](https://github.com/edzer/sp/)：空间数据工具。
+ [processing](https://processing.org/reference/)：动态可视化工具。

### 数据转换
+ [dplyr](https://github.com/hadley/dplyr)：一个用于搞笑数据清理的R包。视频学习课程见[这里](http://www.xueqing.tv/course/31)
+ [magrittr](https://github.com/smbache/magrittr)：高效的管道操作工具包。
+ [tibble](https://github.com/tidyverse/tibble)：高效的显示表格数据的结构。
+ [stringr](https://blog.rstudio.org/2015/05/05/stringr-1-0-0/)：一个字符串处理工具集。
+ [lubridate](https://cran.r-project.org/web/packages/lubridate/vignettes/lubridate.html)：用于处理日期时间数据。
+ [xts](http://r-forge.r-project.org/projects/xts)：xts是对时间序列数据（zoo）的一种扩展实现，提供了时间序列的操作接口。
+ [data.table](https://github.com/Rdatatable/data.table/wiki)：用于快速处理大数据集。
+ [vtreat](https://github.com/WinVector/vtreat)：一个对预测模型进行变量预处理的工具。
+ [stringi](http://www.rexamine.com/resources/stringi/)：一个快速字符串处理工具。
+ [Matrix](http://matrix.r-forge.r-project.org/)：著名的稀释矩阵包

### 统计建模与推断
+ [car](https://r-forge.r-project.org/projects/car/)：提供了大量的增强版的拟合和评价回归模型的函数。
+ [Hmisc](https://github.com/harrelfe/Hmisc)：提供了各种用于数据分析的函数。
+ [multcomp](http://multcomp.r-forge.r-project.org/):参数模型中的常见线性假设的同时检验和置信区间计算，包括线性、广义线性、线性混合效应和生存模型。
+ [pbkrtest](http://people.math.aau.dk/~sorenh/software/pbkrtest/)：用于线性混合效应模型的参数Bootstrap检验。
+ [MatrixModels](http://matrix.r-forge.r-project.org/)：用于稠密矩阵和稀疏矩阵建模。
+ [mvtnorm](http://mvtnorm.r-forge.r-project.org/)：用于计算多元正态分布和t分布的概率、分位数、随机偏差等。
+ [SparseM](http://www.econ.uiuc.edu/~roger/research/sparse/sparse.html)：用于稀疏矩阵的基本线性代数运算。
+ [ime4](https://github.com/lme4/lme4)：利用C++矩阵库Eigen进行线性混合效应模型的计算。
+ [broom](http://varianceexplained.org/r/broom-intro/)：将统计模型结果整理成数据框形式。
+ [caret](http://topepo.github.io/caret/index.html)：用于解决分类和回归问题的数据训练综合工具包。
+ [glmnet](https://web.stanford.edu/~hastie/glmnet/glmnet_alpha.html)：通过极大惩罚似然来拟合广义线性模型。
+ [gbm](https://github.com/gbm-developers/gbm)：用于实现随机梯度提升算法。
+ [xgboost](https://github.com/dmlc/xgboost)：Gradient Boosting Machine的C++实现。详细介绍见[这里](https://cos.name/2015/03/xgboost/)。
+ [randomForest](https://www.stat.berkeley.edu/~breiman/RandomForests/)：提供了用随机森林做回归和分类的函数。
+ [ranger](https://github.com/imbs-hl/ranger)：用于随机森林算法的快速实现。
+ [h2o](http://www.h2o.ai/)：核心数据分析平台。用户可部署H2O的R程序安装包，之后就可在R语言环境下运行。
+ [ROCR](http://rocr.bioinf.mpi-sb.mpg.de/)：通过绘图来可视化分类器的综合性能。
+ [pROC](http://web.expasy.org/pROC/)：用于可视化，平滑和对比ROC曲线。

### 沟通交流
+ [rmarkdown](http://rmarkdown.rstudio.com/)：用于创建克重复性报告和动态文档。
+ [knitr](http://yihui.name/knitr/)：用于在PDF和HTML文档中嵌入R代码块。
+ [flexdashboard](http://rmarkdown.rstudio.com/flexdashboard/)：基于rmarkdown，可以轻松的创建仪表盘。
+ [bookdown](https://bookdown.org/)：以R Markdown为基础，用于创作书籍和长篇文档。
+ [rticles](https://github.com/rstudio/rticles)：提供了一套R Markdown模版。
+ [tufte](http://rstudio.github.io/tufte/)：用于实现Tufte讲义风格的Rmarkdown模版。
+ [DT](http://rstudio.github.io/DT/)：用于创建交互式的数据表。
+ [pixiedust](https://github.com/nutterb/pixiedust)：用于自定义数据表的输出。
+ [xtable](https://cran.r-project.org/web/packages/xtable/vignettes/xtableGallery.pdf)：用于自定义数据表的输出。
+ [highr](https://github.com/yihui/highr)：用于实现R代码的LaTeX或HTML格式输出。
+ [formatR](https://yihui.name/formatR/)：通过`tidy_source()`格式R代码的输出。
+ [yaml](https://github.com/viking/r-yaml)：用于实现R数据与[YAML](https://zh.wikipedia.org/wiki/YAML)格式数据之间的通信。

### 自动化分析
+ [shiny](http://shiny.rstudio.com/)：使用R语言开发交互式web应用程序的工具。中文介绍见[这里](http://www.xueqing.tv/cms/article/168)。
    + [shinydashboard](http://rstudio.github.io/shinydashboard/)：用于创建交互式仪表盘。
    + [shinythemes](http://rstudio.github.io/shinythemes/)：给出了Shiny应用程序的常用风格主题
    + [shinyAce](http://trestletech.github.io/shinyAce/)：为Shiny应用程序开发者提供了[Ace代码编辑器](https://ace.c9.io/)。
    + [shinyjs](https://github.com/daattali/shinyjs/blob/master/README.md)：用于在Shiny应用程序中执行常见的JavaScript操作。
    + [miniUI](https://github.com/rstudio/miniUI)：提供了一个UI小部件，用于在R命令行中集成交互式应用程序。
    + [shinyapps.io](https://www.shinyapps.io/)：为创建的Shiny应用程序提供托管服务。
    + [Shiny Server Open Source](https://www.rstudio.com/products/shiny/shiny-server/)：为Shiny应用程序提供开源免费的服务器。
    + [Shiny Server Pro](https://www.rstudio.com/products/shiny/shiny-server/)：为企业级用户提供一个Shiny应用程序服务器。
+ [rsconnect](http://shiny.rstudio.com/articles/shinyapps.html)：用于将Shiny应用程序部署到[shinyapps.io](https://www.shinyapps.io/)。
+ [plumber](http://plumber.trestletech.com/)：用于将R代码转化为一个web API
+ [rmarkdown](http://rmarkdown.rstudio.com/)：用于创建可重复性报告和动态文档。
+ [rstudioapi](https://github.com/rstudio/rstudioapi)：用于安全地访问RStudio IDE的API。

### 程序开发
+ [RStudio Desktop IDE](https://www.rstudio.com/products/rstudio/#Desktop)：R的IDE。
+ [RStudio Server Open Source](https://www.rstudio.com/products/rstudio/#Server)：开源免费的RStudio服务器。
+ [RStudio Server Professional](https://www.rstudio.com/products/rstudio/#Server)：商业版RStudio服务器。
+ [devtools](https://github.com/hadley/devtools)：让开发R包变得简单的工具集。
+ [packrat](https://rstudio.github.io/packrat/)：创建项目的特定库，用于处理包的版本问题，增强代码重现能力。
+ [drat](https://github.com/eddelbuettel/drat)：用于创建和使用备选R包库的工具。
+ [testthat](https://journal.r-project.org/archive/2011-1/RJournal_2011-1_Wickham.pdf)：单元测试，让R包稳定、健壮，减少升级的痛苦。
+ [roxygen2](https://github.com/klutometis/roxygen)：通过注释的方式，生成文档，远离LaTeX的烦恼。
+ [purrr](https://github.com/hadley/purrr)：用于提供函数式编程方法的工具。
+ [profvis](https://github.com/rstudio/profvis)：用于可视化R代码的性能分析数据。
+ [Rcpp](http://www.rcpp.org/)：用于实现R与C++的无缝整合。详见[这里](http://cos.name/2016/01/seamless-r-and-c-integration-with-rcpp/)。
+ [R6](https://github.com/wch/R6)：R语言的一个面向对象的R包，克更加高效的构建面向对象系统。
+ [htmltools](https://github.com/rstudio/htmltools)：用于生成HTML格式输出。
+ [nloptr](https://github.com/jyypma/nloptr)：提供了一个[NLopt非线性优化库](http://ab-initio.mit.edu/wiki/index.php/NLopt)的接口。
+ [minaqa](http://optimizer.r-forge.r-project.org/)：一个二次近似的优化算法包。
+ [rngtools](http://renozao.github.io/rngtools/)：用于处理随机数生成器的实用工具。
+ [NMF](http://renozao.github.io/NMF/)：提供了一个执行非负矩阵分解的算法和框架。
+ [crayon](https://github.com/gaborcsardi/crayon)：用于在输出终端添加颜色。
+ [RJSONIO](https://github.com/duncantl/RJSONIO)：rjson是进行R与json转化的包，支持用C类库转型和R语言本身转型两种方式。
+ [jsonlite](https://github.com/jeroenooms/jsonlite)：用于实现R语言与json数据格式之间的转化。
+ [RcppArmadillo](https://github.com/RcppCore/RcppArmadillo)：提供了一个Armadillo C++ Library（一种C++的线性代数库）。

### 实验数据
+ [babynames](https://github.com/hadley/babynames)：包含由美国社会保障局提供的三个数据集。
+ [neiss](https://github.com/hadley/neiss)：2009-2014年期间提供给美国急诊室饿所有事故报告样本数据。
+ [yrbss](https://github.com/hadley/yrbss)：美国疾病控制中心2009-2013年期间青年危险行为检测数据。
+ [hflights](https://github.com/hadley/hflights)：2011年离开休斯敦的航班数据。
+ [USAboundaries](https://github.com/ropensci/USAboundaries)：美国的历史和当代边界。
+ [rworldmap](https://github.com/AndySouth/rworldmap)：国家边界数据。
+ [usdanutrients](https://github.com/hadley/usdanutrients)：美国农业部营养数据库。
+ [fueleconomy](https://github.com/hadley/fueleconomy)：美国环保署1984-2015年期间的燃油经济数据。
+ [nasaweather](https://github.com/hadley/nasaweather)：覆盖中美洲的24*24格的地理位置和大气测量数据。
+ [mexico-mortality](https://github.com/hadley/mexico-mortality)：墨西哥死亡人数数据。
+ [data-movies](https://github.com/hadley/data-movies)和[ggplotmovies](https://cran.r-project.org/web/packages/ggplot2movies/)：来自电影数据库[imdb.com](http://imdb.com/)的数据。
+ [pop-flows](https://github.com/hadley/pop-flows)：2008年全美人口流动数据。
+ [data-housing-crisis](https://github.com/hadley/data-housing-crisis)：经过清洗后的2008年美国房地产危机数据。
+ [gun-sales](https://github.com/NYTimes/gunsales)：纽约时报提供的有关每月枪支购买背景调查统计分析数据。
+ [stationaRy](https://github.com/jennybc/gapminder)：从成千上万个全球站点收集到的每小时气象数据。
+ [gapminder](https://github.com/jennybc/gapminder)：摘自[Gapminder](http://www.gapminder.org/data/)的数据。
+ [janeaustenr](https://github.com/juliasilge/janeaustenr)：简·奥斯丁小说全集数据。

### 标准
一个有用的R包应该执行一个有用的任务，并且能够很好的完成任务。以下是辨别有用的R包的一些条件。
+ The code in the package runs fast, with few errors.
+ The code in the package has an intuitive syntax that is easy to remember.
+ The package plays well with other packages; you do not need to munge your data into new forms to use the package.
+ The package is widely used and recommended by its users.
+ The package has a development website, or series of vignettes, that make the package easy to learn.
+ The package is developed in the open (e.g. on Github or RForge).
+ The package uses tests to ensure that it will be stable and bug free well into the future.
+ The package is stable and available from CRAN, or we are personally involved with the package and committed to its development.

参考文章
+ [RStartHere](https://github.com/rstudio/RStartHere)