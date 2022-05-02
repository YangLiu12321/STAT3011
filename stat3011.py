#!/usr/bin/env python
# coding: utf-8

# In[3]:


import pandas as pd
data = pd.read_csv("train.csv")


#install the packages of changing the messy column name
install.packages("pyjanitor")
library(pyjanitor)

data<-read.csv("train (1).csv") #read the data from the pc
data<-clean_names(data) #changing the messy column names 
colnames(data) #display the column names for refrences
data1<-data[,-1] #remove the first useless id column 
data1[is.na(data1)] = 0 #remove all NA value in the data set

#we can check the level of the data in different categorical variable first 
factor(data1$ms_zoning)
factor(data1$street)
factor(data1$alley)
#these are the examples of listing all factor of the data in each variable
#you can find the level by typing the same code on the remaining variable


#these algorithm aims to change the categorical variable into numeric
a<-transform(
  data1,
  ms_zoning  = as.integer(as.factor(ms_zoning))
)

a<-transform(
  a,
  street  = as.integer(as.factor(street))
)

a<-transform(
  a,
  lot_shape  = as.integer(as.factor(lot_shape))
)

a<-transform(
  a,
  land_contour  = as.integer(as.factor(land_contour))
)

a<-transform(
  a,
  utilities  = as.integer(as.factor(utilities))
)

a<-transform(
  a,
  lot_config  = as.integer(as.factor(lot_config))
)

a<-transform(
  a,
  land_slope  = as.integer(as.factor(land_slope))
)

a<-transform(
  a,
  neighborhood  = as.integer(as.factor(neighborhood))
)

a<-transform(
  a,
  condition1  = as.integer(as.factor(condition1))
)

a<-transform(
  a,
  condition2  = as.integer(as.factor(condition2))
)

a<-transform(
  a,
  bldg_type  = as.integer(as.factor(bldg_type))
)

a<-transform(
  a,
  house_style  = as.integer(as.factor(house_style))
)

a<-transform(
  a,
  roof_style  = as.integer(as.factor(roof_style))
)

a<-transform(
  a,
  roof_matl  = as.integer(as.factor(roof_matl))
)

a<-transform(
  a,
  exterior1st  = as.integer(as.factor(exterior1st))
)

a<-transform(
  a,
  exterior2nd  = as.integer(as.factor(exterior2nd))
)

a<-transform(
  a,
  mas_vnr_type  = as.integer(as.factor(mas_vnr_type))
)

a<-transform(
  a,
  exter_qual  = as.integer(as.factor(exter_qual))
)

a<-transform(
  a,
  exter_cond  = as.integer(as.factor(exter_cond))
)

a<-transform(
  a,
  foundation  = as.integer(as.factor(foundation))
)

a<-transform(
  a,
  bsmt_qual  = as.integer(as.factor(bsmt_qual))
)


a<-transform(
  a,
  bsmt_cond  = as.integer(as.factor(bsmt_cond))
)

a<-transform(
  a,
  bsmt_exposure  = as.integer(as.factor(bsmt_exposure))
)


a<-transform(
  a,
  bsmt_fin_type1  = as.integer(as.factor(bsmt_fin_type1))
)

a<-transform(
  a,
  bsmt_fin_type2  = as.integer(as.factor(bsmt_fin_type2))
)

a<-transform(
  a,
  heating  = as.integer(as.factor(heating))
)

a<-transform(
  a,
  heating_qc  = as.integer(as.factor(heating_qc))
)

a<-transform(
  a,
  central_air  = as.integer(as.factor(central_air))
)

a<-transform(
  a,
  electrical  = as.integer(as.factor(electrical))
)

a<-transform(
  a,
  kitchen_qual  = as.integer(as.factor(kitchen_qual))
)

a<-transform(
  a,
  functional  = as.integer(as.factor(functional))
)

a<-transform(
  a,
  fireplace_qu  = as.integer(as.factor(fireplace_qu))
)

a<-transform(
  a,
  garage_type  = as.integer(as.factor(garage_type))
)


a<-transform(
  a,
  garage_finish  = as.integer(as.factor(garage_finish))
)


a<-transform(
  a,
  garage_qual  = as.integer(as.factor(garage_qual))
)

a<-transform(
  a,
  garage_cond  = as.integer(as.factor(garage_cond))
)

a<-transform(
  a,
  paved_drive  = as.integer(as.factor(paved_drive))
)

a<-transform(
  a,
  pool_qc  = as.integer(as.factor(pool_qc))
)

a<-transform(
  a,
  fence  = as.integer(as.factor(fence))
)

a<-transform(
  a,
  misc_feature  = as.integer(as.factor(misc_feature))
)

a<-transform(
  a,
  sale_type  = as.integer(as.factor(sale_type))
)

a<-transform(
  a,
  sale_condition  = as.integer(as.factor(sale_condition))
)


write.csv(a,file="training_data.csv") #Export the dataset to the new .csv file


