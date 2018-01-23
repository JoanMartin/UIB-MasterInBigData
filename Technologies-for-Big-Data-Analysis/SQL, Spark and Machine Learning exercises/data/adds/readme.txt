        ------ Display Advertising Challenge ------

Dataset: adds

This dataset contains feature values and click feedback for millions of display 
ads. Its purpose is to benchmark algorithms for clickthrough rate (CTR) prediction.
It has been used for the Display Advertising Challenge hosted by Kaggle:
https://www.kaggle.com/c/criteo-display-ad-challenge/

Dataset construction:

The adds dataset consists of a portion of Criteo's traffic over a period
of 7 days. Each row corresponds to a display ad served by Criteo and the first
column is indicates whether this ad has been clicked or not.
The positive (clicked) and negatives (non-clicked) examples have both been
subsampled (but at different rates) in order to reduce the dataset size.

There are 13 features taking integer values (mostly count features) and 26
categorical features. The values of the categorical features have been hashed
onto 32 bits for anonymization purposes. 
The semantic of these features is undisclosed. Some features may have missing values.

The rows are chronologically ordered.

Dataset assembled by Olivier Chapelle (o.chapelle@criteo.com)

