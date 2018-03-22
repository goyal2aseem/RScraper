import urllib2
from newspaper import Article
from bs4 import BeautifulSoup
link=''
a=Article(link)
a.download()
a.parse()
a.title.encode('ascii','ignore')
a.text.encode('ascii','ignore')