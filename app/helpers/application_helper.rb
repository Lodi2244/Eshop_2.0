# frozen_string_literal: true

module ApplicationHelper
  def active?(path)
    return 'active' if request.path == path

    ''
  end

  def current_profile_tab
    tabs = { '/profile': 'Profil', '/profile/edit': 'Modifier le profil' }
    tabs[request.path.to_sym]
  end
end
