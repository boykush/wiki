---
name: discover
description: Find a tool, product, or feature for a need the user describes, together with the user, measured against what this Scraps wiki already holds. Turns the need into criteria, gathers candidates from primary sources, compares them, and recommends one; writes no file, and hands the chosen candidate to learn. Use this whenever the user describes what they want to do or what bothers them and asks what exists, what to use, or whether some tool can do it, even if they do not ask for a comparison. When the user already names the thing and wants it in the wiki, use learn instead.
argument-hint: "[need]"
---

# Discover

Help the user find a tool, product, or feature that meets a need, then hand the chosen one to `learn`.

The wiki is a record of the user's understanding. A candidate that was only found and compared has not been understood, so this skill writes nothing. Its result is a recommendation in the conversation, and what the user takes from it into the wiki goes through `learn`. A run that ends with "nothing fits" has ended correctly.

Hold the dialogue in the user's language.

## Boundaries

- Write no file and change no page.
- State as fact only what you verified in a primary source: official documentation, the repository, release notes, the changelog. Name a candidate only after you have opened its primary source. A name you remember is not a candidate yet.
- Judge candidates by the user's criteria, not by popularity or by how much the source says about itself.
- Do not widen the work into tidying or auditing the wiki.

## Asking the user

Follow `learn`'s "Asking the user" (`../learn/SKILL.md`).

## 1. Settle the need

1. Restate the need in one or two sentences: what the user wants to do, and in what situation. Describe the job, not a kind of product; a user asking for "a note app with backlinks" may need to find old notes from a new one.
2. Split it into criteria: up to three that must hold, and a few that would be nice. Include constraints the user stated or that the conversation makes clear (where it runs, what it must work with, license, cost).
3. Show the need and the criteria, and ask only about the ones that could go either way. Wait for the user to confirm or correct them.

## 2. Read the ground

The existing pages show which tools the user already knows and which ideas they already hold. Candidates are compared against that ground, not explained from scratch.

1. Search with varied wording for the need, the job, and the nearby tools using `scraps search "<query>" --json`, then read the most related pages by passing each hit's `key` back: `scraps get "<key>" --json`.
2. If the wiki types its pages, list the types with `scraps type list --json` and the pages of a type that marks tools or products with `scraps type scraps "<type>" --json`.
3. Note what the user already uses or has recorded for this need. A known tool that already meets the criteria, perhaps through a feature the user has not recorded, is a candidate too, and often the best one.

## 3. Gather candidates

1. Look for candidates from primary sources and from listings that point to them. Include features of tools the user already has, not only new tools.
2. Open each candidate's primary source and check it against the criteria. Check that it is still maintained (the latest release or commit) and that the feature exists in the current version, not only on a roadmap or in an issue.
3. Keep three to five candidates. Drop the rest with a one-line reason each.

## 4. Compare and recommend

Present:

- a table: candidates as rows, criteria as columns, each cell saying how it meets the criterion with the source it was checked in. Mark a cell you could not verify as unverified instead of guessing
- for each candidate, how it relates to pages the wiki already has, marked `[[Title]]`
- one recommendation and why, or "nothing fits" with the criterion that nothing met
- what was dropped and why

Then take questions. The user may change the criteria; if so, go back to step 3 with the new ones rather than adjusting the table by hand.

## 5. Hand over

When the user picks a candidate, offer to continue with `learn`, passing the candidate's primary source and the need settled in step 1 as the context to learn it in. If the user picks none, end without writing.
