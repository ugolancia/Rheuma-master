cipdiff<- function(x, y, f, k, ci){
	diffp<- x/y-f/k
	if(ci==99)
	z<- qnorm(0.995)
    else if(ci==98) 
	z<-qnorm(0.99)
	else if(ci==90)
	z<- qnorm(0.95)
	else if(ci==95) 
	z<- qnorm(0.975)
	secal1 <- ((x/y)*(1-x/y))/y
    secal2 <- ((f/k)*(1-f/k))/k
    se<- sqrt(secal1+secal2)
    lower<- diffp-z*se
    upper<- diffp+z*se
    ci<-numeric()
    ci<- c(ci, lower, upper)
    ci
}