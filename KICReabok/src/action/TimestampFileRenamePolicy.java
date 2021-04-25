package action;

import java.io.File;
import java.util.List;

import com.oreilly.servlet.multipart.FileRenamePolicy;

import beans.FilenamesBean;

public class TimestampFileRenamePolicy implements FileRenamePolicy {
	
    @Override
    public File rename(File f) {
        String name = f.getName();
        String body = null;
        String ext = null;
        String ext0 = null;
        //System.out.println("name ===>"+name);
        int dot = name.lastIndexOf(".");
        if (dot != -1) {
            ext0 = name.substring(0,dot); // includes "."
            ext = name.substring(dot);
           // System.out.println(ext);
        } else {
            ext = "";
        }
        body = ext0+Long.toString( System.currentTimeMillis() );
 
        File renameFile = new File( f.getParent(), body + ext );
        
        if( renameFile.exists() ){
            int count = 0;
            do {
                count++;
                String newName =name+ body + count + ext;
               
                renameFile = new File(f.getParent(), newName);
            }while( renameFile.exists() && count < 9999 );
             
        }
       
        f.renameTo( renameFile );
        return renameFile;
         
    }
    public File rename(File f,FilenamesBean bean) {
        String name = f.getName();
        String body = null;
        String ext = null;
        String ext0 = null;
        //System.out.println("name ===>"+name);
        int dot = name.lastIndexOf(".");
        if (dot != -1) {
            ext0 = name.substring(0,dot); // includes "."
            ext = name.substring(dot);
           // System.out.println(ext);
        } else {
            ext = "";
        }
        body = ext0+Long.toString( System.currentTimeMillis() );
 
        File renameFile = new File( f.getParent(), body + ext );
        
        if( renameFile.exists() ){
            int count = 0;
            do {
                count++;
                String newName =name+ body + count + ext;
                bean.setName(newName);
                renameFile = new File(f.getParent(), newName);
            }while( renameFile.exists() && count < 9999 );
             
        }
       
        f.renameTo( renameFile );
        return renameFile;
         
    }
   
}


