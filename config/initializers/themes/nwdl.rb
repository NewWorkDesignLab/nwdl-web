# Theme configuration file
# ========================
# This file is used for all theme configuration.
# It's where you define everything that's editable in Spina CMS.

Spina::Theme.register do |theme|
  # All views are namespaced based on the theme's name
  theme.name = 'nwdl'
  theme.title = 'NWDL'

  # Parts
  # Define all editable parts you want to use in your view templates
  #
  # Built-in part types:
  # - Line
  # - MultiLine
  # - Text (Rich text editor)
  # - Image
  # - ImageCollection
  # - Attachment
  # - Option
  # - Repeater
  theme.parts = [
    # Default Content View Tamplate Parts
    {name: 'subheading',  title: "Subtitle", part_type: "Spina::Parts::Line"},
    {name: 'metadata', title: 'Metadaten', part_type: "Spina::Parts::Metadata"},
    {name: 'thumbnail',  title: "Thumbnail", part_type: "Spina::Parts::Image"},
    {name: 'rich_content',  title: "Inhalt", part_type: "Spina::Parts::Text"},

    # Static LAyout Parts
    {name: 'logo', title: 'NWDL-Logo', part_type: "Spina::Parts::Image"},
    {name: 'newsletter_text',  title: "Newsletter", part_type: "Spina::Parts::Text"},
    {name: 'main_address',  title: "Anschrift", part_type: "Spina::Parts::Text"},
    {name: 'main_contact',  title: "Kontakt", part_type: "Spina::Parts::Text"},

    # Homepage
    {name: 'header_image',  title: "Image", part_type: "Spina::Parts::Image"},
    {name: 'focus_text',  title: "Fokus", part_type: "Spina::Parts::Text"},
    {name: 'focus_research_text',  title: "Fokus (Forschung)", part_type: "Spina::Parts::Text"},
    {name: 'focus_transver_text',  title: "Fokus (Transfer)", part_type: "Spina::Parts::Text"},
    {name: 'focus_consulting_text',  title: "Fokus (Beratung)", part_type: "Spina::Parts::Text"},
    {name: 'projects_text',  title: "Projekte", part_type: "Spina::Parts::Text"},
    {name: 'events_text',  title: "Events", part_type: "Spina::Parts::Text"},
  ]

  # View templates
  # Every page has a view template stored in app/views/my_theme/pages/*
  # You define which parts you want to enable for every view template
  # by referencing them from the theme.parts configuration above.
  theme.view_templates = [
    # for static pages
    {name: 'homepage', title: 'Home', parts: %w(header_image focus_text focus_research_text focus_transver_text focus_consulting_text projects_text events_text)},

    # static pages
    {name: 'legal', title: 'Impressum', parts: %w(rich_content)},
    {name: 'data', title: 'Datenschutz', parts: %w(rich_content)},

    # for resource-indexes
    {name: 'projects', title: 'Projekte', parts: %w(rich_content)},
    {name: 'team', title: 'Team', parts: %w(rich_content)},
    {name: 'articles', title: 'Artikel', parts: %w(rich_content)},

    # default content view template
    {name: 'content', title: 'Inhalt', parts: %w(subheading thumbnail metadata rich_content)}
  ]

  # Custom pages
  # Some pages should not be created by the user, but generated automatically.
  # By naming them you can reference them in your code.
  theme.custom_pages = [
    {name: 'homepage', title: "Home", deletable: false, view_template: "homepage"},
    {name: 'legal', title: "Impressum", deletable: false, view_template: "legal"},
    {name: 'data', title: "Datenschutz", deletable: false, view_template: "data"},

    {name: 'projects', title: "Projekte", deletable: false, view_template: "projects"},
    {name: 'team', title: "Team", deletable: false, view_template: "team"},
    {name: 'articles', title: "Artikel", deletable: false, view_template: "articles"}
  ]

  # Navigations (optional)
  # If your project has multiple navigations, it can be useful to configure multiple
  # navigations.
  theme.navigations = [
    {name: 'main', label: 'Hauptmenü'},
    {name: 'footer', label: 'Footer Menü'}
  ]

  # Layout parts (optional)
  # You can create global content that doesn't belong to one specific page. We call these layout parts.
  # You only have to reference the name of the parts you want to have here.
  theme.layout_parts = %w(logo newsletter_text main_address main_contact)

  # Resources (optional)
  # Think of resources as a collection of pages. They are managed separately in Spina
  # allowing you to separate these pages from the 'main' collection of pages.
  theme.resources = [
    {name: 'team', label: "Team", view_template: "content", slug_en: "team", slug_de: "team"},
    {name: 'projects', label: "Projekte", view_template: "content", slug_en: "projects", slug_de: "projekte"},
    {name: 'events', label: "Events", view_template: "content", slug_en: "events", slug_de: "events"},
    {name: 'articles', label: "Artikel", view_template: "content", slug_en: "articles", slug_de: "artikel"}
  ]

  # Plugins (optional)
  theme.plugins = []

  # Embeds (optional)
  theme.embeds = %w(button youtube vimeo)
end
