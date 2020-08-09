
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

# Some summary and an interactive plot
summary(prob)
ggplot() +
        geom_line(aes(seq_along(prob), prob)) +
        geom_hline(aes(yintercept = 0.5), color = "red", size = 1) +
        coord_cartesian(ylim = c(0.47,0.53)) +
        labs(x ="Number of Trials (n)",
             y = "Probability")
# save the plot
ggsave("figures/prob_freq.png", width = 7.77, height = 4.29)



