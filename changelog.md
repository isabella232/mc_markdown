# 1.0.0
- [BREAKING] remove the `Legal` & `Guidebook` renderers. They were project specific and should be defined w/in their own projects. As an effect, Nokogiri is dropped as a dependency.
- add BSD 3.0 license

# 0.9.0
- add a :render_with_frontmatter option

# 0.8.1
- change `docs` to `doc`

# 0.8.0
- add documentation on use
- [BREAKING] change to proper gem name of `mc_markdown`

# 0.7.3
- fix adding {{break_quote}} from following paragraphs of blockquotes

# 0.7.2 [broken!]
- fix allow for multiple paragraphs within a single blockquote

# 0.7.1
- add rough xml "extension" support to links
- fix bug in arbitrary attributes that required there to be two or more

# 0.7.0
- add ability to add arbitrary attributes to images & links [#5]

# 0.6.1
- added normalize class to span2of3 for legal renderer

# 0.6.0
- allow looser set of contents for merge tags
- change to passing options to HeaderWithID, now a `header_with_id:` key and options for `:slug` and `:level`

# 0.5.0
- abstract block parsing to Parsers & Formatters for block & short tags

# 0.4.3
- fix wistia default options
- add wistia video shorttag

# 0.4.2
- can now pass redcarpet extensions under the key `:extensions` in the render method

# 0.4.1
- image & links formatters respect `no_links` and `no_images` option flags
- use the extensions module on the Html renderer so it extends to the others
- support passing options to renderers
- add an html renderer that aliases redcarpet's

# 0.4.0
- add callout block formatter
- add a Renderers module, now have a class method to pull memoized instances of renderers
- reorganize a bit, moved "modules" and renamed them to "formatters"

# 0.3.1
- fix the header_with_id
- add an Extensions module for rendering modules that need extensions

# 0.3.0
- remove the bolt-on application

# 0.2.3
- loosen dependencies

# 0.2.2
- strip `<p>` tags surrounding figures

# 0.2.1
- add ability to specify classes for images/figures

# 0.2.0
- add blockquote splitting to Base
- add specs

# 0.1.0
- first version
