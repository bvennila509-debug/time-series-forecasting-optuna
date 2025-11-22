# Advanced Time Series Forecasting with Prophet and Bayesian Optimization

**Project summary**:
This repository contains a production-ready, modular implementation to build, optimize, and evaluate a time-series forecasting pipeline using Prophet and Bayesian hyperparameter optimization (Optuna). It includes a synthetic dataset generator, baseline and optimized models, cross-validation utilities (rolling-origin / TimeSeriesSplit), evaluation metrics, and a reproducible report template.

**What's included**:
- `data/generate_synthetic_ts.py` : Generate complex synthetic time series with trend, seasonality, noise, and optional holidays/regressors.
- `src/model_pipeline.py` : Modular code for training a Prophet baseline, performing rolling-origin CV, and optimizing hyperparameters with Optuna.
- `src/utils.py` : Helper functions for metrics, cross-validation splits, and logging.
- `notebooks/reproduce.ipynb` : (Placeholder) Notebook to run experiments interactively.
- `report/report.md` : Comprehensive text report describing dataset, methodology, hyperparameter search, convergence, and computational/accuracy tradeoffs.
- `requirements.txt` : Python dependencies required to run the pipeline.
- `run_experiment.sh` : Shell script demonstrating a reproducible run.
- `screenshots/` : Two screenshots included from the user for reference.
- `LICENSE` : MIT License stub.

**How to reproduce (example)**:
```bash
# create virtualenv, install deps
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt

# generate data, run baseline and optimization (example)
python data/generate_synthetic_ts.py --out data/ts_dataset.csv --n_periods 1000 --freq D
python src/model_pipeline.py --data data/ts_dataset.csv --mode optimize --trials 100 --output results/
```

See `report/report.md` for details on experiment design, expected outputs, and interpretation guidance.
