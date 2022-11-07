class ShoulderController < ApplicationController
  def shoulder_training #これが実行された後でトレーニングページにいく
    shoulder_training_videos = Video.where(part: "肩")
    @video1 = shoulder_training_videos.sample
    @video2 = shoulder_training_videos.sample
    @video3 = shoulder_training_videos.sample
    @video4 = shoulder_training_videos.sample
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
