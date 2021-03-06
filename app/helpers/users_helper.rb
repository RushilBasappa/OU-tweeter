module UsersHelper
  def gravatar_for(user,size)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}&d=identicon&r=PG"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  def gravatar_for_profile_card(user,size)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}&d=identicon&r=PG"
    image_tag(gravatar_url, alt: user.name, class: "gravatar img-circle img-thumbnail")
  end
end
