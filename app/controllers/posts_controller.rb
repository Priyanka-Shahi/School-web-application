class PostsController < ApplicationController
    private

    def post_params
      params.require(:post).permit(:title, :body, :, :published_at, :admin_user_id)
    end
end
