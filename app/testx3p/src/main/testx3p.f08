program testx3p
	implicit none
	
	real x, y, p(-4:4) /-0.9,-0.5,-0.3,-0.1, 0.0, 0.1, 0.3, 0.5, 0.9/
	integer i, j, nres / 10 /
	
	open (unit=nres,file='data/testx3p.res')
	write(nres,1000) (p(j),j=-4,4)
	do i=0,20
		x=-1+i*0.1; write(nres,1001) x,((x+p(j))**3,j=-4,4)
	enddo
	1000 format(1x,'#	p ', 9f7.2,/1x,'# x ')
	1001 format(10f7.2)
end