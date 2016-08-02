module Admin
  class CommentsController < AdminController
    before_filter :admin?
    before_action :set_comment, only: [:show, :edit, :update, :destroy]

    def index
      @comments = Comment.order(created_at: :desc).page(params[:page]).per(10)
    end

    def show
    end

    def update
    end

    def destroy
      @comment.show = !@comment.show
      @comment.save
      redirect_to :back
    end

    private

    def set_comment
      @comment = Comment.find(params['id'])
    end
  end
end
