json.array!(@videos) do |video|
  json.extract! video, :id, :title, :s3, :server
  json.url video_url(video, format: :json)
end
