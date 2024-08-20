import json
def load_best_config_from_log(log_file):
    best_config = None
    best_result = float('inf')  # Adjust this based on whether lower or higher is better in your context
    
    with open(log_file, 'r') as file:
        for line in file:
            try:
                data = json.loads(line)  # Parse each line as a separate JSON object
                result = data['r'][0][0]  # Adjust the access pattern based on your data structure
                if result < best_result:
                    best_result = result
                    best_config = data
            except json.JSONDecodeError as e:
                print(f"Error parsing JSON on line: {line}. Error: {e}")
    
    return best_config

def main():
    log_file = 'tvm_logs/matmul.json'  # Adjust this to the path of your log file
    best_config = load_best_config_from_log(log_file)
    if best_config:
        print("Best Configuration:", best_config)
    else:
        print("No valid configurations found.")

if __name__ == "__main__":
    main()
