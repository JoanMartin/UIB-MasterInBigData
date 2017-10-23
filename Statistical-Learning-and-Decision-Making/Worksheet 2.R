library(swirl)

# Ejercicio 1
swirl()


# Ejercicio 2
# a)
college = read.csv("College.csv")

# b)
fix(college)
rownames(college) = college[,1]
college = college[,-1]

# c)
summary(college)
names(college)
str(college)
pairs(college[, 1:10])

outstate_private = college[college$Private == 'Yes', c('Outstate')]
outstate_no_private = college[college$Private == 'No', c('Outstate')]
boxplot(outstate_private, outstate_no_private, names=c("Private", "No private"), horizontal=TRUE, main="Boxplot", xlab="Outstate")

Elite = rep("No", nrow(college))
Elite[college$Top10perc > 50] = "Yes"
Elite = as.factor(Elite)
college = data.frame(college,Elite)
summary(college)
outstate_elite = college[college$Elite == 'Yes', c('Outstate')]
outstate_no_elite = college[college$Elite == 'No', c('Outstate')]
boxplot(outstate_elite, outstate_no_elite, names=c("Elite", "No elite"), horizontal=TRUE, main="Boxplot", xlab="Outstate")

# QUEDA ACABAR EL C)


# Ejercicio 3
auto = read.csv("Auto.csv")
summary(auto)
names(auto)
str(auto)
head(auto, 100)

# a)
# Quantitative: mpg, cylinders, displacement, weight, acceleration
# Qualitative: horsepower, year, origin, name

# b)
range(auto$mpg)
range(auto$cylinders)
range(auto$displacement)
range(auto$weight)
range(auto$acceleration)

# c)
mean(auto$mpg)
sd(auto$mpg)
mean(auto$cylinders)
sd(auto$cylinders)
mean(auto$displacement)
sd(auto$displacement)
mean(auto$weight)
sd(auto$weight)
mean(auto$acceleration)
sd(auto$acceleration)

# d)


# e)
pairs(auto)
# mpg con displacement y weight parece que hay relación
# displacement con weight también
# acceleration con weight también, aunque no tanta

# f)
