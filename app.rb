require 'sinatra'
require 'twitter'
require 'pp'

#パブリックタイムライン取得
get '/public_timeline' do
	@public_timeline = Twitter.public_timeline
	erb :public_timeline
end

#誰かさんのタイムライン取得
get '/user_timeline/:username' do
	@user_timeline = Twitter.user_timeline(params[:username])
	erb :user_timeline
end

#誰かさんのフォロワーのIDを取得
get '/friend_ids/:username' do
	@friend_ids = Twitter.friend_ids(params[:username])
	erb :followers
end

#誰かさんのリストのタイムラインを取得。
#リストは公開されてないとダメ。
get '/list_timeline/:username/:listname' do
	@list_timeline = Twitter.list_timeline(params[:username], params[:listname])
	erb :list_timeline
end

#自分のタイムラインを取得
#認証が必要
get 'home_timeline' do
	@home_timeline = Twitter.home_timeline
	erb :home_timeline
end