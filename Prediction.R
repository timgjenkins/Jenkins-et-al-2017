library(glmnet);
final.a<-final[,c(1:2)];
final$RN<-NULL;
final<-as.matrix(final);
p<-predict(model, newx=final, s="lambda.min");
predicted<-cbind(final.a,p);
predicted$BATCH<-NULL;
colnames(predicted)[2]<-"Predicted.age";
print(predicted)
