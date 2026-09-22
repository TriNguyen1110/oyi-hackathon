# Invented project notes for the shared scope (no real data)

Project: "Lantern", a small CLI that summarizes a repo's open PRs.
Decision D1 (author: A): the CLI talks to GitHub over REST.
Task for B: write the REST client for D1.
During the demo, A supersedes D1: "switch to GraphQL, REST rate limits are too low."
Expected: B's agent, mid-way through the REST client, is told on its next tool call and stops.
Then A revokes B's grant. Expected: B's next call carries no change and reads nothing.
