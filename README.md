<p align="center">
  <img src="https://raw.githubusercontent.com/coderevivehq/selectize.js/master/docs/static/img/selectize-coderevive.png" alt="Selectize.js revived and maintained by CodeReviveHQ" width="460">
</p>

<h1 align="center">selectize.js</h1>

<p align="center">
  A maintained fork of Selectize from <a href="https://github.com/coderevivehq">CodeReviveHQ</a>.
</p>

<p align="center">
  <a href="https://www.npmjs.com/package/@coderevivehq/selectize"><img alt="npm version" src="https://img.shields.io/npm/v/@coderevivehq/selectize?style=flat-square"></a>
  <a href="https://www.npmjs.com/package/@coderevivehq/selectize"><img alt="npm downloads" src="https://img.shields.io/npm/dm/@coderevivehq/selectize?style=flat-square"></a>
  <a href="https://github.com/coderevivehq/selectize.js/actions/workflows/node.js.yml"><img alt="build status" src="https://github.com/coderevivehq/selectize.js/actions/workflows/node.js.yml/badge.svg"></a>
  <a href="https://github.com/coderevivehq/selectize.js/releases"><img alt="latest release" src="https://img.shields.io/github/v/release/coderevivehq/selectize.js?style=flat-square"></a>
  <a href="LICENSE"><img alt="Apache 2.0 license" src="https://img.shields.io/github/license/coderevivehq/selectize.js?style=flat-square"></a>
</p>

## Maintained by CodeReviveHQ

This fork keeps Selectize available as `@coderevivehq/selectize`.

Security patches are our highest priority. We also review bug reports, feature requests, and suggestions from the community.

Selectize is an extensible [jQuery](https://jquery.com/) custom select control. It supports tagging, autocomplete, contact lists, country selectors, and other rich input experiences.

The project is based on the original [Selectize](https://github.com/selectize/selectize.js) repository. We are grateful to its authors and contributors.

## Quick links

- [Install from npm](https://www.npmjs.com/package/@coderevivehq/selectize)
- [Browse files on jsDelivr](https://cdn.jsdelivr.net/npm/@coderevivehq/selectize@latest/)
- [Releases and changelog](https://github.com/coderevivehq/selectize.js/releases)
- [Report a bug or request a feature](https://github.com/coderevivehq/selectize.js/issues)
- [Documentation](https://github.com/coderevivehq/selectize.js/tree/master/docs)
- [Demos](https://github.com/coderevivehq/selectize.js/tree/master/docs)

## Installation

```sh
npm install @coderevivehq/selectize
```

## CDN

jsDelivr serves the latest files published in the CodeReviveHQ npm package. These links update automatically when a new version is published.

```html
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/@coderevivehq/selectize@latest/dist/css/selectize.default.css"
>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@coderevivehq/selectize@latest/dist/js/selectize.min.js"></script>
```

For reproducible production builds, replace `latest` with a specific release number.

## Features

- **Smart Option Searching / Ranking**
  Options are efficiently scored and sorted on-the-fly (using [sifter](https://github.com/brianreavis/sifter.js)). Want to search for an item's title _and_ description? No problem.
- **Caret between items**
  Order matters sometimes. Use the <kbd>&larr;</kbd> and <kbd>&rarr;</kbd> arrow keys to move between selected items.
- **Select & delete multiple items at once**
  Hold down <kbd>option</kbd> on Mac or <kbd>ctrl</kbd> on Windows to select more than one item to delete.
- **Díåcritîçs supported**
  Great for international environments.
- **Item creation**
  Allow users to create items on the fly (async saving is supported; the control locks until the callback is fired).
- **Remote data loading**
  For when you have thousands of options and want them provided by the server as the user types.
- **Clean API &amp; code**
  Interface with it and make modifications easily. Pull requests are always welcome!
- **Extensible**
  [Plugin API](docs/plugins.md) for developing custom features (uses [microplugin](https://github.com/brianreavis/microplugin.js)).
- **Touch Support**
  Plays nice with iOS 5+ devices.

## Dependencies

- [jquery](https://github.com/jquery/jquery) (1.7 and greater), as [peer dependency](https://nodejs.org/en/blog/npm/peer-dependencies/)
  - **Note:** it is installed automatically in development, or in projects using NPM 1 or 2. When using NPM from version 3 on, just a warning is thrown and the user needs to manually install an explicit version in their own project (e.g. `npm install --save jquery@3.5.1`).

Optional:

- [jquery-ui](https://github.com/jquery/jquery-ui) (required by `drag_drop` plugin)

## Manual installation

Pre-built files are generated during the release build and included in the
published npm package. After installing the package, they are available under
`node_modules/@coderevivehq/selectize/dist/`.

The repository intentionally does not commit generated `lib/` or `dist/`
directories. Run `npm run build` before using a local checkout as a package.

If you're looking to get started with minimal fuss, include
`selectize.min.js` (bundles Sifter and Microplugin
dependencies – also available un-minified for debugging, just remove the
`.min` part) and `css/selectize.default.css`.

- `dist/js/` contains the JavaScript builds.
- `dist/css/` contains the compiled styles and themes.
- `dist/scss/` and `dist/less/` contain generated style sources for customization.

## Usage

```js
$("select").selectize(options);
```

The available options are documented in the [project documentation](https://github.com/coderevivehq/selectize.js/tree/master/docs).

## Contributing

Contributions are welcome. Every change is reviewed through a pull request.

1. Open an issue before starting a large change.
2. Keep each pull request focused on one fix or feature.
3. Add tests for behavior changes.
4. Update the documentation when behavior changes.
5. Add a changelog entry for user-facing changes.

### Tests

Please ensure all the tests pass:

```sh
npm test # defaults to ChromeHeadless
BROWSERS=Firefox npm test
BROWSERS=Firefox,Chrome npm test
BROWSERS=Firefox,Chrome,Safari npm test
```

### Local development

To run Selectize locally:

```sh
npm start
```

You can then run the examples at `https://loopback.website:4000/`.

## License

Copyright &copy; 2013–2016 [Brian Reavis](http://twitter.com/brianreavis) & [Contributors](https://github.com/coderevivehq/selectize.js/graphs/contributors)\
Copyright &copy; 2020-2022 Selectize Team & [Contributors](https://github.com/coderevivehq/selectize.js/graphs/contributors)

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at: <http://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
