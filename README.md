# Middleman Basis

[![Build Status](https://travis-ci.org/pzi/middleman-basis.svg?branch=develop)](https://travis-ci.org/pzi/middleman-basis)
[![Donate Bitcoins](https://www.coinbase.com/assets/buttons/donation_small.png)](https://www.coinbase.com/checkouts/e01471f6102ffb787ea81c6f8e5e922c)


## General Information

 * [middleman][middleman-url]
 * [bower][bower-url]


### Description

The Basis for building a good website. Middleman Basis uses:

* COMPASS
* Haml
* Sass
* CoffeeScript
* Bower
* Modernizr.js
* Normalize.css
* Search Engine Sitemap
* ImageOptim


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

4. Run `middleman`


### Optional

By default, **middleman-basis** only uses `middleman-smusher` to compress images. If you take image compression and optimisation serious, you will want to use [`middleman-imageoptim`](https://github.com/plasticine/middleman-imageoptim).

To make use of `middleman-imageoptim`, you will have to [set up external utilities](https://github.com/toy/image_optim).

Once you have those tools, you can enable (uncomment it) in [`config.rb`](https://github.com/pzi/middleman-basis/blob/develop/config.rb#L112).


## TODO

* Make use of config settings/file
* GitHub page


## License

**Middleman Basis** was created by [Patrik Affentranger][pzi-url] and is distributed under the [MIT license](LICENSE).


[bower-url]: http://bower.io/
[nodejs-url]: http://nodejs.org/
[middleman-url]: http://middlemanapp.com/
[pzi-url]: http://patrikaffentranger.me
