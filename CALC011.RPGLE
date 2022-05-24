     ** Para Incocar este Programa (Call Calcu) en al Linea de Comando
     FCalc01    Cf   e             Workstn

     DSuma             Pr                  Extproc('PGMSUM')
     DP1                             11  2
     DP2                             11  2
     DP3                             11  2

     DResta            Pr                  Extproc('PGMRES')
     DP1                             11  2
     DP2                             11  2
     DP3                             11  2

     DRdo              s             11  2 Inz
     DVerbo            s             11    Inz

      /Free
       Exfmt Rdato1;
       Dow *In03 = *Off;
        Select;
         When Op = '+';
          Suma(Op1:Op2:Rdo);
          Verbo = 'Mas';
         When Op = '-';
          Resta(Op1:Op2:Rdo);
          Verbo = 'Menos';
        Endsl;
        If Rdo <> *Zeros;
         Rs = %Trim(%Editc(Op1:'J')) + ' ' + %Trim(Verbo) + ' ' +
              %Trim(%Editc(Op2:'J')) + ' es Igual a ' +
              %Trim(%Editc(Rdo:'J'));
         Write Rdato2;
         Exfmt Rdato1;
        Else;
         Clear Rdato1;
         Clear Rdato2;
        Endif;
       Enddo;
        // Cambio Realizado
       *Inlr = *On;

      /End-Free
