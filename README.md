# Handbook

Hypha Organizational Handbook (H₂O) describes the vision, processes, 
and culture of Hypha Worker Co-operative. 🌿🍄

This Handbook's primary audience is Hypha member-owners and collaborators, 
but it will be publicly available for others who might find it useful. 

![Old-timey web 1.0 UNDER CONSTRUCTION banner](images/under-construction.gif)<br />
This resource is in perpetual beta and constantly changing. If you see 
something that could be improved, consider this your invitation to improve it!

## 📃 License 

Copyright © 2018-2020 individual contributors. 

Unless otherwise indicated it is licensed under a 
[Creative Commons Attribution-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-sa/4.0/). 
A copy is included with the handbook at [LICENSE](./LICENSE).

## 🛠 Technologies Used

- [**Gitbook.**][gitbook] A command line tool to help build documentation.
- [**Node.js**][node] and [**npm**][npm]. A programming language and package 
  manager.
- [**GitHub Actions.**][gh-actions] A script-running service that deploys the
  handbook website for us in the cloud.

## 💻 Local Development

To submit changes, add content, and make improvements to this handbook you can 
use [GitHub][repo]: [github.com/hyphacoop/handbook][repo].

To edit locally, you will have to install [GitBook][gitbook] (currently 
deprecated), and [Node.js][node] (v4.0.0 or above) on your system.

It is easiest to install `gitbook-cli` with [npm][npm], the Node.js package 
manager. From your terminal, run the following command:

```bash
$ npm install gitbook-cli -g
```

You can preview any changes you make by running a local GitBook server:

```bash
$ gitbook serve
```

After starting the server, visit `http://localhost:4000` (or the address 
indicated by the `gitbook serve` command) in a web browser.

## 🚀 Deployment

The handbook is automatically built and deployed using 
[GitHub Actions][gh-actions] after a Pull Request is merged into master on 
[GitHub][repo].

See: [`.github/workflows/deploy-github-pages.yml`](.github/workflows/deploy-github-pages.yml)

Pull requests commits are lint-checked for concerns before merging.

See: [`.github/workflows/test-pull-request.yml`](.github/workflows/test-pull-request.yml)


<!-- Links -->
[gitbook]: https://github.com/GitbookIO/gitbook-cli
[node]: https://nodejs.org/en/
[npm]: https://www.npmjs.com/
[gh-actions]: https://github.com/features/actions
[repo]: https://github.com/hyphacoop/handbook
