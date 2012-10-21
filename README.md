# posterous-to-markdown

If you've been blogging on [Posterous'][posterous] platform, you have likely
noticed that their service has degraded since being acquired by
[Twitter][twitter].

Moving off of Posterous' platform isn't super easy, so this utility is meant to
ease the pain.

First, you'll need to use [Export My Posts][export-my-posts] to download a copy
of your Posterous blog. This service costs 9$ (I'm not affiliated with them at
all), and gives you the HTML version of all your Posterous articles, along with
all their metadata (audio, video, images, timestamps, JSON, etc.).

This tool will run against the HTML files that Export My Posts gives you, and
convert them all to Markdown using [Pandoc][pandoc]. Pandoc is the simplest tool
we can use to convert HTML to Markdown.


## Why Markdown?

[Markdown][markdown] is a great format for storing your articles--it's simple to
read, easy to edit, and used in millions of services. Storing your article
content in Markdown allows you to easily change your backend, and display your
content however you want, style agnostic.


## Install

The only thing required to run this tool is that you have Pandoc and Bash
installed and available. If you're on Ubuntu, you can install Pandoc by running
`sudo apt-get -y install pandoc`.


## Usage

Once you've downloaded your Posterous dump from Export My Posts, you'll want to
unzip the file you get, and go into the `posts` subdirectory.

Once you're in the `posts` subdirectory, run:

``` bash
$ curl -L https://github.com/rdegges/posterous-to-markdown/raw/master/convert.sh | bash
```

You should now see a `markdown` subdirectory, which should contain *all* your
Posterous HTML posts, in Markdown format!


## Afterwards

Once you've ran the script, you'll have a nice `markdown` folder filled with
your converted posts. You can now manually edit the files however you wish,
cleaning up formatting, etc.


## Contribute

Want to add some functionality to the script? Send a pull request! Some things
I'd like to add in the future:

- Strip all trailing whitespace.
- Use footnote-style links (my personal preference).
- Use # to handle heading stuff (instead of =).


[posterous]: https://posterous.com/ "Posterous"
[twitter]: https://twitter.com "Twitter"
[export-my-posts]: https://exportmyposts.jazzychad.net/ "Export My Posts"
[pandoc]: http://johnmacfarlane.net/pandoc/ "Pandoc"
[markdown]: http://en.wikipedia.org/wiki/Markdown "Markdown"
