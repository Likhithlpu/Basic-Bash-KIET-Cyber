#!/bin/bash

# List of words for the game
words=("password" "encryption" "firewall" "hacker" "phishing" "virus" "malware" "cyberattack" "authentication" "authorization" "biometrics" "botnet" "cybercrime" "cybersecurity" "data breach" "denial of service" "endpoint security" "firewall" "identity theft" "intrusion detection system" "malware" "network security" "ransomware" "social engineering" "spam" "spoofing" "threat intelligence" "trojan" "two-factor authentication" "vulnerability" "zero-day exploit" "cyberwarfare" "cyber hygiene" "cyber resilience" "cyber threat" "cyber risk" "data privacy" "data protection" "digital certificate" "digital signature" "encryption" "end-to-end encryption" "hash function" "public key infrastructure" "secure socket layer" "virtual private network" "worm" "adware" "antivirus" "bot" "brute force attack" "keylogger" "rootkit" "sandboxing" "security patch" "spyware" "zombie")


# Select a random word
word=${words[RANDOM % ${#words[@]}]}

# Initialize the guessed word
guessed=""

# Initialize the number of attempts
attempts=0

# Function to display the current state of the word
display_word() {
    for ((i = 0; i < ${#word}; i++)); do
        letter="${word:$i:1}"
        if [[ $guessed == *"$letter"* ]]; then
            echo -n "$letter "
        else
            echo -n "_ "
        fi
    done
    echo
}

echo "Welcome to the Hangman Game!"
echo "Try to guess the word by entering one letter at a time."

while true; do
    display_word
    read -p "Enter your guess: " guess

    # Add the guessed letter to the list
    guessed="$guessed$guess"

    # Check if the guessed letter is in the word
    if [[ ! $word == *"$guess"* ]]; then
        attempts=$((attempts + 1))
    fi

    # Check if the word has been guessed completely
    if [[ $guessed == *"$word"* ]]; then
        echo "Congratulations! You guessed the word: $word"
        break
    fi

    # Check if the maximum number of attempts has been reached
    if [[ $attempts -eq 6 ]]; then
        echo "Sorry, you ran out of attempts. The word was: $word"
        break
    fi
done

