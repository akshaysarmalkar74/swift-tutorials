//Continue

outerloop: for i in 1...3{
  
  innerloop: for j in 1...3 {
    
    if j == 3 {
      continue
    }
    
    print("i = \(i), j = \(j)")
  }
  
  print("Done 1 Iteration")
}


// Label Continue
outerloop: for i in 1...3{
  
  innerloop: for j in 1...3 {
    
    if j == 3 {
      continue outerloop
    }
    
    print("i = \(i), j = \(j)")
  }
  
  print("Done 1 Iteration")
}

// Break

outerloop: for i in 1...3{
  
  innerloop: for j in 1...3 {
    
    if j == 3 {
      break
    }
    
    print("i = \(i), j = \(j)")
  }
  
  print("Done 1 Iteration")
}


// Label Break
outerloop: for i in 1...3{
  
  innerloop: for j in 1...3 {
    
    if j == 3 {
      break outerloop
    }
    
    print("i = \(i), j = \(j)")
  }
  
  print("Done 1 Iteration")
}