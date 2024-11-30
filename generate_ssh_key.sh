#!/bin/bash

# Prompt for email address
echo "Enter your email address/identifier for the SSH key (e.g., your_email@example.com):"
read email

# Set the file path for the SSH key
ssh_key_path="$HOME/.ssh/id_rsa_github"

# Generate SSH key
echo "Generating SSH key..."
ssh-keygen -t rsa -b 4096 -C "$email" -f "$ssh_key_path" -N ""

# Start the SSH agent
echo "Starting the SSH agent..."
eval "$(ssh-agent -s)"

# Add the SSH key to the agent
echo "Adding the SSH key to the SSH agent..."
ssh-add "$ssh_key_path"

# Display the public key
echo "Your SSH public key has been generated. Copy it and add it to your Git hosting platform."
echo "---------------------------------------------------"
cat "${ssh_key_path}.pub"
echo "---------------------------------------------------"

# Suggest next steps
echo "Next steps:"
echo "1. Copy the above key and add it to your Git hosting platform (GitHub, GitLab, etc.)."
echo "   - For GitHub: https://github.com/settings/SSH and GPC keys"
echo "   - For GitLab: https://gitlab.com/-/profile/keys"
echo "2. Test the connection to your Git host using:"
echo "   ssh -T git@github.com"
echo "   (Replace 'github.com' with your Git hosting platform if different.)"
