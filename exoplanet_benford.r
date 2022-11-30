#importing csv file
kepler <- read.csv('benford_exoplanets.csv',TRUE,",")

#converting csv file to dataframe
df <- data.frame(kepler)

#defining loop variables
ranks <- 570
files <- 3198

#defining an empty vector
datas <- vector()

#populating vector with data converted to strings
for ( w in 2:files ) {
  listas <-vector()
  for ( i in 1:ranks) {
    name <- as.character(df[i,w])
    listas <- append (listas, name)
  }
  datas <- append (datas, listas)
}

#counting variables
count <- 0
digit <- 1

#counting first digit of data string vector 
for ( j in 1:length(datas) ) {
  for ( k in 1:1 ) {
    if ( substr( datas[j], k, k ) == digit ) {
        count = count + 1
    }
  }
}
print(count)