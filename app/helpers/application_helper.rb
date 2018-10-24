module ApplicationHelper
  def avatar_generator(user)
    id = (1..50).to_a.sample
    if user.avatar.blank?
      user.avatar = "https://randomuser.me//api//portraits//women//#{id}.jpg"
    else
      user.avatar
    end
  end
end
