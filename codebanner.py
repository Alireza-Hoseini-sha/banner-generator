import sys

def create_banner(text):
    # Determine the length of the banner
    padding = 6  # Space for the `//` borders and spacing around the text
    banner_length = max(len(text) + padding, 46)  # Ensure a minimum width of 80
    horizontal_line = "//" + "-" * (banner_length + 14) + "//"

    # Center the text within the banner, surrounded by dashes
    text_line = f'//{"-" * 10}{text.center(banner_length - 6)}{"-" * 10}//'

    # Construct the banner
    banner = f"{horizontal_line}\n" * 2
    banner += f"{text_line}\n"
    banner += f"{horizontal_line}\n" * 2

    return banner

if __name__ == "__main__":
    # Check if a command-line argument is provided
    if len(sys.argv) > 1:
        user_input = " ".join(sys.argv[1:])  # Join all arguments as a single string
    else:
        user_input = "Default Text"

    # Print the generated banner
    print(create_banner(user_input))
