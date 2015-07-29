module UsersUnitsHelper
  def monster_collection
    # exclude monster that user added already
    exclusion = current_user.monsters.pluck(:id)
    Monster.where.not(id: exclusion).inject([]) { |arr, monster| arr << [monster.id, image_tag("#{monster.image_number}.jpg", style: "width: 60px; height: 60px; margin: 0 5px 0 5px; ")] }
  end
end

