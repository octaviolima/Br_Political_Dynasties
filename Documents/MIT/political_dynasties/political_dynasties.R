########################################################################
######################## Setting up Libraries ##########################
########################################################################

if (!require("pacman")) install.packages("pacman")
pacman::p_load(tidyverse, httr, lubridate, hrbrthemes, janitor, #tesseract,
               quanteda, readtext, pdftools, stringr, RCurl)




########################################################################
########################### Setting up Dir. ############################
########################################################################

setwd("/media/spinner/br_cand_docs/2020/txt")




########################################################################
##############################             #############################
############################## TOWN 00019  #############################
##############################             #############################
########################################################################


town_00019_01 <- readLines("00019/220000671881/15_1600384860519.txt") # PARENTS DATA FOUND!

match <- "Filiação|Filiacao|filiação|filiacao|
          Nome da mãe|Nome da mae|nome da mãe|nome da mae|Nome Mãe|Nome mae|
          Nome do pai|Nome do Pai|nome do pai|nome pai|Nome Pai|
          mãe|mae|Mae|Mãe|Pai|pai|
          filho de|Filho de|Filha de|filha de"

filiacao_line <- grepl(match, town_00019_01)

town_00019_01[filiacao_line == TRUE]

mae <- gsub(pattern = ".*: - (.*)$", x = town_00019_01[filiacao_line == TRUE],
            replacement = "\\1")

pai <- gsub(pattern = ".*- (.*)$", x = town_00019_01[which(filiacao_line == TRUE) + 1],
            replacement = "\\1")

mae

pai




########################################################################
##############################            ##############################
############################## TOWN 00035 ##############################
##############################            ##############################
########################################################################


town_00035_04 <- readLines("00035/220001081445/14_1601043802048.txt") # PARENTS DATA FOUND!
town_00035_05 <- readLines("00035/220001082524/15_1601047417682.txt") # PARENTS DATA FOUND!

filiacao_line <- grepl(match, town_00035_04)

filiacao <- unique(town_00035_04[filiacao_line == TRUE])
filiacao <- gsub("\\s+"," ",filiacao)

mae <- gsub(pattern = ".* :(.*)$", x = filiacao,
            replacement = "\\1")

pai 
  
  
  
  
  ########################################################################
###############################            #############################
############################### TOWN 80896 #############################
###############################            #############################
########################################################################


town_80896_01 <- readLines("80896/240000980009/14_1600204510235.txt")  # PARENTS DATA FOUND! 
town_80896_02 <- readLines("80896/240000981115/14_1600524737452.txt")  # PARENTS DATA FOUND! 
town_80896_03 <- readLines("80896/240000982188/14_1600381085383.txt")  # PARENTS DATA FOUND! 
town_80896_04 <- readLines("80896/240000982783/14_1600885691769.txt")  # PARENTS DATA FOUND! 
town_80896_06 <- readLines("80896/240000987167/14_1600964947198.txt")  # PARENTS DATA FOUND! 
town_80896_07 <- readLines("80896/240001158893/14_1601044521753.txt")  # PARENTS DATA FOUND!



