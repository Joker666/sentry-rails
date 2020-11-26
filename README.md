![logo](https://res.cloudinary.com/practicaldev/image/fetch/s--s6PiGszd--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://dev-to-uploads.s3.amazonaws.com/i/9yplil833j9yx9q6icgu.png)

## Track Errors in Ruby on Rails Application with Sentry
This is a demo of Rails application that has Sentry SDK integrated. Any crash or error that are not captured by the app, would be reported to sentry with context and data for further investigation. Error tracking is extremely important in software development and this is how we tackle it with Rails and Sentry

Accompanying blog post: [Track Errors in Ruby on Rails Application: Beyond the Basics](https://dev.to/joker666/track-errors-in-ruby-on-rails-application-beyond-the-basics-405o)

We create the application with 
```bash
rails new sentry-rails \
  --skip-action-mailbox \
  --skip-action-text \
  --skip-active-storage \
  --skip-javascript \
  --skip-spring -T \
  --skip-turbolinks \
  --skip-sprockets \
  --skip-test \
  --api
```

## Contribution
Want to contribute? Great!

To fix a bug or enhance an existing code, follow these steps:

- Fork the repo
- Create a new branch (`git checkout -b improve-feature`)
- Make the appropriate changes in the files
- Add changes to reflect the changes made
- Commit your changes (`git commit -am 'Improve feature'`)
- Push to the branch (`git push origin improve-feature`)
- Create a Pull Request

## License
MIT © [MD Ahad Hasan](https://github.com/joker666)
