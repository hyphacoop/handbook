# Handbook

Hypha Organizational Handbook (H₂O) describes the vision, processes, and culture of Hypha Worker Co-operative. 🌿🍄

### About This Handbook
<!-- Derived from: https://handbook.enspiral.com/#about-this-handbook -->

This Handbook's primary audience is Hypha worker-members and their
collaborators, but it will be publicly available for others who
might find it useful. The goal is to provide as much clarity and
context as possible, while sharing our structures and practices with the
outside world as well.

![Old-timey web 1.0 UNDER CONSTRUCTION banner](images/under-construction.gif)<br />
This resource is in perpetual beta and constantly changing. If you
see something that could be improved, consider this your invitation to improve
it!

## Mission and Vision

*Hypha Worker Co-operative* cultivates collective growth and meaningful livelihoods through learning and building technologies together.

Working in solidarity with our neighbours, we support each other and provide safe harbour to imagine and create alternative futures.

---

## 🛠 Technologies Used

- [**Gitbook.**][gitbook] A command line tool to help build documentation.
- [**Node.js**][node] and [**npm**][npm]. A programming language and package manager.
- [**CircleCI.**][circleci] A script-running service that deploys the handbook website for us in the cloud.

## 💻 Local Development

To submit changes, add content, and make improvements to this handbook you can use [GitHub][repo]: [github.com/hyphacoop/handbook][repo].

To edit locally, you will have to install [GitBook][gitbook] (currently deprecated), and [Node.js][node] (v4.0.0 or above) on your system.

It is easiest to install `gitbook-cli` with [npm][npm], the Node.js package manager. From your terminal, run the following command:

```bash
$ npm install gitbook-cli -g
```

You can preview any changes you make by running a local GitBook server:

```bash
$ gitbook serve
```

After starting the server, visit `http://localhost:4000` (or the address indicated by the `gitbook serve` command) in a web browser.

## Deployment

The handbook is automatically built and deployed using [CircleCI][circleci] after a Pull Request is merged into master on [GitHub][repo].


<!-- Links -->
[gitbook]: https://github.com/GitbookIO/gitbook-cli
[node]: https://nodejs.org/en/
[npm]: https://www.npmjs.com/
[circleci]: https://circleci.com/docs/2.0/about-circleci/
[repo]: https://github.com/hyphacoop/handbook
[config]: .circleci/config.yml
