# How to Contribute

For all practical purposes, all the content goes to `./content` folder. It contains the static markdown files that are converted to HTML

Inside `content`, a new page can simply be created by creating a new `.md` file. They need to have a TOML header that goes in the following format.

```
+++
+++
```

Even if the contents inside this is empty, the delimiters need to be there. 

Mostly try avoiding creating pages in the root folder (i.e. `content` folder). 

## Events folder

The pages need to be named as follows: `YYYY-MM-DD-Event-name-with-hyphens.md`. The date is used for indexing in the main page and is removed from the website name. 

The TOML header should usually go as follows:

```
+++
title = "TITLE with spaces"
description = "Description with spaces"
[taxonomies]
tags = ['single', 'quotes', 'in', 'a', 'python', 'list', 'format']
+++
```

## Resources folder

Rules follow as above. Title is necessary else the page is ignored. Despite it being sorted by title, the date is still necessary in the above format to show the publish date. 

Logic for the TOML follows from above.

## Adding media

To add an image, the following snippet suffices.

`{{ img(id="/path/from/content/folder.png", alt="Alt Text", class="textCenter") }}`

So, for this [poster](./content/events/CTF-0.png), the path will be `/events/CTF-0.png`.

To add a youtube video, this one works

`{{ youtube(id="The id of the video", class="textCenter") }}`

To add a link to go to the top of the page, put this at the bottom.

`{{ webring(webring="#", webringName="Go to the Top") }}`
