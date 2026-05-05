# posix-source

A fish shell function to source POSIX-style environment files (bash `.env` format).

## Usage

```fish
posix-source .env.local
```

## What it does

- Reads bash-style `KEY=VALUE` environment files
- Skips comments (lines starting with `#`) and empty lines
- Exports variables globally in your current fish session
- Automatically strips surrounding quotes from values

## Example

Given a `.env.local` file:
```bash
ENV=dev
DATABASE_URL="postgresql://localhost/mydb"
API_KEY=abc123
# This is a comment
```

After running `posix-source .env.local`, the variables will be available:
```fish
echo $ENV          # outputs: dev
echo $DATABASE_URL # outputs: postgresql://localhost/mydb
echo $API_KEY      # outputs: abc123
```

## Installation

The function is already installed at `~/.config/fish/functions/posix-source.fish` and will be automatically available in all fish sessions.
