#install the packages of changing the messy column name and fast reading of the dataset
install.packages("janitor")
install.packages("readr")
library(janitor)
library(readr)


data<-read.csv("train (1).csv") #read the data from the pc
data<-clean_names(data) #changing the messy column names 
colnames(data)
data1<-data[,-1] #remove the first id column 
data1[is.na(data1)] = 0 #remove all NA value in the data set

#we can check the level of the data in different variable first 
aa<-factor(data1$ms_zoning)
ab<-factor(data1$street)
ac<-factor(data1$land_contour)
ad<-factor(data1$lot_shape)
ae<-factor(data1$utilities)
af<-factor(data1$lot_config)
ag<-factor(data1$land_slope)
ah<-factor(data1$neighborhood)
ai<-factor(data1$condition1)
aj<-factor(data1$condition2)
ak<-factor(data1$bldg_type)
al<-factor(data1$house_style)
am<-factor(data1$roof_style)
an<-factor(data1$exterior1st)
ao<-factor(data1$exterior2nd)
ap<-factor(data1$mas_vnr_type)
aq<-factor(data1$exter_qual)
ar<-factor(data1$exter_cond)
as<-factor(data1$foundation)
at<-factor(data1$bsmt_qual)
au<-factor(data1$bsmt_cond)
av<-factor(data1$bsmt_exposure)
aw<-factor(data1$bsmt_fin_type1)
ax<-factor(data1$bsmt_fin_type2)
ay<-factor(data1$heating)
az<-factor(data1$heating_qc)
ba<-factor(data1$central_air)
bb<-factor(data1$electrical)
bc<-factor(data1$kitchen_qual)
bd<-factor(data1$functional)
be<-factor(data1$fireplace_qu)
bf<-factor(data1$garage_type)
bg<-factor(data1$garage_finish)
bh<-factor(data1$garage_qual)
bi<-factor(data1$garage_cond)
bj<-factor(data1$paved_drive)
bk<-factor(data1$pool_qc)
bl<-factor(data1$fence)
bm<-factor(data1$sale_type)
bn<-factor(data1$sale_condition)

levels(aa)
levels(ab)
levels(ac)
levels(ad)
levels(ae)
levels(af)
levels(ag)
levels(ah)
levels(ai)
levels(aj)
levels(ak)
levels(al)
#...........
#these are the example of listing all factor of the data in each variable
#you can find the level by typing the remaining variable


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
  land_contour  = as.integer(as.factor(land_contour))
)

a<-transform(
  a,
  lot_shape  = as.integer(as.factor(lot_shape))
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

write.csv(a,file="training_data.csv")


