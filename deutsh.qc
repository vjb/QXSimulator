# deutsh's problem

qubits 2

map q0,qy
map q1,qx

.init
  prepz qx  # init qx to |0>
  x qy      # init qy to |1>
  h qx
  h qy
  display

.uf1
  cnot qx,qy
  display

# .uf2
# x    qx
# cnot qx,qy
# x    qx
# display

#.uf3
  
# .uf4
#  x qx

.result
  h qx
  measure qx
  display

  
