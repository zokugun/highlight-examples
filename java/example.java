//! Header comment
/**
 * example.java
 * Version 1.0.0
 *
 * Licensed under the MIT license.
 * http://www.opensource.org/licenses/mit-license.php
 **/

//! Comments
// Single line comment
/* Multi-line
comment */

//! Strings
"foo \"bar\" baz";
'foo \'bar\' baz';

//! Numbers
123
123.456
-123.456
.3f
1.3e9d
0xaf
0xAF
0xFF.AEP-4

//! Full example
import java.util.Scanner;

public class Life {
	
    @Override @Bind("One")
    public void show(boolean[][] grid){
        String s = "";
        for(boolean[] row : grid){
            for(boolean val : row)
                if(val)
                    s += "*";
                else
                    s += ".";
            s += "\n";
        }
        System.out.println(s);
    }

    public static boolean[][] gen(){
        boolean[][] grid = new boolean[10][10];
        for(int r = 0; r < 10; r++)
            for(int c = 0; c < 10; c++)
                if( Math.random() > 0.7 )
                    grid[r][c] = true;
        return grid;
    }

    public static void main(String[] args){
        boolean[][] world = gen();
        show(world);
        System.out.println();
        world = nextGen(world);
        show(world);
        Scanner s = new Scanner(System.in);
        while(s.nextLine().length() == 0){
            System.out.println();
            world = nextGen(world);
            show(world);

        }
    }
	
	public static Integer valueOf(String s) throws NumberFormatException {
		
	}
}
