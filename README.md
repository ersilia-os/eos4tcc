# BayeshERG: hERG channel blockade

BayeshERG predicts small molecule-induced blockade of the hERG ion channel. To enhance performance, the authors used transfer learning, pretraining a Bayesian graph neural network on 300,000 molecules (Du et al., 2015). It was fine-tuned on 14,322 molecules from public databases (8,488 positives/5,834 negatives). Experimental validation via patch-clamp assays confirmed its utility: of 12 high-probability candidates ($>0.95$), one showed strong inhibition ($IC_{50} < 1$ µM) and three showed moderate inhibition ($1$ µM $< IC_{50} < 10$ µM).

This model was incorporated on 2022-07-25.Last packaged on 2025-10-14.

## Information
### Identifiers
- **Ersilia Identifier:** `eos4tcc`
- **Slug:** `bayesherg`

### Domain
- **Task:** `Annotation`
- **Subtask:** `Activity prediction`
- **Biomedical Area:** `ADMET`
- **Target Organism:** `Homo sapiens`
- **Tags:** `hERG`, `Toxicity`, `Cardiotoxicity`

### Input
- **Input:** `Compound`
- **Input Dimension:** `1`

### Output
- **Output Dimension:** `3`
- **Output Consistency:** `Fixed`
- **Interpretation:** Probability of hERG channel blockade. The cut-off used in the training set to define hERG blockade was IC50 <= 10 μM

Below are the **Output Columns** of the model:
| Name | Type | Direction | Description |
|------|------|-----------|-------------|
| score | float | high | Probability of inhibiting the hERG channel |
| alea | float | low | Aleatory uncertainty of the prediction |
| epis | float | low | Epistemic uncertainty of the prediction |


### Source and Deployment
- **Source:** `Local`
- **Source Type:** `External`
- **DockerHub**: [https://hub.docker.com/r/ersiliaos/eos4tcc](https://hub.docker.com/r/ersiliaos/eos4tcc)
- **Docker Architecture:** `AMD64`
- **S3 Storage**: [https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos4tcc.zip](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos4tcc.zip)

### Resource Consumption
- **Model Size (Mb):** `2`
- **Environment Size (Mb):** `4082`
- **Image Size (Mb):** `4001.01`

**Computational Performance (seconds):**
- 10 inputs: `29.37`
- 100 inputs: `25.56`
- 10000 inputs: `441.01`

### References
- **Source Code**: [https://github.com/GIST-CSBL/BayeshERG](https://github.com/GIST-CSBL/BayeshERG)
- **Publication**: [https://doi.org/10.1093/bib/bbac211](https://doi.org/10.1093/bib/bbac211)
- **Publication Type:** `Peer reviewed`
- **Publication Year:** `2022`
- **Ersilia Contributor:** [azycn](https://github.com/azycn)

### License
This package is licensed under a [GPL-3.0](https://github.com/ersilia-os/ersilia/blob/master/LICENSE) license. The model contained within this package is licensed under a [GPL-3.0-only](LICENSE) license.

**Notice**: Ersilia grants access to models _as is_, directly from the original authors, please refer to the original code repository and/or publication if you use the model in your research.


## Use
To use this model locally, you need to have the [Ersilia CLI](https://github.com/ersilia-os/ersilia) installed.
The model can be **fetched** using the following command:
```bash
# fetch model from the Ersilia Model Hub
ersilia fetch eos4tcc
```
Then, you can **serve**, **run** and **close** the model as follows:
```bash
# serve the model
ersilia serve eos4tcc
# generate an example file
ersilia example -n 3 -f my_input.csv
# run the model
ersilia run -i my_input.csv -o my_output.csv
# close the model
ersilia close
```

## About Ersilia
The [Ersilia Open Source Initiative](https://ersilia.io) is a tech non-profit organization fueling sustainable research in the Global South.
Please [cite](https://github.com/ersilia-os/ersilia/blob/master/CITATION.cff) the Ersilia Model Hub if you've found this model to be useful. Always [let us know](https://github.com/ersilia-os/ersilia/issues) if you experience any issues while trying to run it.
If you want to contribute to our mission, consider [donating](https://www.ersilia.io/donate) to Ersilia!
