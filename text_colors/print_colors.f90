!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Program: print_colors
!
! Example program to print common ASCII colors to a terminal that 
!   supports color output.
!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
program print_colors
  
  implicit none
  
  integer :: i
  integer, parameter :: ncolors=15
  character(len=8), dimension(ncolors) :: color_code
  character(len=12), dimension(ncolors):: color_name

  color_code = [character(len=8) :: &
    achar(27)//"[90m", achar(27)//"[91m", achar(27)//"[92m", &
    achar(27)//"[93m", achar(27)//"[94m", achar(27)//"[95m", &
    achar(27)//"[96m", achar(27)//"[97m", achar(27)//"[30m", &
    achar(27)//"[31m", achar(27)//"[32m", achar(27)//"[33m", &
    achar(27)//"[34m", achar(27)//"[35m", achar(27)//"[36m"]

  color_name = [character(len=12) :: "dark grey", "peach", "light green", &
    "light yellow", "light blue", "pink", &
    "light aqua", "pearl white", &
    "black", "red", "green", "yellow", &
    "blue", "purple", "aqua"]

  do i=1,ncolors
    print *, trim(color_code(i)), "This is ", trim(color_name(i)), achar(27)//"[0m."
  end do
  end program print_colors
