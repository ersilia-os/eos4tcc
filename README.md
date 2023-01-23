# BayeshERG: hERG channel blockade

BayeshERG is a predictor of small molecule-induced blockade of the hERG ion channel. To increase its predictive power, the authors pretrained a bayesian graph neural network with 300,000 molecules as a transfer learning exercise. The pretraining set was obtained from Du et al, 2015, and the fine tuning dataset is a collection of 14,322 molecules from public databases (8488 positives and 5834 negatives). The model was validated on external datasets and experimentally, from 12 selected compounds (>0.95 probability) one candidate showed strong hERG inhibition (IC 50 < 1 μM) and three moderate (1 μM < IC 50 < 10 μM) in a patch-clamp in vitro assay.

## Identifiers

* EOS model ID: `eos4tcc`
* Slug: `bayesherg`

## Characteristics

* Input: `Compound`
* Input Shape: `Single`
* Task: `Classification`
* Output: `Probability`
* Output Type: `Float`
* Output Shape: `Single`
* Interpretation: Probability of hERG channel blockade. The cut-off used in the training set to define hERG blockade was IC50 <= 10 μM

## References

* [Publication](https://academic.oup.com/bib/article-abstract/23/4/bbac211/6609519)
* [Source Code](https://github.com/GIST-CSBL/BayeshERG)
* Ersilia contributor: [azycn](https://github.com/azycn)

## Citation

If you use this model, please cite the [original authors](https://academic.oup.com/bib/article-abstract/23/4/bbac211/6609519) of the model and the [Ersilia Model Hub](https://github.com/ersilia-os/ersilia/blob/master/CITATION.cff).

## License

This package is licensed under a GPL-3.0 license. The model contained within this package is licensed under a GPL-3.0 license.

Notice: Ersilia grants access to these models 'as is' provided by the original authors, please refer to the original code repository and/or publication if you use the model in your research.

## About Us

The [Ersilia Open Source Initiative](https://ersilia.io) is a Non Profit Organization ([1192266](https://register-of-charities.charitycommission.gov.uk/charity-search/-/charity-details/5170657/full-print)) with the mission is to equip labs, universities and clinics in LMIC with AI/ML tools for infectious disease research.

[Help us](https://www.ersilia.io/donate) achieve our mission!