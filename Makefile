.PHONY: env run batch plots clean

env:
\tpython -m venv .venv && . .venv/bin/activate && pip install -r requirements.txt

run:
\tpython -m code.fit_qvcsr_sparc data/sample_galaxy.csv --out results_sample.csv
\tpython -m code.plot_rotation_curves data/sample_galaxy.csv --out sample_plot.png

batch:
\tpython -m code.batch_fit_sparc --indir data/sparc --outdir results --plot summary.png

plots:
\tpython -m code.plot_rotation_curves data/sample_galaxy.csv --out sample_plot.png

clean:
\trm -rf results/*.csv results/*.png results/batch_results.csv results/summary.png results_sample.csv sample_plot.png
