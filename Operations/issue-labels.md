
# Issue Labels

We have specific GitHub repos (known as _synced repos_ throughout this guide) configured to mirror all labels from the root `hyphacoop/organizing`,
on each change to the root repo's labels.
Though some of the below steps are more complicated than we'd ideally like,
this is because the automation is cautious and won't delete _any_ in-use labels (regardless of open/closed state),
so _nothing destructive will happen_.

To **manage the list of _synced repos_** (e.g., ensuring a new repo starts having labels synced),
add a new entry to `LABEL_REPO_TARGETS` in [this configuration file](https://github.com/hyphacoop/organizing/blob/master/.github/workflows/sync-labels.yml#L24) and ensure [@hyphacoop-bot has write-access](https://github.com/orgs/hyphacoop/people/hyphacoop-bot) to each synced repo.

To **create a new label**, just add it to the `hyphacoop/organizing` repo,
and it will be added to others within a few minutes.
(Sync events are [logged in this issue as new comments](https://github.com/hyphacoop/organizing/issues/145) for troubleshooting.)

To **delete an existing label**, search for the label you'd like to delete,
[like so](https://github.com/issues?q=org:hyphacoop+label:doomed-label).
Our automation is cautious, and so will only delete labels from repos where it's _NOT in use_.
For any repos represented in the search results, delete the label from that repo.
Once no labelled issues show up, delete the label from `hyphacoop/organizing`,
and anything else will be cleaned up. If you leave any issues labelled,
the automation will simply do cleanup on its next run.
As soon as a label is unused in a repo, the automation will remove it on the next run.

To **rename an existing label** (this one's a bit tricky),
search for the label you'd like to rename,
[like so](https://github.com/issues?q=org:hyphacoop+label:wg:finance).
Ignore `hyphacoop/organizing` for now, we'll save it for last.
For every other repo where it's used, click the "repo" link,
and visit the label page to manually rename.
Lastly, rename the label in `hyphacoop/organizing`,
and it will ensure the label is removed in any repos where it wasn't in-use.
(Renaming is understood by the automation as a newly created label and a deleted label.)

To **force a label sync**, assuming you're impatient for it to do clean-up of unsued labels,
slightly change a _description_ or _color_ of a label in `hyphacoop/organizing`.
