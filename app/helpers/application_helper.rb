module ApplicationHelper
  COLORS = ['primary', 'secondary', 'success', 'danger', 'warning', 'info', 'dark']

  def random_color
    COLORS.sample
  end
end
