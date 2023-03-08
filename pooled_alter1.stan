data {
  int<lower=0> N;  // number of observations
  vector[N] x;     // zero-proportion of the observations
  int<lower=0,upper=1> y[N];   // state of depression of the observation
}
parameters {
  real alpha;
  real beta;
}
model {
  // Priors
  alpha ~ normal(-10, 10);
  beta ~ normal(0, 10);
  
  // Likelihood
  y ~ bernoulli_logit(alpha + beta * x);
}