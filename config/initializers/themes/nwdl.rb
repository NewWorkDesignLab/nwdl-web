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
    {name: 'static_homepage_tmpl', title: 'Home', parts: %w(header_image focus_text focus_research_text focus_transver_text focus_consulting_text projects_text events_text)},

    # static pages
    {name: 'static_legal_tmpl', title: 'Impressum', parts: %w(rich_content)},
    {name: 'static_data_tmpl', title: 'Datenschutz', parts: %w(rich_content)},

    # for resource indexes (custom pages)
    {name: 'index_projects_tmpl', title: 'Projekte', parts: %w(rich_content)},
    {name: 'index_team_tmpl', title: 'Team', parts: %w(rich_content)},
    {name: 'index_articles_tmpl', title: 'Artikel', parts: %w(rich_content)},
    {name: 'index_events_tmpl', title: 'Events', parts: %w(rich_content)},

    # for resource pages (resources)
    {name: 'resource_project_tmpl', title: 'Projekt', parts: %w(subheading thumbnail metadata rich_content), exclude_from: %w(main employees articles events)},
    {name: 'resource_employee_tmpl', title: 'Mitarbeiter:in', parts: %w(subheading thumbnail metadata rich_content), exclude_from: %w(main projects articles events)},
    {name: 'resource_article_tmpl', title: 'Artikel', parts: %w(subheading thumbnail metadata rich_content), exclude_from: %w(main projects employees events)},
    {name: 'resource_event_tmpl', title: 'Event', parts: %w(subheading thumbnail metadata rich_content), exclude_from: %w(main projects employees articles)},

    # default page
    {name: 'default_tmpl', title: 'Seite', parts: %w(subheading thumbnail metadata rich_content), exclude_from: %w(projects employees articles events)},
  ]

  # Custom pages
  # Some pages should not be created by the user, but generated automatically.
  # By naming them you can reference them in your code.
  theme.custom_pages = [
    {name: 'homepage', title: "Home", deletable: false, view_template: "static_homepage_tmpl"},
    {name: 'legal', title: "Impressum", deletable: false, view_template: "static_legal_tmpl"},
    {name: 'data', title: "Datenschutz", deletable: false, view_template: "static_data_tmpl"},

    {name: 'projects', title: "Projekte", deletable: false, view_template: "index_projects_tmpl"},
    {name: 'team', title: "Team", deletable: false, view_template: "index_team_tmpl"},
    {name: 'articles', title: "Artikel", deletable: false, view_template: "index_articles_tmpl"},
    {name: 'events', title: "Events", deletable: false, view_template: "index_events_tmpl"},
  ]

  # Resources (optional)
  # Think of resources as a collection of pages. They are managed separately in Spina
  # allowing you to separate these pages from the 'main' collection of pages.
  theme.resources = [
    {name: 'projects', label: "Projekte", view_template: "resource_project_tmpl", slug_en: "projects", slug_de: "projekte"},
    {name: 'employees', label: "Mitarbeiter:in", view_template: "resource_employee_tmpl", slug_en: "team", slug_de: "team"},
    {name: 'articles', label: "Artikel", view_template: "resource_article_tmpl", slug_en: "articles", slug_de: "artikel"},
    {name: 'events', label: "Events", view_template: "resource_event_tmpl", slug_en: "events", slug_de: "events"},
  ]

  # Navigations (optional)
  # If your project has multiple navigations, it can be useful to configure multiple
  # navigations.
  theme.navigations = [
    {name: 'main', label: 'Hauptmenü'},
    {name: 'footer', label: 'Footer Menü'},
  ]

  # Layout parts (optional)
  # You can create global content that doesn't belong to one specific page. We call these layout parts.
  # You only have to reference the name of the parts you want to have here.
  theme.layout_parts = %w(logo newsletter_text main_address main_contact)

  # Plugins (optional)
  theme.plugins = []

  # Embeds (optional)
  theme.embeds = %w(button youtube vimeo)
end
