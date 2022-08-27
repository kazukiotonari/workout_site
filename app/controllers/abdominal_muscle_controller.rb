class AbdominalMuscleController < ApplicationController
  def abdominal_muscle_training
    abdominal_muscle_training_videos = Video.where(part: "腹筋")
    @video1 = abdominal_muscle_training_videos.sample
    @video2 = abdominal_muscle_training_videos.sample
    @video3 = abdominal_muscle_training_videos.sample
    @video4 = abdominal_muscle_training_videos.sample
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