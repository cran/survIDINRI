C---------------------------------------------     
C     unoecdf
C---------------------------------------------     
      subroutine unoecdf(n, nc, score, cutoff, weight, OUTECDF)

      integer n, nc
      double precision cutoff(nc), OUTECDF(nc), score(n), weight(n), TMP1, TMP2  
      
      DO j = 1, nc
      TMP1=0
      TMP2=0
        DO i = 1, n
            TMP2=TMP2+weight(i)
            IF (score(i).GT.cutoff(j)) THEN
               TMP1=TMP1+weight(i)
            END IF 
        END DO 
        OUTECDF(j)=TMP1/TMP2
      END DO

      RETURN
      END


