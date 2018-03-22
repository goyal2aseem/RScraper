library(Rcrawler)
url<-'https://en.wikipedia.org/wiki/Ronald_Forbes_Adam'
cs<-ContentScraper(url,XpathPatterns = "//*[@id='firstHeading']")
cs2<-ContentScraper(url,XpathPatterns = "//*[@id='mw-content-text']/div/p")
cs3<-ContentScraper(url,XpathPatterns = c("//h1","//*[@id='mw-content-text']/*/p"))
cs3

library(rvest)
ht<-read_html(url)
nod<-html_nodes(ht,'.mw-content-ltr')
txt<-html_text(nod)

txt<-Rcrawler(url,MaxDepth = 0,ExtractXpathPat =  c("//h1","//article"), PatternsNames = c("Title","Content"))