package lesson1;

public class ReverseString {

	public static void main(String[] args) {
		String str = "This is not a Hello World";
		String str_buffer = "";
		String str_final = "";

		for (int i = 0; i < str.length(); i++) {
			if (str.charAt(i) == ' ' || i == str.length() - 1) {
				if (i == str.length() - 1) {
					str_buffer += str.charAt(i);
				}
				for (int x = str_buffer.length() - 1; x >= 0; x--) {
					str_final += str_buffer.charAt(x);
				}
				str_final += ' ';
				str_buffer = "";
			} else if (str.charAt(i) != ' ') {
				str_buffer += str.charAt(i);
			}

		}
		System.out.println(str_final);
	}

}
