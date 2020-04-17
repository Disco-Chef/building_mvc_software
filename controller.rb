require_relative 'view.rb'
require_relative 'repository.rb'

class Controller
  def initialize(repository, view)
    @repository = repository
    @view = view
  end

  def add_task
    # 1. ask user the name of the task
    title = @view.ask_user_for_name
    #2. Create task instance with the given name
    task = Task.new(title)
    #3. Add to repository
    @repository.add(task)
  end

  def display_tasks
    tasks = @repository.all
    @view.print_tasks(tasks)
  end

  def mark_task_as_completed
    # 1 Ask user which task (index)
    index = @view.ask_for_task_index
    # 2. Ask repository to give us the task at selected index
    task = @repository.find(index)
    # 3. mark as complete (instance variable of the Task object)
    task.mark_as_complete
  end
end