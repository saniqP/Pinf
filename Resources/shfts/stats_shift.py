def read(path, key):
    with open(path, 'r') as stats:
        for line in stats:
                line.strip()
                if not line:
                    continue
                parts = line.split('#')
                if parts[1].strip() == key:
                    return parts[0]
    return None


def reWrite(path, files_dict):
    with open(path, 'a') as file:
        file.truncate(0)
        for key, value in files_dict.items():
            file.write(f'{value}#{key}\n')

def write(path, value, key):
    with open(path, 'a') as file:
            file.write(f'{value}#{key}\n')