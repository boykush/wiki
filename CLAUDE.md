# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Architecture Overview

This is a personal wiki built with **Scraps**, a Rust-based static site generator designed for knowledge management. The system converts Markdown files into a searchable wiki with wiki-style linking, tag organization, and automated GitHub Pages deployment.

Key architectural components:
- **Content**: Markdown files in `/scraps/` directory (384+ files)
- **Configuration**: `Config.toml` with site settings and build options
- **Output**: Static HTML generated in `/public/` directory
- **Deployment**: Automated via GitHub Actions to GitHub Pages
- **Language**: Primarily Japanese content (`lang_code = "ja"`)

## Common Development Commands

### Build and Preview
```bash
# Build the static site (generates HTML from Markdown)
scraps build

# Serve locally for preview at http://127.0.0.1:1112
scraps serve

# List all available tags in the wiki
scraps tag

# Generate template files
scraps template
```

### Installation (if needed)
```bash
# Install via Cargo
cargo install scraps

# Install on macOS
brew install boykush/tap/scraps
```

## Content Creation Workflow

1. Create/edit Markdown files in `/scraps/` directory
2. Use `[[Internal Links]]` for wiki-style cross-references
3. Add tags with `[[Tag Name]]` notation (becomes tag if no matching scrap exists)
4. Preview changes with `scraps serve`
5. Build and deploy automatically via GitHub Actions on push

## Configuration Details

The `Config.toml` file controls:
- **base_url**: Deployment URL (https://boykush.github.io/wiki/)
- **sort_key**: "linked_count" - pages sorted by number of incoming links
- **build_search_index**: true - enables full-text search
- **color_scheme**: "only_dark" - dark theme only
- **paginate_by**: 50 - pagination limit

## Deployment Process

Automated deployment via GitHub Actions:
- **Trigger**: Every push to repository
- **Action**: `boykush/scraps-deploy-action@v2`
- **Target**: `gh-pages` branch → GitHub Pages
- **Requirement**: `fetch-depth: 0` for git commit date features
