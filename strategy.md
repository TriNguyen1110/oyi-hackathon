# Own Your Intelligence, Sun 2026-09-27: what to build and why

Written 2026-09-23 by Claude (COO) for Tri, after reading the hosts' brief and what QM and
GBrain actually are. This file answers "is the real-time governance angle right?" The
timeboxes and the loop stay in `CLAUDE.md`; this is the aim, not the method.

## The brief, in the hosts' words

> A day for building at the frontier of AI-native software. Explore new ways to **extend QM
> and GBrain**, build novel **agent workflows and interfaces**, experiment with **multiplayer
> and software-factory ideas**, and use River AI, Memorable, Superset and UFO to push beyond
> what today's tools make easy. Make something **ambitious, useful, or unexpected**.

Hosts: River AI, GBrain, Memorable, QM, Superset, UFO. Sunday 12:00–18:00 PT; hacking ends
5:00, judging 5:00–5:45. Applications closed Thu 2026-09-24 18:00 PT.

## Who is in the room

**QM (Quartermaster)** is YC's own multiplayer agent harness, MIT, `github.com/yc-software/qm`.
Node/TypeScript core, Fastify, Postgres, per-scope durable sandboxes, a plugin system, Slack
and web surfaces. Every person and every room gets its own scoped memory, files, keychain
view and permissions. Reported: **twice as much code governs access control as drives the
model**, and the threat model names its own gaps — a personal workspace is not mounted into a
room, credentials and history do not travel, writes are not widened, scopes do not cross
organizations.

**GBrain** is a personal assistant built around a single assistant, with memory as one
feature among several.

## What that means for us

1. **Do not present the access-control thesis as news.** QM's team wrote more access-control
   code than model code. Telling them agents should not hold their owner's permissions is
   telling them their own work. It reads naive, and it is the one way to lose this room.
2. **Do not present Willder standalone.** GBrain is a memory product and a host. A
   general-purpose "shared memory for agents" pitch is a competitor's pitch delivered in
   their house. Never say a host's name in a comparison.
3. **The brief says extend QM and GBrain. Take it literally.** The judges are the people
   whose product you are extending. A plugin they could merge beats a product they could buy.

## The gap worth building (this is the angle)

QM isolates by design: memory is scoped per person and per room, and scopes deliberately do
not cross. That is correct and it is also the whole problem in a software factory. **There is
no governed way for a fact to move between scopes** — no shared substrate where a decision
written in one room reaches an agent in another room if and only if that agent is allowed,
within seconds, with an audit row and a working revoke.

So the sentence is not "governed memory for agents." QM has that. It is:

> **Governed memory *between* QM scopes.** QM keeps rooms apart. We let one decision cross,
> to exactly the agents allowed to hear it, in real time, and show the crossing on the record.

That is on-brief on three of its own words at once — extend QM, multiplayer, software factory
— and it is the two keystones already being built (4: access decided in the database; 2:
real-time change propagation, filtered by what each agent may see).

The **unexpected** beat, which is the one the brief asks for and almost nobody else will
show: everyone demos memory that remembers. Show memory that **refuses**. Revoke mid-demo and
let the next call come back empty, with the denial on the audit screen.

## The demo, five beats, under three minutes

1. Two QM rooms, two agents, one shared Willder scope between them. Both working.
2. Agent A records a decision in room A ("we moved off the queue to a change feed").
3. Agent B, mid-task in room B, gets the change on its next tool call and says the brief it
   was about to use is stale. **Nobody polled. Nobody asked.**
4. A third room's agent asks for the same decision: denied, because it was never granted.
5. Revoke B. B's next call returns nothing. Both the allow and the deny are audit rows on
   screen, with timestamps.

Numbers to have on the slide, measured not asserted: propagation latency, revoke-to-denied
latency, leaks across cross-scope reads, audit rows per read. The keystone-4 run on
2026-09-24T00:18Z already gives three of those: 0 leaks, 315 ms revoke-to-denied, one audit
row per read.

## Where the other hosts fit, if they are cheap

- **GBrain**: a personal assistant is the natural *reader*. If its API takes under 30 minutes,
  let a GBrain assistant be agent B, so the demo extends two hosts instead of one.
- **Memorable / Superset / River AI / UFO**: only if one of them removes work. None is worth
  an hour.

Never spend more than 30 minutes on any host integration. The cut order in `CLAUDE.md` holds.

## Prep before Sunday (this is the part that decides the day)

The build is five hours. Standing QM up is not a five-hour-day task: it wants Postgres, Node
and a cloud account. **Do it before Sunday or do not build on it.**

| When | Do | Done means |
|---|---|---|
| Thu 09-24 eve | Clone `yc-software/qm`, run it locally, two rooms, two agents talking | a screenshot of two rooms |
| Fri 09-25 eve | Read QM's plugin interface; find where a tool call returns to the model | the file and the hook named in `plan.md` |
| Fri 09-25 eve | Go/fallback on the real-time slice, written in `demo/STATUS.md` | one line, either word |
| Sat 09-26 | Dry run the five beats end to end, whatever the path | a 60-second recording exists |
| Sun 09-27 12:00 | Arrive with QM already running and the test already written | plan.md committed by 12:20 |

If QM will not stand up by Friday night, the fallback is the current kit: two Claude Code
terminals with the Willder MCP, presented as "what this looks like as a QM plugin," with the
plugin interface named out loud. That is still on-brief. It is just weaker than a plugin.

## What not to do

- No slides before the demo runs. No pitch. No roadmap.
- No host named in a comparison, ever.
- Nothing about the crew's own product launch, pricing, or the company. This is a build day.
- No new repo on the day. Everything lands in this one.
