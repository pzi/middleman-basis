# Middleman Basis

## General Information

 * [middleman][middleman-url]
 * [bower][bower-url]

### Description

The Basis for building a good website. Middleman Basis uses:

* COMPASS
* HAML
* SASS
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
rm -rf .git/
git init
```

3. Install Gems and Bower packages

```bash
bundle && bower install
```

4. Run `middleman`

## TODO

* Make use of config settings/file
* GitHub page

## License

**Middleman Basis** was created by [Patrik Affentranger][pzi-url] and is distributed under the [MIT license](LICENSE).


[bower-url]: http://bower.io/
[nodejs-url]: http://nodejs.org/
[middleman-url]: http://middlemanapp.com/
[pzi-url]: http://patrikaffentranger.me
