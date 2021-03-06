module ApplicationHelper
  def active_link_to(name, path)
    content_tag(
      :li,
      class: "#{'active fw-bold' if current_page?(path)} nav-item",
    ) { link_to name, path, class: 'nav-link' }
  end
end

def deep_active_link_to(path)
  content_tag(
    :li,
    class: "#{'active fw-bold' if current_page?(path)} nav-item",
  ) do
    link_to path, class: 'nav-link' do
      yield
    end
  end
end

def deep_active_link_to_dropdown_item(path)
  content_tag(:li) do
    link_to path,
            class: "#{'active fw-bold' if current_page?(path)} dropdown-item" do
      yield
    end
  end
end
