module PostsHelper
  def timeline_member_gravatar(member)
    if member_signed_in?
      gravatar_image_tag(member.email, size: 64, alt: member.name)
    end
  end

  def timeline_member_name(post)
    if member_signed_in?
      post.member.name
    end
  end

  def timeline_member_username(post)
    if member_signed_in?
      post.member.username
    end
  end

  def timeline_member_post(post)
    post.post
  end

  def member_profile_index
    if member_signed_in?
      render 'profile'
    end
  end
end
