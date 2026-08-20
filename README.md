# BayeshERG: hERG channel blockade

Predicts hERG channel blockade while reporting how confident the prediction is. BayeshERG is a Bayesian graph neural network that separates two kinds of doubt: aleatoric uncertainty arising from noise in the assay data, and epistemic uncertainty reflecting how far a query sits from anything seen in training. Actives were defined at IC50 at or below 10 uM. The uncertainty estimates are the point of the model, letting predictions on unfamiliar chemistry be discounted rather than taken at face value.

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
- **Interpretation:** Probability of hERG blockade at an IC50 cut-off of 10 uM, with aleatoric and epistemic uncertainty estimates.

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
This package is licensed under a [GPL-3.0](https://github.com/ersilia-os/ersilia/blob/master/LICENSE) license. The model contained within this package is licensed under a [MIT](LICENSE) license.

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
