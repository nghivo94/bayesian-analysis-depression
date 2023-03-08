data {
  int<lower=0> N;
  int<lower=1> J;
  vector[N] x;
  int<lower=1,upper=J> g[N];
  int<lower=0,upper=1> y[N];
}
parameters {
  real mu;
  real<lower = 0> sigma;
  real alpha;
  vector[J] beta;
}
model {
  mu ~ normal(0, 100);
  sigma ~ inv_chi_square(1);
  alpha ~ normal(-2, 100);
  beta ~ normal(mu, sigma);
  for (n in 1:N) {
    y[n] ~ bernoulli_logit(alpha + beta[g[n]]*x[n]);
  }
}