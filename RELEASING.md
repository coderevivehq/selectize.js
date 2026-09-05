# Releasing Selectize

Releases are published as `@coderevivehq/selectize` on npm.

## Prepare a release

1. Create a branch from `master`.
2. Update the version in `package.json` and `package-lock.json`.
3. Update `CHANGELOG.md`.
4. Run `npm run build` and commit the updated files in `dist`.
5. Confirm that the README points to the CodeReviveHQ package.
6. Open a pull request.
7. Confirm that the tests pass.
8. Merge the pull request.

## Publish a release

1. Create a GitHub Release from the merge commit.
2. Use a tag that matches the package version. For example, use `v0.15.3` for version `0.15.3`.
3. Publish the GitHub Release.
4. GitHub Actions tests the package and publishes it to npm.

## First release only

The npm package must exist before trusted publishing can be connected.

1. Sign in to npm as `coderevivehq`.
2. Publish the first version from the release commit with `npm publish`.
3. Open the package settings on npm.
4. Add a trusted publisher for GitHub Actions.
5. Use organization `coderevivehq`.
6. Use repository `selectize.js`.
7. Use workflow `publish.yml`.
8. Use environment `npm`.

After this setup, future releases do not need an npm token.

The `npm` environment requires approval before publishing. The build and tests run without publishing permission. The publishing job does not check out or execute project code.
