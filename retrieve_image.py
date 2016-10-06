import urllib
import json

API_KEY   = 'put api key here'
HOSTNAME  = 'prettycolors.tumblr.com'

request_string = "http://api.tumblr.com/v2/blog/%(hostname)s/posts?api_key=%(key)s&limit=1&type=photo" % {'hostname':HOSTNAME, 'key':API_KEY}
data = json.load(urllib.urlopen(request_string))

img_url = str(data['response']['posts'][0]['photos'][0]['alt_sizes'][-1]['url'])
post_id = str(data['response']['posts'][0]['id'])

urllib.urlretrieve(img_url, post_id + '.png') #saves image

print(post_id)
