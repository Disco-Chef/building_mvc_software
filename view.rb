class View
  def ask_user_for_name
    puts "What is the name of the task?"
    print '> '
    response = gets.chomp
  end

  def print_tasks(tasks)
    tasks.each_with_index do |task, index|
      puts "#{index + 1} #{task.completed? ? "[X]" : "[ ]"} #{task.title}"
    end
  end

  def ask_for_task_index
    puts "Which task do you wish to mark as done?"
    print "> "
    index = gets.chomp.to_i - 1
  end
end