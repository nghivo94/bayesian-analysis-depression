data {
  int<lower=0> N;
  int<lower=1> J;
  vector[N] x;
  int<lower=1,upper=J> g[N];
  int<lower=0,upper=1> y[N];
  
  int<lower=1> P;
  vector[P] x_pred;
  int<lower=1,upper=J> g_pred[P];
}
parameters {
  real mu;
  real<lower = 0> sigma;
  real alpha;
  vector[J] beta;
}
model {
  mu ~ normal(0, 100);
  sigma ~ inv_chi_square(10);
  alpha ~ normal(-2, 100);
  beta ~ normal(mu, sigma);
  for (n in 1:N) {
    y[n] ~ bernoulli_logit(alpha + beta[g[n]]*x[n]);
  }
}
generated quantities {
  int<lower=0,upper=1> y_pred[P];
  vector[N] log_lik;
  for (p in 1:P) {
    y_pred[p] = bernoulli_logit_rng(alpha + beta[g_pred[p]]*x_pred[p]);
  }
  for (n in 1:N) {
    log_lik[n] = bernoulli_logit_lpmf(y[n] | alpha + beta[g[n]]*x[n]);
  }
}