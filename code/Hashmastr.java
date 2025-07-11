import java.security.SecureRandom;
import java.util.Base64;
import org.bouncycastle.crypto.generators.SCrypt;

/*
Link for code sources:
https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html

https://github.com/bcgit/bc-java/blob/main/core/src/main/java/org/bouncycastle/crypto/generators/SCrypt.java

https://security.stackexchange.com/questions/133239/what-is-the-specific-reason-to-prefer-bcrypt-or-pbkdf2-over-sha256-crypt-in-pass

https://cryptobook.nakov.com/mac-and-key-derivation/scrypt

https://www.baeldung.com/java-secure-random
https://www.baeldung.com/java-base64-encode-and-decode
https://docs.oracle.com/javase/8/docs/api/java/util/Base64.html
 */

public class hashmastr {

    //TESTER CLASS HERE
    public class TestBOUNCYCASTLE {
        public static void main(String[] args) {
            System.out.println("BouncyCastle is online and running!");
        }
    }

    public class ScryptReader {
        public final String hash;
        public final String salt;

        public ScryptReader(String hash, String salt) {
            this.hash = hash;
            this.salt = salt;
        }
    }

    public static String hashPSWD(String pswd) {
        byte[] salt = new byte[16];
        SecureRandom s_rand = new SecureRandom();
        s_rand.nextBytes(salt);

        int N = 16384;
        int r = 32;
        int p = 1;

        byte[] hash = SCrypt.generate(pswd.getBytes(), salt, N, r, p, 32);

        String hash_base64 = Base64.getEncoder().encodeToString(hash);
        String salt_base64 = Base64.getEncoder().encodeToString(salt);

        return new ScryptReader(hash_base64, salt_base64);
    }

} //end