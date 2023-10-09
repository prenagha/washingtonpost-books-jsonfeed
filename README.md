# Washington Post Books JSON (RSS) Feed
This is a AWS lambda python script for scraping articles from the Books article category on Washington Post. 
The script can be easily deployed as an AWS lambda. It formats the data into a [json feed](https://www.jsonfeed.org) which can be read by a feed reader. Before utilizing the script, make sure you replace URLs.

The Washington Post page includes a JSON object that contains all the data we need to generate the feed, so rather than parse the HTML of the page, we simply locate the JSON data, deserialize it, and use it to generate the JSON feed.
