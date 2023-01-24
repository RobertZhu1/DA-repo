EPI_data <- read.csv("2010EPI_data.csv")
#or
#EPI_data <- read.xlsx(”<path>/2010EPI_data.xlsx")
# Note: replace default data frame name – cannot start with numbers!
View(EPI_data)
#
attach(EPI_data) 	# sets the ‘default’ object
fix(EPI_data) 	# launches a simple data editor
EPI 			# prints out values EPI_data$EPI
tf <- is.na(EPI) # records True values if the value is NA
E <- EPI[!tf] # filters out NA values, new array

summary(EPI)
fivenum(EPI, na.rm = TRUE)
stem(EPI)
hist(EPI)
hist(EPI, seq(30., 95., 1.0), prob = TRUE)
lines(density(EPI, na.rm = TRUE, bw = 1.))
rug(EPI)

plot(ecdf(EPI), do.points = FALSE, verticals = TRUE)
par(pty = "s")
qqnorm(EPI); qqline(EPI)
x <- seq(30, 95, 1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for tdsn")
qqline(x)

# DALY
plot(ecdf(DALY), do.points = FALSE, verticals = TRUE)
par(pty = "s")
qqnorm(DALY); qqline(DALY)
x <- rt(250, df = 5)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for tdsn")
qqline(x)


# ECOSYSTEM
plot(ecdf(ECOSYSTEM), do.points = FALSE, verticals = TRUE)
par(pty = "s")
qqnorm(ECOSYSTEM); qqline(ECOSYSTEM)
x <- rt(250, df = 5)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for tdsn")
qqline(x)


boxplot(EPI, DALY)
qqplot(EPI, DALY)
boxplot(DALY, ECOSYSTEM)
qqplot(DALY, ECOSYSTEM)

EPILand <- EPI[!Landlock]
ELand <- EPILand[!is.na(EPILand)]
View(ELand)
hist(ELand)
hist(ELand, seq(30, 95, 1), prob = TRUE)




#other data
GRUMP_data <- read.csv("GPW3_GRUMP_SummaryInformation_2010.csv")

