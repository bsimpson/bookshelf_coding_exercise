# Bookshelf Coding Exercise

Thank you for applying to Influence Health! This coding exercise will help us assess your
technical abilities on a variety of tracks. **Expected time to complete all tracks is three hours**.
(Note that all tracks may not apply to your position.)

To get started, fork this project to your Github user account. When you are finished
you will create a PR for your branch back into the upstream branch.

# About this Exercise

This is a sample Ruby 2.2+ / Rails 5 / Bootstrap 4 application in which
you will do some coding exercises. The exercises are broken up into several
different tracks. Each track will test your experience and judgement in a particular
discipline of software development. This coding challenge is standardized across
all applications so a particular track may not be relevant to your position.

Please use Git to version control your changes. Please be sure to provide meaningful
commit messages and observe best practices with git (atomic commits,
no unintentional changes (e.g. whitespace, newlines), etc)

# About Bookshelf

Bookshelf is an application that contains a list of 54,000 popular books. These are
displayed to the user along with information about the book as well as cover art from Amazon.
You will be enhancing Bookshelf through a series of challenges.

You will need a few prerequisites to get Bookshelf up and running. You will need:

 * Ruby >= 2.2
 * Rails >= 5.0.0rc1
 * Sqlite

Clone the application from the Github repository to your local development machine.

Install the gems included in the Gemfile with:

```
bundle install
```

Create, migrate, and seed the database:

```
rake db:create db:setup
```

You can now run the Rails webserver with:

```
rails s
```

# Tracks

## Backend

1. The book listing loads slowly. Speed up the page load times.
2. Make the author and publisher text into links to pages that show results constrained
to that author or that publisher respectively. For example, clicking "Michael Crichton"
should take the user to a listing of books for only that author (e.g. Airframe, Timeline, etc). Clicking "Ballantine Books"
should take the user to a listing of books for only that publisher (e.g. Seabiscuit, The Dragons of Eden, etc).
3. Build a page that allows a user to add a new book listing. Check against existing listings.

## Database

1. The index page is loading slowly when many users are using the application. Diagnose
and resolve any database related slowness.
2. Enforce that the same books, authors, and publishers cannot be listed twice.
3. Identify any queries in the books controller that are unnecessary.

## UI / UX

1. Prepare several designs to search for books via a title, or author name. Submit wireframes or mockups
for the alternative designs and implement the one you think is best.
2. Paginate the result set so that the next 20 books can be displayed.
3. Make a responsive view for extra small screens (<768px) so that only the book cover
art is shown, and the author, publisher, and published date is hidden. Mockups are not needed.

## Design Patterns

1. Refactor the view templates so that they contain little logic.
2. Refactor the image placeholder logic.
3. Inspect the logic for violations of MVC.

## DevOps

1. Build a script to migrate the data from Sqlite to PostgreSQL.
2. Sign up for a free account on AWS, Google Cloud, Azure, etc and deploy this codebase.
It should include the data present in the seed file, and be operational. Include the URL in a commit message.