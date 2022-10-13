10 REM INTRODUCAO                                               
20 CLS                                                          
30 PRINT @ 20, "LOTERIA"                                        
40 PRINT"QUANTOS NUMEROS EU DEVO SORTEAR?"                      
50 INPUT Q                                                      
60 PRINT"QUAL O NUMERO MAXIMO DESTE CARTAO?"                    
70 INPUT M      
80 REM SORTEIA NUMEROS E ARMAZENA EM VETOR"                     
90 FOR I = 1 TO Q                                               
100 VET (I) = RND (M)                                           
110 NEXT I                                      
120 REM TRATAMENTO DO VETOR                                                                                                                                
130 FOR I = 1 TO Q                                              
140 FOR B = 2 TO Q                                              
150 IF VET (I) = VET (B) AND I<> B GOTO 80                      
160 NEXT B                                                      
161 NEXT I                                       
163 REM ORDENA VETOR                                         
165 FOR I = 1 TO Q                                          
166 FOR J = 1 TO Q-1                                          
167 IF VET (J) > VET (J+1) THEN AUX  = VET (J): VET (J) = VET (J+1): VET (J+1) = AUX                                            
168 NEXT J                                                    
169 NEXT I                                     
184 REM EXIBE VETOR                                             
185 CLS                                                         
187 PRINT "SEGUE NUMEROS DA SORTE"                              
190 FOR I = 1 TO Q                                            
200 PRINT VET (I);                                              
210 NEXT I                                     
220 REM CONTINUA PROGRAMA                                       
225 PRINT                                                       
230 PRINT "DESEJA SORTEAR NOVAMENTE NAS MESMAS CONDICOES?"      
240 INPUT E$                                                    
250 IF E$ = "S" THEN GOTO 80                                    
300 REM MENSAGEM FINAL                                          
310 PRINT "BOA SORTE NO JOGO"                                   
                                                                                                                                                                          
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                                
