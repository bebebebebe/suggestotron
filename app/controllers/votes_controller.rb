class VotesController < ApplicationController

  def create
    topic = Topic.find(params[:topic_id])
    vote = topic.votes.build
    vote.save!
    redirect_to(topics_path)
  end

  def destroy
    vote = Vote.find(params[:id])
    vote.destroy
    redirect_to(topics_path)
  end

end
