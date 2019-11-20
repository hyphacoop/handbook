# Coordination 🚧

Members of Hypha adopt the following practices for mostly asynchoronous coordination using a couple digital platforms.

## Primary coordination

[GitHub](https://github.com/hyphacoop/) is our primary tool for coordinating asynchronously. We use [GitHub Projects](https://link.hypha.coop/tasks) to track tasks that primarily come from two repositories:

- [`hyphacoop/organizing`](https://github.com/hyphacoop/organizing/): Default tasks
- [`hyphacoop/organizing-private`](https://github.com/hyphacoop/organizing-private/): Confidential tasks

A task is assigned to a _Working Group (WG)_ or _Project Group (PG)_ using [Labels](https://github.com/hyphacoop/organizing/labels/),
then it becomes the responsibility of the group.
A task may further be assigned to a specific member.
Labels are also used to indicate priorities of tasks.

The following table lists all the groups and search filters that help members keep track of tasks they are responsible for.

- **Assignments** mean you or your group is _responsible for the task_. The rate tasks are completed and their relative priorities are decisions by the group
- **Mentions** mean you or your group is _requested for input_. The response time expectation is **2 working days**, which means each member should check their Mentions at least that frequently, for their own GitHub handle and every [GitHub Team](https://github.com/orgs/hyphacoop/teams) they are part of

|                      | Assignments                                              | Mentions                                                                     |
|:---------------------|:---------------------------------------------------------|:-----------------------------------------------------------------------------|
| You                  | [assignee:you][assignee:you]                             | [mentions:you][mentions:you]                                                 |
| **Org Groups**       |
| Member Workers       |                                                          | [team:@hyphacoop/member-workers][team:@hyphacoop/member-workers]             |
| Directors            |                                                          | [team:@hyphacoop/directors][team:@hyphacoop/directors]                       |
| **Working Groups**   |
| Business Planning WG | [label:wg:business-planning][label:wg:business-planning] | [team:@hyphacoop/business-planning-wg][team:@hyphacoop/business-planning-wg] |
| Finance WG           | [label:wg:finance][label:wg:finance]                     | [team:@hyphacoop/finance-wg][team:@hyphacoop/finance-wg]                     |
| Governance WG        | [label:wg:governance][label:wg:governance]               | [team:@hyphacoop/governance-wg][team:@hyphacoop/governance-wg]               |
| Infra & Ops WG       | [label:wg:infra-ops][label:wg:infra-ops]                 | [team:@hyphacoop/infra-ops-wg][team:@hyphacoop/infra-ops-wg]                 |
| **Project Groups**   |
| Aether PG            | [label:proj:aether][label:proj:aether]                   |                                                                              |
| Primal Glow PG       | [label:proj:primal-glow][label:proj:primal-glow]         |                                                                              |

Note that while most tasks show up as Issues from `hyphacoop/organizing` and `hyphacoop/organizing-private`, there will also be Issues from other repositories, and some items that require your attention will show up as Pull Requests. The above search filters will catch everything. It is recommended for members to bookmark the search filters that apply to them in their browser and check them everyday.

Members are encouraged to use emojis liberally to indicate they have, for example: 👀 read the comment, 👍 agree or 👎 disagree with the comment, etc. This applies generally to all our tools.

## Making decisions

Once tasks are assigned to groups, the group is entrusted to make decisions on the task and make judgment on when it is necessary to consult the wider membership or request specific members for input. Larger group decisions are made either **at an All-hands Call and captured in meeting notes** or using **voting tools in Loomio**.

When using [Loomio](https://loomio.hypha.coop) to set up a vote using the Proposal or Poll tool, the recommended voting period is 5 to 7 days. Post the voting link on the associated GitHub issue and tag `@hyphacoop/member-workers` or applicable GitHub handles, since GitHub is the primary place that everyone is actively checking for notification.

## Real-time chat

We use [Matrix](https://chat.tomesh.net/#/group/+hyphacoop:tomesh.net) as real-time chat for day-to-day task discussions and pinging members for urgent requests.

All members are encouraged to install a Matrix client on their phone, and configure notifications for `+hyphacoop:tomesh.net` rooms to **Mentions only**. In messages, we refer to members by initials and only use handles when trying to trigger a notification to bring someone to a conversation (i.e., an urgent ping). There is otherwise no expectation that members will check the chat regularly, or catch up on backscrolls, therefore it is important to be intentional in bringing summaries of decisions made back into Issues in GitHub.

## Shared calendar

We have two shared Google Calendars:

- [`hyphacoop`](https://link.hypha.coop/calendar): _Internal meetings_ and _public events of interest_
- [`hyphacoop: availability`](https://link.hypha.coop/availability): _Member office hours_ and _member travels (as all-day events)_

Members can use _office hours_ to identify work hour overlaps with each other, where they can expect peers to be on chat and likely to be available for calls. The _travels_ allow people to figure out the timezone other members are in.

[assignee:you]: https://github.com/issues?utf8=%E2%9C%93&q=is%3Aopen+archived%3Afalse+org%3Ahyphacoop+assignee%3Ayou
[mentions:you]: https://github.com/issues?utf8=%E2%9C%93&q=is%3Aopen+archived%3Afalse+org%3Ahyphacoop+mentions%3Ayou
[team:@hyphacoop/member-workers]: https://github.com/issues?utf8=%E2%9C%93&q=is%3Aopen+archived%3Afalse+org%3Ahyphacoop+team%3Ahyphacoop%2Fmember-workers
[team:@hyphacoop/directors]: https://github.com/issues?utf8=%E2%9C%93&q=is%3Aopen+archived%3Afalse+org%3Ahyphacoop+team%3Ahyphacoop%2Fdirectors
[label:wg:business-planning]: https://github.com/issues?utf8=%E2%9C%93&q=is%3Aopen+archived%3Afalse+org%3Ahyphacoop+label%3Awg%3Abusiness-planning
[team:@hyphacoop/business-planning-wg]: https://github.com/issues?utf8=%E2%9C%93&q=is%3Aopen+archived%3Afalse+org%3Ahyphacoop+team%3Ahyphacoop%2Fbusiness-planning-wg
[label:wg:finance]: https://github.com/issues?utf8=%E2%9C%93&q=is%3Aopen+archived%3Afalse+org%3Ahyphacoop+label%3Awg%3Afinance
[team:@hyphacoop/finance-wg]: https://github.com/issues?utf8=%E2%9C%93&q=is%3Aopen+archived%3Afalse+org%3Ahyphacoop+team%3Ahyphacoop%2Ffinance-wg
[label:wg:governance]: https://github.com/issues?utf8=%E2%9C%93&q=is%3Aopen+archived%3Afalse+org%3Ahyphacoop+label%3Awg%3Agovernance
[team:@hyphacoop/governance-wg]: https://github.com/issues?utf8=%E2%9C%93&q=is%3Aopen+archived%3Afalse+org%3Ahyphacoop+team%3Ahyphacoop%2Fgovernance-wg
[label:wg:infra-ops]: https://github.com/issues?utf8=%E2%9C%93&q=is%3Aopen+archived%3Afalse+org%3Ahyphacoop+label%3Awg%3Ainfra-ops
[team:@hyphacoop/infra-ops-wg]: https://github.com/issues?utf8=%E2%9C%93&q=is%3Aopen+archived%3Afalse+org%3Ahyphacoop+team%3Ahyphacoop%2Finfra-ops-wg
[label:proj:aether]: https://github.com/issues?utf8=%E2%9C%93&q=is%3Aopen+archived%3Afalse+org%3Ahyphacoop+label%3Aproj%3Aaether
[label:proj:primal-glow]: https://github.com/issues?utf8=%E2%9C%93&q=is%3Aopen+archived%3Afalse+org%3Ahyphacoop+label%3Aproj%3Aprimal-glow
