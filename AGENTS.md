## Purpose

This file defines how AI agents (e.g., Codex) must operate when making changes to this repository. It ensures consistency, clarity, and respect for the broader project vision.

## Project Context

* This repository is part of a long-term body of work (frameworks, book drafts, interactive sites, consulting toolkits).
* Clarity, simplicity, and future extensibility are higher priority than speed or “clever hacks.”
* Multi-language support (RU, EN, LT) is essential. Respect directory and filename conventions.
 * Output must be compatible with GitHub Pages build process and automated pipelines.

## Style Guidelines

* Keep it simple: prefer straightforward solutions over clever or obscure ones.
* Consistent formatting: match existing Markdown / YAML / JSON style (indentation, headers, bullet levels).
* Neutral voice: avoid slang, cultural idioms, or region-specific English.
* Line length: do not artificially wrap Markdown text; let GitHub handle it.
* Commenting: add short, useful comments when generating configs or scripts.
* Translations: ensure semantic accuracy over literal word-for-word; align with previously translated terms.

## Expectations for Agents

1. Preserve structure
    * Never break or remove established folder structure unless explicitly instructed.
    * Maintain consistency across locales and build files.
2. Be reversible
    * Any generated change should be atomic and traceable (so it can be rolled back in one commit).
3. Explain changes
    * Always produce a short summary of what was changed and why.
4. Validate output
    * Check that YAML, JSON, and Markdown are syntactically correct.
    * Ensure build pipeline (mkdocs, GitHub Actions) will not fail.
5. Respect scope
    * Do not introduce new dependencies or plugins unless explicitly requested.
    * Do not remove content unless explicitly requested.

## Do Not

* Do not over-engineer.
* Do not change naming conventions.
* Do not assume missing context — if something is unclear, generate a question instead of making a guess.