## Code the task class here
class Task
attr_accessor :title, :description

  def initialize(attributes = {})
    @id = attributes[:id] || attributes["id"]
    @title = attributes[:title] || attributes["title"]
    @description = attributes[:description] || attributes["description"]
    @done = attributes[:done] == 1 || attributes["done"] == 1
  end

  def self.find(id)
    task = DB.execute('SELECT * FROM tasks WHERE id = ?', id)[0]
    task.nil? ? nil : Task.new(task)
  end

  def save
    if @id.nil?
      DB.execute('INSERT INTO tasks (title, description, done) VALUES(?, ?, ?)',
        @title, @description, @done ? 1 : 0
      )
      @id = DB.last_insert_row_id
    else
      DB.execute('UPDATE tasks SET title = ?, description = ?, done = ? WHERE id = ?',
        @title, @description, @done ? 1 : 0, @id
      )
    end
  end

  def self.all
    tasks = DB.execute("SELECT * FROM tasks")
    tasks.map { |task| Task.new(task) }
  end

  def destroy
    DB.execute("DELETE FROM tasks WHERE id = ?", @id)
  end
end
