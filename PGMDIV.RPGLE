     DP1               s             11  2
     DP2               s             11  2
     DRs               s             11  2

      /Free
       If P2 <> *Zeros;
        Rs = P1 / P2;
       Else;
        Rs = *Zeros;
       Endif;
       *Inlr = *On;
       Return;
      /End-Free

     *****************************************************************
     ** Rutina Inicial de Programa                                   *
     *****************************************************************
     C     *Inzsr        Begsr
     C     *Entry        Plist
     C                   Parm                    P1
     C                   Parm                    P2
     C                   Parm                    RS
     C                   Endsr
