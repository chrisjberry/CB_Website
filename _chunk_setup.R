library(bs4cards)
library(readxl)
library(tidyverse)
library(pander)
library(broom)
library(webex)

source('utils.R')
options(scipen=4, digits=4)
knitr::opts_chunk$set(
  echo = T,
  include = T, 
  cache=T,
  comment=""
)

theme_set(theme_gray(base_size = 16))
