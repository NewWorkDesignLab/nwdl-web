module.exports = {
  content: [
    '/home/tobias/.rvm/gems/ruby-2.7.5/gems/spina-2.8.1/app/views/**/*.*',
'/home/tobias/.rvm/gems/ruby-2.7.5/gems/spina-2.8.1/app/components/**/*.*',
'/home/tobias/.rvm/gems/ruby-2.7.5/gems/spina-2.8.1/app/helpers/**/*.*',
'/home/tobias/.rvm/gems/ruby-2.7.5/gems/spina-2.8.1/app/assets/javascripts/**/*.js',
'/home/tobias/.rvm/gems/ruby-2.7.5/gems/spina-2.8.1/app/**/application.tailwind.css'
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
