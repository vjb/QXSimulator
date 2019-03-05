# author : Nader Khammassi 
# date   : 15/01/2016
#
# brief  : grover algorithm implementation 
#  - search space    : 3 bits
#  - element to find : 4 = |100>
#  - ancillas qubits : 3 qubits

qubits 7

# initialize data qubits and oracle qubit
.init
   x q3
   h q0
   h q1
   h q2
   h q3
   display

# iterating 2 times (sqrt(N=3))
.grover(2)

   # oracle_4
   x q0
   x q1
   toffoli q0,q1,q4
   toffoli q1,q4,q5
   toffoli q2,q5,q6
   cnot q6,q3
   toffoli q2,q5,q6
   toffoli q1,q4,q5
   toffoli q0,q1,q4
   x q0
   x q1
   h q0
   h q1
   h q2
    
   measure q4
   measure q5
   measure q6

   # display

   # inversion

   x q0
   x q1
   x q2
   h q2
   toffoli q0,q1,q2
   h q2
   x q0
   x q1
   x q2
   h q0
   h q1
   h q2

   display

# measure oracle
.measure
   h q3
   measure q3
   display

# measure all qubits and display the result
.result
   prepz q3 
   measure 
   display
