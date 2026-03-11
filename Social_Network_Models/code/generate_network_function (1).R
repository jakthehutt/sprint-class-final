generate_network_from_edge_frame_w_props<- function(connections_frame, properties_frame, verbose = TRUE){
  
  network_generated <- network::network(connections_frame)
  if(verbose){
    print('PASS -- Generated the Network')
  }
  vertex_names <- network_generated %v% 'vertex.names'
  if(verbose){
    print('PASS -- Retrieved the Vertex Names')
  }
  index_match <- match(vertex_names,properties_frame$node)
  if(verbose){
    print('PASS -- Matched the Indices')
  }
  for(i in seq_along(colnames(properties_frame))){
    if(colnames(properties_frame)[i] == 'node'){
      next
    } else {
      network::set.vertex.attribute(network_generated,
                                    colnames(properties_frame)[i],
                                    as.list(properties_frame[index_match,colnames(properties_frame)[i]]))
    }
  }
  if(verbose){
    print('PASS -- Assigned the Properties')
  }
  return(network_generated)
}