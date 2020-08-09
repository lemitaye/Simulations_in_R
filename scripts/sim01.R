
# load some packages
library(ggplot2)

# Frequentist Interpretation of probability
r <- 1000
prob <- numeric(r)

# Run a 'for' loop:
for (i in 1:r) {
        # toss a fair coin 10000 times
        x <- rbinom(n = 10000, size = 1, prob = 0.5)
        # calculate the ratio of heads and save in 'prob'
        prob[i] <- sum(x)/10000
}