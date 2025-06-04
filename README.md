# BayeshERG: hERG channel blockade

BayeshERG is a predictor of small molecule-induced blockade of the hERG ion channel. To increase its predictive power, the authors pretrained a bayesian graph neural network with 300,000 molecules as a transfer learning exercise. The pretraining set was obtained from Du et al, 2015, and the fine tuning dataset is a collection of 14,322 molecules from public databases (8488 positives and 5834 negatives). The model was validated on external datasets and experimentally, from 12 selected compounds (>0.95 probability) one candidate showed strong hERG inhibition (IC 50 < 1 μM) and three moderate (1 μM < IC 50 < 10 μM) in a patch-clamp in vitro assay.

This model was incorporated on 2022-07-25.

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
- **Output Dimension:** `1`
- **Output Consistency:** `Variable`
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
- **Docker Architecture:** `AMD64`, `ARM64`
- **S3 Storage**: [https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos4tcc.zip](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos4tcc.zip)

### Resource Consumption
- **Model Size (Mb):** `2`
- **Environment Size (Mb):** `4080`
- **Image Size (Mb):** `3983.82`

**Computational Performance (seconds):**
- 10 inputs: `37.38`
- 100 inputs: `43.49`
- 10000 inputs: `1397.58`

### References
- **Source Code**: [https://github.com/GIST-CSBL/BayeshERG](https://github.com/GIST-CSBL/BayeshERG)
- **Publication**: [https://academic.oup.com/bib/article-abstract/23/4/bbac211/6609519](https://academic.oup.com/bib/article-abstract/23/4/bbac211/6609519)
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
