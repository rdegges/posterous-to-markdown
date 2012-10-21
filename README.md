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

Here's what it looks like running on my blog:

``` bash
$ curl -L https://github.com/rdegges/posterous-to-markdown/raw/master/convert.sh | bash
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   136  100   136    0     0    265      0 --:--:-- --:--:-- --:--:--   459
100   608  100   608    0     0    607      0  0:00:01  0:00:01 --:--:--  2179
Converting file 2009-12-05-05:00:00-my-git.html to Markdown... done
Converting file 2009-12-05-06:00:00-new-project-atkbot-for-irc-takeovers.html to Markdown... done
Converting file 2009-12-12-05:00:00-atkbot-is-progressing-nicely.html to Markdown... done
Converting file 2009-12-20-04:00:00-asterisk-16-agi-c-library-project.html to Markdown... done
Converting file 2010-01-08-04:00:00-neat-thing-i-learned-today-0.html to Markdown... done
Converting file 2010-01-28-04:00:00-pycall-unleashed.html to Markdown... done
Converting file 2010-02-13-04:00:00-writing-is-hard-0.html to Markdown... done
Converting file 2010-02-14-04:00:00-get-outside-0.html to Markdown... done
Converting file 2010-02-17-04:00:00-a-technical-introduction-to-the-asterisk-gate.html to Markdown... done
Converting file 2010-02-18-04:00:00-user-authentication-with-django.html to Markdown... done
Converting file 2010-02-24-04:00:00-pycall-13-released.html to Markdown... done
Converting file 2010-03-01-06:00:00-transparent-telephony-part-2-installing-aster.html to Markdown... done
Converting file 2010-03-02-06:00:00-pycall-14-released.html to Markdown... done
Converting file 2010-03-03-08:00:00-transparent-telephony-part-3-making-and-recei.html to Markdown... done
Converting file 2010-03-11-08:00:00-auto-generate-forms-with-djangos-modelform.html to Markdown... done
Converting file 2010-03-11-21:00:00-5-ways-to-save-your-company-money-by-switchin.html to Markdown... done
Converting file 2010-03-15-20:00:00-the-world-would-be-a-better-place-if-everyone.html to Markdown... done
Converting file 2010-03-17-05:00:00-basic-xml-parsing-with-python-and-lxml.html to Markdown... done
Converting file 2010-03-22-05:00:00-pycall-15-released.html to Markdown... done
Converting file 2010-05-25-20:30:00-announcing-django-quotes.html to Markdown... done
Converting file 2010-05-30-20:30:00-new-site-backend.html to Markdown... done
Converting file 2010-06-07-05:00:00-the-asterisk-spooling-daemon.html to Markdown... done
Converting file 2010-06-25-20:00:00-populating-default-manytomany-field-values-in.html to Markdown... done
Converting file 2010-07-04-20:00:00-serving-static-content-with-django.html to Markdown... done
Converting file 2010-07-05-20:00:00-the-purely-functional-python-brainfuck-challe.html to Markdown... done
Converting file 2010-07-06-20:00:00-python-challenge-thoughts.html to Markdown... done
Converting file 2010-07-16-05:00:00-introducing-asterdoc.html to Markdown... done
Converting file 2010-07-23-00:00:00-creating-a-posterous-account-1.html to Markdown... done
Converting file 2010-08-15-02:30:00-moved-to-posterous.html to Markdown... done
Converting file 2010-08-15-07:00:00-what-i-do-at-work.html to Markdown... done
Converting file 2010-08-16-09:30:00-how-to-streamline-asterisk.html to Markdown... done
Converting file 2010-08-17-02:00:00-python-docstring-symmetry.html to Markdown... done
Converting file 2010-08-18-22:00:00-asterisk-expression-truthiness.html to Markdown... done
Converting file 2010-08-22-08:30:00-asterisk-git-mirrors.html to Markdown... done
Converting file 2010-09-05-06:44:33-how-to-reset-your-sleep-schedule-seriously.html to Markdown... done
Converting file 2010-09-09-04:15:00-why-dont-you-use-virtualenvwrapper.html to Markdown... done
Converting file 2010-09-10-08:30:00-happiness-is-simplicity.html to Markdown... done
Converting file 2010-10-03-08:00:00-29559904.html to Markdown... done
Converting file 2010-10-16-00:30:00-non-profit-idea-neverending-charity.html to Markdown... done
Converting file 2010-11-26-23:27:00-getting-back-on-track.html to Markdown... done
Converting file 2010-12-02-23:47:00-being-myself.html to Markdown... done
Converting file 2010-12-12-09:25:46-reflections-on-the-django-deployment-and-djan.html to Markdown... done
Converting file 2010-12-19-00:44:00-deployment-system-requirements.html to Markdown... done
Converting file 2010-12-23-08:52:00-what-im-doing-in-2011.html to Markdown... done
Converting file 2011-01-01-12:26:33-my-experiences-with-tropo.html to Markdown... done
Converting file 2011-01-03-07:00:00-tracking-call-data-with-django-tropo.html to Markdown... done
Converting file 2011-01-07-00:13:00-startup-mode.html to Markdown... done
Converting file 2011-01-12-06:06:00-programming-innocence.html to Markdown... done
Converting file 2011-02-12-20:00:00-my-environment.html to Markdown... done
Converting file 2011-03-06-23:19:00-dont-get-too-cocky.html to Markdown... done
Converting file 2011-03-16-18:18:00-my-new-office.html to Markdown... done
Converting file 2011-03-26-21:45:00-5-things-programmers-can-learn-from-bodybuild.html to Markdown... done
Converting file 2011-04-04-01:38:00-building-a-better-body.html to Markdown... done
Converting file 2011-04-05-23:34:00-generic-django-projects.html to Markdown... done
Converting file 2011-04-11-06:00:00-simple-continuous-integration-deployment-with.html to Markdown... done
Converting file 2011-04-12-04:38:00-more-writing-again.html to Markdown... done
Converting file 2011-04-17-20:08:00-essential-tools-for-pythonistas.html to Markdown... done
Converting file 2011-04-18-19:57:00-on-reading-and-tracking.html to Markdown... done
Converting file 2011-04-24-17:57:00-2011-yearly-goals-update-1.html to Markdown... done
Converting file 2011-04-29-08:25:59-the-perfect-django-settings-file.html to Markdown... done
Converting file 2011-04-29-22:08:43-how-to-not-be-lean.html to Markdown... done
Converting file 2011-05-01-19:08:00-diet-updates.html to Markdown... done
Converting file 2011-05-02-06:34:00-pycall-20-is-out.html to Markdown... done
Converting file 2011-05-23-05:00:00-rebranding.html to Markdown... done
Converting file 2011-05-31-06:03:00-i-want-to-be-a-renaissance-man.html to Markdown... done
Converting file 2011-06-01-21:37:00-simplifying-my-jenkins-workflow.html to Markdown... done
Converting file 2011-06-07-02:47:00-enjoying-the-grind.html to Markdown... done
Converting file 2011-06-15-00:41:00-building-a-web-business.html to Markdown... done
Converting file 2011-06-23-23:47:00-on-programming-deadlines.html to Markdown... done
Converting file 2011-07-17-06:18:00-the-root-of-all-change.html to Markdown... done
Converting file 2011-07-17-07:44:00-absolute-victory.html to Markdown... done
Converting file 2011-07-25-06:01:00-building-a-geek-haven-in-los-angeles.html to Markdown... done
Converting file 2011-09-06-04:40:14-live-simply.html to Markdown... done
Converting file 2011-09-19-00:01:11-on-business-guys.html to Markdown... done
Converting file 2011-09-29-14:42:00-my-use-and-abuse-of-caffine.html to Markdown... done
Converting file 2011-10-30-07:00:00-deploying-django.html to Markdown... done
Converting file 2011-12-05-18:25:00-devops-django-part-1-goals.html to Markdown... done
Converting file 2011-12-13-06:30:00-devops-django-part-2-the-pain-of-deployment.html to Markdown... done
Converting file 2011-12-14-02:51:00-establishing-a-writing-habit.html to Markdown... done
Converting file 2011-12-15-04:00:00-system76-bonobo-ubuntu-laptop-review.html to Markdown... done
Converting file 2011-12-19-00:15:00-devops-django-part-3-the-heroku-way.html to Markdown... done
Converting file 2011-12-20-06:23:00-what-ive-learned-about-writing-so-far.html to Markdown... done
Converting file 2011-12-25-08:08:00-my-done-list.html to Markdown... done
Converting file 2011-12-31-01:43:00-devops-django-part-4-choosing-heroku.html to Markdown... done
Converting file 2012-01-03-05:23:00-what-im-doing-in-2012.html to Markdown... done
Converting file 2012-01-03-05:39:00-writing-habit-complete.html to Markdown... done
Converting file 2012-01-04-02:39:00-new-habit-100-carbs.html to Markdown... done
Converting file 2012-01-07-04:37:00-how-to-instantly-fix-problematic-deployments.html to Markdown... done
Converting file 2012-01-08-01:31:00-going-to-war.html to Markdown... done
Converting file 2012-01-08-01:34:00-tools-i-use-tmux.html to Markdown... done
Converting file 2012-01-10-06:37:00-dogs-are-great-programming-companions.html to Markdown... done
Converting file 2012-01-16-07:46:55-reflections-on-herokus-waza-event.html to Markdown... done
Converting file 2012-01-17-03:54:00-how-i-program-stuff.html to Markdown... done
Converting file 2012-01-19-05:32:00-my-ideal-life.html to Markdown... done
Converting file 2012-02-04-06:18:00-how-i-learned-to-program.html to Markdown... done
Converting file 2012-02-26-22:07:27-merciless.html to Markdown... done
Converting file 2012-03-04-23:38:44-writing-habit-thoughts-continued.html to Markdown... done
Converting file 2012-03-05-07:09:00-the-simplest-way-to-compress-html-in-django.html to Markdown... done
Converting file 2012-03-20-19:55:26-do-the-right-thing.html to Markdown... done
Converting file 2012-03-23-09:04:00-do-stuff-have-fun.html to Markdown... done
Converting file 2012-04-08-03:13:00-why-im-learning-node.html to Markdown... done
Converting file 2012-04-08-20:12:00-im-working-on-a-startup.html to Markdown... done
Converting file 2012-04-14-18:05:08-successful-github-development.html to Markdown... done
Converting file 2012-04-17-04:27:00-never-stop-hacking.html to Markdown... done
Converting file 2012-05-21-16:55:11-automation-as-motivation.html to Markdown... done
Converting file 2012-05-31-20:46:00-django-and-ssl.html to Markdown... done
Converting file 2012-06-03-03:20:00-how-to-have-fun-programming.html to Markdown... done
Converting file 2012-06-03-18:39:00-heroku-isnt-for-idiots.html to Markdown... done
Converting file 2012-06-05-03:07:00-silence.html to Markdown... done
Converting file 2012-06-12-19:48:00-hack-everything-to-pieces.html to Markdown... done
Converting file 2012-07-03-03:40:00-choices-choices.html to Markdown... done
Converting file 2012-07-11-04:38:00-a-developers-conundrum.html to Markdown... done
Converting file 2012-07-12-22:47:00-service-oriented-development.html to Markdown... done
Converting file 2012-08-23-04:08:00-two-months-in.html to Markdown... done
Converting file 2012-08-24-01:03:00-service-oriented-hacking-issues.html to Markdown... done
Converting file 2012-08-26-23:57:00-become-a-better-programmer-monitoring.html to Markdown... done
Converting file 2012-09-10-17:00:00-my-heroku-book-is-finished.html to Markdown... done
Converting file 2012-09-27-21:49:00-the-simplest-question.html to Markdown... done
Converting file 2012-09-28-21:55:30-service-oriented-side-effects.html to Markdown... done
Converting file 2012-10-01-22:54:00-service-oriented-problems.html to Markdown... done
Converting file 2012-10-03-00:06:18-programming-and-motivation.html to Markdown... done
Converting file 2012-10-03-21:58:51-dangerous-people.html to Markdown... done
Converting file 2012-10-04-23:12:12-dont-panic-frustration-is-an-anti-pattern.html to Markdown... done
All HTML posts have been converted to Markdown and stored in the 'markdown' folder!
```


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
