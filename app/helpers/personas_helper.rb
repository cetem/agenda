module PersonasHelper
  def ver_todos
    link_to 'Ver todos', personas_path if params[:q].present?
  end
end
