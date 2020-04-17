require_relative 'controller.rb'
class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      puts "Whatchu wanna do?"
      puts "1 - Add a task"
      puts "2 - List all tasks"
      puts "3 - Mark a task as complete"
      puts "4 - Quit"
      choice = gets.chomp.to_i
      if choice == 1
        @controller.add_task
      elsif choice == 2
        @controller.display_tasks
      elsif choice == 3
        @controller.mark_task_as_completed
      elsif choice == 4
        puts "Goodbye"
        break
      else
        puts "Wrong input..."
      end
    end
  end
end