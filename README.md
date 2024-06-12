# Handbook

Hypha handbook describing the vision, processes, 
and culture of Hypha Worker Co-operative. 🌿🍄

This handbook's primary audience is Hypha member-workers and collaborators, 
but it will be publicly available for others who might find it useful. 

![Old-timey web 1.0 UNDER CONSTRUCTION banner](assets/images/under-construction.gif)<br />
This resource is in perpetual beta and constantly changing. If you see 
something that could be improved, consider this your invitation to improve it!

## 📃 License 

Copyright © 2018-2021 individual contributors. 

Unless otherwise indicated it is licensed under a 
[Creative Commons Attribution-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-sa/4.0/). 
A copy is included with the handbook at [LICENSE](./LICENSE).

## 🛠 Technologies Used

- [**HonKit.**][honkit] A command line tool to help build documentation.
- [**Node.js**][node] and [**npm**][npm]. A programming language and package 
  manager.
- [**GitHub Actions.**][gh-actions] A script-running service that deploys the
  handbook website for us in the cloud.

## 💻 Local Development

To submit changes, add content, and make improvements to this handbook you can 
use [GitHub][repo]: [github.com/hyphacoop/handbook][repo].

To edit locally, you will have to install [HonKit][honkit], and [Node.js][node] (v4.0.0 or above) on your system.

It is easiest to install `honkit` with [npm][npm], the Node.js package 
manager. From your terminal, run the following command:

```bash
$ npm install honkit --save-dev
```

You can preview any changes you make by running a local HonKit server:

```bash
$ npx honkit serve
```

After starting the server, visit `http://localhost:4000` (or the address 
indicated by the `honkit serve` command) in a web browser.

To test that all links works, you may run html-proofer via:

```bash
bundle install

# Run with defaults (faster)
make check

# Run slower (to avoid failing links from servers throttling you)
make check-cautious
```
Once you have installed the above tools, these are the steps required to make edits to existing Handbook pages:

1. Check that your local version of the main (master) branch is up to date. If not, you should pull recent changes from GitHub. On the command line you'll have to first use `git checkout master` and then `git pull`.
2. Create a new branch: select New branch (if using GitHub Desktop) and give it a title of whatever you're planning to work on e.g., roles-page-update. On the command line you can use `git checkout -b your-branch-name`.
3. Make your edits or changes using a text editor
4. If you're using the command line, you'll have to stage changes you want to commit. You can use `git add file-name` to do that.
5. Commit the change and write a summary message for that commit. If using the command line, you can use `git commit -m "your summary message"
6. Push the changes upstream to GitHub. With the command line you can use `git push`
7. Make a pull request to the master branch from your branch
8. Assign a co-worker to review the changes
9. Co-worker reviews and then accepts the pull request, and the update is made  


## 🚀 Deployment

The handbook is automatically built and deployed using 
[GitHub Actions][gh-actions] after a Pull Request is merged into master on 
[GitHub][repo].

See: [`.github/workflows/deploy-github-pages.yml`](.github/workflows/deploy-github-pages.yml)

Pull requests commits are lint-checked for concerns before merging.

See: [`.github/workflows/test-pull-request.yml`](.github/workflows/test-pull-request.yml)


<!-- Links -->
[honkit]: https://github.com/honkit/honkit
[node]: https://nodejs.org/en/
[npm]: https://www.npmjs.com/
[gh-actions]: https://github.com/features/actions
[repo]: https://github.com/hyphacoop/handbook
