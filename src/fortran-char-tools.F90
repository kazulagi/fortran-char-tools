!> Project: Fortran toolbox for char 
!> Author : Haruka Tomobe
!> License: MIT
!> 

module fortran_char_tools
    implicit none

    interface operator(+)
        module procedure addCharChar
    end interface

contains
    ! add two characters
    pure function addCharChar(char1,char2) result(char3)
        character(*),intent(in) :: char1, char2
        character(:),allocatable :: char3

        char3 = char1 // char2

    end function

end module

