# full-blue-racing.github.io

## Development Setup

Install dependencies:
- Download and install Ruby Gems, either from https://rubygems.org/pages/download, or from your system's package manager (e.g. `ruby-full` on Ubuntu and `rubygems` on Arch)
- Install jekyll with `gem install bundler jekyll`
- Make bundle install gems locally with `bundle config --local path .bundle`
  - This may not be necessary on all systems, but in certain scenarios bundler tries to write gem to /usr and fails due to permission errors. This resolves that issue.
- Install project dependencies with `bundle install` (from the project directory)

Run the site:
```bash
$ bundle exec jekyll serve
```
