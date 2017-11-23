import os.path
import datetime
import re
import json
import uuid
import argparse

counter = 0

def parse_args():
    my_parser = argparse.ArgumentParser()
    
    sub_parsers = my_parser.add_subparsers()
    
    create_configs_parser = sub_parsers.add_parser("create-configs", conflict_handler='resolve')
    create_configs_parser.add_argument("-c", "--config_location", help="Path to a directory where the generated config files will be stored.", dest="config_location", required=True)
    create_configs_parser.add_argument("-s", "--samples_path", help="Path to a directory where the samples are.", dest="samples_path", required=True)
    create_configs_parser.set_defaults(func=create_configs_command)
    
    my_args = my_parser.parse_args()
    
    return my_args


def generate_config_objects(samples_path, config_location):
    for root, dirs, files in os.walk(samples_path):
        for my_file in files:
            if my_file.endswith(".bam"):
                print os.path.join(root, my_file)            
                this_config_data = {"sample": {
                                    "sample_id": os.path.basename(root),
                                    "sample_location": os.path.join(root, my_file)
                                    }
                                }
    
                run_uuid = str(uuid.uuid4())
    
                my_file = open("{}/{}.json".format(config_location, run_uuid), "w")
                json.dump(this_config_data, my_file)
                my_file.close()


def create_configs_command(args):

    config_location = args.config_location
    samples_path = args.samples_path

    if (not os.path.isdir(config_location)):
        os.makedirs(config_location)
        
    generate_config_objects(samples_path, config_location)
    
if __name__ == '__main__':
    args = parse_args()
    args.func(args)



