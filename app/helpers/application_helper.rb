module ApplicationHelper
	def is_active?(page_name, page_controller)
  		"active" if params[:action] == page_name and params[:controller] == page_controller
	end
end
