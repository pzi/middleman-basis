# Middleman Basis

[![Build Status](https://travis-ci.org/pzi/middleman-basis.svg?branch=master)](https://travis-ci.org/pzi/middleman-basis)

> Basis comes with a bare minimum of pre-installs, ready for you to take it to the next level. 
It is literally, the Basis for building a good, performant website.


## General Information

 * [middleman][middleman-url]
 * [bower][bower-url]
 * [humans.txt][humanstxt-url]
 * [ImageOptim][imageoptim-url]


### Description

The Basis for building a good, performant website. Middleman Basis uses:

* COMPASS
* Haml
* Sass
* CoffeeScript
* Bower
* Modernizr.js
* Normalize.css
* Search Engine Sitemap
* ImageOptim
* Humans.txt


## Getting Started

Before you get started, make sure you have [node.js][nodejs-url] & [Bower][bower-url] already installed.

1. Install **middleman-basis** as Middleman template.

    ```bash
    git clone https://github.com/pzi/middleman-basis.git ~/.middleman/middleman-basis
    ```

2.  Initialize a new Middleman project with the **middleman-basis** template

    ```bash
    middleman init project_name --template=middleman-basis
    cd project_name
    ```

3. Install Bower packages: `bower install`

4. Install required gems: `bundle install`

5. Run `middleman`


### Make it your own!

After you have successfully set up the template for your new project, it's time to make it your own. You have the entire Middleman Basis repository as part of your new project, which includes a lot of files you won't need (e.g. `.travis.yml`, this version of the README etc.). So please, go ahead and remove files and/or change the content of them, according to your project's needs.

#### Customizing defaults

Middleman Basis makes use of [Data Files][middleman-data-files]. By default, the template comes with 2 data files:

1. [config.yml](data/config.yml) – a place for sitewide content
2. [humans.yml](data/humans.yml) – a *simpler* way to add content to [humans.txt][humanstxt-url]

It's **important** that these 2 files get updated accordingly! It'd be unfortunate if your project gets launched with "Example" content. If you follow the examples, it will speed up the entire spin up procedure.


### Optional

By default, **middleman-basis** only uses `middleman-smusher` to compress images. If you take image compression and optimisation serious, you will want to use [`middleman-imageoptim`](https://github.com/plasticine/middleman-imageoptim).

To make use of `middleman-imageoptim`, you will have to [set up external utilities][imageoptim-url].

Once you have those tools, you can enable (uncomment it) in [`config.rb`][imageoptim-config].


## TODO

* GitHub page
* More/better documentation
* Better spin-up instruction/how to use it as a template


## License

**Middleman Basis** was created by [Patrik Affentranger][pzi-url] and is distributed under the [MIT license](LICENSE).

[![Donate Bitcoins](https://www.coinbase.com/assets/buttons/donation_small.png)](https://www.coinbase.com/checkouts/e01471f6102ffb787ea81c6f8e5e922c)


[bower-url]: http://bower.io/
[nodejs-url]: http://nodejs.org/
[middleman-url]: http://middlemanapp.com/
[pzi-url]: http://patrikaffentranger.me
[humanstxt-url]: http://humanstxt.org/
[middleman-data-files]: https://middlemanapp.com/advanced/data_files/
[imageoptim-url]: https://github.com/toy/image_optim
[imageoptim-config]: config.rb#L66
