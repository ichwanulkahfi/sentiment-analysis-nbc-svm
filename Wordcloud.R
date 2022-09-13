library(wordcloud)
library(RColorBrewer)
library(wordcloud2)
library(readxl)

wordcloud_all <- read_excel("Final TA/Top Wordcloud.xlsx",sheet="All")
wordcloud_all <- wordcloud_all[,-1]
#View(wordcloud_all)
wordcloud2(data=wordcloud_all, size = 0.5, shape = 'circle')

wordcloud_positif <- read_excel("Final TA/Top Wordcloud.xlsx",sheet="Positif")
wordcloud_positif <- wordcloud_positif[,-1]
#View(wordcloud_positif)
wordcloud2(data=wordcloud_positif, size = 0.5, shape = 'circle')

wordcloud_negatif <- read_excel("Final TA/Top Wordcloud.xlsx",sheet="Negatif")
wordcloud_negatif <- wordcloud_negatif[,-1]
#View(wordcloud_negatif)
wordcloud2(data=wordcloud_negatif, size = 0.5, shape = 'circle')



set.seed(1234) # for reproducibility 
wordcloud(words = wordcloud_all$index, freq = wordcloud_all$count, min.freq = 1,
          max.words=50, random.order=FALSE, rot.per=0.35,
          colors=brewer.pal(8, "Dark2"))
wordcloud2(data=wordcloud_all, size = 0.5, shape = 'circle')

