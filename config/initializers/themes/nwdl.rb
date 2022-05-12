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
    {name: 'header_iframe', title: I18n.t('theme.parts.header_iframe.title'), part_type: "Spina::Parts::Line", hint: I18n.t('theme.parts.header_iframe.hint') },
    {name: 'focus_text', title: I18n.t('theme.parts.focus_text.title'), part_type: "Spina::Parts::Text", hint: I18n.t('theme.parts.focus_text.hint') },
    {name: 'focus_research_text', title: I18n.t('theme.parts.focus_research_text.title'), part_type: "Spina::Parts::Text", hint: I18n.t('theme.parts.focus_research_text.hint') },
    {name: 'focus_transver_text', title: I18n.t('theme.parts.focus_transver_text.title'), part_type: "Spina::Parts::Text", hint: I18n.t('theme.parts.focus_transver_text.hint') },
    {name: 'focus_consulting_text', title: I18n.t('theme.parts.focus_consulting_text.title'), part_type: "Spina::Parts::Text", hint: I18n.t('theme.parts.focus_consulting_text.hint') },
    {name: 'projects_text', title: I18n.t('theme.parts.projects_text.title'), part_type: "Spina::Parts::Text", hint: I18n.t('theme.parts.projects_text.hint') },
    {name: 'events_text', title: I18n.t('theme.parts.events_text.title'), part_type: "Spina::Parts::Text", hint: I18n.t('theme.parts.events_text.hint') },

    # Custom Parts & Repeaters
    {name: 'article_selector', title: I18n.t('theme.parts.article_selector.title'), part_type: "Spina::Parts::Article", hint: I18n.t('theme.parts.article_selector.hint') },
    {name: 'articles_repeater', title: I18n.t('theme.parts.articles_repeater.title'), part_type: "Spina::Parts::Repeater", parts: %w(article_selector), hint: I18n.t('theme.parts.articles_repeater.hint') },
    {name: 'lable_selector', title: I18n.t('theme.parts.lable_selector.title'), part_type: "Spina::Parts::Lable", hint: I18n.t('theme.parts.lable_selector.hint') },
    {name: 'lables_repeater', title: I18n.t('theme.parts.lables_repeater.title'), part_type: "Spina::Parts::Repeater", parts: %w(lable_selector), hint: I18n.t('theme.parts.lables_repeater.hint') },

    # Default Content View Tamplate Parts
    {name: 'editor_heading_general', title: I18n.t('theme.parts.editor_heading_general.title'), part_type: "Spina::Parts::Editor", hint: I18n.t('theme.parts.editor_heading_general.hint') },
    {name: 'editor_heading_details', title: I18n.t('theme.parts.editor_heading_details.title'), part_type: "Spina::Parts::Editor", hint: I18n.t('theme.parts.editor_heading_details.hint') },
    {name: 'summary', title: I18n.t('theme.parts.summary.title'), part_type: "Spina::Parts::Line", hint: I18n.t('theme.parts.summary.hint') },
    {name: 'thumbnail', title: I18n.t('theme.parts.thumbnail.title'), part_type: "Spina::Parts::Image", hint: I18n.t('theme.parts.thumbnail.hint') },
    {name: 'rich_content', title: I18n.t('theme.parts.rich_content.title'), part_type: "Spina::Parts::Text", hint: I18n.t('theme.parts.rich_content.hint') },
    {name: 'rich_content_before', title: I18n.t('theme.parts.rich_content_before.title'), part_type: "Spina::Parts::Text", hint: I18n.t('theme.parts.rich_content_before.hint') },
    {name: 'rich_content_after', title: I18n.t('theme.parts.rich_content_after.title'), part_type: "Spina::Parts::Text", hint: I18n.t('theme.parts.rich_content_after.hint') },
    {name: 'rich_content_highlights', title: I18n.t('theme.parts.rich_content_highlights.title'), part_type: "Spina::Parts::Text", hint: I18n.t('theme.parts.rich_content_highlights.hint') },

    {name: 'email', title: I18n.t('theme.parts.email.title'), part_type: "Spina::Parts::Line", hint: I18n.t('theme.parts.email.hint') },
    {name: 'author', title: I18n.t('theme.parts.author.title'), part_type: "Spina::Parts::User", hint: I18n.t('theme.parts.author.hint') },
    {name: 'authors', title: I18n.t('theme.parts.authors.title'), part_type: "Spina::Parts::Repeater", parts: %w(author), hint: I18n.t('theme.parts.author.hint') },
    {name: 'partner', title: I18n.t('theme.parts.partner.title'), part_type: "Spina::Parts::Partner", hint: I18n.t('theme.parts.partner.hint') },
    {name: 'guest_authors', title: I18n.t('theme.parts.guest_authors.title'), part_type: "Spina::Parts::Repeater", parts: %w(partner), hint: I18n.t('theme.parts.guest_authors.hint') },
    {name: 'partners', title: I18n.t('theme.parts.partners.title'), part_type: "Spina::Parts::Repeater", parts: %w(partner), hint: I18n.t('theme.parts.partners.hint') },
    {name: 'customers', title: I18n.t('theme.parts.customers.title'), part_type: "Spina::Parts::Repeater", parts: %w(partner), hint: I18n.t('theme.parts.customers.hint') },
    {name: 'contact_persons', title: I18n.t('theme.parts.contact_persons.title'), part_type: "Spina::Parts::Repeater", parts: %w(author), hint: I18n.t('theme.parts.contact_persons.hint') },
    {name: 'event_time', title: I18n.t('theme.parts.event_time.title'), part_type: "Spina::Parts::Datetime", hint: I18n.t('theme.parts.event_time.hint') },
    {name: 'event_end_time', title: I18n.t('theme.parts.event_end_time.title'), part_type: "Spina::Parts::Datetime", hint: I18n.t('theme.parts.event_end_time.hint') },
    {name: 'meta_info', title: I18n.t('theme.parts.meta_info.title'), part_type: "Spina::Parts::Line", hint: I18n.t('theme.parts.meta_info.hint') },

    # Static Layout Parts
    {name: 'logo', title: I18n.t('theme.parts.logo.title'), part_type: "Spina::Parts::Image", hint: I18n.t('theme.parts.logo.hint') },
    {name: 'facebook_link', title: I18n.t('theme.parts.facebook_link.title'), part_type: "Spina::Parts::Line", hint: I18n.t('theme.parts.facebook_link.hint') },
    {name: 'instagram_link', title: I18n.t('theme.parts.instagram_link.title'), part_type: "Spina::Parts::Line", hint: I18n.t('theme.parts.instagram_link.hint') },
    {name: 'linkedin_link', title: I18n.t('theme.parts.linkedin_link.title'), part_type: "Spina::Parts::Line", hint: I18n.t('theme.parts.linkedin_link.hint') },
    {name: 'twitch_link', title: I18n.t('theme.parts.twitch_link.title'), part_type: "Spina::Parts::Line", hint: I18n.t('theme.parts.twitch_link.hint') },
    {name: 'newsletter_heading', title: I18n.t('theme.parts.newsletter_heading.title'), part_type: "Spina::Parts::Text", hint: I18n.t('theme.parts.newsletter_heading.hint') },
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
    {name: 'static_homepage_tmpl', title: I18n.t('theme.homepage'), parts: %w(header_iframe header_image focus_text focus_research_text focus_transver_text focus_consulting_text projects_text events_text)},

    # static pages
    {name: 'static_legal_tmpl', title: I18n.t('theme.legal'), parts: %w(rich_content)},
    {name: 'static_data_tmpl', title: I18n.t('theme.data'), parts: %w(rich_content)},

    # for resource indexes (custom pages)
    {name: 'index_projects_tmpl', title: I18n.t('theme.projects'), parts: %w(rich_content_before rich_content_after)},
    {name: 'index_employees_tmpl', title: I18n.t('theme.employees'), parts: %w(rich_content_before rich_content_after)},
    {name: 'index_articles_tmpl', title: I18n.t('theme.articles'), parts: %w(rich_content_before rich_content_highlights articles_repeater rich_content_after)},
    {name: 'index_events_tmpl', title: I18n.t('theme.events'), parts: %w(rich_content_before rich_content_after)},

    # for resource pages (resources)
    {name: 'resource_project_tmpl', title: I18n.t('theme.project'), parts: %w(editor_heading_general summary thumbnail editor_heading_details authors guest_authors contact_persons partners customers lables_repeater rich_content), exclude_from: ["main", $spina_employees, $spina_articles, $spina_events, $spina_lables, $spina_partners] },
    {name: 'resource_employee_tmpl', title: I18n.t('theme.employee'), parts: %w(editor_heading_general summary email thumbnail editor_heading_details rich_content), exclude_from: ["main", $spina_projects, $spina_articles, $spina_events, $spina_lables] },
    {name: 'resource_article_tmpl', title: I18n.t('theme.article'), parts: %w(editor_heading_general summary thumbnail editor_heading_details authors guest_authors contact_persons meta_info lables_repeater rich_content), exclude_from: ["main", $spina_projects, $spina_employees, $spina_events, $spina_lables, $spina_partners] },
    {name: 'resource_event_tmpl', title: I18n.t('theme.event'), parts: %w(editor_heading_general summary event_time event_end_time thumbnail editor_heading_details authors guest_authors contact_persons lables_repeater rich_content), exclude_from: ["main", $spina_projects, $spina_employees, $spina_articles, $spina_lables, $spina_partners] },
    {name: 'resource_lable_tmpl', title: I18n.t('theme.lable'), parts: %w(rich_content), exclude_from: ["main", $spina_projects, $spina_employees, $spina_articles, $spina_events, $spina_partners] },

    # default page
    {name: 'default_tmpl', title: I18n.t('theme.default'), parts: %w(editor_heading_general summary thumbnail editor_heading_details rich_content), exclude_from: [$spina_projects, $spina_employees, $spina_articles, $spina_events, $spina_lables, $spina_partners] },
  ]

  # Variable Setup
  # I decided to setup the theme via global variables, that has multiple reasons:
  # * for main naviagtion active highlighting, the name of the custom page and the name of the associated resource need to match exactly
  # * in backend, resources get displayed ordered by name, so I need to prefix the name with "a_".."e_"
  # * in code I use the name to find the specific Spina Pages and Resources - due to the complexity of the name and the possible
  #   change of resource order (and thereby the name) the use of an global variable is handy (" Spina::Page.find_by(name: $spina_home) ")
  $spina_home = "homepage"
  $spina_legal = "spina_legal"
  $spina_data = "spina_data"
  $spina_projects = "a_spina_projects"
  $spina_employees = "b_spina_employees"
  $spina_articles = "c_spina_articles"
  $spina_events = "d_spina_events"
  $spina_lables = "e_spina_lables"
  $spina_partners = "f_spina_partners"

  # Custom pages
  # Some pages should not be created by the user, but generated automatically.
  # By naming them you can reference them in your code.
  theme.custom_pages = [
    {name: $spina_home, title: I18n.t('theme.homepage'), deletable: false, view_template: "static_homepage_tmpl"},
    {name: $spina_legal, title: I18n.t('theme.legal'), deletable: false, view_template: "static_legal_tmpl"},
    {name: $spina_data, title: I18n.t('theme.data'), deletable: false, view_template: "static_data_tmpl"},

    {name: $spina_projects, title: I18n.t('theme.projects'), deletable: false, view_template: "index_projects_tmpl"},
    {name: $spina_employees, title: I18n.t('theme.employees'), deletable: false, view_template: "index_employees_tmpl"},
    {name: $spina_articles, title: I18n.t('theme.articles'), deletable: false, view_template: "index_articles_tmpl"},
    {name: $spina_events, title: I18n.t('theme.events'), deletable: false, view_template: "index_events_tmpl"},
  ]

  # Resources (optional)
  # Think of resources as a collection of pages. They are managed separately in Spina
  # allowing you to separate these pages from the 'main' collection of pages.
  theme.resources = [
    {name: $spina_projects, label: I18n.t('theme.projects'), view_template: "resource_project_tmpl", slug_en: "projects", slug_de: "projekte", order_by: ""},
    {name: $spina_employees, label: I18n.t('theme.employees'), view_template: "resource_employee_tmpl", slug_en: "team", slug_de: "team", order_by: "" },
    {name: $spina_articles, label: I18n.t('theme.articles'), view_template: "resource_article_tmpl", slug_en: "articles", slug_de: "artikel", order_by: "" },
    {name: $spina_events, label: I18n.t('theme.events'), view_template: "resource_event_tmpl", slug_en: "events", slug_de: "events", order_by: "" },
    {name: $spina_lables, label: I18n.t('theme.lables'), view_template: "resource_lable_tmpl", slug_en: "lables", slug_de: "labels", order_by: "" },
    {name: $spina_partners, label: I18n.t('theme.partners'), view_template: "resource_employee_tmpl", slug_en: "partners", slug_de: "partner", order_by: "" },
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
  theme.layout_parts = %w(logo facebook_link instagram_link linkedin_link twitch_link newsletter_heading newsletter_text main_address main_contact)

  # Plugins (optional)
  theme.plugins = []

  # Embeds (optional)
  theme.embeds = %w(button youtube vimeo)
end
