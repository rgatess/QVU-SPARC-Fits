# QVU Rotation-Curve Fitting (v1.0)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.17496882.svg)](https://doi.org/10.5281/zenodo.17496882)

This repository contains a minimal, reproducible pipeline to evaluate the **Quantum Vacuum Composite Stiffness Response (QVCSR)** against galactic rotation curves.

- **Paper**: *The Quantum Vacuum Universe: Linear and Nonlinear Effects of Quantum Vacuum Composite Stiffness* (Simpson, 2025).
- **Contact**: Randall G. Simpson — <rgatess@yahoo.com>
- **License**: MIT

## Contents
- `code/` — Python modules and scripts
- `data/` — Sample CSV and data instructions
- `requirements.txt` — Reproducible environment
- `LICENSE` — MIT open-source license

## Quick start
```bash
python -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt

# Single-galaxy fit on the included synthetic example
python -m code.fit_qvcsr_sparc data/sample_galaxy.csv --out results_sample.csv

# Plot observed vs model
python -m code.plot_rotation_curves data/sample_galaxy.csv --out sample_plot.png
```
Outputs:
- `results_sample.csv` — Fit summary (N, chi2, chi2_red)
- `results_sample.overlay.csv` — Table with `V_model_kms` alongside observed values
- `sample_plot.png` — Comparison plot

## Using SPARC data
1. Download SPARC (e.g., `Rotmod_LTG.zip`).
2. Convert a galaxy to CSV with columns:
   - `r_kpc`, `Mb_solar`, `V_obs_kms`, `sigma_kms`.
3. Run the same commands pointing at your CSV.

## Releasing a DOI (Zenodo)
- Create a GitHub repo and push this bundle.
- Connect the repo to Zenodo and publish a `v1.0` release.
- Zenodo will mint a DOI; include it in the paper as:
  > Simpson (2025). QVU rotation–curve fitting data release (v1.0). Zenodo. DOI: 10.5281/zenodo.17496882

## Citation
See `CITATION.cff`.

### Data
SPARC galaxy database — Lelli, F., McGaugh, S. S., & Schombert, J. M. (2016), *AJ*, 152, 157.
(https://astroweb.cwru.edu/SPARC)
