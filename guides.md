# Guides

Guides explain in practical terms how we do stuff. Any Hypha member can
change these.<sup>[1](#references)</sup>

We are inspired by the idea of "protocols" from the [Lab
Book][clear-lab-book] of the [Civic Laboratory for Environmental Action
Research (CLEAR)][clear]

> Protocols are the "attitudes" or "the manner in which one approaches each and
every element in our space." They are different than pure rules or
instructions; they are ways that we establish order and maintain practices
across our group [...] -- They define the way we ought to proceed or behave in
different situations. As such, they are normative, or premised on values,
morals, and an idea of how things ought to be done. They are a manifestation of
our values.

### Contents

- [Meetings](#meetings)
- [Shortlinks](#shortlinks)
- [Voicemail](#voicemail)
- [References](#references)

## Meetings

### Scheduling a meeting

Note: Consider whether this meeting might be a global interest to other
members. Skip the steps below at your discretion for low-stakes topics.

- Try to announce your intention to schedule a meeting on a topic and ask
  who's interested in participating. Allow _at least_ 48 hours for people to respond.
- Consider who might be most interested and what timing might work for
  them.
  - Check the [`availability` calendar for travel/vacation plans][availability].
  - Check everyone's [availability `schedules`][schedules].
- If 2-3 candidate timeslots feel obvious from looking at people's
  availabilities:
  - Reserve them all in [Hypha calendar][calendar] immediately, for example: `HOLD:
    Infrastructure Meeting (Option 1)`
  - Ask in chat whether anyone who wants to attend has any blocks on any
    of the options
- If short-notice or speed of booking is important:
  - Claim an open HOLD [:information_source:](/meetings.md#calendar-holds) slot.
    - If time permits or topic isn't an all-hands matter, consider
      leaving the hold available for someone else
    - If claiming a hold, edit the calendar immediately and announce
      meeting in chat
- If your must find a new timeslot:
  - Create a new poll (we currently use [When2Meet](https://www.when2meet.com/))
  - Leave ample time for completion (ideally 1 week)
  - Check on non-responders in following days and send (gentle)
    reminders as needed

### Hosting a meeting

- **Before** the meeting...
  - create a stub agenda as soon as possible (can be done before scheduling)
    - Hint: use [an agenda `template`][template]
  - add the agenda to the [`meetings` index][meetings]
  - update the [organizational calendar][calendar] as early as possible with candidate and finalized time slots
    progresses
  - mention the meeting time in chat, and link the agenda.
  - encourage migration of related actions, decisions and discussions
    into agenda from chat
- **During** the meeting...
  - ask for agenda items (start of meeting)
  - facilitate discussion
  - keep time
  - call attention to action items, upcoming decisions and discussions
- **After** the meeting...
  - add important dates/reminders to calendar
  - review and merge notes
  - update [meeting index][meetings] as best location changes
    (hackmd => review (PR) => file)
  - as needed, set up loomio threads and decisions
  - as needed, send reminders of action items
  - migrate action items into task tracker
  
### Joining a Jitsi Call

💻 **Desktop.** Follow [`link.hypha.coop/calls`](https://link.hypha.coop/calls) to our default conference platform.

📱 **Mobile**
  1. Install the app. [Android][jitsi-android] | [iOS][jitsi-ios]
  2. 🔗 **Visit** call URL to open app, or 📋 **copy-paste** redirected call URL (e.g. `https://jitsi.hypha.coop/hyphacoop`) into app home screen.
  
   [jitsi-android]: http://jitsi.org/android
   [jitsi-ios]: http://jitsi.org/ios

📞 **Phone**
  1. Use the private dial-in number from our [technical Jitsi documentation](https://github.com/hyphacoop/organizing-private/blob/master/documents/infrastructure/jitsi.md).
  2. _After_ prompt, enter conference code `307 314 3734 #`

## Shortlinks

### Managing shortlinks

We use a custom shortlink service at `link.hypha.coop`. It helps us:
- resolve keywords to URLs from any computer,
- make commonly used resources quickly and easily accessible,
- simplify link-sharing in spoken conversations, and
- align on shorthand keywords for resources.

Instructions on creating and managing shortlinks are available in
our [`shortlinks` repo](https://github.com/hyphacoop/shortlinks).

### Accessing shortlinks

> **Hint:** You can use a URL hash to deep-link into an expanded shortlink.
> Example:&nbsp;http://link.hypha.coop/inventory#MailCow

Shortlinks work on their own in the address bar, but for even easier access on your own
workstation, you can **add a "custom search engine" keyword to your
browser**.

This allows you to type something like `h<tab>shortlinks` into the
search bar, and get https://link.hypha.coop/shortlinks

Here's a screencast of how it works on Chrome:

![screenshot of adding/using shortlinks as keywords with custom search
engine set in browser](https://i.imgur.com/2D8B7kS.gif)

Instructions:
[Chrome](https://www.techrepublic.com/article/pro-tip-add-custom-search-engines-in-chrome-for-more-efficient-searching/)
| [Firefox (requires extension)](https://addons.mozilla.org/en-US/firefox/addon/add-custom-search-engine/)

## Voicemail

### Accessing Voicemail 

We use a VoIP phone line provider with forwarding and voicemail from [FreePhoneLine.ca](https://www.freephoneline.ca/login). It helps us:

- Have a phone number without tying it to a physical location
- Receive voicemail by email to [members@hypha.coop](mailto:members@hypha.coop)

To access voicemail inbox you can either call remotely or through a configured SIP client.

- Remotely:
  1. Call the dial-in number `14164770355`
  1. Enter our account number `14378876936`
  1. Enter our password: <in our shared password manager [Passbolt](https://pass.hypha.coop/auth/login)>
- SIP client: 
  Dial `*98`

### Managing Voicemail and Phone Forwarding

To record or update the voicemail greeting [access the voicemail](#accessing-voicemail) per above and select the following options:

- 3 - Personal options
- 3 - Greetings 
- 2 - Personal greeting 
- 2 - Record a personal greeting

## References

<sup>1. Inspired by [Enspiral Handbook: Guides](https://handbook.enspiral.com/guides.html)</sup>

<!-- Links -->
   [clear-lab-book]: https://civiclaboratory.nl/clear-lab-book/
   [clear]: http://civiclaboratory.nl
   [availability]: https://link.hypha.coop/availability
   [schedules]: https://link.hypha.coop/schedules
   [meetings]: https://link.hypha.coop/meetings
   [template]: https://link.hypha.coop/template
   [calendar]: https://link.hypha.coop/calendar
   [service-inventory]: https://hackmd.io/WXS9Ie9wQ8OlmIhSpDpdmw?view
