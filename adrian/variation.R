computeVariation = function(category) {
  
  # frequency table of category
  tab = table(category)
  numObs = length(category)
  
  numCategory = length(levels(factor(category)))
  
  # sample variance of frequencies
  sampleVar = (var(tab) * (numObs-1)/numObs)
  
  # coefficient of variance
  cv = sqrt(sampleVar) / mean(tab)
  
  # definition of score: cv + base(1/numCategory)
  return (cv + 1/numCategory)
}

# force all NAs to be the maximum score obtained in the set
# at this point, higher scores mean lower variation
# NAs result because there is only one class
# this should penalize the dataset variation score
maxNa = function(df) {
  maxVal = max(na.omit(df))
  sapply(df, function(x) ifelse(is.na(x), maxVal,x))
}

computeVariations = function(filename) {
  df = read.csv(paste('datasets', filename, sep='/'), nrows=50)

  return (sapply(df, computeVariation))
}

process = function(filename) {
  df = computeVariations(filename)
  
  # average the variation score
  # take the reciprocal so that variation and score are directly proportional 
  return (1/mean(maxNa(df)))
}