# multiple linear regression

sale_price<-data$sale_price
ms_sub_class<-data$ms_sub_class
lot_area<-data$lot_area
overall_qual<-data$overall_qual
year_built<-data$year_built
total.area<-data$total.area
no..bath<-data$no..bath
kitchen_qual<-data$kitchen_qual
functional<-data$functional
garage_area<-data$garage_area
deck_porch_SF<-data$deck_porch_SF
misc_val<-data$misc_val
price_type<-as.factor(data$price_type)
data2<-as.data.frame(price_type)
data1<-data[,-14]
data<- cbind(data1,data2)

fit0<-lm(sale_price~1)
fit1<-lm(sale_price~ ms_sub_class)


anova(fit0,fit1)
