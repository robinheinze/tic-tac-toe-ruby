class Space
  attr_reader :space_id, :marked_by

  def initialize(space_id)
    @space_id = space_id
    @marked_by = space_id
  end

  def mark_by(player)
    @marked_by = player.mark
  end


end
