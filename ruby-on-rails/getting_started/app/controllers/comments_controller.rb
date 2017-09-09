class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comment = Comment.new(comment_params)
        @comment.article = @article
        if @comment.save
            redirect_to article_path(@comment.article)
        else
            render article_path(@comment.article)
        end

    end

    def edit
        puts params
        @comment= Comment.find(params[:id])
        @article = @comment.article
    end

    def update
        @comment = Comment.find(params[:id])
        @article = @comment.article
        if @comment.update(comment_params)
            redirect_to article_path(@article)
        else
            render 'edit'
        end

    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        @article = @comment.article
        redirect_to article_path(@article)
    end


    private 
    
    def comment_params
        params.require(:comment).permit(:commenter,:body)
    end
end
