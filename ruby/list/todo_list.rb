class TodoList

  def initialize (chores)
    @chores = chores
  end

  def get_items (chores)
    @chores = chores
  end

  def add_item (item)
    @chores<<item
  end

  def delete_item (item)
    @chores.delete(item)
    @chores
  end

  def retrieve_item (index)
    @chores[index]
  end

end