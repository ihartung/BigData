library(factoextra)
library(cluster)
library(NbClust)

paths = c('complaints.csv', 'match.csv', 'col.csv', 'county_facts.csv', 'youth.csv', 'inpatientCharges.csv', 'ProvincePopulation.csv', 'alcohol.csv', 'SouthAfricaCrimeStats_v2.csv', 'ks.csv')
# paths.all = 'res.csv'

# this function is destructive!
outlierReplace = function(df, cols, rows, newValue = NA) {
  if (any(rows)) {
    set(df, rows, cols, newValue)
  }
}

calculateMetrics = function(input) {
  outlierReplace(input, "Correlation", which(findInterval(input$Correlation, c(-1e+15,-1e-30,1e-30,1e+15)) != 1 & findInterval(input$Correlation, c(-1e+15,-1e-30,1e-30,1e+15)) != 3), NA)
  outlierReplace(input, "Variation", which(findInterval(input$Variation, c(-1e+15,-1e-30,1e-30,1e+15)) != 1 & findInterval(input$Variation, c(-1e+15,-1e-30,1e-30,1e+15)) != 3), NA)
  df = scale(input[, sapply(input, is.numeric)])
  len = length(df)
  
  variance = det(cov(df))
  correlation = 1/det(cor(df))
  
  return (c(variance, correlation))
}

getDataFromPath = function(path) {
  return (read.csv(path, stringsAsFactors = FALSE))
}

processPath = function(parentPath='.', path) {
  df = getDataFromPath(paste(parentPath, path, sep='/'))
  return (calculateMetrics(df))
}

processAll = function(path) {
  input = getDataFromPath(path)
  outlierReplace(input, "Correlation", which(findInterval(input$Correlation, c(-1e+15,-1e-30,1e-30,1e+15)) != 1 & findInterval(input$Correlation, c(-1e+15,-1e-30,1e-30,1e+15)) != 3), NA)
  outlierReplace(input, "Variation", which(findInterval(input$Variation, c(-1e+15,-1e-30,1e-30,1e+15)) != 1 & findInterval(input$Variation, c(-1e+15,-1e-30,1e-30,1e+15)) != 3), NA)
    return (na.omit(input))
}

gap_k = function(df){
  set.seed(123)
  # Compute and plot wss for k = 2 to k = 15
  k.max <- 15 # Maximal number of clusters
  # data must be scaled coming in
  data <- df
  wss <- sapply(1:k.max, 
                function(k){kmeans(data, k, nstart=10 )$tot.withinss})
  plot(1:k.max, wss,
       type="b", pch = 19, frame = FALSE, 
       xlab="Number of clusters K",
       ylab="Total within-clusters sum of squares")
  abline(v = 3, lty =2)
}

plot.kmeans = function(df) {
  # K-means clustering
  set.seed(123)
  km.res <- kmeans(df, 3, nstart = 25)
  # k-means group number of each observation
  km.res$cluster
  
  # fviz_cluster(km.res, data = df, geom = "point",
  #              stand = FALSE, frame.type = "norm")
  
  clusplot(df, km.res$cluster, color=TRUE, shade=TRUE, labels=3, lines=0)
}

# if using raw data
results = t(sapply(paths, Curry(processPath, parentPath='datasets')))

# if using the 40 row matrix
# results = processAll('res.csv')
colnames(results) <- c("Variance","Correlation")

# visualize the data
# gap_k(scale(results))
# plot.kmeans(scale(results))
