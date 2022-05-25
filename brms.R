library(brms)
fit1 <- brm(count ~ zAge + zBase * Trt + (1|patient),
            data = epilepsy, family = poisson())
plot(fit1)
plot(conditional_effects(fit1, effects = "zBase:Trt"))
