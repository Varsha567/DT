$student = 'varsha'

notify { "Student Name demonstration":
  message => "Student name is ${student}",
}
