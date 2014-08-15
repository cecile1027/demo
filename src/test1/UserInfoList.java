package test1;

import java.util.Vector;
/**
 * µ¥ÀýÄ£Ê½
 * @author 32904_000
 *
 */
public class UserInfoList {

	private static UserInfoList user = new UserInfoList();
	
	private Vector vector = null; 
	
	private UserInfoList(){
		this.vector = new Vector();
	}
	
	public static UserInfoList getInstance(){
		return user;
	}
	
	public boolean addUserInfo(String user){
		if(user != null){
			this.vector.add(user);
			return true;
		}else{
			return false;
		}
	}

	public Vector getList() {
		return vector;
	}
	
	public void removeUserInfo(String user){
		if(user != null){
			this.vector.remove(user);
		}
	}
	
	
	
	
}
