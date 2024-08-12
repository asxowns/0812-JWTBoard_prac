package com.example.demo;

import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.io.Encoders;
import io.jsonwebtoken.security.Keys;

public class SecretKeyGenerator {

	public static void main(String[] args) {
		String secretKey = Encoders.BASE64.encode(Keys.secretKeyFor(SignatureAlgorithm.HS512).getEncoded());
        System.out.println("Generated Secret Key: " + secretKey);

	}

}
