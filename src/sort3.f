      SUBROUTINE SORT3(N,RA,RB,RC,WKSP,IWKSP)
      
      implicit none
      
      integer j, n, iwksp(*)
      real ra(*),rb(*),rc(*),wksp(*)

      CALL INDEXX(N,RA,IWKSP)
      DO 11 J=1,N
        WKSP(J)=RA(J)
11    CONTINUE
      DO 12 J=1,N
        RA(J)=WKSP(IWKSP(J))
12    CONTINUE
      DO 13 J=1,N
        WKSP(J)=RB(J)
13    CONTINUE
      DO 14 J=1,N
        RB(J)=WKSP(IWKSP(J))
14    CONTINUE
      DO 15 J=1,N
        WKSP(J)=RC(J)
15    CONTINUE
      DO 16 J=1,N
        RC(J)=WKSP(IWKSP(J))
16    CONTINUE
      RETURN
      END
