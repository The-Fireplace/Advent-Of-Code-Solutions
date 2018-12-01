import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.LinkedList;

public class Part2 {
    static LinkedList<Integer> jumps = new LinkedList<>();

    static boolean loadList(){
	    File input = new File("input.txt");
	    if(!input.exists())
		    return false;
	    try {
		    BufferedReader inputReader = new BufferedReader(new FileReader(input));
		    inputReader.lines().forEach(s -> jumps.add(Integer.valueOf(s.trim())));
		    inputReader.close();
		    return true;
	    }catch(Exception e){
		    e.printStackTrace();
		    return false;
	    }
    }

    public static void main(String[] args) {
    	if(!loadList())
    		return;
		int curIndex = 0;
		int jumpCount = 0;
		final int LENGTH = jumps.size();
		while(curIndex >= 0 && curIndex < LENGTH){
			int offset = jumps.get(curIndex);
			if(offset >= 3)
				jumps.set(curIndex, offset-1);
			else
				jumps.set(curIndex, offset+1);
			curIndex += offset;
			jumpCount++;
		}
		System.out.println("Jump count: "+jumpCount);
    }
}
