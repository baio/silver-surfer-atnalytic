Sys.setlocale(category="LC_CTYPE", locale = "russian")
data <- read.csv("./data/magic-ss.csv", stringsAsFactors=FALSE, encoding="UTF-8")

colnames(data) <- c("dt", "date", "instr", "bs", "force", "lim", "page")

data$ticket <- ""
data[which(data$instr == "МосБиржа"),]$ticket <- "MOEX" 
data[which(data$instr == "Северсталь"),]$ticket <- "CHFM" 
data[which(data$instr == "Сбербанк преф"),]$ticket <- "SBERP" 
data[which(data$instr == "Сургутнефтегаз преф"),]$ticket <- "SNGSP" 
data[which(data$instr == "Транснефть"),]$ticket <- "TRNFP" 
data[which(data$instr == "РусГидро"),]$ticket <- "HYDR" 

data[which(data$instr == "Газпром"),]$ticket <- "GAZP" 
data[which(data$instr == "Сбербанк"),]$ticket <- "SBER" 
data[which(data$instr == "ГМК НорНик"),]$ticket <- "GMKN" 
data[which(data$instr == "Сургутнефтегаз"),]$ticket <- "SNGS" 
data[which(data$instr == "ФСК ЕЭС"),]$ticket <- "FEES" 
data[which(data$instr == "МТС"),]$ticket <- "MTSS" 

data[which(data$instr == "ИнтерРаоЕЭС"),]$ticket <- "IRAO" 
data[which(data$instr == "ВТБ"),]$ticket <- "VTBR" 
data[which(data$instr == "Российские сети"),]$ticket <- "RSTI" 
data[which(data$instr == "Новатэк"),]$ticket <- "NVTK" 
data[which(data$instr == "Татнефть"),]$ticket <- "TATN" 
data[which(data$instr == "Лукойл"),]$ticket <- "LKOH" 

data[which(data$instr == "Алроса"),]$ticket <- "ALROS" 
data[which(data$instr == "Аэрофлот"),]$ticket <- "AFLT" 
data[which(data$instr == "Уралкалий"),]$ticket <- "URKA" 
data[which(data$instr == "Ростелеком"),]$ticket <- "RTKM" 
data[which(data$instr == "Магнит"),]$ticket <- "MGNT" 
data[which(data$instr == "Роснефть"),]$ticket <- "ROSN" 

data[which(data$instr == "Ростелеком преф"),]$ticket <- "RTKMP" 
data[which(data$instr == "НЛМК"),]$ticket <- "NLMK" 

unique(data$value_2)

data$ticker <- []

/*
  [1] "МосБиржа"            "Северсталь"          "Сбербанк преф"       "Сургутнефтегаз преф" "Транснефть"          "РусГидро"           
[7] "Газпром"             "Сбербанк"            "ГМК НорНик"          "Сургутнефтегаз"      "ФСК ЕЭС"             "МТС"                
[13] "ИнтерРаоЕЭС"         "ВТБ"                 "Российские сети"     "Новатэк"             "Татнефть"            "Лукойл"             
[19] "Алроса"              "Аэрофлот"            "Уралкалий"           "Ростелеком"          "Магнит"              "Роснефть"           
[25] "Ростелеком преф"     "НЛМК"       

MOEX CHFM SBERP SNGSP TRNFP HYDR GAZP SBER GMKN FEES MTSS IRAO VTBR RSTI NVTK TATN  LKOH ALRS AFLT URKA

*/  