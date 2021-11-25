
#######Problem 1
#shows conservation of energy over time so the trend line is almost straight
timeEnergy<-read.csv("demo_data.txt", header=TRUE, sep = ",", stringsAsFactors = FALSE) #load the data
ggplot(data = timeEnergy, aes(x=t,y=E))+geom_point()+xlab("time(s)")+ylab("Energy")+
  stat_smooth(method = "lm")+coord_cartesian(ylim=c(0,0.15)) # if coord_cartesian() is removed the points would show a bit more





#######Problem 2
data<-read.csv("data.txt", header = TRUE, sep = ",", stringsAsFactors = FALSE)

#barplot
ggplot(data = data, aes(x=region, y=observations))+stat_summary(fun.y = mean, geom = "bar")+
  theme_bw()

#scatterplot
ggplot(data = data, aes(x=region, y=observations))+geom_jitter() 

#the bar plot shows you a comparison of the data as a whole while the scatter plot shows more of a specific
#distribution










