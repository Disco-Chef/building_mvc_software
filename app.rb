require_relative 'task.rb'
require_relative 'router.rb'

repository = Repository.new

view = View.new

controller = Controller.new(repository, view)
router = Router.new(controller)

router.run
