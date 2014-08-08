BLEND 
 Transfinite Interpolation
==========================

* * * * *

**BLEND** is a FORTRAN90 library which "blends" multidimensional data, that is, performs a kind of interpolation. However, in this case, the data may be known at points, or curves, or planes, and is to be extended to a higher-dimensional domain.

This is a common way of creating a smooth set of data based on a small set of known values. For instance, if we measure the temperature every hour, we naturally assume that the temperature at 2:15 can be approximated by "blending" 1/4 of the temperature at 3:00 and 3/4 of the temperature at 2:00.

Now suppose that we take the temperature at evenly spaced points on the floor of a room. We can again see how to use blending so that, in each little square, we take a blend of the values at the four corners to get the value at any point within the square. Similar ideas can be used with a cube.

More complicated cases might arise where we know the temperature everywhere along lines, or along planes that cut through a cube. Even then, it is possible to blend the data in a smooth and sensible way.

**BLEND** interpolates values based on a set of given data. **BLEND** can handle input data that is 1, 2, or 3 dimensional. In the general, 3D case, the data can depend on smoothly varying space parameters (R,S,T) or on tabular indices (I,J,K). The data may be given at the corners, edges, or faces of the unit cube. In the (R,S,T) case, **BLEND** can supply an interpolated value at any point in the cube. In the (I,J,K) case, **BLEND** will fill in tabular values for all intermediate indices.

In the simplest case, where **BLEND** is only given data values at the endpoints of a line segment, the 4 corners of a square, or the 8 corners of a cube, **BLEND** is equivalent to linear, bilinear or trilinear finite element interpolation of the data. However, in the more interesting cases where **BLEND** is given, say, a formula for the data along the sides of the square, or the edges of the cube, the interpolation is called "transfinite", since in theory it samples the input data at more than a finite number of points.

### Licensing:

The computer code and data files described and made available on this web page are distributed under [the GNU LGPL license.](./LICENSE)

### Languages:

**BLEND** is available in [a C++ version](http://people.sc.fsu.edu/~jburkardt/cpp_src/blend/blend.html) and [a FORTRAN90 version](http://people.sc.fsu.edu/~jburkardt/f_src/blend/blend.html) and [a MATLAB version](http://people.sc.fsu.edu/~jburkardt/m_src/blend/blend.html).

### Related Data and Programs:

[TILER\_2D](http://people.sc.fsu.edu/~jburkardt/f_src/tiler_2d/tiler_2d.html), a FORTRAN90 program which demonstrates a 2D example of transfinite interpolation.

[TILER\_3D](http://people.sc.fsu.edu/~jburkardt/f_src/tiler_3d/tiler_3d.html), a FORTRAN90 program which demonstrates a 3D example of transfinite interpolation.

### Reference:

1.  William Gordon,
     Blending-Function Methods of Bivariate and Multivariate Interpolation and Approximation,
     SIAM Journal on Numerical Analysis,
     Volume 8, Number 1, March 1971, pages 158-177.
2.  William Gordon, Charles Hall,
     Transfinite Element Methods: Blending-Function Interpolation over Arbitrary Curved Element Domains,
     Numerische Mathematik,
     Volume 21, Number 1, 1973, pages 109-129.
3.  William Gordon, Charles Hall,
     Construction of Curvilinear Coordinate Systems and Application to Mesh Generation,
     International Journal of Numerical Methods in Engineering,
     Volume 7, pages 461-477, 1973.
4.  Charles Hall, Thomas Porsching,
     Numerical Analysis of Partial Differential Equations,
     Prentice-Hall, 1990,
     ISBN: 013626557X,
     LC: QA374.H29.
5.  Joe Thompson, Bharat Soni, Nigel Weatherill,
     Handbook of Grid Generation,
     CRC Press, 1999.

### Source Code:

-   [blend.f90](blend.f90), the source code;
-   [blend.sh](blend.sh), commands to compile the source code;

### Examples and Tests:

-   [blend\_prb.f90](blend_prb.f90), the calling program;
-   [blend\_prb.sh](blend_prb.sh), commands to compile, link and run the calling program;
-   [blend\_prb\_output.txt](blend_prb_output.txt), the output file.

### List of Routines:

-   **BLEND\_101** extends scalar endpoint data to a line.
-   **BLEND\_102** extends scalar point data into a square.
-   **BLEND\_103** extends scalar point data into a cube.
-   **BLEND\_112** extends scalar line data into a square.
-   **BLEND\_113** extends scalar line data into a cube.
-   **BLEND\_123** extends scalar face data into a cube.
-   **BLEND\_I\_0D1** extends indexed scalar data at endpoints along a line.
-   **BLEND\_IJ\_0D1** extends indexed scalar data at corners into a table.
-   **BLEND\_IJ\_1D1** extends indexed scalar data along edges into a table.
-   **BLEND\_IJ\_W\_1D1** extends weighted indexed scalar data along edges into a table.
-   **BLEND\_IJK\_0D1** extends indexed scalar corner data into a cubic table.
-   **BLEND\_IJK\_1D1** extends indexed scalar edge data into a cubic table.
-   **BLEND\_IJK\_2D1** extends indexed scalar face data into a cubic table.
-   **BLEND\_R\_0DN** extends vector data at endpoints into a line.
-   **BLEND\_RS\_0DN** extends vector data at corners into a square.
-   **BLEND\_RS\_1DN** extends vector data along sides into a square.
-   **BLEND\_RST\_0DN** extends vector data at corners into a cube.
-   **BLEND\_RST\_1DN** extends vector data on edges into a cube.
-   **BLEND\_RST\_2DN** extends vector data on faces into a cube.
-   **R8BLOCK\_PRINT** prints a real block (a 3D matrix).
-   **R8MAT\_PRINT** prints an R8MAT.
-   **R8MAT\_PRINT\_SOME** prints some of an R8MAT.
-   **TIMESTAMP** prints the current YMDHMS date as a time stamp.

You can go up one level to [the FORTRAN90 source codes](http://people.sc.fsu.edu/~jburkardt/f_src.html).

* * * * *

*Last revised on 13 December 2005.*
