module PostsHelper
  def form_title
    @post.new_record? ? "Publicar #Freshtrack" : "Editar #Freshtrack"
  end
end
