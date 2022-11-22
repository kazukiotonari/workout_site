class LegController < ApplicationController
  def leg_training
    leg_training_videos = Video.where(part: "脚")
    @video1 = leg_training_videos.sample
    @video2 = leg_training_videos.sample
    @video3 = leg_training_videos.sample
    @video4 = leg_training_videos.sample
    p "@video1 url"
    p "https://www.youtube.com/embed/#{@video1.youtube_id}"
    p "@video2 url"
    p "https://www.youtube.com/embed/#{@video2.youtube_id}"
    p "@video3 url"
    p "https://www.youtube.com/embed/#{@video3.youtube_id}"
    p "@video4 url"
    p "https://www.youtube.com/embed/#{@video4.youtube_id}"
  end
end