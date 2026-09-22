---
name: two-terminal-demo
description: Run and record the two-agent shared-memory demo (A changes a decision, B is told mid-task, revoke B, silence). Use on demo day and for the Show HN recording.
---

# When to use
Any time the real-time keystone is shown to a person: hackathon, Show HN, an investor.

# Steps
1. Two terminals, each `claude` with the Willder MCP for its own token (A, B).
2. B starts the task in `demo/seed.md`. A writes D1, waits 10 s, supersedes it.
3. Watch B's next tool call: the change block names D1's new revision. Say the latency out loud.
4. A revokes B. B's next call: no block, and a read of the scope is denied. Show the audit row.
5. End on what is not true yet (from `docs/keystones.md` in the crew repo).

# Record
`node <crew-repo>/scripts/record-change.mjs` is for pages; for terminals use the OS screen
recorder, 60 seconds, both terminals side by side.
