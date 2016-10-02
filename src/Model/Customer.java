package Model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class Customer {
	private String id;
	private String pw;
	private String name;
	private String gender;
	private String email;


}
