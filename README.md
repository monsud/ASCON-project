# ASCON-project
Implementation in hardware of ASCON using System Verilog: a lightweight cryptographic algorithm designed for use in constrained environments, such as low-power microcontrollers and sensors.

The ASCON encryption algorithm involves the following steps:

**Key setup:** Generate the key schedule from the secret key using a key schedule algorithm. This generates a set of round keys that will be used in the encryption and decryption process.

**Initialization:** Initialize the state with the plaintext message and a nonce. The nonce is a unique value that is used to prevent replay attacks.

**Initial permutation:** Perform an initial permutation on the state to add confusion to the input data.

**Rounds:** Perform a fixed number of rounds (12 for ASCON-128 and 14 for ASCON-256) of the following operations:

- Substitution layer: Apply a nonlinear substitution layer to the state using the keyed S-box.
- Permutation layer: Apply a linear permutation layer to the state.
- Add round constant: XOR the state with a round constant derived from the round number and the key schedule.

**Finalization:** After the final round, perform a final permutation on the state to add diffusion to the output data.

**Output:** The encrypted message is obtained by truncating the state to the desired length (128 bits or 256 bits).

The decryption process is similar to the encryption process, except that the order of the round keys is reversed, and the round constants are applied in reverse order. The decryption algorithm also includes an additional step to verify the authenticity of the message using a message authentication code (MAC) generated during encryption.
