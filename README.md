# Handbook

Hypha Organizational Handbook (H₂0) describes the vision, processes, and culture of Hypha Worker Co-operative. 🌿🍄

## Mission and Vision

*Hypha Worker Co-operative* cultivates collective growth and meaningful livelihoods through learning and building technologies together.

Working in solidarity with our neighbours, we support each other and provide safe harbour to imagine and create alternative futures.




# Adding to this Handbook

To submit changes, add content, and make improvements to this handbook you can use [GitHub](https://github.com/hyphacoop/handbook): [github.com/hyphacoop/handbook](https://github.com/hyphacoop/handbook).

To edit locally, you will have to install [GitBook](https://github.com/GitbookIO/gitbook-cli) (currently deprecated), and [Node.js](https://nodejs.org/en/) (v4.0.0 or above) on your system.

It is easiest to install `gitbook-cli` with [npm](https://www.npmjs.com/), the Node.js package manager. From your terminal, run the following command:

```bash
$ npm install gitbook-cli -g
```

Additional instructions for setting up and installing GitBook can be found in the [GitBook Toolchain Documentation](https://toolchain.gitbook.com/setup.html)

## Running Locally

You can preview any changes you make by running a local GitBook server:

```bash
$ gitbook serve
```

After starting the server, visit `http://localhost:4000` (or the address indicated by the `gitbook serve` command) in a web browser.

## Deploying

The [`scripts/`](scripts/) folder has a script to rebuild the GitBook and publish to `gh-pages` branch and [hyphacoop.github.io/handbook](https://hyphacoop.github.io/handbook/):

```bash
$ bash scripts/publish-gh-pages.sh
```
