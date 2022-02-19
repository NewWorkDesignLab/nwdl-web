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
  theme.parts = [
    # Homepage
    {name: 'header_image', title: I18n.t('theme.parts.header_image.title'), part_type: "Spina::Parts::Image", hint: I18n.t('theme.parts.header_image.hint') },
    {name: 'focus_text', title: I18n.t('theme.parts.focus_text.title'), part_type: "Spina::Parts::Text", hint: I18n.t('theme.parts.focus_text.hint') },
    {name: 'focus_research_text', title: I18n.t('theme.parts.focus_research_text.title'), part_type: "Spina::Parts::Text", hint: I18n.t('theme.parts.focus_research_text.hint') },
    {name: 'focus_transver_text', title: I18n.t('theme.parts.focus_transver_text.title'), part_type: "Spina::Parts::Text", hint: I18n.t('theme.parts.focus_transver_text.hint') },
    {name: 'focus_consulting_text', title: I18n.t('theme.parts.focus_consulting_text.title'), part_type: "Spina::Parts::Text", hint: I18n.t('theme.parts.focus_consulting_text.hint') },
    {name: 'projects_text', title: I18n.t('theme.parts.projects_text.title'), part_type: "Spina::Parts::Text", hint: I18n.t('theme.parts.projects_text.hint') },
    {name: 'events_text', title: I18n.t('theme.parts.events_text.title'), part_type: "Spina::Parts::Text", hint: I18n.t('theme.parts.events_text.hint') },

    # Default Content View Tamplate Parts
    {name: 'editor_heading_general', title: I18n.t('theme.parts.editor_heading_general.title'), part_type: "Spina::Parts::Editor", hint: I18n.t('theme.parts.editor_heading_general.hint') },
    {name: 'editor_heading_details', title: I18n.t('theme.parts.editor_heading_details.title'), part_type: "Spina::Parts::Editor", hint: I18n.t('theme.parts.editor_heading_details.hint') },
    {name: 'summary', title: I18n.t('theme.parts.summary.title'), part_type: "Spina::Parts::Line", hint: I18n.t('theme.parts.summary.hint') },
    {name: 'thumbnail', title: I18n.t('theme.parts.thumbnail.title'), part_type: "Spina::Parts::Image", hint: I18n.t('theme.parts.thumbnail.hint') },
    {name: 'rich_content', title: I18n.t('theme.parts.rich_content.title'), part_type: "Spina::Parts::Text", hint: I18n.t('theme.parts.rich_content.hint') },

    {name: 'author', title: I18n.t('theme.parts.author.title'), part_type: "Spina::Parts::User", hint: I18n.t('theme.parts.author.hint') },
    {name: 'contact_person', title: I18n.t('theme.parts.contact_person.title'), part_type: "Spina::Parts::User", hint: I18n.t('theme.parts.contact_person.hint') },
    {name: 'event_time', title: I18n.t('theme.parts.event_time.title'), part_type: "Spina::Parts::Datetime", hint: I18n.t('theme.parts.event_time.hint') },
    {name: 'meta_info', title: I18n.t('theme.parts.meta_info.title'), part_type: "Spina::Parts::Line", hint: I18n.t('theme.parts.meta_info.hint') },


    # Static Layout Parts
    {name: 'logo', title: I18n.t('theme.parts.logo.title'), part_type: "Spina::Parts::Image", hint: I18n.t('theme.parts.logo.hint') },
    {name: 'newsletter_text', title: I18n.t('theme.parts.newsletter_text.title'), part_type: "Spina::Parts::Text", hint: I18n.t('theme.parts.newsletter_text.hint') },
    {name: 'main_address', title: I18n.t('theme.parts.main_address.title'), part_type: "Spina::Parts::Text", hint: I18n.t('theme.parts.main_address.hint') },
    {name: 'main_contact', title: I18n.t('theme.parts.main_contact.title'), part_type: "Spina::Parts::Text", hint: I18n.t('theme.parts.main_contact.hint') },
  ]

  # View templates
  # Every page has a view template stored in app/views/my_theme/pages/*
  # You define which parts you want to enable for every view template
  # by referencing them from the theme.parts configuration above.
  theme.view_templates = [
    # for static pages
    {name: 'static_homepage_tmpl', title: I18n.t('theme.homepage'), parts: %w(header_image focus_text focus_research_text focus_transver_text focus_consulting_text projects_text events_text)},

    # static pages
    {name: 'static_legal_tmpl', title: I18n.t('theme.legal'), parts: %w(rich_content)},
    {name: 'static_data_tmpl', title: I18n.t('theme.data'), parts: %w(rich_content)},

    # for resource indexes (custom pages)
    {name: 'index_projects_tmpl', title: I18n.t('theme.projects'), parts: %w(rich_content)},
    {name: 'index_employees_tmpl', title: I18n.t('theme.employees'), parts: %w(rich_content)},
    {name: 'index_articles_tmpl', title: I18n.t('theme.articles'), parts: %w(rich_content)},
    {name: 'index_events_tmpl', title: I18n.t('theme.events'), parts: %w(rich_content)},

    # for resource pages (resources)
    {name: 'resource_project_tmpl', title: I18n.t('theme.project'), parts: %w(editor_heading_general summary thumbnail editor_heading_details contact_person rich_content), exclude_from: %w(main employees articles events)},
    {name: 'resource_employee_tmpl', title: I18n.t('theme.employee'), parts: %w(editor_heading_general summary thumbnail editor_heading_details rich_content), exclude_from: %w(main projects articles events)},
    {name: 'resource_article_tmpl', title: I18n.t('theme.article'), parts: %w(editor_heading_general summary thumbnail editor_heading_details author meta_info rich_content), exclude_from: %w(main projects employees events)},
    {name: 'resource_event_tmpl', title: I18n.t('theme.event'), parts: %w(editor_heading_general summary event_time thumbnail editor_heading_details contact_person rich_content), exclude_from: %w(main projects employees articles)},

    # default page
    {name: 'default_tmpl', title: I18n.t('theme.default'), parts: %w(editor_heading_general summary thumbnail editor_heading_details rich_content), exclude_from: %w(projects employees articles events)},
  ]

  # Custom pages
  # Some pages should not be created by the user, but generated automatically.
  # By naming them you can reference them in your code.
  theme.custom_pages = [
    {name: 'homepage', title: I18n.t('theme.homepage'), deletable: false, view_template: "static_homepage_tmpl"},
    {name: 'legal', title: I18n.t('theme.legal'), deletable: false, view_template: "static_legal_tmpl"},
    {name: 'data', title: I18n.t('theme.data'), deletable: false, view_template: "static_data_tmpl"},

    {name: 'projects', title: I18n.t('theme.projects'), deletable: false, view_template: "index_projects_tmpl"},
    {name: 'employees', title: I18n.t('theme.employees'), deletable: false, view_template: "index_employees_tmpl"},
    {name: 'articles', title: I18n.t('theme.articles'), deletable: false, view_template: "index_articles_tmpl"},
    {name: 'events', title: I18n.t('theme.events'), deletable: false, view_template: "index_events_tmpl"},
  ]

  # Resources (optional)
  # Think of resources as a collection of pages. They are managed separately in Spina
  # allowing you to separate these pages from the 'main' collection of pages.
  theme.resources = [
    {name: 'projects', label: I18n.t('theme.projects'), view_template: "resource_project_tmpl", slug_en: "projects", slug_de: "projekte"},
    {name: 'employees', label: I18n.t('theme.employees'), view_template: "resource_employee_tmpl", slug_en: "team", slug_de: "team" },
    {name: 'articles', label: I18n.t('theme.articles'), view_template: "resource_article_tmpl", slug_en: "articles", slug_de: "artikel" },
    {name: 'events', label: I18n.t('theme.events'), view_template: "resource_event_tmpl", slug_en: "events", slug_de: "events" },
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
