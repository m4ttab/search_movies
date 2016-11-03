class Directors::CommentsController < CommentsController

	before_action :set_commentable

	private

	def set_commentable
		@commentable = Director.find(params[:director_id])
	end

end