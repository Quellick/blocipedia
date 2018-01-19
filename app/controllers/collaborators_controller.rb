class CollaboratorsController < ApplicationController
  def create
    @collaborator = Collaborator.new(wiki_id: @wiki.id, user_id: params[:user_id])
      if @collaborator.save
        redirect_to edit_wiki_path(@wiki)
      end
  end

  def destroy
    @wiki = Wiki.find params[:wiki_id]
      @collaborator = @wiki.collaborators.find params[:id]
      if @collaborator.destroy
        redirect_to edit_wiki_path(@wiki)
      end
  end
end
