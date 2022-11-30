data {
  int<lower=0> N;
  vector[N] x;
  int<lower=0,upper=1> y[N];
}
parameters {
  real alpha;
  real beta;
}
model {
  alpha ~ normal(-2, 10);
  beta ~ normal(0.03, 1);
  y ~ bernoulli_logit(alpha + beta * x);
}
