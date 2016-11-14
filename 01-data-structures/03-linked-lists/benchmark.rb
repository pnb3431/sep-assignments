require 'benchmark'
require_relative 'node'
require_relative 'linked_list'

array = []
list = LinkedList.new

Benchmark.bm(7) do |x|
	x.report("create array") {array = (1..10000).to_a}
	x.report("add to linked list"){
	  	for i in 1..10000 do
	  		node = Node.new(i)
	  		list.add_to_tail(node)
	  	end}
	x.report("find in array") {array[4999]}
	x.report("find in linked list") {
		current = list.head
		until current.data === nil
			if current.data === 5000
				break
			else 
				current = current.next
			end
		end}
	x.report("delete from array") {array.slice!(4999)}
	x.report("delete from linked list") {
		current = list.head
		until current.data === nil
			if current.data === 5000
				list.delete(current.data)
				break
			else 
				current = current.next
			end
		end}

end

