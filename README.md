# BayeshERG
## Model identifiers
- Slug: BayeshERG
- Ersilia ID: eos4tcc
- Tags: hERG, toxicity, ML

# Model description
Short description of the model in one or two sentences.
- Input: SMILES
- Output: {unit and description of output) 
- Model type: Classification
- Training set: 14322
- Mode of training: Pretrained

# Source code
Cite the source publication.
- Code: https://github.com/GIST-CSBL/BayeshERG
- Checkpoints: include the link to the checkpoints used if model is a pretrained model

# License
GPL -v3

# History 
- Model and scripts were downloaded from the [BayeshERG Github](https://github.com/GIST-CSBL/BayeshERG) on 7/20/2022. 
- In order to get the script to run successfully, several variables (including lengths_x and b_lengths in BayeshERG_model.py, as well as lengths in main.py) were converted to methods. 
- The original code solely relied on DGL. Since then, some methods have been moved from DGL to another library, DGLLife. Imports and method names have been changed appropriately. 
- The original BayeshERG model provides both CPU and GPU-run models. Only the CPU version has been included.

# About us
The [Ersilia Open Source Initiative](https://ersilia.io) is a Non Profit Organization ([1192266](https://register-of-charities.charitycommission.gov.uk/charity-search/-/charity-details/5170657/full-print)) with the mission is to equip labs, universities and clinics in LMIC with AI/ML tools for infectious disease research.

[Help us](https://www.ersilia.io/donate) achieve our mission or [volunteer](https://www.ersilia.io/volunteer) with us!
