module PostsHelper
  def timeline_member_gravatar(member)
    gravatar_image_tag(member.email, size: 64, alt: member.name) if member_signed_in?
  end

  def timeline_member_name(post)
    post.member.name if member_signed_in?
  end

  def timeline_member_username(post)
    post.member.username if member_signed_in?
  end

  def timeline_member_post(post)
    post.post
  end

  def member_profile_index
    render 'profile' if member_signed_in?
  end
end
