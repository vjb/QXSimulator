# author : Nader Khammassi 
# date   : 13/03/2016
#
# brief  : teleportation circuit

# create 3 qubits
qubits 3

# 1st qubit: data to teleport
# 2nd and 3rd qubit: shared bell pair

# create a bell pair
.epr
  h q1
  cnot q1,q2
  display

# initialize the qubit to teleport into some state
.init
  prepz q0
  rx q0,0.73 

.encode 
  cnot q0,q1
  h q0
  display
  measure q0
  measure q1
  display

# send measurement outcome...

# receiver
.decode
  cx b1,q2
  cz b0,q2
  display
  measure q2

