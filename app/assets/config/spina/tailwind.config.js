module.exports = {
  content: [
    '/home/tobias/.rvm/gems/ruby-3.0.0/bundler/gems/spina-db76dca77ba8/app/views/**/*.*',
'/home/tobias/.rvm/gems/ruby-3.0.0/bundler/gems/spina-db76dca77ba8/app/components/**/*.*',
'/home/tobias/.rvm/gems/ruby-3.0.0/bundler/gems/spina-db76dca77ba8/app/helpers/**/*.*',
'/home/tobias/.rvm/gems/ruby-3.0.0/bundler/gems/spina-db76dca77ba8/app/assets/javascripts/**/*.js',
'/home/tobias/.rvm/gems/ruby-3.0.0/bundler/gems/spina-db76dca77ba8/app/**/application.tailwind.css',
'/home/tobias/projects/nwdl-web-rails7/app/views/spina/**'
  ],
  theme: {
    fontFamily: {
      body: ['Metropolis'],
      mono: ['ui-monospace', 'SFMono-Regular', 'Menlo', 'Monaco', 'Consolas', "Liberation Mono", "Courier New", 'monospace']
    },
    extend: {
      colors: {
        spina: {
          light: '#797ab8',
          DEFAULT: '#6865b4',
          dark: '#3a3a70'
        }
      }
    }
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
