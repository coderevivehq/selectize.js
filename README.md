<p align="center">
  <img src="https://raw.githubusercontent.com/coderevivehq/selectize.js/main/.github/assets/coderevive-hero.png" alt="selectize.js revived and maintained by CodeRevive" width="460">
</p>

<h1 align="center">selectize.js</h1>

<p align="center">
  A maintained continuation of <a href="https://github.com/selectize/selectize.js">Selectize</a> by <a href="https://github.com/coderevivehq">CodeRevive</a>.
</p>

<p align="center">
  <a href="https://www.npmjs.com/package/@coderevivehq/selectize"><img alt="npm version" src="https://img.shields.io/npm/v/%40coderevivehq%2Fselectize?style=flat-square"></a>
  <a href="https://www.npmjs.com/package/@coderevivehq/selectize"><img alt="npm downloads" src="https://img.shields.io/npm/dm/%40coderevivehq%2Fselectize?style=flat-square"></a>
  <a href="https://github.com/coderevivehq/selectize.js/actions/workflows/node.js.yml"><img alt="build status" src="https://github.com/coderevivehq/selectize.js/actions/workflows/node.js.yml/badge.svg"></a>
  <a href="https://github.com/coderevivehq/selectize.js/releases"><img alt="latest release" src="https://img.shields.io/github/v/release/coderevivehq/selectize.js?style=flat-square"></a>
  <a href="LICENSE"><img alt="Apache-2.0 license" src="https://img.shields.io/github/license/coderevivehq/selectize.js?style=flat-square"></a>
</p>

## Overview

Selectize is a jQuery-based custom select control for tagging, autocomplete, contact lists, and other rich single- or multi-value inputs. It combines native form controls with keyboard navigation, searching, option creation, and extensible plugins.

## Maintained by CodeRevive

This maintained continuation is published by [CodeRevive](https://github.com/coderevivehq). Security patches are our highest priority. We also review bug reports, feature requests, and suggestions from the community.

The project is based on the original [Selectize](https://github.com/selectize/selectize.js) repository and its contributors.

## Quick links

- [Overview](#overview)
- [Maintained by CodeRevive](#maintained-by-coderevive)
- [Installation & setup](#installation--setup)
- [Documentation](#documentation)
- [Usage](#usage)
- [Contributing](#contributing)
- [Security & support](#security--support)
- [Credits & license](#credits--license)

## Installation & setup

```sh
npm install @coderevivehq/selectize jquery
```

Selectize supports Node.js 20 or later for development. Browser consumers also need jQuery; jQuery UI is optional and only required by the Drag & Drop plugin.

## Documentation

Start with the [documentation overview](docs/index.md). The existing detailed guides cover [getting started](docs/docs/intro.mdx), [usage](docs/docs/usage.mdx), [events](docs/docs/events.mdx), [plugins](docs/docs/plugins.mdx), and the [API](docs/docs/api.mdx).

## Usage

```html
<select id="tags" multiple>
  <option value="javascript">JavaScript</option>
  <option value="typescript">TypeScript</option>
</select>

<script>
  $("#tags").selectize();
</script>
```

See the [usage guide](docs/docs/usage.mdx) for configuration, remote data, rendering, and plugin examples.

## Contributing

Bug reports, focused improvements, and documentation updates are welcome through [GitHub issues](https://github.com/coderevivehq/selectize.js/issues) and [pull requests](https://github.com/coderevivehq/selectize.js/pulls). Run the relevant tests before submitting a change.

## Security & support

Report security concerns privately through the repository's [Security](https://github.com/coderevivehq/selectize.js/security) page. For usage questions and ordinary bugs, open a [GitHub issue](https://github.com/coderevivehq/selectize.js/issues) with a minimal reproduction when possible.

## Credits & license

Original code and inherited files remain licensed under the upstream [LICENSE](LICENSE). CodeRevive-authored changes are licensed under the MIT License in [LICENSE-CODEREVIVE](LICENSE-CODEREVIVE), unless a file states otherwise. Using the combined repository remains subject to all applicable license terms.

This project is a maintained continuation of [selectize/selectize.js](https://github.com/selectize/selectize.js). Original copyright notices, licensing, and attribution are retained.
