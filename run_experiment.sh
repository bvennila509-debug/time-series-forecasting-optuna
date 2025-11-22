#!/usr/bin/env bash
set -euo pipefail
python3 data/generate_synthetic_ts.py --out data/ts_dataset.csv --n_periods 1200 --freq D
python3 src/model_pipeline.py --data data/ts_dataset.csv --mode baseline --out results --n_splits 4 --horizon 30
python3 src/model_pipeline.py --data data/ts_dataset.csv --mode optimize --out results_opt --trials 50 --n_splits 3 --horizon 30
echo 'Results in results/ and results_opt/'
