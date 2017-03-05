# Meeting Logs

### 3/4/2017

### Meeting Notes
Concerns with categorical data - is this more or less valuable than numerical data?
IDs - ?
Do we want to split up 50 states into 50 columns - levels to columns?
Size? Could this be a meaningful metric to look at?
Content of data? medical ? physics?
we can create a folder for each type of dataset

Focus on how to deal with categorical / mixed data


### Next Steps
For Tuesday
Send Kourosh scatter plot
and do hierarchical clustering


### 2/21/2017

### Meeting Notes
problem with using the determinant - linear combinations will result in 0

think of whole dataset as one random variable?

maybe we should just sum the variation of each column?
make sure to center data?
let's center data for now (but don't normalize)

communicate the idea of clustering - what is the point of clustering

Intrinsic value vs Applied value

for our report, document our code? process? - what packages we use, OS, ...

Isn't hierarchical just the dendograms? Yes.
Bottom-up or top-down

SUM ALL VARIANCE AND COLUMNS and DIVIDE by numcol

### Next Steps
1. Switch back to sum of variations and correlations instead of the determinant -- but what if we have categorical columns? We add to numcol but the variation doesn't play a big part in the sum (0 and 1) - ask Kourosh.
-- and how about correlation? -- negative and positive cor - use absolute values? - will that affect the issue
2. Play with hierarchical clustering


### 2/15/2017

### Discussion
Is variation > correlation?
Probably.

Variance is susceptible to outliers

High correlation might have mean there is high collinearity

Can there be high cor and high var?
Seems like that won't be possible

Ranking: (we think)
1. +Var, -cor
2. -Var, -cor
3. -Var, +cor

#### Questions
1. When two or more datasets are scored, do the scores hold relative to each other?

#### Goals
1. Upload all datasets to Github
2. Rankings + Intuitive rankings
3. Report draft


### 2/14/2017

#### Report
Computed k using three different methods
All three methods of determining k returned 3
We computed variation and correlation
Clustered using k-means

Methods used to find k will work with high dimensions

Clustering, feature selection is implicit or explicit?

normal clustering divides the matrix by rows
e.g. row 1-10 is in cluster 1, row 11-20 in cluster 2

should be done simultaneously rows and columns

make this conclusion: which data set has the highest value? lowest value? how would you make this conclusion?
make qualitative conclusions on each cluster - which one has the highest values?

Is variation a better determinant of value?
What is the value of variation? of correlation? Is variation > correlation?

#### Next Steps
Report on what we've done

How much do we value variation? correlation? How are we going to determine that?

Hierarchical clustering
